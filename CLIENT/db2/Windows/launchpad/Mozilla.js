// Licensed Materials - Property of IBM
// 5648-F10 (C) Copyright International Business Machines Corp. 2005, 2006
// All Rights Reserved
// US Government Users Restricted Rights - Use, duplication or disclosure
// restricted by GSA ADP Schedule Contract with IBM Corp.

// change the mouse cursor to look busy or normal
// isBusy: boolean
// doc: document reference
// returns: undefined
/*
function busyCursor(isBusy,doc) {
  try {
    try {
        if (typeof doc.body != "undefined" && typeof doc.body.style != "undefined" && typeof doc.body.style.cursor != "undefined") {
            if (isBusy)
                doc.body.style.cursor='wait';
            else
                doc.body.style.cursor='default';
        }
        else if (typeof doc.all != "undefined" && typeof doc.all.length != "undefined") {
            var i;
            for (i=0; i < doc.all.length; i++) {
                if (isBusy)
                    doc.all[i].style.cursor = 'wait';
                else
                    doc.all[i].style.cursor = 'default';
            }
        }
    } catch(e) {}
  } catch(e) { top.logException(e,arguments); }
}
*/

// create a directory on the system
// fileName: string - full native file name
// returns:  false if the directory was not created, true otherwise 
function createDirectory(fileName)
{
    top.logCLPEnter("createDirectory", arguments);
	var retVal = false;
    try {
	    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        file.initWithPath(fileName);
		file.create(Components.interfaces.nsIFile.DIRECTORY_TYPE , '0600');
		retVal = true;
	} catch(e)
    {
        top.logException(e,arguments);
    }	
	top.logCLPExit("createDirectory", arguments);
	return false;
}

// determine the size of a file
// fileName: string - full native file name
// returns:  size of the file or -1 if the file does not exist.
function getFileSize(fileName)
{
	top.logCLPEnter("getFileSize", arguments);
	fileName = fileName.replace("file://", "");
  fileName = top.getNativeFileName(fileName);
  try {
    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
      var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
      file.initWithPath(fileName);
      if (file.exists())
	  {
        top.logCLPExit("getFileSize", arguments);
		return file.fileSize;
	  }
      else
	  {
        top.logCLPExit("getFileSize", arguments);
		return -1;
	  }
  } catch(e)
  {
      top.logException(e,arguments);
  }
	top.logCLPExit("getFileSize", arguments);
	return -1;
}

// determine if the file or folder exists
// fileName: string - full native file name
// shouldIndicateType: boolean - specifies whether to return a simple boolean value, or a truthy value (1 file exists, -1 directory exists, 0 does not exist)
// returns:  false if the file does not exist, true otherwise (or if shouldIndicateType is true, 1 if file exists, -1 directory exists, 0 file does not exist)
function fileExists(fileName, shouldIndicateType)
{
  top.logCLPEnter("fileExists", arguments);
    var retVal = 0;
	
	//This commented-out code functions for URLs on remote systems but not work for local files
	/*try {
		netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
		var xmlReq = new XMLHttpRequest();
		xmlReq.open("GET", fileName, false);
		xmlReq.send(null);
		
		alert(xmlReq.status);
		
		if (xmlReq.status == 200)
			return true;
	} catch(e)
	{
		top.logException(e,arguments);
	}
	return false;*/
	
    try {
	    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        file.initWithPath(fileName);
        if (file.exists())
			retVal = file.isDirectory()?-1:1;
    } catch(e)
    {
        top.logException(e,arguments);
    }	
	
	if(shouldIndicateType)
	{
		top.logCLPExit("fileExists", arguments);
		return retVal;
	}
	else
	{
	    top.logCLPExit("fileExists", arguments);
		return retVal != 0;
	}
	top.logCLPExit("fileExists", arguments);
	return retVal;
}


// determine if the file exists
// securityFcn: function = new Function('return window')
// fileName: string - full native file name
// returns: boolean
function secureFileExists(securityFcn,fileName,shouldLogException)
{
    try {
        if ( top.isSecure(securityFcn) )
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        file.initWithPath(fileName);
        if ( file.exists() )
            return true;
    } catch(e)
    {
      if(typeof shouldLogException == "undefined" || shouldLogException) top.logException(e,arguments);
    }
    return false;
}

// determine if the directory exists
// securityFcn: function = new Function('return window')
// directory: string - full native directory name
// returns: boolean
function secureDirectoryExists(securityFcn, directory)
{
    var retVal = false;
    try
    {
        if ( top.isSecure(securityFcn) )
        {
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");       
            var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
            file.initWithPath(directory);
     
            retVal = secureFileExists(securityFcn, directory) && file.isDirectory(); 
        }
    }
    catch (e)
    {     
        top.logException(e,arguments);
    }

    return retVal;
}

// gets the value of an environment variable
// securityFcn: function = new Function('return window')
// anyvar: string - name of variable
// returns: string - value of variable
//          undefined - variable is not defined
function secureGetEnv(securityFcn,anyvar)
{
    try {
        var v = null;
        try {
            if ( top.isSecure(securityFcn) )
                netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            if ( typeof Components.classes["@mozilla.org/process/environment;1"] != "undefined" )
            {
                var env = Components.classes["@mozilla.org/process/environment;1"].getService(Components.interfaces.nsIEnvironment); 
                v = env.get(anyvar);
            }
        } catch(e)
        {
        }
        try {
            if ( v == null )
            {
                var process = Components.classes["@mozilla.org/process/util;1"].createInstance(Components.interfaces.nsIProcess);
                v = process.getEnvironment(anyvar);
            }
        } catch(e)
        {
        }
        return v;
    } catch(e)
    {
        top.logException(e,arguments);
    }
    return top.UNDEFINED;
}

