// Licensed Materials - Property of IBM
// 5648-F10 (C) Copyright International Business Machines Corp. 2005
// All Rights Reserved
// US Government Users Restricted Rights - Use, duplication or disclosure
// restricted by GSA ADP Schedule Contract with IBM Corp.

// Sets a property to the specified value
// varName - string - property name
// docTop - document - the document in which the property should be set
// value - the value to set the property to
// returns - boolean - success of the set operation
function assignProperty(varName, docTop, value)
{    
    return assignValue(docTop, docTop.document.properties, varName, varName, value, false) ;
}


// retrieve a resource property
// varName: string - resource ID
// docTop: document - staring child document to use for inheritance
// defaultValue: string - optional value to use if the resource cannot be found
// returns string or [] - resource value
function findProperty(varName,docTop,defaultValue) {
    var v;
    try {
        var p = docTop;
        var arrayIndex = null;
        do {  // TODO: The contents of this loop can be refactored to use getPropertyHelper
            var i = varName.indexOf('[');
            if (i > 0) {
                var j = varName.lastIndexOf(']');
                if (j > i) {
                    arrayIndex = varName.substring(i+1,j);
                    varName = varName.substring(0,i);
                }
            }
            try { v = p.document.properties[varName];} catch(e) {
            }
            if (typeof v != "undefined") {
                // varName exists, determine if it is an array
                if (typeof v == "object" && arrayIndex != null) {
                    i = arrayIndex.indexOf('[');
                    while (i > 0 && (typeof v == "object")) {
                        j = arrayIndex.lastIndexOf(']');
                        if (j > i) {
                            v = v[arrayIndex.substring(0,i)];
                            arrayIndex = arrayIndex.substring(i+1,j);
                            i = arrayIndex.indexOf('[');
                        } else
                            i = -1;
                    }
                    if (typeof v == "object")
                        v = v[arrayIndex];
                }
                break;
            }
            if (p.parent == p) p = null;
            else
                p = p.parent;
        } while (p != null);

    } catch(e) {
        v = top.UNDEFINED;
        top.logException(e,arguments); 
    }
    
    if (typeof v == "undefined") {
        v = defaultValue;
        if (typeof v == "undefined") {
            if(varName != "contentImage") {
               top.logMessage("LPV20024W",varName);
            }
            v = "** "+varName+" - NO PROPERTY **";
         }
    } else if (typeof v == "string") {
		// handle nested properties 
		if (v.indexOf('<%') >= 0) {
			var nestedProperty = null;
			try {
				nestedProperty = eval(v);
			} catch (e) {
				// This property can't be evaluated at this time, just send back v
				nestedProperty = null;
			}
			if (nestedProperty != null) {
				v = nestedProperty;
			}
		}
	}
    return v;
}


// private helper function to combine text lines that end with \
function combineContinuedLines(arrayOfLines) {
    try {
        for (var index = arrayOfLines.length-2; index >= 0; index--) {
            if (arrayOfLines[index].length > 0)
                if (arrayOfLines[index].charAt(arrayOfLines[index].length-1) == "\\") {
                    arrayOfLines[index] = arrayOfLines[index].substring(0,arrayOfLines[index].length-1) + arrayOfLines[index+1];
                    arrayOfLines.splice(index+1, 1);
                }
        }
    } catch(e) {
        top.logException(e,arguments);
    }
}

// store key/value pair into array
// fileName: string - property file name used for logging
// array: [] - property array
// key: string - resource ID
// value: string or [] - resource value
// isFallBackLocale: boolean - won't overwrite if true
// returns void
function assignValue(fileName, array, origkey, key, value, isFallBackLocale) {

    var success = true;

    try {
        try {
            var i = key.indexOf("[");
            if (i > 0 && (key.length-2) > i && key.charAt(key.length-1) == "]") {
                var arrayIndex = top.trim(key.substring(i+1,key.length-1));
                key = top.trim(key.substring(0,i));
                var a = null;
                if (typeof array[key] == "undefined") {
                    array[key] = new Array();
                } else if (typeof array[key] == "string") {
                    top.logMessage("LPV20003S", fileName, key);
                    success = false;
                }
                return assignValue(fileName, array[key], origkey, arrayIndex, value, isFallBackLocale);
            } else {
                if (isFallBackLocale && (typeof array[key] == "undefined")) {
                    top.logMessage("LPV20006W", fileName, origkey);
                    success = false;
                }
                if (!isFallBackLocale || (typeof array[key] == "undefined")) {
                    array[key] = value;
                }
            }
        } catch(e) {
            top.logMessage("LPV20004S", fileName, e.message, key);
            success = false;
        }
    } catch(e) {
        top.logException(e,arguments);
    }

    return success;
}

// private helper function to parse resource file lines into key/value pairs
function getKeyValuePairs(fileName, arrayOfLines, propertiesArray, isFallBackLocale) { 
    try {
		
        var index = 0;
        while (index < arrayOfLines.length) {
            var curLine= top.trim(arrayOfLines[index]);
            // Ignore blank lines and comments
            if ((curLine.length == 0) || (curLine.substr(0,2) == '//') ||
                (curLine.charAt(0) == '#') || (curLine.charAt(0) == '!') || (curLine.charAt(0) == ':') ) {
                index++;
                continue;
            }

            var eq = 0;
            var colon = curLine.indexOf(":");
            var equals = curLine.indexOf("=");
            if (equals > 0 && colon < 0) {
                eq = equals;
            }
            if (colon > 0 && equals < 0) {
                eq = colon;
            }
            if (colon > 0 && equals > 0) {
                if (equals < colon) {
                    eq = equals;
                }
                if (colon < equals) {
                    eq = colon;
                }
            }
            if (colon == -1 && equals == -1) {
                eq = -1;
            }
            if (eq > 0) {
                // Get key part
                var key = top.trim(curLine.substring(0,eq));
                if (key.length > 0) {
                    // Get value part
                    var value = top.trim(curLine.substring(eq+1));
                    // find the next line with at least 1 character for the delimiter
                    while (value.length == 0 && index < (arrayOfLines.length-1)) {
                        index++;
                        value = top.trim(arrayOfLines[index]);
                    }
                    if (value.length > 0) {
                        var originalValue = value;
                        var endIndex = 0;
                        var delim = value.charAt(0);
                        var endDelim = delim;
                        if (delim == '[' && value.charAt(value.length - 1) == ']') {
                            endDelim = ']';
                        }
                        //The property has a known delimiter, so strip the delimiters off and continue processing
                        if (delim == '"' || delim == "'" || (delim == '[' && endDelim == ']')) {
                            
                            var endRE = new RegExp("\\"+endDelim+"\\s*;?\\s*(#|//|/\\*.*\\*/\\s*$|$)");
                            endIndex=value.search(endRE);
                            if (endIndex == -1) {
                                top.logMessage("LPV20005S", fileName, delim, key);
                            }
                            else {
                                value = value.substring(1,endIndex);
                            }                      
                        }
                        //process a property with a ' or " delimiter
                        if (delim == '"' || delim == "'") {
                            if (endIndex >= 0) {
                                var startRE = new RegExp("\n[^=]+\\s*=\\s*\\"+delim);
                                value = value.substring(0,endIndex);
                                if (value.search(startRE) >= 0)
                                    top.logMessage("LPV20005S", fileName, delim, key);
                            } else {
                                top.logMessage("LPV20005S", fileName, delim, key);
                            }                            
                        }
                        //process an array property
                        if (delim == '[' && endDelim == ']') {
                            try {
                                value = value.substring(0,endIndex);
                                eval('value = ['+value+']');
                            //if there is an exception we want to see if it is a bad array or a valid string
                            //a bad array for example would be [value], arrays should be written as such ['value1','value2']
                            //a valid string for example would [%1] some text here ending in ], although it is wrapped in [ ] this is not meant to be an array
                            } catch(e) {
                                var validString = true;
                                var stackCtr = 0;
                                for (var i = 0; i < originalValue.length; i++) {
                                    var currentChar = originalValue.charAt(i);
                                    if (currentChar == '[') {
                                        stackCtr++;
                                    } else if (currentChar == ']') {
                                        stackCtr--;
                                        if (stackCtr == 0) {
                                            if (i == originalValue.length -1) {
                                                top.logMessage("LPV20018S", fileName, value, key);
                                                validString = false;
                                            }
                                        }
                                    }
                                    if (validString) {
                                        value = originalValue;
                                    }
                                }
                            }
                        }
                        value = handleSpecialChars(fileName, value);
						
						assignValue(fileName, propertiesArray, key, key, value, isFallBackLocale);
						
                    } else {
                        // Only occurs if last property in file has no value
                        top.logMessage("LPV20028F", curLine, fileName);          
                    }                    
                }
            } else {
                // No equal sign or colon found after property name
                top.logMessage("LPV20027F", curLine, fileName);          
            }
            index++;
        }
		
    } catch(e) {
        top.logException(e,arguments);
    }
}

