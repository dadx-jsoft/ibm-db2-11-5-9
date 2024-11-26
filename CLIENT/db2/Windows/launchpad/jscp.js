// Licensed Materials - Property of IBM
// 5648-F10 (C) Copyright International Business Machines Corp. 2005, 2010
// All Rights Reserved
// US Government Users Restricted Rights - Use, duplication or disclosure
// restricted by GSA ADP Schedule Contract with IBM Corp.

//do not allow draging, it hangs the launchpad in the Internet Explorer.
document.ondragstart = function() { return false; }; 
	
var defaultIndex = "default";
var engineTop;
if (typeof window.opener == "undefined" || window.opener == null)
    engineTop = top;
else
    engineTop = window.opener.top;

var securityCheck = new Function('return window');

var openWindows = new Array();

// log unknown syntax errors
if (typeof window.onerror == "undefined")
    window.onerror = function (msg,fn,line) {
        engineTop.logMessage("LPV20011E", msg, fn, line);
        return true;
    }

// Following are Convenience functions for working in both a browser and Java launchpad environment
function browserEval(script)
{ 
  return eval(script); 
}
function javaEval(script)
{ 
  return null; 
}
function launchpadEval(scriptForBrowser, scriptForJava)
{ 
  if(typeof scriptForBrowser == 'string')
  { 
    return eval(scriptForBrowser); 
  }
  else
  { 
    return scriptForBrowser;
  } 
}
function javaString(text)
{ 
  return ''; 
}
function browserString(text)
{ 
  return text; 
}
function launchpadString(textForBrowser, textForJava)
{ 
  return textForBrowser; 
}
//<ACGC_Bidi> start
function bidiString(rtl, ltr)
{ 
  if(top.isBidiLocale())
  {
    return rtl;
  }
  return ltr; 
}
//<ACGC_Bidi> end

function property(varName,defaultValue) {
    return engineTop.findProperty(varName, self, defaultValue);
}

//Sets a property to a specified value
//varName - the name of the property
//value - the new value of the property
function setProperty(varName, value)
{
    return engineTop.assignProperty(varName, self, value);
}

FOREGROUND = true;
BACKGROUND = false;
VISIBLE = false;
HIDDEN = true;
ASCII = "ASCII";
UTF8 = "UTF-8";
// executes an arbitrary command
// diskID: string - ID that gets mapped to the current full directory path for relative names
// args: [strings] - command and parameters
// foreGroundValue: boolean - FOREGROUND or BACKGROUND
// isHidden: boolean - VISIBLE or HIDDEN
// element: document element - element to disable while running
// workingDirectory: The directory to be used as the working dir.  If not specified, launchpad temp is used
// callback: Use with the BACKGROUND parameter to call a function when the program returns. The function receives the return code as an argument. 
// timeout: Use with the callback parameter to set the time, in milliseconds, between checks to see if the program has returned.
// noQuotes: specify true if the function should not add quotes around the args
// returns: integer - exit code if foreground or process status if background
LAUNCHPAD_DISKID = null;
NO_DISKID = engineTop.UNDEFINED;
function runProgram(diskID,args,foreGroundValue,isHidden,element,workingDirectory,callback,timeout,noQuotes, showWarningDialogs) {
	top.logCLPEnter("runProgram", arguments);
    var disk=engineTop.getDiskMapping(diskID);
    if ((disk == null) && (typeof diskID != "undefined"))
	{	
		top.logCLPExit("runProgram", arguments);
		return -1;
	}
	else if (!args || args.length == 0)
	{
		top.logMessage('LPV32115W');
		if (showWarningDialogs)
			top.showDialog(property('unsupportedPlatformText'), { id: 'unsupportedPlatformDialog', title: property('unsupportedPlatformTitle'), buttons: [{ id: 'okButton', value: property('promptOK'), onclick: "top.showDialog('unsupportedPlatformDialog', false);" } ] });
		return null;
	}
	top.logCLPExit("runProgram", arguments);
    return engineTop.secureRunProgram(securityCheck, disk, args, foreGroundValue, isHidden, element, workingDirectory, callback, timeout, noQuotes);
}

// popup an HTML page to view
// diskID: string - ID that gets mapped to the current full directory path for relative names
// name: string - messy URL spec to display
// element: document element - disable briefly while viewing for feedback
function viewPage(diskID,name,element) {
    return viewPageImpl(diskID, '',name, element);       
}

// popup an HTML page to view
// diskID: string - ID that gets mapped to the current full directory path for relative names
// windowName: string - Name of window to open.  If window of same name already exists, it is re-used.
// name: string - messy URL spec to display
// element: document element - disable briefly while viewing for feedback
function viewNamedPage(diskID,windowName,name,element) {
	if ( !!getEnv('LaunchPadViewNamedPage') ) {
		var oldViewerPath = top.VIEWERPATH;
		top.VIEWERPATH="";
		var returnVal = viewPageImpl(diskID,windowName,name,element);
		top.VIEWERPATH = oldViewerPath;    
		return returnVal;
	} else {
		engineTop.logMessage('LPV31043W', 'function viewNamedPage', 'function viewPage');
		viewPageImpl(diskID, '',name, element); 
	}
}