// sets the value of an environment variable
// securityFcn: function = new Function('return window')
// anyvar: string - name of variable
// value: string - new value of variable
// returns: boolean - success status
function secureSetEnv(securityFcn,anyvar,value)
{
    try {
        var v;
        if ( top.isSecure(securityFcn) )
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var env = Components.classes["@mozilla.org/process/environment;1"].getService(Components.interfaces.nsIEnvironment); 
        env.set(anyvar,value);
        return secureGetEnv(securityFcn,anyvar) == value;
    } catch(e)
    {
    }
    return false;
}

var elementArray = new Array();

// reenables a document element if the associated process has completed
// element: document element
// returns: undefined
function _enableElement()
{
    try {
        top.enableElement(elementArray.shift(), true);
    } catch(e)
    {
        top.logException(e,arguments);
    }
}

function getEnv(name)
{
	return secureGetEnv(new Function('return window'), name);
}
// executes an arbitrary command
// securityFcn: function = new Function('return window')
// topDir: string - CD mount point
// args: [strings] - command and parameters
// waitBoolean: boolean - foreground or background
// isHidden: boolean - visible window or silent
// element: document element - element to disable while running
// returns: int - return code
function secureRunProgram(securityFcn,topDir,argsIn,waitBoolean,isHidden,element,workingDirectory,callback,timeout,noQuotes)
{
   if(waitBoolean) {
      top.logMessage("LPV31044W", argsIn[0]);
   }

    if (!noQuotes) noQuotes = false
    try {
    	var args = new Array();
        for(var i = 0; i < argsIn.length; i++)
        {
          args[i] = argsIn[i]; //copy the args array
        }
        
        if (typeof waitBoolean == "undefined" || waitBoolean == null) waitBoolean = false; // long running
        if (typeof isHidden == "undefined" || isHidden == null) isHidden = false; // since some things like notepad have to run in visible mode
		if (!timeout) timeout = 5000;

        if ( typeof element != "undefined" && element != null ) {
			top.enableElement(element,false);
		}
		
        args[0] = top.getFullFileName(topDir,args[0]);
        //Since we prefix the command with /bin/bash, we'll almost never get an exception if the program the user
        //wants to run doesn't exist.  So, we have this check just in case.
        if (!programOnPath(securityFcn, args[0]) && !secureFileExists(securityFcn, args[0])) {
          top.logMessage("LPV22041W", args[0]);
        }
		
		if(top.isWindows() && isHidden)
		{
			args = [top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName())].concat(args);
		}
		else if(top.isWindows() && !isHidden)
		{
			args = ["-v"].concat(args);
			args = [top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName())].concat(args);
		}

        var processArgs = new Array();
        if ( waitBoolean == true )
		{
            for ( var i=0; i < top.commandForegroundPrefix.length; i++ ) processArgs.push(top.commandForegroundPrefix[i]);
		}
        else
		{
            for ( var i=0; i < top.commandBackgroundPrefix.length; i++ ) processArgs.push(top.commandBackgroundPrefix[i]);
		}
		
		if(workingDirectory || callback)
		{
			if(top.isWindows())
			{
				if(!isHidden) args = ["-v"].concat(args);
				args = [top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName())].concat(args);
			}
			if(workingDirectory) {
				args = [getEnv('LaunchPadTemp') + "/changeDirectory" + (top.isWindows() ? ".bat" : ".sh"), workingDirectory].concat(args);
				if(top.isWindows())  args = [top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName())].concat(args);
			}
			if(callback) {
				for (var i=0; i < args.length; i++)
				{
					var batchDelimitersRegExp = new RegExp(/[=,\s;]/).test(args[i]);
					if(batchDelimitersRegExp)
					{
					  args[i]='"' + args[i] + '"';
					}	
				}
				args = [getEnv('LaunchPadTemp') + "/callback" + (top.isWindows() ? ".bat" : ".sh"), top.createCallback(callback,element,timeout)].concat(args);
				if(top.isWindows()) args = [top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName())].concat(args);
			}
		}
		
        var commandStr = null;
        if ( waitBoolean == true )
        {
            if ( top.commandForegroundWrapperPrefix != null )
                commandStr = top.commandForegroundWrapperPrefix;
        }
        else
        {
            if ( top.commandBackgroundWrapperPrefix != null )
                commandStr = top.commandBackgroundWrapperPrefix;
        }
        if ( commandStr != null )
        {
            for ( var i=0; i < args.length; i++ )
            {
                var arg = args[i];
                var re = new RegExp(/^[!@+=%:\\\/\-a-zA-Z0-9_]+$/);
                if ( !re.test(arg) && !noQuotes)
                {
                   arg = addQuotes(arg);
//                    if ( arg.indexOf('"') >= 0 )
//                        arg = "'" + arg + "'";
//                    else
//                        arg = '"' + arg + '"';
                }
                commandStr += ' ' + arg;
            }
            processArgs.push(commandStr);
        }
        else
        {
            for ( var i=0; i < args.length; i++ )
                processArgs.push(args[i]);
        }
        if ( top.isSecure(securityFcn) )
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var FileFactory = new Components.Constructor("@mozilla.org/file/local;1","nsILocalFile","initWithPath");
        var program = new FileFactory(processArgs[0]);
        var process = Components.classes["@mozilla.org/process/util;1"].createInstance(Components.interfaces.nsIProcess);

        process.init(program);
        processArgs.shift();
		process.run(waitBoolean, processArgs, processArgs.length);
		var rc = waitBoolean ? process.exitValue : 0;
        if (element && !callback)
        {
            if ( waitBoolean || ((typeof process.isRunning != "undefined") && !process.isRunning) )
			{
                top.enableElement(element,true);
			}
            else
            {
                elementArray.push(element);
                setTimeout('_enableElement()',5000);
            }
        }
        return rc;
    } catch(e)
    {
        try { 
			if (element && !callback) 
				top.enableElement(element,true);
		} catch(e2) { };
        top.logException(e,arguments);
    }	
    return top.UNDEFINED;
}