// private helper function to remove blank lines
function removeBlankLines(arrayOfLines) {
    try {
        for (var index = arrayOfLines.length-1; index >= 0; index--) {
            if (arrayOfLines[index].length == 0)
                arrayOfLines.splice(index, 1);
        }
    } catch(e) {
        top.logException(e,arguments);
    }
}


// private helper function to handle special characters within Strings
function handleSpecialChars(fileName, propertyValue){

    var retVal = "";
    var state = 0;
    var START = 0;
    var PROCESSSLASH = 1;
    var UNICODE = 2;
    //Only processing strings since arrays are being handled by the eval statement in the getKeyValuePairs function
    if (typeof propertyValue != "string") {
        return propertyValue;
    } else {
        try {
            var i = 0;
            while (i < propertyValue.length) {
                var curChar = propertyValue.charAt(i);
                if (state == START) {
                    if (curChar != '\\') {
                        retVal = retVal + curChar;
                        i++;
                    } else {
                        state = PROCESSSLASH;
                    }       
                } else if (state == PROCESSSLASH) {
                    var nextPosition = i + 2;
                    var nextChar = propertyValue.substring(i+1, nextPosition);
                    if (nextChar == "u") {
                        i += 2;
                        state = UNICODE;
                    } else if (nextChar == ' ') {
                        retVal = retVal + String.fromCharCode(32);
                        i += 2;
                        state = START;
                    } else if (nextChar == "'") {
                        retVal = retVal + String.fromCharCode(39);
                        i += 2;
                        state = START;
                    } else if (nextChar == '"') {
                        retVal = retVal + String.fromCharCode(34);
                        i += 2;
                        state = START;
                    } else if (nextChar == '\\') {
                        retVal = retVal + String.fromCharCode(92);
                        i += 2;
                        state = START;
                    } else if (nextChar == 'r') {
                        retVal = retVal + String.fromCharCode(13);
                        i += 2;
                        state = START;
                    } else if (nextChar == "n") {
                        retVal = retVal + String.fromCharCode(10);
                        i += 2;
                        state = START;
                    } else if (nextChar == 't') {
                        retVal = retVal + String.fromCharCode(9);
                        i += 2;
                        state = START;
                    } else {
                        top.logMessage("LPV21035W", nextChar, fileName);
                        break;
                    }
                } else if (state == UNICODE) {
                    if ((i + 4) <= propertyValue.length) {
                        var uniString = propertyValue.substring(i, i+4);
                        if (validateUnicodeChar(uniString)) {
                            var letter = parseInt(uniString, 16);
                            retVal = retVal + String.fromCharCode(letter);
                            i += 4;
                        }
                        state = START;
                    }
                }
            }
        }        
        catch(e) {
            top.logException(e,arguments);
        }
    }
    return retVal;
}

// validates wether or not a character is a valid hexadecimal character
function validateUnicodeChar(unicodeString){
    try{
        var valid = true;
        var i;
        for (i=0; i < unicodeString.length && valid; i++) {
            var uniChar = unicodeString.charCodeAt(i);
            valid = (uniChar >= 48 && uniChar <=57)||(uniChar >= 65 && uniChar <=70)||(uniChar >= 97 && uniChar <=102); 
        }    
    }catch(e) {
        top.logException(e,arguments);
        valid = false;
    }
    if (!valid) {
        top.logMessage("LPV21034W", unicodeString.charAt(i-1));
    }
    return valid;
}


// reads a single resource file
// securityFcn: function = new Function('return window')
// fileName: string - full qualified native file name
// properties: [] - array of key/value pairs
// isFallBackLocale: boolean
// returns void
function secureRead1PropertyFile(securityFcn,fileName,properties,isFallBackLocale) {
    try {
        var lines = secureReadTextFile(securityFcn, fileName);
        combineContinuedLines(lines);
        getKeyValuePairs(fileName, lines, properties, isFallBackLocale);
    } catch(e) {
        top.logException(e,arguments);
    }
}

// reads 1 or more resource files
// securityFcn: function = new Function('return window')
// startingDir: full current directory for relative names
// fileName: string - messy-named file name
// properties: [] - array of key/value pairs
// fallBackLocale: string - fallback locale
// returns void
// search order:
//	.
//	./fallback locale
//	./locale
function secureRead1PropertyKind(securityFcn,startingDir,relativeDir,fileName,properties,fallBackLocale) {
    try {
        var f = null;
        if (typeof relativeDir != "undefined" && relativeDir != null) {
		
			var files = getPropertiesFilesDirs(startingDir, relativeDir, fallBackLocale);
			var f;
			for (j in files)
			{
				if ((f=top.secureClientFileExists(securityFcn, files[j], fileName, 'I')) != null)
				{
					secureRead1PropertyFile(securityFcn,f,properties,false);
				}
			}
			if (typeof fallBackLocale == "string" && top.LOCALE != fallBackLocale && (f = top.secureClientFileExists(securityFcn, startingDir, relativeDir+fallBackLocale+'/'+fileName, 'I')) != null) {
                secureRead1PropertyFile(securityFcn,f,properties,true);
                if (typeof properties['fallBackLocale'] == "string") fallBackLocale = properties['fallBackLocale'];
            }
//if (fallBackLocale != "en") alert('fallBackLocale for file ' + relativeDir+fileName + ' = ' + fallBackLocale);
        }
    } catch(e) {
        top.logException(e,arguments);
    }
}