// popup an HTML page to view
// diskID: string - ID that gets mapped to the current full directory path for relative names
// windowName: string - Name of window to open.  If window of same name already exists, it is re-used.
// name: string - messy URL spec to display
// element: document element - disable briefly while viewing for feedback
function viewPageImpl(diskID,windowName,name,element) {
    var disk=engineTop.getDiskMapping(diskID);
    if ((disk == null) && (typeof diskID != "undefined")) return false;
    var win = null;
    if (typeof top.VIEWERPATH != "string" || top.VIEWERPATH == '') {
        //The window is already open... unless it's been closed
        if (windowName != '' && typeof openWindows[windowName] != "undefined" && openWindows[windowName] != null) {
            win = openWindows[windowName]; 
            try
            {
                //this is the code path for firefox and mozilla.  IE will crash on the win.closed line and
                //go to the catch.
                if (win.closed) {
                    win = window.open('about:blank',windowName,'resizable,toolbar,status,menubar,personalbar,location,directories,titlebar,close,scrollbars');
                    openWindows[windowName] = win;
                }
            }
            catch(e)
            {
                //this is really stupid, but IE crashes if win.closed is called after the window has
                //been closed.  Mozilla/firefox work fine.  onunload events don't seem to work either.
                win = window.open('about:blank',windowName,'resizable,toolbar,status,menubar,personalbar,location,directories,titlebar,close,scrollbars');
                openWindows[windowName] = win;
            }            
        } else {  //the window is not already open or it's not a named window
            if(top.OSTYPE != "windows" || windowName != '')
            	win = window.open('about:blank',windowName,'resizable,toolbar,status,menubar,personalbar,location,directories,titlebar,close,scrollbars');

            if (windowName != '') {
                openWindows[windowName] = win;
            }
        }        
    }
    return engineTop.secureViewPage(securityCheck, win, disk, name, element);
}


// see if a messy-named file exists
// diskID: string - ID that gets mapped to the current full directory path for relative names
// name: string - messy file name
// returns string - full native file if it exists
//         null - if not exists
function clientFileExists(diskID,name) {
    return engineTop.secureClientFileExists(securityCheck, engineTop.getDiskMapping(diskID), name);
}

//Determines if a directory exists
// diskID: string - ID that gets mapped to the current full directory path for relative names
// fileName: string - full native directory name
// returns: boolean
function directoryExists(diskID, directory) {

    var topDir = engineTop.getDiskMapping(diskID);
    var fullDirectory = top.getFullFileName(topDir,directory);    

    return engineTop.secureDirectoryExists(securityCheck, top.getNativeFileName(fullDirectory));
}

// search for a file
// diskID: string - ID that gets mapped to the current full directory path for relative names
// name: string - relative path to find
// returns string - full native file name if found
//         undefined/null if not found
// search order:
//      content/locale
//      content/fallback locale
//      content
//      skin/locale
//      skin/fallback locale
//      skin
//      launchpad/locale
//      launchpad/fallback locale
//      launchpad
function findFile(diskID,name) {
    var fallBackLocale = property('fallBackLocale','en');
    return engineTop.secureFindFile(securityCheck, engineTop.getDiskMapping(diskID), name, fallBackLocale, self);
}

// diskID: string - ID that gets mapped to the current full directory path for relative names
function findURL(diskID,name) {
    var i = name.indexOf('?');
    var fullFileName = findFile(diskID, (i > 0) ? name.substring(0,i) : name);
    return top.nativeFileToURL(fullFileName+((i > 0) ? name.substring(i) : ''));
}

//Searches a list of paths for a file with a give disk ID
//
//sample usage
//  var pathList = new Array();
//  pathList.push(startingDir + top.LOCALE);
//  pathList.push(startingDir + fallBackLocale);
//  return findFileInPaths(pathList, 'foo.txt');
//
// pathList - a list of paths to be searched
// name - the file to search for
function findFileInPaths(diskID, pathList, name) {
    var file = null;
    if ((typeof pathList == "object") && (pathList.length > 0)) {
        var startingDir = engineTop.getDiskMapping(diskID);
        if ( (startingDir == null) || (startingDir.length == 0))
            startingDir = '';
        for (var i in pathList) {
            var fullPath = top.getFullFileName(startingDir, pathList[i]+'/'+name);
            if (top.secureFileExists(securityCheck, fullPath)) {
                file = fullPath;
                break;
            }
        }
    }
    return file;
}

// This function allows the content writer to search for files of the form
// fileName_xx.extension where xx is a locale code.  This is a different
// translated file naming convention than what the launchpad uses internally.
// Sometimes, files must conform to external naming conventions that do not
// match the launchpads conventions.  
// 
// Usage: findTranslatedFileInDirectory(NO_DISKID, top.STARTINGDIR + '/info/, 'readme_xx.html');
// diskId - the launchpad disk id
// directory - directory where the file is located
// templateFileName - a template for the file name.  This function will replace _xx with _<locale>
// and return the path to that file.  If the file for the current locale cannot be found, this function
// will try the fallBackLocale.  If that cannot be found, it will return null
function findTranslatedFileInDirectory(diskID, directory, templateFileName)
{
  var file = null;
  var startingDir = engineTop.getDiskMapping(diskID);
  if ( (startingDir == null) || (startingDir.length == 0))
  {
      startingDir = directory;
  }
  else
  {
    startingDir += "/" + directory;
  }

  file = top.getFullFileName(startingDir, templateFileName);
  file = file.replace("_xx", "_" + top.LOCALE);
  if (!top.secureFileExists(securityCheck, file)) {
    file = top.getFullFileName(startingDir, templateFileName);
    file = file.replace("_xx", "_" + property('fallBackLocale'));
    if (!top.secureFileExists(securityCheck, file)) {   
      file = null;
      engineTop.logMessage('LPV22040W', top.getFullFileName(startingDir, templateFileName));
    }    
  }
  return file;
  
}