//Determines whether the given file can be found using the path, in case
//the full file name is not used to call runProgram.
//Returns true if the program is found on the path, false otherwise
function programOnPath(securityFcn, name)
{
  if ( top.isSecure(securityFcn) )
    netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
      
  var userEnvironment = Components.classes["@mozilla.org/process/environment;1"].getService(Components.interfaces.nsIEnvironment);
  var path = userEnvironment.get("PATH");
    
  var foundOnPath = false;
  var paths = path.split(top.isWindows() ? ";" : ":");
    
  for(var i in paths)
  {
	if(top.expandEnv)
	{
		paths[i] = top.expandEnv(paths[i]);
	}
    if(secureFileExists(securityFcn, paths[i] + top.PATHSEPARATOR + name, false))
    {
      foundOnPath = true;
      break;
    }
  }
  return foundOnPath;
}

// Initializes a callback and creates and returns a file that will contain the return code on exit.
// callback: function - the function to call when the batch finishes
// timeout: int - milliseconds to wait between polls to see if the batch file has completed
// returns: string - the path to the file that will contain the return code to be passed to the callback
function createCallback(callback,element,timeout)
{
	top.logCLPEnter("createCallback", arguments);
	netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
	var returnCodeFilePath = top.createTempFile('launchpadExecReturnCode');
	var returnCodeFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
	returnCodeFile.initWithPath(returnCodeFilePath);

	// Setup and start timeout for callback function
	var originalCallback = callback;
	callback = function()
	{
		try
		{
			netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");

			// Create a new instance of returnCodeFile on each recursion, else fileSize doesn't ever change
			var newFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
			newFile.initWithPath(returnCodeFile.path);

			if(newFile.fileSize > 0)
			{
				var returnCode = top.trim(readTextFile(returnCodeFile.path));
				returnCodeFile.remove(false);
				if(element) top.enableElement(element,true);
				originalCallback(returnCode);
			}
			else
			{
				setTimeout(callback,timeout);
			}
		}
		catch(e)
		{
			top.logException(e, arguments);
		}
	};
	setTimeout(callback,timeout);
	top.logCLPExit("createCallback", arguments);
	return returnCodeFile.path;
}

// read an external file
// securityFcn: function = new Function('return window')
// fileName: string - full native file name
// returns: [line strings]
function secureReadTextFile(securityFcn,fileName)
{
    try {
        var fileLines = new Array();
        if ( top.isSecure(securityFcn) )
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var nsILocalFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        nsILocalFile.initWithPath( fileName );
        if ( nsILocalFile.exists() == false )
        {
            top.logMessage("LPV20022S", fileName);
        }
        var nsIFileInputStream = Components.classes["@mozilla.org/network/file-input-stream;1"]
        .createInstance( Components.interfaces.nsIFileInputStream);
        nsIFileInputStream.init( nsILocalFile, 0x01, 00004, null);
        var nsIBinaryInputStream = Components.classes["@mozilla.org/binaryinputstream;1"]
        .createInstance( Components.interfaces.nsIBinaryInputStream);
        nsIBinaryInputStream.setInputStream(nsIFileInputStream);
        var fileContents = top.UTF8toString(nsIBinaryInputStream.readBytes(nsIFileInputStream.available()));

        nsIFileInputStream.close();
        nsIBinaryInputStream.close();
        if (fileContents.length == 0)
          return top.UNDEFINED;
        //Removes BOM characters from the beginning of the file
        if (fileContents.charCodeAt(0) == '65279' || fileContents.charCodeAt(0) == '65534')
        {
            fileContents = fileContents.substring(1,fileContents.length);   
        }
        if (fileContents.length == 0)
          return top.UNDEFINED;
        fileLines = fileContents.split(/\r*\n/);
        if ( fileLines.length > 0 )
            if ( fileLines[fileLines.length-1].length == 0 )
                fileLines.pop();
        return fileLines;
    } catch(e)
    {
        top.logException(e,arguments);
    }
    return top.UNDEFINED;
}