// finds and reads 1 or more resource files
// securityFcn: function = new Function('return window')
// startingDir: full current directory for relative names
// fileName: string - messy-named file name
// properties: [] - array of key/value pairs
// fallBackLocale: string - fallback locale
// returns void
// search order:
//	launchpad
//	skin
//	content
function secureReadPropertiesFile(securityFcn, startingDir, fileName, properties, fallBackLocale) {
    try {
        var f;
        var lines;
        secureRead1PropertyKind(securityFcn,startingDir,'',fileName,properties,fallBackLocale);

        // bootstrap read the content properties to see if it defines the skin dir - which then has to be read first
        if (typeof top.SKINDIR == "undefined" || top.SKINDIR == null || top.SKINDIR == '') {
            secureRead1PropertyKind(securityFcn,startingDir,top.CONTENTDIR,fileName,properties,fallBackLocale);
            top.SKINDIR = properties.skinDirectory;
            if (typeof top.SKINDIR == "undefined" || top.SKINDIR == null || top.SKINDIR == '') {
                var dirs = top.secureGetDirectories(new Function('return window'), top.getNativeFileName(startingDir + "/skins"));
                //if there's only one directory in skins and nothing has been set, assume it's the skin.
                if (dirs.length == 1) {
                    top.SKINDIR = "skins/" + dirs[0] + "/";
                }
                //otherwise, the user needs to explicitly define a skin dir.  Alert user of a potentially fatal error.
                else {
                    var message = findProperty('skinDirNotDefined',self,'');
                    //This code gets called several times and global.properties hasn't necessarily been read
                    if (message != '' && top.LOGFILTER.indexOf(top.FATAL) == -1 ) {
                        alert(message);                        
                    }
                }                
            }
        }
        secureRead1PropertyKind(securityFcn,startingDir,top.SKINDIR,fileName,properties,fallBackLocale);

        secureRead1PropertyKind(securityFcn,startingDir,top.CONTENTDIR,fileName,properties,fallBackLocale);

    } catch(e) {
        top.logException(e,arguments);
    }
}

// helper function to convert the document search string to key/value pairs
function getURLproperties(doc,properties) {
    try {
        if (typeof doc.search == "string")
            var query = doc.search;
        else
            var query = doc.location.search;
        if (query.length > 1) {
            query = query.substring(1);
            var tokens = query.split(",");
            for (var i=0; i < tokens.length; i++) {
                var keyvalue = tokens[i].split("=");
                if (keyvalue[0].length > 0) {
                    if (keyvalue[1].length > 0) {
                        assignValue(doc.location.href, properties, unescape(keyvalue[0]), unescape(keyvalue[0]), unescape(keyvalue[1]), false);
                    } else {
                        assignValue(doc.location.href, properties, unescape(keyvalue[0]), unescape(keyvalue[0]), "", false);
                    }
                }
            }
        }
    } catch(e) {
        top.logException(e,arguments);
    }
}

// helper function to initialize property globals and to read bootstrap property files
function initializeProperties() {
    try {
        var properties = new Array();

        // bootstrap read URL properties just in case they defined contentdir or skindir or startpage
        getURLproperties(document,properties);

        if (typeof top.CONTENTDIR == "undefined" || top.CONTENTDIR == null || top.CONTENTDIR == '')
            top.CONTENTDIR = properties.contentDirectory;
        if (typeof top.CONTENTDIR == "undefined" || top.CONTENTDIR == null || top.CONTENTDIR == '')
            top.CONTENTDIR = "content/";

        if (typeof top.SKINDIR == "undefined" || top.SKINDIR == null || top.SKINDIR == '')
            top.SKINDIR = properties.skinDirectory;

        secureReadPropertiesFile(new Function('return window'), top.STARTINGDIR+top.RELATIVEDIR, top.GLOBALPROPERTIES, properties, findProperty('fallBackLocale',self,'en'));
        secureReadPropertiesFile(new Function('return window'), top.STARTINGDIR+top.RELATIVEDIR, top.OSTYPE+".properties", properties, findProperty('fallBackLocale',self,'en'));
        secureReadPropertiesFile(new Function('return window'), top.STARTINGDIR+top.RELATIVEDIR, top.OS+".properties", properties, findProperty('fallBackLocale',self,'en'));

        // reread URL properties so they override properties from files
        getURLproperties(document,properties);

        if (typeof top.STARTPAGE == "undefined" || top.STARTPAGE == null || top.STARTPAGE == '')
            top.STARTPAGE = properties.startPage;
        if (typeof top.STARTPAGE == "undefined" || top.STARTPAGE == null || top.STARTPAGE == '')
            top.STARTPAGE = "main.html";

        document.properties = properties;
    } catch(e) {
        top.logException(e,arguments);
    }
}


// ----------------------------------------------------------------------------

// Get a value for key from the passed collection.
// varName - the key to the value
// p - an array of key-values
// defaultValue - result if key does not exist in p
// return - the value associated with key, or defaultValue
function getPropertyHelper(varName, p, defaultValue) {
    var v;
    try {
        var arrayIndex = null;
		var i = varName.indexOf('[');
        if (i > 0) {
            var j = varName.lastIndexOf(']');
            if (j > i) {
                arrayIndex = varName.substring(i+1,j);
                varName = varName.substring(0,i);
            }
        }
        try { v = p[varName];} catch(e) {  }
        if (typeof v != "undefined") {
            // varName exists, determine if it is an array
            if (typeof v == "object" && arrayIndex != null) {
                i = arrayIndex.indexOf('[');
                while (i > 0 && (typeof v == "object")) {
                    j = arrayIndex.lastIndexOf(']');
                    if (j > i) {
                        v = v[arrayIndex.substring(0,i)];
                        arrayIndex = arrayIndex.substring(i+1,j);
                        i = arrayIndex.indexOf('[');
                    } else {
                        i = -1;
                    }
				}
                if (typeof v == "object") {
                    v = v[arrayIndex];
				}
            }

        }
    } catch(e) {
        v = top.UNDEFINED;
        top.logException(e,arguments); 
    }
    
    if (typeof v == "undefined") {
        v = defaultValue;
        if (typeof v == "undefined") {
            if(varName != "contentImage") {
               top.logMessage("LPV20024W",varName);
            }
            v = "** "+varName+" - NO PROPERTY **";
         }
    }
    return v;
}