// get and format a platform dependent command to execute
// commandID: string - property name of array of platform dependent command templates
// arguments: [strings] - optional substitution parameters
function command(commandID) {   
    return engineTop.getCommand(property(commandID,null), arguments);
}
// Generic utility to best match the operating system
// commandDataArray: [strings] - array of platform dependent command templates
function getBestOSMatch(labelArray)
{
    var retVal = null;

    var osArchCombinations = new Array();
    osArchCombinations[0] = top.OS + "/" + top.ARCHITECTURE + "->" + top.TARGETOS + "/" + top.TARGETARCHITECTURE;
    osArchCombinations[1] = top.OS + "/" + top.ARCHITECTURE + "->" + top.TARGETOS;
    osArchCombinations[2] = top.OS + "/" + top.ARCHITECTURE + "->" + top.TARGETOSTYPE + "/" + top.TARGETARCHITECTURE;
    osArchCombinations[3] = top.OS + "/" + top.ARCHITECTURE + "->" + top.TARGETOSTYPE;
    osArchCombinations[4] = top.OS + "->" + top.TARGETOS + "/" + top.TARGETARCHITECTURE;
    osArchCombinations[5] = top.OS + "->" + top.TARGETOS;
    osArchCombinations[6] = top.OS + "->" + top.TARGETOSTYPE + "/" + top.TARGETARCHITECTURE;
    osArchCombinations[7] = top.OS + "->" + top.TARGETOSTYPE;
    osArchCombinations[8] = top.OSTYPE + "/" + top.ARCHITECTURE + "->" + top.TARGETOS + "/" + top.TARGETARCHITECTURE;
    osArchCombinations[9] = top.OSTYPE + "/" + top.ARCHITECTURE + "->" + top.TARGETOS;
    osArchCombinations[10] = top.OSTYPE + "/" + top.ARCHITECTURE + "->" + top.TARGETOSTYPE + "/" + top.TARGETARCHITECTURE; 
    osArchCombinations[11] = top.OSTYPE + "/" + top.ARCHITECTURE + "->" + top.TARGETOSTYPE; 
    osArchCombinations[12] = top.OSTYPE + "->" + top.TARGETOS + "/" + top.TARGETARCHITECTURE; 
    osArchCombinations[13] = top.OSTYPE + "->" + top.TARGETOS; 
    osArchCombinations[14] = top.OSTYPE + "->" + top.TARGETOSTYPE + "/" + top.TARGETARCHITECTURE; 
    osArchCombinations[15] = top.OSTYPE + "->" + top.TARGETOSTYPE; 
    osArchCombinations[16] = top.OS + "/" + top.ARCHITECTURE; 
    osArchCombinations[18] = top.OS;
    osArchCombinations[17] = top.OSTYPE + "/" + top.ARCHITECTURE;
    osArchCombinations[19] = top.OSTYPE;
    osArchCombinations[20] = defaultIndex;

    for (var i = 0; i < osArchCombinations.length; i++ ) {      
      if (labelArray[osArchCombinations[i]])
      {
        retVal = labelArray[osArchCombinations[i]];
        break;
      }      
    }

    //If we get through all of the combinations and don't have a match, just return the array
    if (typeof retVal == "undefined" || retVal == null) {
        try {
            retVal = labelArray;
        } catch(e) {}
    }
    return retVal;
}

// gets the value of an environment variable
// name: string - name of variable
// returns: string - value of variable
//          undefined - variable is not defined
function getEnv(name) {
    return engineTop.secureGetEnv(securityCheck, name);
}

// sets the value of an environment variable
// name: string - name of variable
// value: string - new value of variable
// returns: boolean - success status
function setEnv(name,value) {
    return engineTop.secureSetEnv(securityCheck, name, value);
}


// If you want to use showNotification with a java launchpad, use showNotificationExpandedParams
function showNotification(content, options) {
    top.logCLPEnter("showNotification", arguments);
	options = options || {};
	var defaultOptions = {
		id: 'notification' + Math.round(Math.random() * 1000000000),
		type: 'error',
		parent: 'notifications',
		document: document
	};
	options = top.launchpad.extend(options, defaultOptions);
	
	var html = '<div id="' + options.id + '" class="notification ' + options.type + '">' + 
		'<div class="notificationType"><img border="0" src="' + findURL(null, options.type + '.gif') + '" title="' + property(options.type + 'Notification', options.type) + '"></div>' + 
		'<div class="close"><a href="javascript:void 0" onclick="top.launchpad.get(\'' + options.id + '\', document).remove(); return false"><img border="0" src="' + findURL(null, 'close.gif') + '" title="' + property('closeDialog') + '"></a></div>' + 
		'<p>' + content + '</p>' + 
		'</div>';
	
	if (!top.launchpad.get(options.parent, options.document)) {
	
		top.launchpad.get(options.document.body).prepend('<div id="' + options.parent + '" class="notifications"></div>');
	}
	top.launchpad.get(options.parent, options.document).append(html);
	top.logCLPExit("showNotification", arguments);
	return options.id;
}