// read an external file
// fileName: string - full native file name 
// returns: string - contents of file if readable, null otherwise
function readTextFile(fileName, encoding)
{
    top.logCLPEnter("readTextFile", arguments);
	try {
        netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var nsILocalFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        nsILocalFile.initWithPath( fileName );
    // We don't do anything with this right now.  UTF8 is a superset of ASCII, so no difference if reading in an ASCII file.
		if (!encoding) encoding = UTF8;
        if ( nsILocalFile.exists() == false )
        {
            top.logMessage("LPV20022S", fileName);
        }
		var nsIFileInputStream = Components.classes["@mozilla.org/network/file-input-stream;1"]
        .createInstance( Components.interfaces.nsIFileInputStream);
        nsIFileInputStream.init( nsILocalFile, 0x01, 00004, null);
        var nsIBinaryInputStream = Components.classes["@mozilla.org/binaryinputstream;1"]
        .createInstance( Components.interfaces.nsIBinaryInputStream);
        nsIBinaryInputStream.setInputStream(nsIFileInputStream);
        var fileContents = top.UTF8toString(nsIBinaryInputStream.readBytes(nsIFileInputStream.available()));

        nsIFileInputStream.close();
        nsIBinaryInputStream.close();

        //Removes BOM characters from the beginning of the file
        if (fileContents.charCodeAt(0) == '65279' || fileContents.charCodeAt(0) == '65534')
        {
            fileContents = fileContents.substring(1,fileContents.length);   
        }
		if (fileContents.charCodeAt(0) == '239' &&  fileContents.charCodeAt(1) == '187' && fileContents.charCodeAt(2) == '191')  //0xEF BB BF
		{
			fileContents = fileContents.substring(3,fileContents.length); 
		}
		top.logCLPExit("readTextFile", arguments);
		return fileContents;
    } catch(e)
    {
       if (e.message.indexOf("0x80004005") >= 0) {
          alert ("found message");
           top.logMessage("LPV20022S", fileName);
       } else {
          top.logException(e,arguments);
       }

    }
	top.logCLPExit("readTextFile", arguments);
    return null;
}

// get a list of child directories
// securityFcn: function = new Function('return window')
// dir: string - parent directory
// returns: [directory name strings]
function secureGetDirectories(securityFcn,dir)
{
    try {
        if ( top.isSecure(securityFcn) )
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var nsILocalFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        nsILocalFile.initWithPath( top.getNativeFileName(dir) );
        if ( nsILocalFile.exists() == true )
        {
            var entries = nsILocalFile.directoryEntries;
            var returnArray = new Array();
            while ( entries.hasMoreElements() )
            {
                var entry = entries.getNext();
                entry.QueryInterface(Components.interfaces.nsIFile);
                if ( entry.leafName != "." && entry.leafName != ".." )
                {
                	//If directory is disconnected or corrupt we want to 
                	//   log it and move on to the next
					try{
					    if ( entry.isDirectory() )
					    {
							returnArray.push(entry.leafName);
					    }
	                } catch(e) 
	                {
	                    top.logException(e,arguments);
	                }
                }
            }
            return returnArray;
        }
    } catch(e)
    {      
        top.logException(e,arguments);
    }
    return top.UNDEFINED;
}

// get a list of child files
// securityFcn: function = new Function('return window')
// dir: string - parent directory
// returns: [file name strings]
function secureGetFiles(securityFcn,dir)
{
    try {
        if ( top.isSecure(securityFcn) )
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var nsILocalFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        nsILocalFile.initWithPath( dir );
        if ( nsILocalFile.exists() == true )
        {
            var entries = nsILocalFile.directoryEntries;
            var returnArray = new Array();
            while ( entries.hasMoreElements() )
            {
                var entry = entries.getNext();
                entry.QueryInterface(Components.interfaces.nsIFile);
                if ( entry.isFile() )
                {
                    returnArray.push(entry.leafName);
                }
            }
            return returnArray;
        }
    } catch(e)
    {
        top.logException(e,arguments);
    }
    return top.UNDEFINED;
}

/*
function setBooleanPreference(s,v) {
  try {
    //netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
    //var prefs = Components.classes["@mozilla.org/preferences-service;1"].createInstance(Components.interfaces.nsIPrefBranch);
    if (prefs.getBoolPref(s) != v) {
    prefs.setBoolPref(s,v);
    }
  } catch(e) { top.logException(e,arguments); }
  return top.UNDEFINED;
}
*/

// exit launchpad
// securityFcn: function = new Function('return window')
// returns: undefined
function secureExit(securityFcn)
{
    try {
        if ( top.isSecure(securityFcn) )
            window.close();
    } catch(e)
    {
        top.logException(e,arguments);
    }
}

top.OPENMODE = 0;
top.SAVEMODE = 1;
// private function for log.html
function chooseFileName(mode,defaultName)
{
    try {
        netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var nsIFilePicker = Components.interfaces.nsIFilePicker;
        var filePicker = Components.classes["@mozilla.org/filepicker;1"].createInstance(nsIFilePicker);
        if ( mode == top.SAVEMODE )
            filePicker.init(window, null, nsIFilePicker.modeSave);
        else
            filePicker.init(window, null, nsIFilePicker.modeOpen);
        filePicker.defaultExtension  = defaultName.substring(defaultName.indexOf('.')+1);
        filePicker.defaultString  = defaultName.substring(0,defaultName.indexOf('.'));
        filePicker.appendFilters(nsIFilePicker.filterText);
        if ( filePicker.show() != nsIFilePicker.returnCancel )
        {
            return filePicker.file;
        }
    } catch(e)
    {
        top.logException(e,arguments);
    }
    return null;
}