// Retrieves, and optionally sets, a property value from the passed locale, 
// which may not be the current locale.
// key - the property name
// locale - the locale from which the value is to be retrieved
// propertyFile - the file containing the property key
// override - if true, then set the value to the properties, otherwise, just return it.
// defaultValue - result if no value is found associated with key
// returns - the value assocatied with key in locale 
function getPropertyAlternateLocale(key, locale, propertyFile, override, defaultValue) {

	var localeProperties = new Array();
	
	var searchDirs = new Array();
	searchDirs.push(top.CONTENTDIR + locale + '/');
	searchDirs.push(locale + '/');
	var propFileDirs = generateSearchDirs(top.STARTINGDIR+top.RELATIVEDIR, searchDirs, null, false);
	
	var f;
	for (j in propFileDirs)
	{
		if ((f=top.secureClientFileExists(new Function('return window'), propFileDirs[j], propertyFile, 'I')) != null)
		{
			secureRead1PropertyFile(new Function('return window'),f,localeProperties,false);
		}
	}
	var value = getPropertyHelper(key, localeProperties, defaultValue);
	if (override) {
		assignValue(propertyFile, document.properties, key, key, value, false); 
	}
	return value;
}

// ----------------------------------------------------------------------------




initializeProperties();

// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // ry6R1BGTSXk7mbBmN6IuF+5XpsU1GtENxfH3hxv0Bh6g
// SIG // giFtMIIFjTCCBHWgAwIBAgIQDpsYjvnQLefv21DiCEAY
// SIG // WjANBgkqhkiG9w0BAQwFADBlMQswCQYDVQQGEwJVUzEV
// SIG // MBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
// SIG // d3cuZGlnaWNlcnQuY29tMSQwIgYDVQQDExtEaWdpQ2Vy
// SIG // dCBBc3N1cmVkIElEIFJvb3QgQ0EwHhcNMjIwODAxMDAw
// SIG // MDAwWhcNMzExMTA5MjM1OTU5WjBiMQswCQYDVQQGEwJV
// SIG // UzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQL
// SIG // ExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQDExhEaWdp
// SIG // Q2VydCBUcnVzdGVkIFJvb3QgRzQwggIiMA0GCSqGSIb3
// SIG // DQEBAQUAA4ICDwAwggIKAoICAQC/5pBzaN675F1KPDAi
// SIG // MGkz7MKnJS7JIT3yithZwuEppz1Yq3aaza57G4QNxDAf
// SIG // 8xukOBbrVsaXbR2rsnnyyhHS5F/WBTxSD1Ifxp4VpX6+
// SIG // n6lXFllVcq9ok3DCsrp1mWpzMpTREEQQLt+C8weE5nQ7
// SIG // bXHiLQwb7iDVySAdYyktzuxeTsiT+CFhmzTrBcZe7Fsa
// SIG // vOvJz82sNEBfsXpm7nfISKhmV1efVFiODCu3T6cw2Vbu
// SIG // yntd463JT17lNecxy9qTXtyOj4DatpGYQJB5w3jHtrHE
// SIG // tWoYOAMQjdjUN6QuBX2I9YI+EJFwq1WCQTLX2wRzKm6R
// SIG // AXwhTNS8rhsDdV14Ztk6MUSaM0C/CNdaSaTC5qmgZ92k
// SIG // J7yhTzm1EVgX9yRcRo9k98FpiHaYdj1ZXUJ2h4mXaXpI
// SIG // 8OCiEhtmmnTK3kse5w5jrubU75KSOp493ADkRSWJtppE
// SIG // GSt+wJS00mFt6zPZxd9LBADMfRyVw4/3IbKyEbe7f/LV
// SIG // jHAsQWCqsWMYRJUadmJ+9oCw++hkpjPRiQfhvbfmQ6QY
// SIG // uKZ3AeEPlAwhHbJUKSWJbOUOUlFHdL4mrLZBdd56rF+N
// SIG // P8m800ERElvlEFDrMcXKchYiCd98THU/Y+whX8QgUWtv
// SIG // sauGi0/C1kVfnSD8oR7FwI+isX4KJpn15GkvmB0t9dmp
// SIG // sh3lGwIDAQABo4IBOjCCATYwDwYDVR0TAQH/BAUwAwEB
// SIG // /zAdBgNVHQ4EFgQU7NfjgtJxXWRM3y5nP+e6mK4cD08w
// SIG // HwYDVR0jBBgwFoAUReuir/SSy4IxLVGLp6chnfNtyA8w
// SIG // DgYDVR0PAQH/BAQDAgGGMHkGCCsGAQUFBwEBBG0wazAk
// SIG // BggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQu
// SIG // Y29tMEMGCCsGAQUFBzAChjdodHRwOi8vY2FjZXJ0cy5k
// SIG // aWdpY2VydC5jb20vRGlnaUNlcnRBc3N1cmVkSURSb290
// SIG // Q0EuY3J0MEUGA1UdHwQ+MDwwOqA4oDaGNGh0dHA6Ly9j
// SIG // cmwzLmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydEFzc3VyZWRJ
// SIG // RFJvb3RDQS5jcmwwEQYDVR0gBAowCDAGBgRVHSAAMA0G
// SIG // CSqGSIb3DQEBDAUAA4IBAQBwoL9DXFXnOF+go3QbPbYW
// SIG // 1/e/Vwe9mqyhhyzshV6pGrsi+IcaaVQi7aSId229GhT0
// SIG // E0p6Ly23OO/0/4C5+KH38nLeJLxSA8hO0Cre+i1Wz/n0
// SIG // 96wwepqLsl7Uz9FDRJtDIeuWcqFItJnLnU+nBgMTdydE
// SIG // 1Od/6Fmo8L8vC6bp8jQ87PcDx4eo0kxAGTVGamlUsLih
// SIG // Vo7spNU96LHc/RzY9HdaXFSMb++hUD38dglohJ9vytsg
// SIG // jTVgHAIDyyCwrFigDkBjxZgiwbJZ9VVrzyerbHbObyMt
// SIG // 9H5xaiNrIv8SuFQtJ37YOtnwtoeW/VvRXKwYw02fc7cB
// SIG // qZ9Xql4o4rmUMIIGrjCCBJagAwIBAgIQBzY3tyRUfNhH
// SIG // rP0oZipeWzANBgkqhkiG9w0BAQsFADBiMQswCQYDVQQG
// SIG // EwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYD
// SIG // VQQLExB3d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQDExhE
// SIG // aWdpQ2VydCBUcnVzdGVkIFJvb3QgRzQwHhcNMjIwMzIz
// SIG // MDAwMDAwWhcNMzcwMzIyMjM1OTU5WjBjMQswCQYDVQQG
// SIG // EwJVUzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xOzA5
// SIG // BgNVBAMTMkRpZ2lDZXJ0IFRydXN0ZWQgRzQgUlNBNDA5
// SIG // NiBTSEEyNTYgVGltZVN0YW1waW5nIENBMIICIjANBgkq
// SIG // hkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAxoY1BkmzwT1y
// SIG // SVFVxyUDxPKRN6mXUaHW0oPRnkyibaCwzIP5WvYRoUQV
// SIG // Ql+kiPNo+n3znIkLf50fng8zH1ATCyZzlm34V6gCff1D
// SIG // tITaEfFzsbPuK4CEiiIY3+vaPcQXf6sZKz5C3GeO6lE9
// SIG // 8NZW1OcoLevTsbV15x8GZY2UKdPZ7Gnf2ZCHRgB720RB
// SIG // idx8ald68Dd5n12sy+iEZLRS8nZH92GDGd1ftFQLIWhu
// SIG // NyG7QKxfst5Kfc71ORJn7w6lY2zkpsUdzTYNXNXmG6jB
// SIG // ZHRAp8ByxbpOH7G1WE15/tePc5OsLDnipUjW8LAxE6lX
// SIG // KZYnLvWHpo9OdhVVJnCYJn+gGkcgQ+NDY4B7dW4nJZCY
// SIG // OjgRs/b2nuY7W+yB3iIU2YIqx5K/oN7jPqJz+ucfWmyU
// SIG // 8lKVEStYdEAoq3NDzt9KoRxrOMUp88qqlnNCaJ+2RrOd
// SIG // OqPVA+C/8KI8ykLcGEh/FDTP0kyr75s9/g64ZCr6dSgk
// SIG // Qe1CvwWcZklSUPRR8zZJTYsg0ixXNXkrqPNFYLwjjVj3
// SIG // 3GHek/45wPmyMKVM1+mYSlg+0wOI/rOP015LdhJRk8mM
// SIG // DDtbiiKowSYI+RQQEgN9XyO7ZONj4KbhPvbCdLI/Hgl2
// SIG // 7KtdRnXiYKNYCQEoAA6EVO7O6V3IXjASvUaetdN2udIO
// SIG // a5kM0jO0zbECAwEAAaOCAV0wggFZMBIGA1UdEwEB/wQI
// SIG // MAYBAf8CAQAwHQYDVR0OBBYEFLoW2W1NhS9zKXaaL3WM
// SIG // aiCPnshvMB8GA1UdIwQYMBaAFOzX44LScV1kTN8uZz/n
// SIG // upiuHA9PMA4GA1UdDwEB/wQEAwIBhjATBgNVHSUEDDAK
// SIG // BggrBgEFBQcDCDB3BggrBgEFBQcBAQRrMGkwJAYIKwYB
// SIG // BQUHMAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBB
// SIG // BggrBgEFBQcwAoY1aHR0cDovL2NhY2VydHMuZGlnaWNl
// SIG // cnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5jcnQw
// SIG // QwYDVR0fBDwwOjA4oDagNIYyaHR0cDovL2NybDMuZGln
// SIG // aWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5j
// SIG // cmwwIAYDVR0gBBkwFzAIBgZngQwBBAIwCwYJYIZIAYb9
// SIG // bAcBMA0GCSqGSIb3DQEBCwUAA4ICAQB9WY7Ak7ZvmKlE
// SIG // IgF+ZtbYIULhsBguEE0TzzBTzr8Y+8dQXeJLKftwig2q
// SIG // KWn8acHPHQfpPmDI2AvlXFvXbYf6hCAlNDFnzbYSlm/E
// SIG // UExiHQwIgqgWvalWzxVzjQEiJc6VaT9Hd/tydBTX/6tP
// SIG // iix6q4XNQ1/tYLaqT5Fmniye4Iqs5f2MvGQmh2ySvZ18
// SIG // 0HAKfO+ovHVPulr3qRCyXen/KFSJ8NWKcXZl2szwcqMj
// SIG // +sAngkSumScbqyQeJsG33irr9p6xeZmBo1aGqwpFyd/E
// SIG // jaDnmPv7pp1yr8THwcFqcdnGE4AJxLafzYeHJLtPo0m5
// SIG // d2aR8XKc6UsCUqc3fpNTrDsdCEkPlM05et3/JWOZJyw9
// SIG // P2un8WbDQc1PtkCbISFA0LcTJM3cHXg65J6t5TRxktcm
// SIG // a+Q4c6umAU+9Pzt4rUyt+8SVe+0KXzM5h0F4ejjpnOHd
// SIG // I/0dKNPH+ejxmF/7K9h+8kaddSweJywm228Vex4Ziza4
// SIG // k9Tm8heZWcpw8De/mADfIBZPJ/tgZxahZrrdVcA6KYaw
// SIG // mKAr7ZVBtzrVFZgxtGIJDwq9gdkT/r+k0fNX2bwE+oLe
// SIG // Mt8EifAAzV3C+dAjfwAL5HYCJtnwZXZCpimHCUcr5n8a
// SIG // pIUP/JiW9lVUKx+A+sDyDivl1vupL0QVSucTDh3bNzga
// SIG // oSv27dZ8/DCCBrAwggSYoAMCAQICEAitQLJg0pxMn17N
// SIG // qb2TrtkwDQYJKoZIhvcNAQEMBQAwYjELMAkGA1UEBhMC
// SIG // VVMxFTATBgNVBAoTDERpZ2lDZXJ0IEluYzEZMBcGA1UE
// SIG // CxMQd3d3LmRpZ2ljZXJ0LmNvbTEhMB8GA1UEAxMYRGln
// SIG // aUNlcnQgVHJ1c3RlZCBSb290IEc0MB4XDTIxMDQyOTAw
// SIG // MDAwMFoXDTM2MDQyODIzNTk1OVowaTELMAkGA1UEBhMC
// SIG // VVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMUEwPwYD
// SIG // VQQDEzhEaWdpQ2VydCBUcnVzdGVkIEc0IENvZGUgU2ln
// SIG // bmluZyBSU0E0MDk2IFNIQTM4NCAyMDIxIENBMTCCAiIw
// SIG // DQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBANW0L0LQ
// SIG // KK14t13VOVkbsYhC9TOM6z2Bl3DFu8SFJjCfpI5o2Fz1
// SIG // 6zQkB+FLT9N4Q/QX1x7a+dLVZxpSTw6hV/yImcGRzIED
// SIG // Pk1wJGSzjeIIfTR9TIBXEmtDmpnyxTsf8u/LR1oTpkyz
// SIG // ASAl8xDTi7L7CPCK4J0JwGWn+piASTWHPVEZ6JAheEUu
// SIG // oZ8s4RjCGszF7pNJcEIyj/vG6hzzZWiRok1MghFIUmje
// SIG // EL0UV13oGBNlxX+yT4UsSKRWhDXW+S6cqgAV0Tf+GgaU
// SIG // wnzI6hsy5srC9KejAw50pa85tqtgEuPo1rn3MeHcreQY
// SIG // oNjBI0dHs6EPbqOrbZgGgxu3amct0r1EGpIQgY+wOwnX
// SIG // x5syWsL/amBUi0nBk+3htFzgb+sm+YzVsvk4EObqzpH1
// SIG // vtP7b5NhNFy8k0UogzYqZihfsHPOiyYlBrKD1Fz2FRlM
// SIG // 7WLgXjPy6OjsCqewAyuRsjZ5vvetCB51pmXMu+NIUPN3
// SIG // kRr+21CiRshhWJj1fAIWPIMorTmG7NS3DVPQ+EfmdTCN
// SIG // 7DCTdhSmW0tddGFNPxKRdt6/WMtyEClB8NXFbSZ2aBFB
// SIG // E1ia3CYrAfSJTVnbeM+BSj5AR1/JgVBzhRAjIVlgimRU
// SIG // wcwhGug4GXxmHM14OEUwmU//Y09Mu6oNCFNBfFg9R7P6
// SIG // tuyMMgkCzGw8DFYRAgMBAAGjggFZMIIBVTASBgNVHRMB
// SIG // Af8ECDAGAQH/AgEAMB0GA1UdDgQWBBRoN+Drtjv4XxGG
// SIG // +/5hewiIZfROQjAfBgNVHSMEGDAWgBTs1+OC0nFdZEzf
// SIG // Lmc/57qYrhwPTzAOBgNVHQ8BAf8EBAMCAYYwEwYDVR0l
// SIG // BAwwCgYIKwYBBQUHAwMwdwYIKwYBBQUHAQEEazBpMCQG
// SIG // CCsGAQUFBzABhhhodHRwOi8vb2NzcC5kaWdpY2VydC5j
// SIG // b20wQQYIKwYBBQUHMAKGNWh0dHA6Ly9jYWNlcnRzLmRp
// SIG // Z2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRSb290RzQu
// SIG // Y3J0MEMGA1UdHwQ8MDowOKA2oDSGMmh0dHA6Ly9jcmwz
// SIG // LmRpZ2ljZXJ0LmNvbS9EaWdpQ2VydFRydXN0ZWRSb290
// SIG // RzQuY3JsMBwGA1UdIAQVMBMwBwYFZ4EMAQMwCAYGZ4EM
// SIG // AQQBMA0GCSqGSIb3DQEBDAUAA4ICAQA6I0Q9jQh27o+8
// SIG // OpnTVuACGqX4SDTzLLbmdGb3lHKxAMqvbDAnExKekESf
// SIG // S/2eo3wm1Te8Ol1IbZXVP0n0J7sWgUVQ/Zy9toXgdn43
// SIG // ccsi91qqkM/1k2rj6yDR1VB5iJqKisG2vaFIGH7c2IAa
// SIG // ERkYzWGZgVb2yeN258TkG19D+D6U/3Y5PZ7Umc9K3Sjr
// SIG // XyahlVhI1Rr+1yc//ZDRdobdHLBgXPMNqO7giaG9OeE4
// SIG // Ttpuuzad++UhU1rDyulq8aI+20O4M8hPOBSSmfXdzlRt
// SIG // 2V0CFB9AM3wD4pWywiF1c1LLRtjENByipUuNzW92NyyF
// SIG // PxrOJukYvpAHsEN/lYgggnDwzMrv/Sk1XB+JOFX3N4qL
// SIG // CaHLC+kxGv8uGVw5ceG+nKcKBtYmZ7eS5k5f3nqsSc8u
// SIG // pHSSrds8pJyGH+PBVhsrI/+PteqIe3Br5qC6/To/RabE
// SIG // 6BaRUotBwEiES5ZNq0RA443wFSjO7fEYVgcqLxDEDAhk
// SIG // PDOPriiMPMuPiAsNvzv0zh57ju+168u38HcT5ucoP6wS
// SIG // rqUvImxB+YJcFWbMbA7KxYbD9iYzDAdLoNMHAmpqQDBI
// SIG // SzSoUSC7rRuFCOJZDW3KBVAr6kocnqX9oKcfBnTn8tZS
// SIG // kP2vhUgh+Vc7tJwD7YZF9LRhbr9o4iZghurIr6n+lB3n
// SIG // Yxs6hlZ4TjCCBsIwggSqoAMCAQICEAVEr/OUnQg5pr/b
// SIG // P1/lYRYwDQYJKoZIhvcNAQELBQAwYzELMAkGA1UEBhMC
// SIG // VVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYD
// SIG // VQQDEzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYg
// SIG // U0hBMjU2IFRpbWVTdGFtcGluZyBDQTAeFw0yMzA3MTQw
// SIG // MDAwMDBaFw0zNDEwMTMyMzU5NTlaMEgxCzAJBgNVBAYT
// SIG // AlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjEgMB4G
// SIG // A1UEAxMXRGlnaUNlcnQgVGltZXN0YW1wIDIwMjMwggIi
// SIG // MA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQCjU0WH
// SIG // HYOOW6w+VLMj4M+f1+XS512hDgncL0ijl3o7Kpxn3GIV
// SIG // WMGpkxGnzaqyat0QKYoeYmNp01icNXG/OpfrlFCPHCDq
// SIG // x5o7L5Zm42nnaf5bw9YrIBzBl5S0pVCB8s/LB6YwaMqD
// SIG // Qtr8fwkklKSCGtpqutg7yl3eGRiF+0XqDWFsnf5xXsQG
// SIG // mjzwxS55DxtmUuPI1j5f2kPThPXQx/ZILV5FdZZ1/t0Q
// SIG // oRuDwbjmUpW1R9d4KTlr4HhZl+NEK0rVlc7vCBfqgmRN
// SIG // /yPjyobutKQhZHDr1eWg2mOzLukF7qr2JPUdvJscsrdf
// SIG // 3/Dudn0xmWVHVZ1KJC+sK5e+n+T9e3M+Mu5SNPvUu+vU
// SIG // oCw0m+PebmQZBzcBkQ8ctVHNqkxmg4hoYru8QRt4GW3k
// SIG // 2Q/gWEH72LEs4VGvtK0VBhTqYggT02kefGRNnQ/fztFe
// SIG // jKqrUBXJs8q818Q7aESjpTtC/XN97t0K/3k0EH6mXApY
// SIG // TAA+hWl1x4Nk1nXNjxJ2VqUk+tfEayG66B80mC866msB
// SIG // sPf7Kobse1I4qZgJoXGybHGvPrhvltXhEBP+YUcKjP7w
// SIG // tsfVx95sJPC/QoLKoHE9nJKTBLRpcCcNT7e1NtHJXwik
// SIG // cKPsCvERLmTgyyIryvEoEyFJUX4GZtM7vvrrkTjYUQfK
// SIG // lLfiUKHzOtOKg8tAewIDAQABo4IBizCCAYcwDgYDVR0P
// SIG // AQH/BAQDAgeAMAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/
// SIG // BAwwCgYIKwYBBQUHAwgwIAYDVR0gBBkwFzAIBgZngQwB
// SIG // BAIwCwYJYIZIAYb9bAcBMB8GA1UdIwQYMBaAFLoW2W1N
// SIG // hS9zKXaaL3WMaiCPnshvMB0GA1UdDgQWBBSltu8T5+/N
// SIG // 0GSh1VapZTGj3tXjSTBaBgNVHR8EUzBRME+gTaBLhklo
// SIG // dHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
// SIG // cnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0YW1waW5n
// SIG // Q0EuY3JsMIGQBggrBgEFBQcBAQSBgzCBgDAkBggrBgEF
// SIG // BQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29tMFgG
// SIG // CCsGAQUFBzAChkxodHRwOi8vY2FjZXJ0cy5kaWdpY2Vy
// SIG // dC5jb20vRGlnaUNlcnRUcnVzdGVkRzRSU0E0MDk2U0hB
// SIG // MjU2VGltZVN0YW1waW5nQ0EuY3J0MA0GCSqGSIb3DQEB
// SIG // CwUAA4ICAQCBGtbeoKm1mBe8cI1PijxonNgl/8ss5M3q
// SIG // XSKS7IwiAqm4z4Co2efjxe0mgopxLxjdTrbebNfhYJwr
// SIG // 7e09SI64a7p8Xb3CYTdoSXej65CqEtcnhfOOHpLawkA4
// SIG // n13IoC4leCWdKgV6hCmYtld5j9smViuw86e9NwzYmHZP
// SIG // VrlSwradOKmB521BXIxp0bkrxMZ7z5z6eOKTGnaiaXXT
// SIG // UOREEr4gDZ6pRND45Ul3CFohxbTPmJUaVLq5vMFpGbrP
// SIG // FvKDNzRusEEm3d5al08zjdSNd311RaGlWCZqA0Xe2VC1
// SIG // UIyvVr1MxeFGxSjTredDAHDezJieGYkD6tSRN+9NUvPJ
// SIG // YCHEVkft2hFLjDLDiOZY4rbbPvlfsELWj+MXkdGqwFXj
// SIG // hr+sJyxB0JozSqg21Llyln6XeThIX8rC3D0y33XWNmda
// SIG // ifj2p8flTzU8AL2+nCpseQHc2kTmOt44OwdeOVj0fHMx
// SIG // VaCAEcsUDH6uvP6k63llqmjWIso765qCNVcoFstp8jKa
// SIG // stLYOrixRoZruhf9xHdsFWyuq69zOuhJRrfVf8y2OMDY
// SIG // 7Bz1tqG4QyzfTkx9HmhwwHcK1ALgXGC7KP845VJa1qwX
// SIG // IiNO9OzTF/tQa/8Hdx9xl0RBybhG02wyfFgvZ0dl5Rtz
// SIG // tpn5aywGRu9BHvDwX+Db2a2QgESvgBBBijCCB6wwggWU
// SIG // oAMCAQICEAeukA1rfh34tL4d8kySqlMwDQYJKoZIhvcN
// SIG // AQELBQAwaTELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRp
// SIG // Z2lDZXJ0LCBJbmMuMUEwPwYDVQQDEzhEaWdpQ2VydCBU
// SIG // cnVzdGVkIEc0IENvZGUgU2lnbmluZyBSU0E0MDk2IFNI
// SIG // QTM4NCAyMDIxIENBMTAeFw0yMzAxMTYwMDAwMDBaFw0y
// SIG // NDExMDkyMzU5NTlaMIGwMQswCQYDVQQGEwJVUzERMA8G
// SIG // A1UECBMITmV3IFlvcmsxDzANBgNVBAcTBkFybW9uazE0
// SIG // MDIGA1UEChMrSW50ZXJuYXRpb25hbCBCdXNpbmVzcyBN
// SIG // YWNoaW5lcyBDb3Jwb3JhdGlvbjERMA8GA1UECxMISUJN
// SIG // IENDU1MxNDAyBgNVBAMTK0ludGVybmF0aW9uYWwgQnVz
// SIG // aW5lc3MgTWFjaGluZXMgQ29ycG9yYXRpb24wggIiMA0G
// SIG // CSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDHo8WegHOF
// SIG // DOWmWpPCWwBRynbJlSIXmHtVXziAAyESpE3iYQtzrkeh
// SIG // U2yKxxiRCOoJzj8KHLvT3MXH1Sn1GiGnYLs5+qa3p3oO
// SIG // Iu65uHxZB5O+cUcv6cD21ajPq98tmTe2iin9KE6aQ6hX
// SIG // hYj/r0TXQsCCn90TpGC0I/gWxrASqe+t7hFtESXPji7X
// SIG // Jj3PidqLq+N+3fcPJ6cxJQfkhX7rBj6JPUXBhFKeG1gM
// SIG // yIo1U+L45p0N4nDHQ6CI8mCO3fW3qDz/sOKFM5JXat/V
// SIG // tnFZ4UoEGe6F6cer6W2TKniPLEec6UlP4N9cG8FEbCNK
// SIG // r6oYriZ/nuq8vQSAaO/cVa4Z5bu+7vVVq8GEc1MnV29H
// SIG // iB/ycvTD2/edipiWxX99cUnZMN5lJDS+DO7gnw0dcRxm
// SIG // 7PBFYd1L7lP7FjVXbcjfS5HDlJcYrdGshVRaO4PRHcAN
// SIG // nXYR1BVwTNJxW2oNP2iIkVdkMo/nvyfKDW9Fno9I+kxi
// SIG // PHzDnMhlzqFbQAPXgCMrnDLb5RWCIn2W99DL+7eOUxGG
// SIG // MgYT/PSVpCaxXJAv7F5paBmEIfUYN1spGh0exHsEbfO6
// SIG // bo2QcTmGAKNTWDuIA3DLf3GyKw5MoD8H5q6t72BjEFGP
// SIG // iKFQ9cTX3NIXSM7TBi4+8B9uhb3jjFeOkPCxD75LYDhc
// SIG // 6zAgLsbwIqvnXwIDAQABo4ICBjCCAgIwHwYDVR0jBBgw
// SIG // FoAUaDfg67Y7+F8Rhvv+YXsIiGX0TkIwHQYDVR0OBBYE
// SIG // FHrJrMdNbnTpC77JIwBFimIZPe2PMA4GA1UdDwEB/wQE
// SIG // AwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzCBtQYDVR0f
// SIG // BIGtMIGqMFOgUaBPhk1odHRwOi8vY3JsMy5kaWdpY2Vy
// SIG // dC5jb20vRGlnaUNlcnRUcnVzdGVkRzRDb2RlU2lnbmlu
// SIG // Z1JTQTQwOTZTSEEzODQyMDIxQ0ExLmNybDBToFGgT4ZN
// SIG // aHR0cDovL2NybDQuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0
// SIG // VHJ1c3RlZEc0Q29kZVNpZ25pbmdSU0E0MDk2U0hBMzg0
// SIG // MjAyMUNBMS5jcmwwPgYDVR0gBDcwNTAzBgZngQwBBAEw
// SIG // KTAnBggrBgEFBQcCARYbaHR0cDovL3d3dy5kaWdpY2Vy
// SIG // dC5jb20vQ1BTMIGUBggrBgEFBQcBAQSBhzCBhDAkBggr
// SIG // BgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29t
// SIG // MFwGCCsGAQUFBzAChlBodHRwOi8vY2FjZXJ0cy5kaWdp
// SIG // Y2VydC5jb20vRGlnaUNlcnRUcnVzdGVkRzRDb2RlU2ln
// SIG // bmluZ1JTQTQwOTZTSEEzODQyMDIxQ0ExLmNydDAMBgNV
// SIG // HRMBAf8EAjAAMA0GCSqGSIb3DQEBCwUAA4ICAQCHPKUK
// SIG // tYG31bzFQzKXd5Ol0d/CjMpxrYQBKiVRoAbRodLmazUI
// SIG // gLWaL1gA31z4mKC6T2FiXZYgaIrWisnYLizjRGUGdRro
// SIG // EO10sSB/Trqo1a9X0Uau7AgkpKGdx6N6iD3pCind6V/R
// SIG // tFjoIvxozA6qUaCXGUjZV5KJxn7c21Ty9JzTTEdeNe0Z
// SIG // JEqFWWI7PpOnqQ9wN9hTYKSSsO4AGRLg4sygX6XeIcvy
// SIG // 4o3EFnDz8xCuDlB+5oSFMyd9kFO+5dbFPS+I4oocsHDd
// SIG // rzjO7jRpKVptoleIKzPZbN6t28KYwAS85vlBu/kjMyyi
// SIG // j10FNrKbPyIHYzJIKCZo+omhICKIxQSC/KXo1KMDZTpn
// SIG // bhHBySYKyDxt9Sxv86HoeXz0hfgBR60bhQ1ITZgPzwLB
// SIG // 2ZbNBfTQCJi+ZzNJtnv8Q4y0hEQbCawnOgMyL9FJvHMz
// SIG // sZA6MLB3qgU0wChR1Lyd6jD9Dksw+ZfVC62YNZf86KjZ
// SIG // Tq7D3+jZVQ6SOY9gvXrZVBZ/ZYlD+C/0HpyG3WpgzShZ
// SIG // MJsmaxxdPAwCXMJQvjd+IGWfbIzKq2JJn32uDM9aPIzO
// SIG // 9c7Vaj6/dEljU5qHlwbrYtkrmThAGPDuO8URxcogPhlq
// SIG // J45o/9VDp1UsSAZ36BXjwyl5Rr3RrgqhrBkt1t08AY8n
// SIG // oXwaAvf7wi+eYRvAlDGCBkowggZGAgEBMH0waTELMAkG
// SIG // A1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMu
// SIG // MUEwPwYDVQQDEzhEaWdpQ2VydCBUcnVzdGVkIEc0IENv
// SIG // ZGUgU2lnbmluZyBSU0E0MDk2IFNIQTM4NCAyMDIxIENB
// SIG // MQIQB66QDWt+Hfi0vh3yTJKqUzANBglghkgBZQMEAgEF
// SIG // AKB8MBAGCisGAQQBgjcCAQwxAjAAMBkGCSqGSIb3DQEJ
// SIG // AzEMBgorBgEEAYI3AgEEMBwGCisGAQQBgjcCAQsxDjAM
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCA56QXL
// SIG // b5rtcKCcOH2YkFdkzTHHILb1MQ0h4ejrpmNbZTANBgkq
// SIG // hkiG9w0BAQEFAASCAgCxLCzi5AaKv4tLrecUmbQk/cTn
// SIG // snhu+IoYAErG2zJv7/dDNy5ZOTQr/FKD5qOL7zs5Gm2L
// SIG // fRlVkXLcLpI5LR/MRzd5T72NP/WSUaetB2+BIlPigRqi
// SIG // HLo78uMn9HvaBSfvqlBy2h4Myt0z566dzV3JXTa0b8if
// SIG // U4kMOMWAE2GQ5nW+fZ0q9SBkGSwrNzEPTtUROEiJetAB
// SIG // DPsPGfLVQ9OihQ0PHD6JF4TcCWan5NrmbCkbD1nWvwdI
// SIG // QtVOy2mmA2X/WGSkA0zAevN+zVLTMH1bggYbOWzVru0d
// SIG // ljN53kVFkCxM+fpI/HjpwPJjLea6nCLmePkYEmwnFMWu
// SIG // cbIydjc7XOlgEHAgHSIdFwK44eGPh92q31IGcXt4fWMs
// SIG // gS3EvuxUz3RRqSKpCrIPYtdPglqJ69wCSqBX4CiGyRV2
// SIG // XjbhA5y2vh+aS1wRcnUaNXsCZe+77BBvOQBTgY8sBvie
// SIG // dqn/dElrPRIlYULMwLPtEFMfiOGoIFfSyFQocrbQcCCx
// SIG // ZVZyW8qZFGiOznoS3+q7VPJ/KwxX7ZCgNvQ6xjPXqqto
// SIG // R6zp1vU1pQilnoCE/kWOsPfeOE/bk5RmUAB34HpQ8itC
// SIG // 7uzLJKnjv9EjqInWHZKtfX5qQBCMEARr0qyCScgm1OZi
// SIG // 4Yj29+uM4rv8rtFWqe7djR+CEEoe66pnOktqXKCB1qGC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4NTBaMC8GCSqGSIb3
// SIG // DQEJBDEiBCC0ipKE3vR3VhzyGKdYHfMdLSNTGHvOqs1y
// SIG // B7nkIkK8OzANBgkqhkiG9w0BAQEFAASCAgCfkPihLGuQ
// SIG // eIAei/80a/hts5r9GvzjViCDL6/sRWXPzqCkQKxdlysC
// SIG // 2s6LBehxHLx24vbfCDSLoNvVexuTZTRAs65wBlxASouh
// SIG // b14n2+Q4LMZLyBCNHKJfODZaqepXRKPQkrXPPNbkqJKd
// SIG // r76eYpxKPigVYl2zRfwWNkPwvW03EVZ68rdntwYuitfC
// SIG // iDPI4wWJDD8YSBiVYaPe/F7ojJ1CbcV7jxC6IIpkCf5w
// SIG // 3umU+/a7tjehpn1cdbMPEjmCTBY3032oieBvzwQOOuPp
// SIG // 2Msfc3Ny4vCnlFlNCs3yBp1RX3gJIEbQ/pvclpixscmB
// SIG // IS9cj6fW+K1fodqGaweE5Q/63bftf2dp9EAMC3/Yvf3E
// SIG // 1bgKGVQjE8OewlL2ETAD6rFfQir/+XPGeND9lAF8r5EU
// SIG // LCCXA9FJs/a+PSWe9wgxSWLrDxJXWwBGjSuZLdGNFMgS
// SIG // bYS3QBDiZ9yIOn1oDp5Of1aPXioEsfKD2fICGYej51nc
// SIG // Evq6b5wzosMaQ0/yBZ2QjKwRfhUqf4yrXnjuZVNpGNwR
// SIG // 7Hcrew+1JI4Z0xhmWHiZlA/rP0kCWFViGeVp2QwpuCc8
// SIG // ZaIix9VSYtJznvqTPNyJGNXHgq2XKCrQgVFNPpOwIR4/
// SIG // haxSJguEHMpxjNlwt607WdxAzzlGetjaiQLsnBZxoqNq
// SIG // /XIdIkBHzDkTAw==
// SIG // End signature block