// If you want to use showNotification with a java launchpad, use this function.
function showNotificationExpandedParams(content, _id, _type, _parent, _document) {
	var _options ={
		id: 'notification' + Math.round(Math.random() * 1000000000),
		type: 'error',
		parent: 'notifications',
		document: document
	};
	if (!(typeof _id == "undefined" || _id === null) ) {
		_options.id = _id;
	}
	if (!(typeof _type == "undefined" || _type === null) ) {
		_options.type = _type;
	}
	if (!(typeof _parent == "undefined" || _parent === null) ) {
		_options.parent = _parent;
	}
	if (!(typeof _document == "undefined" || _document === null) ) {
		_options.document = _document;
	}
	return showNotification(content, _options);
	
}




function addTooltip(content, element, options)
{
	top.logCLPEnter("addTooltip", arguments);
	options = options || {};
	var defaultOptions = {
		id: 'tooltip' + Math.round(Math.random() * 1000000000),
		trigger: 'hover',
		document: document
	};
	options = top.launchpad.extend(options, defaultOptions);

	if (options.trigger === 'hover') {
	
		var helpHovered = false;
		
		function onTooltipEnter(e) {
		
			helpHovered = true;
		}
		
		function onTooltipLeave(e) {
		
			helpHovered = false;
			
			setTimeout(function() {
			
				if (!helpHovered) {
				
					top.launchpad.get(options.id, options.document).hide();
				}
				
			}, 500);
		}

		var elementHovered = false;

		function onEnter(e) {
		
			elementHovered = true;
			
			setTimeout(function () {
			
				if (elementHovered) {
				
					if (!top.launchpad.get(options.id, options.document)) {
					
						top.launchpad.get(options.document.body).append(
							'<div id="' + options.id + '" class="tooltip">' + 
								'<div class="tooltipContent">' + content + '</div>' + 
							'</div>'
						);
						top.launchpad.get(options.id, options.document).hover(onTooltipEnter, onTooltipLeave);
					}
					
					var coords = (options.document.parentWindow || options.document.defaultView).coordinates();
					var x = coords.x + 5 + 'px';
					var y = coords.y + 5 + 'px';
					
					top.launchpad.get(options.id, options.document).style('left', x).style('top', y).show();
				}
				
			}, 1250);
		}
		
		function onLeave(e) {
		
			elementHovered = false;
			
			setTimeout(function() {
			
				if (!helpHovered) {
				
					var tooltip = top.launchpad.get(options.id, options.document);
					if (tooltip) {
						tooltip.hide();
					}
				}
				
			}, 500);
		}
		
		top.launchpad.get(element, options.document).hover(onEnter, onLeave);
		
	} else if (options.trigger === 'click') {
		
		function onClick(e) {
		
			if (!top.launchpad.get(options.id, options.document)) {
			
				top.launchpad.get(options.document.body).append(
					'<div id="' + options.id + '" class="tooltip">' + 
						'<div class="close"><a href="javascript:void 0" onclick="top.launchpad.get(\'' + options.id + '\', document).remove(); return false"><img border="0" src="' + findURL(null, 'close.gif') + '" title="' + property('closeDialog') + '"></a></div>' + 
						'<div class="tooltipContent">' + content + '</div>' + 
					'</div>'
				);

			}
			
			var coords = (options.document.parentWindow || options.document.defaultView).coordinates();
			var x = coords.x + 5 + 'px';
			var y = coords.y + 5 + 'px';
			
			top.launchpad.get(options.id, options.document).style('left', x).style('top', y).show();
		}
		
		top.launchpad.get(element, options.document).click(onClick);
	}
	top.logCLPExit("addTooltip", arguments);
}

/**
 Tracks the coordinates of the mouse for the jscp window.  Example usage:
 var coords = coordinates();
 var x = coords.x;
 var y = coords.y;
 */
coordinates = (function () {

		var coords = { x: 0, y: 0 };
		var doc = document;
		
		// FIXME: Need to update this after creating document ready function in order to eliminate race condition
		setTimeout(function(){ 
			top.launchpad.get(doc.body).mousemove( function(e) { 
				coords.x = e.pageX ? e.pageX : e.clientX + doc.body.scrollLeft;
				coords.y = e.pageY ? e.pageY : e.clientY + doc.body.scrollTop;
			});
		}, 1000);
		
		return function (e) {
		
			if (!e) return coords;
			
			var pageX = e.pageX ? e.pageX : e.clientX + doc.body.scrollLeft;
			var pageY = e.pageY ? e.pageY : e.clientY + doc.body.scrollTop;
			
			return { x: pageX, y: pageY, current: coords };
		}
})();
	