// private function for log.html
// write an external file
// securityFcn: function = new Function('return window')
// fileName: string - full native file name
// lines: array of text lines
// returns: true of written, null if no file given, and UNDEFINED if exception
function secureWriteTextFile(securityFcn,nsILocalFile,lines)
{
    try {
        if ( nsILocalFile == null ) return null;
        if ( top.isSecure(securityFcn) )
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var nsIFileOutputStream = Components.classes["@mozilla.org/network/file-output-stream;1"]
        .createInstance( Components.interfaces.nsIFileOutputStream);
        nsIFileOutputStream.init( nsILocalFile, 0x40|0x20|0x08|0x02, 00004, null);
        for ( var i=0; i < lines.length; i++ )
        {
            var len = lines[i].length;
            var outlen = 0;
            while ( outlen < len )
                outlen += nsIFileOutputStream.write(lines[i].substring(outlen,len), len-outlen);
            if ( top.OSTYPE == "windows" )
            {            
                nsIFileOutputStream.write("\r", 1);
            }
            nsIFileOutputStream.write("\n", 1);
        }
        nsIFileOutputStream.flush();
        nsIFileOutputStream.close();
        return true;
    } catch(e)
    {
        top.logException(e,arguments);
    }
    return top.UNDEFINED;
}

// write a text file
// fileName: string - full native file name
// textToWrite:  string - content of text file
// append: boolean - true = append text to end of file,  false = overwrite existing file
// returns: true if file was written successfully, false otherwise
function writeTextFile(fileName, textToWrite, append, encoding)
{
	top.logCLPEnter("writeTextFile", arguments);
    try {
		netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
        var nsILocalFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
        nsILocalFile.initWithPath( fileName );

		if (!encoding) encoding = UTF8;
		
		var nsIFileOutputStream = Components.classes["@mozilla.org/network/file-output-stream;1"]
        .createInstance( Components.interfaces.nsIFileOutputStream);
        var rwtflags = append?0x40|0x10|0x08|0x02 : 0x40|0x20|0x08|0x02;  // 0x20 is the truncate option 0x10 is to append
		nsIFileOutputStream.init( nsILocalFile, rwtflags, 00604, null);
		
		/*var nsIConverterOutputStream = Components.classes["@mozilla.org/intl/converter-output-stream;1"].createInstance(Components.interfaces.nsIConverterOutputStream);
		nsIConverterOutputStream.init(nsIFileOutputStream, charset, 4096, 0x0000); // 4096 is the buffer size
		nsIConverterOutputStream.writeString(textToWrite, textToWrite.length);
		nsIConverterOutputStream.flush();
		nsIFileOutputStream.flush();
		nsIConverterOutputStream.close();
		nsIFileOutputStream.close();*/
		var nsIScriptableUnicodeConverter = Components.classes["@mozilla.org/intl/scriptableunicodeconverter"]
                          .createInstance(Components.interfaces.nsIScriptableUnicodeConverter);
		nsIScriptableUnicodeConverter.charset =  encoding;
		
		var convertedtext = nsIScriptableUnicodeConverter.ConvertFromUnicode(textToWrite);
		nsIFileOutputStream.write(convertedtext, convertedtext.length);
		convertedtext = nsIScriptableUnicodeConverter.Finish();
		if (convertedtext.length > 0)
			nsIFileOutputStream.write(convertedtext, convertedtext.length);
		nsIFileOutputStream.close();
		top.logCLPExit("writeTextFile", arguments);
		return true;
    } catch(e)
    {
        top.logException(e,arguments);
    }
	top.logCLPExit("writeTextFile", arguments);
    return false;
}

// write a binary file
// fileName: string - full native file name
// fileContents:  string - hexadecimal representation of binary file
// returns: true if file written successfully.  Undefined otherwise.
function writeBinaryFile(fileName, data)
{
	top.logCLPEnter("writeBinaryFile", arguments);
	var byteArray = top.convertHexStringToByteArray(data);
	fileName = top.getNativeFileName(fileName);
	netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
	var nsILocalFile = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);
	nsILocalFile.initWithPath(fileName);
	top.createDirectory(nsILocalFile.parent.path);
    
	try 
	{
        if ( nsILocalFile == null ) return null;
        netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
		var nsIFileOutputStream = Components.classes["@mozilla.org/network/file-output-stream;1"].createInstance( Components.interfaces.nsIFileOutputStream);
		nsIFileOutputStream.init( nsILocalFile, 0x40|0x20|0x08|0x02, 00004, null);
		var nsIBinaryOutputStream = Components.classes["@mozilla.org/binaryoutputstream;1"].createInstance( Components.interfaces.nsIBinaryOutputStream);
		nsIBinaryOutputStream.setOutputStream(nsIFileOutputStream);
		nsIBinaryOutputStream.writeByteArray(byteArray, byteArray.length);
        nsIFileOutputStream.flush();
        nsIFileOutputStream.close();
		top.logCLPExit("writeBinaryFile", arguments);
        return true;
    } catch(e)
    {
        top.logException(e,arguments);
    }
	top.logCLPExit("writeBinaryFile", arguments);
    return top.UNDEFINED;
}

// Check to see if launchpad has internet access
// url: string - URL to test internet connection with
// checkIfValid: boolean (optional) Also checks that the file is valid (i.e., HTTP code 200)
// returnFileSize: boolean (optional) Returns the file size if 
// returns: true if internet available.  false otherwise.
function hasInternetAccess(url, checkIfValid, returnFileSize)
{
  if (!url)
    url = top.secureGetEnv(new Function('return window'), "LaunchPadInternetAccessURL");
  if (!url)
    url = top.property("LaunchPadInternetAccessURL", "http://www.ibm.com");
  if (!(url.indexOf("http://") > -1) && !(url.indexOf("https://") > -1) && !(url.indexOf("ftp://") > -1))
  {
    return returnFileSize?getFileSize(url):true;
  }
  netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
  netscape.security.PrivilegeManager.enablePrivilege("UniversalBrowserRead");
  var http = new XMLHttpRequest();     

  http.open('HEAD', url, false);
  try
  {
    http.send(null);
    if (returnFileSize)
    {
      if (http.getResponseHeader('Content-Length'))  //mozilla returns a non-existent header as null
        return (http.status == 200)?http.getResponseHeader('Content-Length'):0;
      else
        return (http.status == 200)?-1:0;
    }
    if (checkIfValid)
      return (http.status == 200);
    else
      return true;
  }  
  catch (e)
  {}
  return returnFileSize?0:false;
}

// Retrive a remote binary file
// urlToFile: string - URL to remote file
// localFileName:  string - local filename to which it will be written to
// execute: boolean - attempt to execute the file just downloaded
// returns: true if file written successfully.  Undefined otherwise.
function getRemoteFile(urlToFile, localFileName, execute)
{
  top.logCLPEnter("getRemoteFile", arguments);
  var downloadComplete = false;
  var intervalPoll;
  var webBrowser;
  top.abortProgress[urlToFile] = false;
  if (urlToFile)
	{
      if (!localFileName)
      {
        localFileName = top.getNativeFileName(top.getEnv('LaunchPadTemp') + urlToFile.substring(urlToFile.lastIndexOf("/"), urlToFile.length));
      }
      try 
      {
      var pollAborted = function ()
      {
        if (top.abortProgress[urlToFile])
        {
          clearInterval(intervalPoll);
          try 
          {
            netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
            webBrowser.cancelSave();
            var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);  
            file.initWithPath(top.getNativeFileName(localFileName)); 
            file.remove(false);
          }
          catch (e)
          {
            top.logException(e,arguments);
          }
        }
        if (downloadComplete)
          clearInterval(intervalPoll);
      }
      
      netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
			var bytesdownloaded = -1;
      var totalbytes = -1;
      var http = new XMLHttpRequest();
      http.open('HEAD', urlToFile, false);
      http.send(null);
      totalbytes = http.getResponseHeader('Content-Length');

			var file = Components.classes["@mozilla.org/file/local;1"].createInstance(Components.interfaces.nsILocalFile);  
			file.initWithPath(top.getNativeFileName(localFileName));  
			webBrowser = Components.classes['@mozilla.org/embedding/browser/nsWebBrowserPersist;1'].createInstance(Components.interfaces.nsIWebBrowserPersist);  
			var ioService = Components.classes['@mozilla.org/network/io-service;1'].getService(Components.interfaces.nsIIOService);  
			var uri = ioService.newURI(urlToFile, null, null);  
			webBrowser.persistFlags &= ~Components.interfaces.nsIWebBrowserPersist.PERSIST_FLAGS_NO_CONVERSION;
			webBrowser.progressListener = {
        onStateChange: function(progress, request, status, message) {
          if (status & Components.interfaces.nsIWebProgressListener.STATE_STOP)
          {
            top.setFileExecutable(top.getNativeFileName(localFileName));
            top.updateProgress(100, 100, urlToFile);
            top.setProgressDescription(property('downloadComplete'), property('downloadComplete'), urlToFile);
            setTimeout("top.showProgress(false, '" + urlToFile + "' );", 1000);
            if (execute && !top.abortProgress[urlToFile])
            {
              top.setFileExecutable(localFileName);
              var args = new Array();
              args[0] = localFileName;
              top.runProgram(NO_DISKID,args,BACKGROUND,VISIBLE);
            }
            downloadComplete = true;
			top.logCLPExit("getRemoteFile", arguments);
            return true;
          }
        }
      }
      intervalPoll = setInterval(pollAborted, 250);
      top.showProgress(true, urlToFile, {cancel:true});
      top.setProgressDescription(top.formatmsg(property('downloadingBytes'), totalbytes), property('updateDownloadingTitle'), urlToFile);
      webBrowser.saveURI(uri, null, null, null, null, file);
		} catch(e)
		{
			top.logException(e,arguments);
      		top.showProgress(false, urlToFile );
		}
	}
	top.logCLPExit("getRemoteFile", arguments);
	return top.UNDEFINED;
}

netscape.security.PrivilegeManager.enablePrivilege('UniversalBrowserWrite');

if ( secureGetEnv(new Function('return window'), "LaunchPadToolbarEnable" ) !='true' )
{
    window.locationbar.visible = false;
    window.menubar.visible = false;
    window.personalbar.visible = false;
    window.scrollbars.visible = false;
    window.statusbar.visible = false;
    window.toolbar.visible = false;
}

/*
    var query = top.document.location.search;
    if (query.length > 1) {
        query = query.substring(1);
        var tokens = query.split(",");
        for (var q=0; q < tokens.length; q++) {
            var keyvalue = tokens[q].split("=");
            if (keyvalue[0].length > 0) {
                if (keyvalue[1].length > 0) {
            var envVarOverride = unescape(keyvalue[0]).toUpperCase();
            if (envVarOverride == "LOCALE")
            top.LOCALE = unescape(keyvalue[1]);
            if (envVarOverride == "CONTENTDIR")
            top.CONTENTDIR = unescape(keyvalue[1]);
            if (envVarOverride == "OSTYPE")
            top.OSTYPE = unescape(keyvalue[1]);
            if (envVarOverride == "OS")
            top.OS = unescape(keyvalue[1]);
        }
            }
        }
    }
*/