// exits launchpad
// showPrompt: boolean - Determines if an "Are you sure you want to exit" dialog will be shown
// returns void
function Exit(showPrompt) {
  top.logCLPEnter("Exit", arguments);
    if (typeof showPrompt == "boolean" && showPrompt == true) {
        var content = "<div>"+property('exitPrompt')+"</div>";
		top.exitDialogId = showDialog(content, {
			title: top.evalJSCP(property('exitPromptTitle', property('title'))),
			buttons: [
				{
					id: "exitPromptConfirmationButton",
					name: "exitPromptConfirmationButton",
					value: property('exitPromptOK'),
					onclick: function(){ engineTop.secureExit(securityCheck); }
				},
				{
					id: "exitPromptCancelButton",
					name: "exitPromptCancelButton",
					value: property('exitPromptCancel'),
					onclick: function(){ top.closeDialog(top.exitDialogId); }
				}
			],
			width: "350px"
		});
		return;
    }
	top.logCLPExit("Exit", arguments);
    return engineTop.secureExit(securityCheck);
}

// repaint the current HTML doc
// returns void
function refreshPage() {
    return document.location.reload(false);
}

// read and inline a CSS file
// fileName: string - fully qualified native file name
// returns void
function loadCSSfile(fileName) {
  top.logCLPEnter("loadCSSfile", arguments);
    document.writeln('<STYLE>');
    var lines = engineTop.secureReadTextFile(securityCheck, fileName);
    if (lines && lines.length > 0) {
        var v = lines.join("\n");
        if (typeof v == "string" && v != null && v.length > 0) {
            parseJSCP(v,true);
        }
    }
    document.writeln('</STYLE>');
	top.logCLPExit("loadCSSfile", arguments);
}

DEFAULTCSS = '_DEFAULTCSS_';
// find and inline CSS files
// optional string - DEFAULTCSS represents the default css files: global.css and <document name>.css
// optional list of filenames: strings
// returns void
// search order:
//    1 or more of:
//	skin
//	skin/locale
//	skin/fallback locale
//	content
//	content/locale
//	content/fallback locale
function loadCSSfiles() {
    var css;
    if (arguments.length == 0)
        loadCSSfiles(engineTop.GLOBALCSS,document.baseName+".css");
    else {
        var fallBackLocale = property('fallBackLocale','en');
		var files = top.getSearchDirs(engineTop.STARTINGDIR);
        for (var i=0; i < arguments.length; i++) {
            if (typeof arguments[i] == "undefined" || arguments[i] == null) {
            } else if (arguments[i] == DEFAULTCSS) {
                loadCSSfiles(engineTop.GLOBALCSS,document.baseName+".css");
            } else {
				var f;
				for (j in files)
				{
					if ((f=top.secureClientFileExists(securityCheck, files[j], arguments[i])) != null)
					{
						loadCSSfile(f);
					}
					
				}
            }
        }
    }
}

/*
function call() {
    var fcn;
    var v;
    var p = self;
    do {
        try { eval("fcn = p."+arguments[0]); } catch(e) {}
        if (typeof fcn != "undefined") {
        var exec_cmd="v = fcn(";
        for (var i=1; i < arguments.length-1; i++) exec_cmd += "arguments["+i+"],";
        if (arguments.length > 1)
        exec_cmd += "arguments["+(arguments.length-1)+"]";
        exec_cmd += ")";
        eval(exec_cmd);
        return v;
        }
        if (p.parent == p) p = null;
        else
        p = p.parent;
    } while (p != null);
    return v;
}
*/

// find and inline the file 
// fileName: string - messy relative file name
// search order:  ( defined in getBaseJSCPSearchDirs() or  getLocaleJSCPSearchDirs() )
//    1 or 0 of:
//  extensions dir
//	content
//	skin
//	launchpad
//    1 or 0 of:
//  extensions dir/locale
//  extensions dir/fallback locale
//	content/locale
//	content/fallback locale
//	skin/locale
//	skin/fallback locale
//	launchpad/locale
//	launchpad/fallback locale
function includeJSCP(fileName) {
    try {
        var fallBackLocale = property('fallBackLocale','en');
        var lines = new Array();
        var f;
        var localelines;

        //Read the locale independent file first
		var files = top.getBaseJSCPSearchDirs(engineTop.STARTINGDIR);
		for (i in files)
		{
			if ((f=top.secureClientFileExists(securityCheck, files[i], fileName)) != null)
			{
				localelines = engineTop.secureReadTextFile(securityCheck, f);
				lines = lines.concat(localelines);
				break;
			}
		}

        //Then try to read the locale specific file
		
		files = top.getLocaleJSCPSearchDirs(engineTop.STARTINGDIR);
		for (i in files)
		{
			if ((f=top.secureClientFileExists(securityCheck, files[i], fileName)) != null)
			{
				localelines = engineTop.secureReadTextFile(securityCheck, f);
				lines = lines.concat(localelines);
				break;
			}
		}

        var isFileEmpty = false;
        try
        {   //if lines.length is undefined, the next check will fail.  This happens
            //when you import a file that is empty.
            var x = lines.length;
        }
        catch(e)
        {
            isFileEmpty = true;
        }

        if (!isFileEmpty && lines.length > 0) {
            var v = lines.join("\n");
            if (typeof v == "string" && v != null && v.length > 0) {
                parseJSCP(v,false);
            }
        }
    }
    catch(e) { alert('include exception ' + e.message);}
}