// Init log filter now that we have access to env vars
logInitFilter();

//The reason for modifying the locale we're passed is that we haven't yet 
//been able to map it using the locale mapping mechanism.  So we might
//receive "en_us" but it will eventually be resolved to "en"  For now, we just 
//assume that we don't need a regional dialect and just use the base language.
//If this assumption is in correct, the proper locale/global properites will be loaded
//in Mozilla/IExplore.html
if (typeof top.LOCALE == "undefined" || top.LOCALE == null)
    {    
      top.LOCALE = top.trim(secureGetEnv(new Function('return window'), "LaunchPadLocale" ));
      if (top.LOCALE.length > 2 && top.LOCALE.toLowerCase() != "pt_br" && top.LOCALE.toLowerCase() != "zh_tw") 
      {          
          top.LOCALE = top.LOCALE.substring(0,2);
      }
      if (top.LOCALE == "pt_br") 
      {
          top.LOCALE = "pt_BR";
      }
      if (top.LOCALE == "zh_tw") 
      {
          top.LOCALE = "zh_TW";
      }
    }
if (top.LOCALE == null) top.LOCALE = "en";

if ( typeof top.OSTYPE == "undefined" || top.OSTYPE == null ) top.OSTYPE = secureGetEnv(new Function('return window'), "LaunchPadOSType" );

if ( typeof top.OS == "undefined" || top.OS == null ) top.OS = secureGetEnv(new Function('return window'), "LaunchPadOS" );

top.ARCHITECTURE = secureGetEnv(new Function('return window'), "LaunchPadArch");

//Set the target OS/Arch variables    
top.TARGETOS = secureGetEnv(new Function('return window'), "LaunchPadTargetOS");
if (top.TARGETOS == "")
{
top.TARGETOS = top.OS;
}
top.TARGETOSTYPE = secureGetEnv(new Function('return window'), "LaunchPadTargetOSType");
if (top.TARGETOSTYPE == "") 
{
  top.TARGETOSTYPE = top.OSTYPE;
}
top.TARGETARCHITECTURE = secureGetEnv(new Function('return window'), "LaunchPadTargetArch");
if (top.TARGETARCHITECTURE == "") 
{
  top.TARGETARCHITECTURE = top.ARCHITECTURE;
}

if (navigator.userAgent.indexOf('Firefox') != -1)
{
  top.BROWSER = "Firefox";
}
else if (navigator.userAgent.indexOf('SeaMonkey') != -1)
{
  top.BROWSER = "SeaMonkey";
}
else
{
  top.BROWSER = "Mozilla";
}

top.PATHSEPARATOR = top.getNativeFileSeparator();
top.STARTINGDIR = top.getStartingTopDir();
//    top.RELATIVEDIR = top.getStartingRelativeDir();

top.CONTENTDIR = secureGetEnv(new Function('return window'), "LaunchPadContentDirectory" );
top.SKINDIR = secureGetEnv(new Function('return window'), "LaunchPadSkinDirectory" );
top.STARTPAGE = secureGetEnv(new Function('return window'), "LaunchPadStartPage" );
top.COMPATIBILITYVERSION = secureGetEnv(new Function('return window'), "LaunchPadCompatibilityVersion" );
top.VIEWERPATH = secureGetEnv(new Function('return window'), "LaunchPadBrowser" );

top.commandBackgroundPrefix = [];
top.commandForegroundPrefix = []; 
// Wrappering is when the command needs to be sent as a single string instead of parsed arguments
// null means that it should be sent as parsed arguments
top.commandBackgroundWrapperPrefix = null;
top.commandForegroundWrapperPrefix = null;
if ( top.OSTYPE == "windows" )
{
    try {
        top.LaunchPadUSERPROFILE = secureGetEnv(new Function('return window'), "LaunchPadUSERPROFILE" );
        var profileOK;
        if ( typeof top.LaunchPadUSERPROFILE == "string" && top.LaunchPadUSERPROFILE != '' )
            profileOK = secureSetEnv(new Function('return window'), "USERPROFILE", top.LaunchPadUSERPROFILE);
        else
            profileOK = true;
        if ( !profileOK || !secureSetEnv(new Function('return window'), "MOZ_NO_REMOTE", '') )
        {
            top.COMSPEC = secureGetEnv(new Function('return window'), "ComSpec" );
            if ( typeof top.COMSPEC == "string" && top.COMSPEC != '' )
            {
                if ( !profileOK )
                    top.commandForegroundPrefix = [top.COMSPEC,"/c","set USERPROFILE="+top.LaunchPadUSERPROFILE,"&&","set MOZ_NO_REMOTE=&&"];
                else
                {
                    top.commandForegroundPrefix = [top.COMSPEC,"/c","set MOZ_NO_REMOTE=&&"];
                }
                top.commandBackgroundPrefix = top.commandForegroundPrefix;
            }
        }
    } 
    catch(e)
    {
    }    
    if ( typeof top.CURRENTPROFILE == "string" )
        secureRunProgram(new Function('return window'),top.STARTINGDIR,[top.RELATIVEDIR+top.getScriptLauncherExeName(),top.RELATIVEDIR+'MozillaPatch.bat',top.CURRENTPROFILE],false,true);
}
else if ( top.OSTYPE == "unix" )
{
    top.LaunchPadHOME = secureGetEnv(new Function('return window'), "LaunchPadHOME" );
    secureSetEnv(new Function('return window'), "LOGNAME", secureGetEnv(new Function('return window'), "LaunchPadLogName" ));

    if ( typeof top.LaunchPadHOME == "string" ) try
    {
        top.SHELL = secureGetEnv(new Function('return window'), "SHELL" );
        if ( typeof top.SHELL != "string" ) top.SHELL = "/bin/sh";
        top.commandForegroundPrefix = [top.SHELL,"-c"];
        top.commandBackgroundPrefix = top.commandForegroundPrefix;
        if ( secureSetEnv(new Function('return window'), "HOME", top.LaunchPadHOME) )
            top.commandForegroundWrapperPrefix = "";
        else
            top.commandForegroundWrapperPrefix = "HOME="+top.LaunchPadHOME;
        top.commandBackgroundWrapperPrefix = top.commandForegroundWrapperPrefix;
    }
    catch(e)
    {
    }
}


// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // ch9L/sBnVpl+ZkXlzG37XXTicCYk35pluA0B2BWLlTOg
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
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCAaVkdO
// SIG // pTAgZT5wPum51ALILb47N15gxs6ABzztfr2+SDANBgkq
// SIG // hkiG9w0BAQEFAASCAgA3iJ4cZM4+sZlzar9EnFNsBcAE
// SIG // BIwQyScgVZNRDt5p+Url0NlxZjFYeqS3uzHhdSI33s2g
// SIG // +jLFpXLypBpobmWhd7Fk1VVpfAuAXBN2WYrxib6FzUQj
// SIG // 7b+n+j8VFVYrVt4xyY1Vi7lzgN/uqLduQHzi7EQhvQlG
// SIG // plsFmtIahnnbR91fILqYtwDE5sMJSG2+ud8VHkYCgplr
// SIG // IGakuJ26GBaOO/m9c5wQ5iB00QfW2JfxDi7OdA0VpKvn
// SIG // m7Tjta2UWDn6k9jhlmwWhmPoygjUjvnEz3DEIq+WyG1R
// SIG // jfYPp55gFQTbrmNu8Z5t9qRSHWmxrzHvn1llVCvc/ucH
// SIG // l73mn7Ft3V+014y0Ks+uGhhpCNONxQOnLmdH/nQeTSOU
// SIG // SsqoFZEaTsRG/1kRD78J59PWFtFsynup5xhc20S+JljK
// SIG // W/gWZdTeeC4xCd6i7E8gpfOj7H3DLtF4/d9x/Wft7i9u
// SIG // btaNzzeUeFpRmFYOYDHIWEB0vd9PwDelo/NYTewclWfw
// SIG // hw74frTG398t1zDQRI1E78mBpWk4eVbeRgq/vwrMZ5vf
// SIG // iIWy+vbliBzExESBNAQx8XYpXFqgi2V44PJYzO9NiQ0z
// SIG // TSyq53RWVrJje5i6KdHs/NkGIxJYrGxFUm8duv+LwTl1
// SIG // jBamJkT/v1hS3iW8NxspkjBDGObuu1urcsd57k5W36GC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4MzNaMC8GCSqGSIb3
// SIG // DQEJBDEiBCA5yVO5xCYoKfbtL2K7ue5knOSElRN/00Iu
// SIG // oJ5A05YLlTANBgkqhkiG9w0BAQEFAASCAgCftBflamwf
// SIG // r/qAZUs+35nYSsLVuzF4tAMO2Sdz/okdSqyIBXZdGI39
// SIG // CPXbC/jdrGxG43nXjUQjjHpNlALJ8ZFXuTLz6IYiffIV
// SIG // uKxfK1Cui0RFIjOwVqGYyyZf8khgM70RtiB5xEy9WRkT
// SIG // FvgPDbTkvFFp93+CEY45ut4B5z1PYg1V2SQZDA/cyduB
// SIG // Icy+s9u9f24gbo1g7sD1n2YBFptxXE37l7XTWMGJpBxt
// SIG // CXvD0wjvEzsAR+0Jo9mNq7wZNoHgppbym0y4QzDCITxk
// SIG // HmhUq3Z0X3p60m3sAavTKdARs0Nn1NXU+699/soJUyb0
// SIG // 2XoZfE0IYwjolIy//1DYaYysJybXNQXCjyR6mcuohR8l
// SIG // IWbwWJK6Sco63aqdZKYpuij0TH+g9lwLooZsjEXCedZ4
// SIG // RWonT5cZU7ytbaMf4v1hpWshNDHeLmZ9GX/BQ+NWF2rf
// SIG // Iq22amvgUhcYVWNh4si2BuVhWjHYvY0ERik5jMtNEc/W
// SIG // XUJU/b8qKOISjq6fQjEmPEFUBcutKTamS+exL2Mrpf57
// SIG // b5VJQvrEjFFKIgOVUGDRSZOladBZ8ZSaC8oisqqEZcle
// SIG // cRjoiXSQws1+tZP6Oa9LJ70/T6eCViKheVhWpy/EZobm
// SIG // JFJhfuh2EPF1EmcNCx1wV0gloMsrVTJ96ECBhcURnoIf
// SIG // MdJCUVkOP75Rkw==
// SIG // End signature block