// 
// doc write and log substitution parse errors
//   badEvalString : Escaped substitution string that failed evaluation.
//   This is done as a separate function to avoid inlining this code
//   for every substitution
function substituteParseError(badEvalString) {
    document.write('Undefined reference in '+document.baseName+' : '+unescape(badEvalString));
    engineTop.logMessage('LPV20001S', document.location.href, engineTop.trim(unescape(badEvalString)));
}

// process JSCP
// __jscphtml__: string - JSCP syntax
// __mested__: boolean - deferred evaluation for variables
// returns void
function parseJSCP(_jscphtml_,_nested_)
{
    var _i_ = 0;
    while (_i_ >= 0 && _i_ < _jscphtml_.length)
    {
        var _j_ = _jscphtml_.indexOf("<%", _i_);
        if (_j_ == -1)
        {
            if (_nested_)
            {
                document.write(_jscphtml_.substring(_i_));
            }
            else
            {
                var _thisText_ = _jscphtml_.substring(_i_);
                var _regexp_ = new RegExp(/\'|\r|\n/);
                if (_regexp_.test(_thisText_))
                document.writeln("document.write(unescape('"+escape(_thisText_)+"'));");
                else
                document.writeln("document.write('"+_thisText_+"');");
            }
            break;
        }
        else if (_j_ >= _i_)
        {
            if (_j_ > _i_)
            {
                if (_nested_)
                {
                    document.write(_jscphtml_.substring(_i_,_j_));
                }
                else
                {
                    var _thisText_ = _jscphtml_.substring(_i_,_j_);
                    var _regexp_ = new RegExp(/\'|\r|\n/);
                    if (_regexp_.test(_thisText_))
                    document.writeln("document.write(unescape('"+escape(_thisText_)+"'));");
                    else
                    document.writeln("document.write('"+_thisText_+"');");
                }
            }
            _i_ = _j_;
            _j_ = _jscphtml_.indexOf("%>", _i_+2);
            if (_j_ == -1)
            {
                _j_ = _jscphtml_.length;
                engineTop.logMessage('LPV20023S', document.location.href);
            }
            else
            {
                var _k_ = _jscphtml_.indexOf("<%",_i_+2);
                if (_k_ > _i_ && _k_ < _j_)
                {
                    engineTop.logMessage('LPV20023S', document.location.href);
                }
            }
            var _v_;
            if ((_i_+2) < _j_)
            {
                if (_jscphtml_.charAt(_i_+2) == "=")
                {
                    _v_ = engineTop.UNDEFINED;
                    try
                    {
                        _v_ = eval(_jscphtml_.substring(_i_+3,_j_));
                    }
                    catch(e)
                    {
                    }
                    if ((typeof _v_ == "string") && _v_ != null && _v_.length > 0 && (_nested_ || (_v_.indexOf("<%") >= 0 && _v_.indexOf("%>") > 0)))
                    {
                        parseJSCP(_v_,_nested_);
                    }
                    else if (! _nested_)
                    {
                        var _evalString_ = _jscphtml_.substring(_i_+3,_j_);
                        document.write(
                        "try { var _err_=false; var _v_="+_evalString_+";\n"+
                        "if (typeof _v_ == 'undefined') _err_=true;\n"+
                        "else if ((typeof _v_ == 'string') && _v_ != null && _v_.length > 0 && _v_.indexOf('<%') >= 0 && _v_.indexOf('%>') > 0)\n"+
                        " parseJSCP(_v_, true);\n"+
                        "else if ((typeof _v_ == 'string') && _v_ != null && _v_.length > 0 && (_v_.indexOf('<%') >= 0 || _v_.indexOf('%>') >= 0)) _err_=true;\n"+
                        "else document.write(_v_);}\n"+
                        "catch(_dummyex_) {_err_ = true;}\n"+
                        "if(_err_) substituteParseError('"+escape(_evalString_)+"');\n");
                    }
                    else
                    {
                        substituteParseError(escape(_jscphtml_))
                    }
                }
                else if (!_nested_ && (_jscphtml_.charAt(_i_+2) == "@"))
                {
                    try
                    {
                        _v_ = _jscphtml_.substring(_i_+3,_j_);
                        var _k_ = _v_.indexOf("=");
                        _v_ = eval("_v_"+_v_.substring(_k_));
                        includeJSCP(_v_);
                    }
                    catch(e)
                    {
                    }
                }
                else if (!_nested_)
                {
                    document.writeln(_jscphtml_.substring(_i_+2,_j_));
                }
            }
            _i_ = _j_ + 2;
        }
    }
}

function evalJSCP(str, windowReference)
{
  if(!windowReference)
  {
    windowReference = window;
  }
  var i = 0;

  var START = 0;
  var LESS_THAN = 1;
  var OPEN_PERCENT = 2;
  var EQUALS = 3;
  var GATHER_PROPERTY = 4;
  var CLOSE_PERCENT = 5;    

  var state = START;

  var verifiedBuffer = "";
  var tempBuffer = "";

  while (i < str.length) {
    var curChar = str.charAt(i);

    switch (state) {
    //Start state
    case START:
      if (curChar != '<') {
        verifiedBuffer += curChar;
      } else {
        tempBuffer += curChar;
        state = LESS_THAN;
      }
      break;

      //Found the first <
    case LESS_THAN:
      if (curChar != '%') {
        verifiedBuffer += tempBuffer + curChar;
        tempBuffer = "";
        state = START;
      } else if (curChar == '%') {
        tempBuffer += curChar;
        state = OPEN_PERCENT;
      }
      break;

      //We have found <%
    case OPEN_PERCENT:
      if (curChar != '=') {
        verifiedBuffer += tempBuffer + curChar;
        tempBuffer = "";
        state = START;
      } else if (curChar == '=') {
        tempBuffer += curChar;
        state = EQUALS;
      }
      break;

      //We have found <%=
    case EQUALS:
      if (curChar != '%') {
        tempBuffer += curChar
        state = GATHER_PROPERTY;
      } else {
        verifiedBuffer += tempBuffer + curChar;
        tempBuffer = "";
        state = START;
      }
      break;

      //We have found <%= and we're gathering the characters in the property key
    case GATHER_PROPERTY:
      if (curChar != '%') {
        tempBuffer += curChar;
      } else if (curChar == '%' ) {
        tempBuffer += curChar;
        state = CLOSE_PERCENT;
      }
      break;

      //We have found <%= XXXX %
    case CLOSE_PERCENT:
      if (curChar == '>') {
        //We have found something of the form <%= XXXX %>
        //Strip the leading <%= and the trailing % from tempBuffer and do a property lookup on the remainder
        var expression = tempBuffer.substring(3, tempBuffer.length - 1);          
        windowReference.jscpParseResult = null;

        try
        {
          windowReference.eval("jscpParseResult = " + expression);
        }
        catch(e)
        {
          top.logException(e,arguments);
          jscpParseResult = undefined;
        }

        if (typeof windowReference.jscpParseResult == "undefined") {
          top.logMessage("LPV22038W", label);
          state = START;
          tempBuffer = "";
        } else {
          //Append what ever we get to the verified buffer and get ready to start over
          verifiedBuffer += windowReference.jscpParseResult;
          windowReference.jscpParseResult = null;
          tempBuffer = "";
          state = START;
        }          
      } else {
        //Log an error message
        tempBuffer += curChar;          
        state = GATHER_PROPERTY;        
      }
      break;
    }  //End switch

    i++;
  }

  //If we exit the FSM and we're not in the START state, that means there is an incomplete expression
  if (state != START) {
    top.logMessage('LPV22039W', str);
    verifiedBuffer += tempBuffer;
    tempBuffer = "";
  } else if (verifiedBuffer.indexOf("<%") > -1) {
	verifiedBuffer = evalJSCP(verifiedBuffer);
  }
  return verifiedBuffer;
}



try
{

	//<ACGC_Bidi> start
	//if locale is Bidi set dir= rtl for the HTML tag
	var orientation = top.isBidiLocale() ? 'rtl' : 'ltr';
	var direction;
	try
	{
		var html = document.getElementsByTagName("HTML")[0];
		direction = html.getAttribute('dir');
		//if current direction  does not equal orientation update the dir attribute in the html
		if((orientation == 'rtl' && direction != 'rtl') || (orientation == 'ltr' && direction == 'rtl'))
		{
			html.setAttribute('dir',orientation);
		}
	}
	catch(e)
	{
	engineTop.logException(e,'jscp.js');
	}
	try
	{
		direction = document.dir;
		//if current direction  does not equal orientation update the document.dir value
		if((orientation == 'rtl' && direction != 'rtl') || (orientation == 'ltr' && direction == 'rtl'))
		{
			document.dir = orientation;
		}
	}
	catch(e)
	{
	engineTop.logException(e,'jscp.js');
	}
//<ACGC_Bidi> end
    if ((typeof document.haveProcessedDocumentProperties == "undefined") || document.haveProcessedDocumentProperties == false)
    {
        var document_baseName = document.location.pathname;
        if ((typeof document_baseName != "undefined") && document_baseName != null)
        {
            document.haveProcessedDocumentProperties = true;
            engineTop.setHTMLlang(document);
            var i = document_baseName.indexOf("?");
            if (i > 0)
            document_baseName = document_baseName.substring(0,i);
            document_baseName = engineTop.getFullFileName(null,document_baseName);
            i = document_baseName.lastIndexOf(engineTop.PATHSEPARATOR);
            if (i > 0)
            {
                document.baseName = document_baseName.substring(i+1);
                document.dirName = document_baseName.substring(0,i+1);
            }
            i = document.baseName.lastIndexOf(".");
            if (i > 0)
            document.baseName = document.baseName.substring(0,i);
            if (typeof document.properties == "undefined")
            document.properties = new Array();
            engineTop.getURLproperties(document,document.properties);
            engineTop.secureReadPropertiesFile(securityCheck, engineTop.STARTINGDIR+engineTop.RELATIVEDIR, document.baseName + ".properties", document.properties, property('fallBackLocale','en'));
        }
    }
    try
    {
        var allScripts = document.getElementsByTagName("SCRIPT");
        var orightml = allScripts[allScripts.length-1].text;
        document.writeln('<SCRIPT language="JavaScript">');
        document.writeln("try {");
        parseJSCP(orightml,false);
        document.writeln("} catch(e) { engineTop.logException(e,document.location.href); }");
        document.writeln("</SCRIPT>");
    }
    catch(e)
    {
    }
}
catch(e)
{
    engineTop.logException(e,'jscp.js');
}

top.include(document, property("jscpIncludeScripts",[]), true);
top.include(document, property("jscpIncludeStyleSheets",[]), true, 'style');

// Disable right-click context menu unless desired
if (property && property('launchpadContextMenu', 'false') == 'false') 
	document.oncontextmenu = function(){return false;}; 

if(typeof jscpLoaded != "undefined") top.logMessage("LPV30042W", document.location.href);
jscpLoaded = true;
// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // gky54VswvegggoAjdZzRSWicQYos/UPZOyfQwkAOkcig
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
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCCGxkIx
// SIG // Ly+9IPgJQqU70Klmk7axtqJ00RHzKSz35AVcRzANBgkq
// SIG // hkiG9w0BAQEFAASCAgBPyCdieOn3kIGjbZodrYCL0lnx
// SIG // GTOz6O3ZwPAgpRJMYB6FgiYal8K+I37GAfU0uSbWONT7
// SIG // unXULEO2VuTVsboQrz+42taaBl+m5pUl54sG+xuVrV90
// SIG // amM8LuL/Qt9iVi+0aN/cjpXk5VRvWgvXthShaidvx7xX
// SIG // GlVvdKuRSU4NCR9+d94hFjwGq43c94dqvuCSn+usLVNy
// SIG // dvTVYPC0oQmYtBc6MYnm37Jhj01+Yc35LWZ5xcx4MAeO
// SIG // KeSdjxeUOgICjEsMH/iPcPGsSXufW7DsGjshH1KFHLKp
// SIG // ipWtSU2rbgs0bIGN0X++JWb4J9izHfftSeTVJcq2mJvU
// SIG // uIVRDV9ppgK+aTr4kIQ3wePT86QSUYOJ/TY4dEuYDo+L
// SIG // 7T2TiaTSkFmibw1Vj5JDYZqydjcQPeCo3hNHYKCMD3TO
// SIG // kDF24eIf4c/Jx5gvqa4qKz3EDVvgdMRxctK0XBIJoG5L
// SIG // x7C/kG3rIJe6+sor3FPxfNj3kIrngL1CYcAZVNs+uWPt
// SIG // 1R6WwZWJ2+tB+9+WtqSEjh2iLpKXkOccYWmxPlspiaDr
// SIG // +v0VDWPU4WTI5ej411Q5sCQ+pKDvp0v3aRIEZ9JBvTDG
// SIG // nIJ8psMxozFn7uf0GIuKlSVFhkHZUdMU4+KR2OEcMhmJ
// SIG // yBZtAC18muRk83UCj1xUfZZMClzDPVhebWxbNBuyKKGC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4NDVaMC8GCSqGSIb3
// SIG // DQEJBDEiBCCwRefBq60FSEiwqfP5CXy2NU9Kxi6L+2jr
// SIG // 0llJmPVpzjANBgkqhkiG9w0BAQEFAASCAgBopAm2ua2a
// SIG // qok/Ra4quV7uNw72NHt2+M2eTLArUSTXmXciQPr40Agi
// SIG // 9gMRuxjZtx0slMPLNcyYlHb9ScXk0ydTonuwQfShB7XE
// SIG // y6CtMkyaET05PZOV+RFqFrx722U5PZNVpy/3h96kM7dU
// SIG // Aa6f5mb1I5qFh8MWM4+O1XFrRzVmQ65oZxjNzugj20K5
// SIG // tLH7eA0KZt2GmxwoufLD4RXgUkQbSKeif5DvkXOzpv6e
// SIG // VAYfoKowgC0XpsNGbrx8QKldFJo6biVhZma+dm5K7v53
// SIG // XrVC2t3CpRlU0dJhSmZjVOHCMck1Rtj3IOA7+ubwF37b
// SIG // f+CqLDBIT5pfOonHKT1tOh5e5+a/AXv4vdRQ4q6r8064
// SIG // kVJfXMyEk0aqKQOG8Ji/kWgmwFVjDbG4cwvA41ftS914
// SIG // EPpoXuG1Rxngngzm1dmGgZHEK6BlaB1HQjqNCW33FeIO
// SIG // 6bYCHayhlIEGe7C5sTLA72OjlVvP/e0ZkmuRDFfnTSHw
// SIG // F79P0rPscxSzgVQpCuA0Feodpk4GkHpmq4u0pTBzvm8a
// SIG // NG6XjoaoyEgvgHZ2MnzmX4lhVuoNPjFCJ8BzYnufkyWp
// SIG // VQgBgkFWpnBIwKWv5hTsWUcq6kSEKksqi8ujuAy92fnb
// SIG // 3wtb7DjQDbv92jPCA59eTLgu0TCBJgkjk7xbBbO25p0N
// SIG // lCqdQMLb7ZiV0Q==
// SIG // End signature block
