// Licensed Materials - Property of IBM
// 5648-F10 (C) Copyright International Business Machines Corp. 2005
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
	if (isBusy)
            doc.body.style.cursor='wait';
	else
            doc.body.style.cursor='default';
    } catch(e) {}
  } catch(e) { top.logException(e,arguments); }
}
*/

// create a directory on the file system
// directoryName: string - full native directory name
// returns: 0 = directory was not created.  1 = directory was created successfully
function createDirectory(directoryName) {
  top.logCLPEnter("createDirectory", arguments);
     
	try {
		fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
		if (!fileSystemObject.FileExists(directoryName)) {	  
			fileSystemObject.CreateFolder(directoryName);
			 top.logCLPExit("createDirectory", arguments);
			return true;
		}       
		top.logCLPExit("createDirectory", arguments);
		return false;   
	}
	catch(e) {  
		top.logException(e,arguments); 
		top.logCLPExit("createDirectory", arguments);
		return false;
	}
}

//Recursively makes all directories required for the given folder path.
//Returns true if successful, false if failed
function mkdirs(path) {
   top.logCLPEnter("mkdirs", arguments);
	try {
		fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
		var parent = fileSystemObject.GetParentFolderName(path);
		if(!fileSystemObject.FolderExists(parent))
		{
			mkdirs(parent);
		}
		if(!fileSystemObject.FolderExists(path))
			fileSystemObject.CreateFolder(path);
	    top.logCLPExit("mkdirs", arguments);
		return true;
	}
	catch(e) {
		top.logException(e, arguments);
		top.logCLPExit("mkdirs", arguments);
		return false;
	}
}

function getParentFolderName(path) {
	try {
		fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
		return fileSystemObject.GetParentFolderName(path);
	}
	catch(e) {
		top.logException(e, arguments);
		return false;
	}
}

// determine if the file or folder exists
// fileName: string - full native file name
// shouldIndicateType: boolean - specifies whether to return a simple boolean value, or a truthy value (1 file exists, -1 directory exists, 0 does not exist)
// returns:  false if the file does not exist, true otherwise (or if shouldIndicateType is true, 1 if file exists, -1 directory exists, 0 file does not exist)
function fileExists(fileName, shouldIndicateType) {
 top.logCLPEnter("fileExists", arguments);
	// the code commented out below was created to handle a future requirement for a url being passed
	// var end = fileName.length - 1;
	// var beginning = (fileName.substr(0,4)).toLowerCase(); 
	// if (beginning == "file")
	//     fileName = "file" + fileName.substr(4, end);
	// fileName = fileName.replace("file:///", "");
	// fileName = fileName.replace("file://", "");
	var result = 0;
	try {
		fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
		if (fileSystemObject.FileExists(fileName)) {	        
			result = 1;
		}       
		else if (fileSystemObject.FolderExists(fileName)) {
			result = -1;   
		}       
		else {
			result = 0;
		}
	}
	catch(e) {  
		top.logException(e,arguments); 
	}

	if(shouldIndicateType)
	{
		top.logCLPExit("fileExists", arguments);
		return result;
	}
	else
	{
		top.logCLPExit("fileExists", arguments);
		return result != 0;
	}
}

// determine the size of a file
// fileName: string - full native file name
// returns:  size of the file or -1 if the file does not exist.
function getFileSize(fileName) {
	fileName = fileName.replace("file:///", "");
	fileName = fileName.replace("file://", "");
  fileName = top.getNativeFileName(fileName);
	var result = 0;
	try {
		fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
		if (!fileSystemObject.FileExists(fileName)) {	        
			return -1;
		}       
		else {
			var f = fileSystemObject.GetFile(fileName);
      return f.size;
		}
	}
	catch(e) {  
		top.logException(e,arguments); 
	}
  return -1;
}


// determine if the file exists
// securityFcn: function = new Function('return window')
// fileName: string - full native file name
// returns: boolean
function secureFileExists(securityFcn,fileName) {
    var fileSystemObject;
    try {
      if (top.isSecure(securityFcn))
          fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
      if (fileSystemObject.FileExists(fileName))
	  return true;
    } catch(e) { top.logException(e,arguments); }
    return false;
}

// determine if the directory exists
// securityFcn: function = new Function('return window')
// directory: string - full native directory name
// returns: boolean
function secureDirectoryExists(securityFcn, directory)
{  
    var retVal = false;
    try {
      if (top.isSecure(securityFcn))
      {      
          var fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
          if (fileSystemObject.FolderExists(directory))
          {
              retVal = true;
          }
	  }
    } catch(e) { top.logException(e,arguments); }
    
    return retVal;
}


// gets the value of an environment variable
// securityFcn: function = new Function('return window')
// anyvar: string - name of variable
// returns: string - value of variable
//          undefined - variable is not defined
function secureGetEnv(securityFcn,anyvar) {
  try {
    var v;
    try {
	if (top.isSecure(securityFcn))
            var wshell = new ActiveXObject( "WScript.Shell" );
        var getEnvVar = wshell.Environment("Process");
        v = getEnvVar( anyvar );
    } catch(e) {}
    return v;
  } catch(e) { top.logException(e,arguments); }
}

// sets the value of an environment variable
// securityFcn: function = new Function('return window')
// anyvar: string - name of variable
// value: string - new value of variable
// returns: boolean - success status
function secureSetEnv(securityFcn,anyvar,value) {
  try {
    try {
	if (top.isSecure(securityFcn))
            var wshell = new ActiveXObject( "WScript.Shell" );
        var setEnvVar = wshell.Environment("Process");
        setEnvVar( anyvar ) = value;
	return true;
    } catch(e) {}
    return false;
  } catch(e) { top.logException(e,arguments); }
}

// this works well but blocks the UI thread
//function pause(numberMillis) {
//    window.showModalDialog('javascript:document.writeln("<script>window.setTimeout(\'window.close()\',' + numberMillis + ');<\/script>")');
//}

var elementArray = new Array();

// reenables a document element if the associated process has completed
// element: document element
// returns: undefined
function _enableElement(element) {
  try {
    if (typeof element == "undefined")
        element = elementArray.shift(); // pop next element being monitored
    if (typeof element == "undefined" || element == null) return;
    if (element.process.status == 0) { // process not finished
	elementArray.push(element);
	setTimeout('_enableElement()',1000); // sleep 1 second and retry
    }
    else if (element != null)
	top.enableElement(element,true);
  } catch(e) { top.logException(e,arguments); }
}

// executes an arbitrary command
// securityFcn: function = new Function('return window')
// topDir: string - CD mount point
// args: [strings] - command and parameters
// waitBoolean: boolean - foreground or background
// isHidden: boolean - visible window or silent
// element: document element - element to disable while running
// returns integer - exit code if foreground or process status if background
function secureRunProgram(securityFcn,topDir,argsIn,waitBoolean,isHidden,element,workingDirectory,callback,timeout, noQuotes) 
{
    try {
        var args = new Array();
        for(var i = 0; i < argsIn.length; i++)
        {
          args[i] = argsIn[i]; //copy the args array
        }
        
		if (typeof waitBoolean == "undefined" || waitBoolean == null) waitBoolean = false; // long running = background
		if (typeof isHidden == "undefined" || isHidden == null) isHidden = false; // since some things like notepad have to run in visible mode
		if (!timeout) timeout = 5000;
	    
		if (element) top.enableElement(element,false);
	    
		var activexShell = null;
		if (top.isSecure(securityFcn))
		{
			activexShell = new ActiveXObject("WScript.Shell");
		}

		args[0] = top.getFullFileName(topDir,args[0]);
		if(!secureFileExists(new Function('return window'), args[0]) && !programOnPath(securityFcn, args[0]))
		{
			top.logMessage("LPV22041W", args[0]);
		}	
		//args[0] = '"' + args[0] + '"';
		
		for (var i=0; i < args.length; i++)
		{
			var containsSpecialChar = new RegExp(/[=,\s;]/).test(args[i]);
			var containsQuote = new RegExp(/"/).test(args[i]);
			if(containsSpecialChar  && !noQuotes)
			{
           args[i] = addQuotes(args[i]);

			}	
		}
		
		if(workingDirectory)
		{
			if(!isHidden) args = ["-v"].concat(args);
			args = [top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName())].concat(args);
			args = [getEnv('LaunchPadTemp') + "/changeDirectory" + (top.isWindows() ? ".bat" : ".sh"), workingDirectory].concat(args);
			args = [top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName())].concat(args);
		}
		
		var commandstr = "";
		for (var i=0; i < args.length; i++)
			commandstr += args[i] + " ";

		var rc;
		// background with an element get special treatment to keep mshta from hanging waiting for the process to exit
		// in the case that launchpad is exited before the spawned process dies
		if (waitBoolean == false && element != null) {
	        var dosinatorOptions = isHidden ? " " : " -v ";
	        commandstr = top.getNativeFileName(getEnv('LaunchPadTemp') + "/" + top.getScriptLauncherExeName()) + dosinatorOptions + commandstr;
		    rc = activexShell.Exec(commandstr);
		    if (rc != null) {
				if (rc.status == 0) {
				    element.process = rc;
					if (element && !callback) _enableElement(element);
				    rc = 0;
				}
				else {
				    rc = rc.ExitCode;
				    if (element && !callback) top.enableElement(element,true);
				}
				function _monitorProcess(process, callback) {
					try {
						if (process.status == 0) { // process not finished
							setTimeout(function(){ _monitorProcess(process, callback); },timeout);
						}
						else {
							callback(process.ExitCode);
						}
					} catch(e) { top.logException(e,arguments); }
				}
				if(callback) _monitorProcess(process, callback);
		    }
		}
		else {
			rc = activexShell.Run(commandstr, (isHidden ? 0 : 1), (waitBoolean == null ? true : waitBoolean));
			if(callback) callback(rc);
			if(element) top.enableElement(element,true);
		}
		return rc;
    } catch(e) {
        try { if (element) top.enableElement(element,true); } catch(e2) {};
        top.logException(e,arguments);
    }
}

//Determines whether the given file can be found using the path, in case
//the full file name is not used to call runProgram.
//Returns true if the program is found on the path, false otherwise
function programOnPath(securityFcn, name)
{
  var activexShell = null;
  if (top.isSecure(securityFcn))
	activexShell = new ActiveXObject("WScript.Shell");

  var path = activexShell.Environment.item("PATH");
  
  var foundOnPath = false;
  var paths = path.split(";");
    
  for(var i in paths)
  {
    if(secureFileExists(securityFcn, top.expandEnv(paths[i] + "/" + name), false))
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
	var returnCodeFilePath = top.createTempFile('launchpadExecReturnCode');	
	var fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
	var returnCodeFile = fileSystemObject.GetFile(returnCodeFilePath);

	// Setup and start timeout for callback function
	var originalCallback = callback;
	callback = function()
	{
		try
		{
			if(returnCodeFile.size > 0)
			{
				var returnCode = top.trim(readTextFile(returnCodeFile.Path));
				returnCodeFile.Delete(true);
				if(element) top.enableElement(element,true);
				originalCallback(returnCode);
			}
			else
			{
				window.setTimeout(callback,timeout);
			}
		}
		catch(e)
		{
			top.logException(e, arguments);
		}
	};
	window.setTimeout(callback,timeout);
	top.logCLPExit("createCallback", arguments);
	return returnCodeFilePath;
}

// get a list of child directories
// securityFcn: function = new Function('return window')
// dir: string - parent directory
// returns: [directory name strings]
function secureGetDirectories(securityFcn,dir) {
  try {
        if (top.isSecure(securityFcn))
            var fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
        var srcFolder = fileSystemObject.GetFolder( top.getNativeFileName(dir) );
        var dirs = new Enumerator( srcFolder.SubFolders );
	var returnArray = new Array();
        while (!dirs.atEnd()) {
	    if (dirs.item().Name != "." && dirs.item().Name != "..")
	        returnArray.push(dirs.item().Name);
            dirs.moveNext();
	}
	return returnArray;
  } catch(e) { top.logException(e,arguments); }
}

// get a list of child files
// securityFcn: function = new Function('return window')
// dir: string - parent directory
// returns: [file name strings]
function secureGetFiles(securityFcn,dir) {
  try {
        if (top.isSecure(securityFcn))
            var fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
        var srcFolder = fileSystemObject.GetFolder( dir );
        var files = new Enumerator( srcFolder.files );
	var returnArray = new Array();
        while (!files.atEnd()) {
	    returnArray.push(files.item().Name);
            files.moveNext();
	}
	return returnArray;
  } catch(e) { top.logException(e,arguments); }
}

// read an external file
// fileName: string - full native file name or URL
// returns: string - contents of file if readable, null otherwise
function readTextFile(fileName, encoding) {
  top.logCLPEnter("readTextFile", arguments);
    if (fileName == null)
	{
		top.logCLPExit("readTextFile", arguments);
		return null;
	}
  
  if (!encoding) encoding = UTF8;
  var isUTF8 = (encoding.toLowerCase() == UTF8.toLowerCase());
  
    var fileContents = null;
    
	try {
	    // Try to read file using XMLHttpRequest 
	    try {
	        var xmlReq = new ActiveXObject("Microsoft.XMLHTTP");

	        // Do a synchronous read on the file       
	        xmlReq.open("GET", fileName, false);
	        xmlReq.send(null);
	        fileContents = xmlReq.responseText;
	    }
	    catch(e) {
	        //Log this exception, then try to fallback to ADODB.stream
	        top.logException(e,arguments);
	        try
	        {
	            var objectStream = new ActiveXObject("ADODB.Stream");
	             
	            objectStream.Type=2;
	            objectStream.Charset=encoding;
	            objectStream.open();
	            objectStream.LoadFromFile(fileName);              
	            fileContents = objectStream.ReadText();
	            objectStream.close();
	        }
	        //If an exception is caught, this means we can't use ADODB.stream, so we have use FSO to do
	        //the file read.
	        catch(e)
	        {
				//If ADODB.stream fails, log it and try FSO
				top.logException(e,arguments);
				fileContents = null;
				var fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");

				var handle = fileSystemObject.GetFile(fileName);
				var O_READONLY = 1;
				var asUnicode = isUTF8?-1:0;
				var stream = handle.OpenAsTextStream(O_READONLY, asUnicode);

				var uniContents = stream.ReadAll();
				stream.close();

        // No need to process unicode chars
        if (!isUTF8) return uniContents;
        
				var rawContents = [];
				for (var i=0; i < uniContents.length; i++) {
					var charCode = uniContents.charCodeAt(i);
					rawContents.push(String.fromCharCode(charCode & 255, charCode >> 8));
				}
				rawContents = rawContents.join("")
				
				if (handle.size > rawContents.length) {        
					if (typeof top.fileReadErrorList == "undefined") {
						top.fileReadErrorList = new Array();
					}
					//This is just here so we don't log a message for the same file over and over again.
					if (typeof top.fileReadErrorList[fileName] == "undefined") {
						top.fileReadErrorList[fileName]=true;
						top.logMessage('LPV20033W', fileName);
					}                 
				}

				fileContents = top.UTF8toString(rawContents);      
	        } // End of ADODB catch
	    } // End of XMLHttpRequest catch

	    //Removes BOM characters from the beginning of the file
	    if (fileContents.charCodeAt(0) == '65279' || fileContents.charCodeAt(0) == '65534')
	    {     
		    fileContents = fileContents.substring(1,fileContents.length);   
	    }
		top.logCLPExit("readTextFile", arguments);
	    return fileContents;

	} catch(e) {
		//FSO failed, there's nothing we can do to read this files    
		top.logException(e,arguments); 
		top.logCLPExit("readTextFile", arguments);
		return null;
	}
 
}



// read an external file
// securityFcn: function = new Function('return window')
// fileName: string - full native file name
// returns: [line strings]
function secureReadTextFile(securityFcn,fileName) {
  try {

    if (!top.isSecure(securityFcn)) {
        return null;
    }

    var fileContents = null;

    // Try to read file using XMLHttpRequest 
    try {
        var xmlReq = new ActiveXObject("Microsoft.XMLHTTP");

        // Do a synchronous read on the file       
        xmlReq.open("GET", fileName, false);
        xmlReq.send(null);
        fileContents = xmlReq.responseText;
    }
    catch(e) {
        //Log this exception, then try to fallback to ADODB.stream        
        top.logException(e,arguments);
        try
        {
            var objectStream = new ActiveXObject("ADODB.Stream");
             
            objectStream.Type=2;
            objectStream.Charset="UTF-8";
            objectStream.open();
            objectStream.LoadFromFile(fileName);              
            fileContents = objectStream.ReadText();
            objectStream.close();
        }
        //If an exception is caught, this means we can't use ADODB.stream, so we have use FSO to do
        //the file read.
        catch(e)
        {
          //If ADODB.stream fails, log it and try FSO
          top.logException(e,arguments);
          fileContents = null;
          var fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");

          var handle = fileSystemObject.GetFile(fileName);
          var O_READONLY = 1;
          var asUnicode = -1;
	      var stream = handle.OpenAsTextStream(O_READONLY, asUnicode);

          var uniContents = stream.ReadAll();
	      stream.close();

          var rawContents = '';
	      for (var i=0; i < uniContents.length; i++) {
	          var charCode = uniContents.charCodeAt(i);
	          rawContents += String.fromCharCode(charCode & 255, charCode >> 8);
	      }
	      if (handle.size > rawContents.length) {        
              if (typeof top.fileReadErrorList == "undefined") {
                  top.fileReadErrorList = new Array();
              }
              //This is just here so we don't log a message for the same file over and over again.
              if (typeof top.fileReadErrorList[fileName] == "undefined") {
                  top.fileReadErrorList[fileName]=true;
                  top.logMessage('LPV20033W', fileName);
              }                 
	      }
          fileContents = top.UTF8toString(rawContents);      
        } // End of ADODB catch
    } // End of XMLHttpRequest catch

    //Removes BOM characters from the beginning of the file
    
    if (fileContents.charCodeAt(0) == '65279' || fileContents.charCodeAt(0) == '65534')
    {     
      fileContents = fileContents.substring(1,fileContents.length);   
    }
    var fileLines = fileContents.split(/\r*\n/);
    if (fileLines.length > 0)
        if (fileLines[fileLines.length-1].length == 0)
            fileLines.pop();

    return fileLines;

  } catch(e) {
    //FSO failed, there's nothing we can do to read this files    
    top.logException(e,arguments); 
  }
}

// write a text file
// fileName: string - full native file name
// text:  string - content of text file
// append: boolean - true = append text to end of file,  false = overwrite existing file
// returns: true if file was written successfully, false otherwise
function writeTextFile(fileName, fileContent, append, encoding)
{
	top.logCLPEnter("writeTextFile", arguments);
	if (!encoding) encoding = UTF8;

  try
	{
		var objectStream = new ActiveXObject("ADODB.Stream");
		objectStream.Type=2;
		objectStream.Charset=encoding;
		objectStream.Open();
			   
		if (append && fileExists(fileName)) {    
			objectStream.LoadFromFile(fileName);        // load the pre-existing file into the stream
			objectStream.Position = objectStream.size;  // set position at end of stream
		}                           
		if(fileContent) objectStream.WriteText(fileContent); 
		objectStream.SaveToFile(fileName, 2);          // 2 = overwrite file contents
		objectStream.close();
		objectStream = null;
		top.logCLPExit("writeTextFile", arguments);
		return true;
	}  
	catch(e) {
		// write failed
		try{
			if(append != true){
   				var fileSystemObject = new ActiveXObject("Scripting.FileSystemObject");
				var objectStream = fileSystemObject.CreateTextFile(fileName, true);
				objectStream.Write (fileContent);
				objectStream.Close();
				return true;
			}else{
				//Can't use this route is we plan on appending to file
				top.logException(e,arguments); 
				top.logCLPExit("writeTextFile", arguments);
				return false;
			}


		}catch(e) {		
			top.logException(e,arguments); 
			top.logCLPExit("writeTextFile", arguments);
			return false;
		}
	}
	top.logCLPExit("writeTextFile", arguments);
}

// write a binary file
// fileName: string - full native file name
// fileContents:  string - hexadecimal representation of binary file
// returns: true if file written successfully.  Undefined otherwise.
function writeBinaryFile(fileName, fileContents)
{
	top.logCLPEnter("writeBinaryFile", arguments);
	try 
	{
		mkdirs(getParentFolderName(fileName));
		writeBinaryFileHelper(fileName, fileContents);	
		top.logCLPExit("writeBinaryFile", arguments);
		return true;
	}
	catch(e)
	{
		top.logException(e,arguments);
	}
	top.logCLPExit("writeBinaryFile", arguments);
	return top.UNDEFINED;
}

// Check to see if launchpad has internet access
// url: string - URL to test internet connection with
// checkIfValid: boolean (optional) Also checks that the file is valid (i.e., HTTP code 200)
// returnFileSize: boolean (optional) Returns the file size if we get the Content-Length back. -1 if we don't get Content-Length
// returns: true if internet available.  false otherwise.
function hasInternetAccess(url, checkIfValid, returnFileSize)
{
  if (!url)
    url = top.secureGetEnv(new Function('return window'), "LaunchPadInternetAccessURL");
  if (!url)
    url = top.property("LaunchPadInternetAccessURL", "http://www.ibm.com");
  if (!(url.indexOf("http://") > -1) && !(url.indexOf("https://") > -1) && !(url.indexOf("ftp://") > -1))
  {
    return returnFileSize?top.getFileSize(url):true;
  }
  
  var http = new ActiveXObject('Microsoft.XMLHTTP');
  
  http.open('HEAD', url, false);
  try
  {
    http.send(null);
    if (returnFileSize)
    {
      if (http.getResponseHeader('Content-Length').length > 0) //IE returns a non-existent header as an empty string
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
  var xmlReq = new ActiveXObject("Microsoft.XMLHTTP");
  var intervalPoll;
  
  top.abortProgress[urlToFile] = false;
  
  function processDownloadedFile()
  {
    var objectStream = new ActiveXObject("ADODB.Stream");
    objectStream.Type=1; //binary type
    objectStream.open();
    //alert("Total Size: " + xmlReq.getResponseHeader("Content-Length"));
    objectStream.write(xmlReq.responseBody);
    objectStream.SaveToFile(top.getNativeFileName(localFileName), 2);
    objectStream.close();	 
    
    if (execute && !top.abortProgress[urlToFile])
    {
      top.setFileExecutable(localFileName);
      var args = new Array();
      args[0] = localFileName;
      top.runProgram(NO_DISKID,args,BACKGROUND,VISIBLE);
    }
	top.logCLPExit("getRemoteFile", arguments);
    return true;
  }
  
  var pollAborted = function()
  {
    if (top.abortProgress[urlToFile])
    {
      clearInterval(intervalPoll);
      try 
      {
        xmlReq.abort();
      } 
      catch (e) 
      {
        // If IE6, can't abort, so we'll just catch.
      }
    }
    else if (xmlReq.readyState == 4)
    {
      clearInterval(intervalPoll);
    }
  }
  
  if (urlToFile)
	{
		if (!localFileName)
		{
			localFileName = top.getNativeFileName(top.getEnv('LaunchPadTemp') + urlToFile.substring(urlToFile.lastIndexOf("/"), urlToFile.length));
		}
		try 
		{
      var bytesdownloaded = -1;
      var totalbytes = -1;
      top.setProgressDescription(property('downloadText') , property('updateDownloadingTitle'), urlToFile);
      var http = new ActiveXObject('Microsoft.XMLHTTP');
      http.open('HEAD', urlToFile, false);
      http.send(null);
      totalbytes = http.getResponseHeader('Content-Length');
      top.showProgress(true, urlToFile, {cancel:true});
      top.setProgressDescription(top.formatmsg(property('downloadingBytes'), totalbytes), property('updateDownloadingTitle'), urlToFile);

      xmlReq.open("GET", urlToFile, true);
      xmlReq.onreadystatechange = function(){
        if (xmlReq.readyState == 4)
        {
          top.setProgressDescription(property('savingText'),property('savingTitle'), urlToFile);
          processDownloadedFile();
          top.updateProgress(100, 100, urlToFile);
          top.setProgressDescription(property('downloadComplete'), property('downloadComplete'), urlToFile);
          setTimeout("top.showProgress(false, '" + urlToFile + "' );", 1000);
        }
      }
		
      xmlReq.send(null);
      intervalPoll = setInterval(pollAborted, 250);
      
    } catch(e) {
      top.logException(e,arguments);
      top.showProgress(false, urlToFile );
			return top.UNDEFINED;
    }
  }
  top.logCLPExit("getRemoteFile", arguments);
}

// exit launchpad
// securityFcn: function = new Function('return window')
// returns: void
function secureExit(securityFcn) {
  try {
	if (top.isSecure(securityFcn)) {
	    try { if (window.opener == null) window.opener=self; } catch(e) {}
	    try { window.close(); } catch(e) { alert("ERROR: Exit failed"); }
	}
  } catch(e) { top.logException(e,arguments); }
}
   
// Init log filter now that we have access to env vars
logInitFilter();

if (typeof top.LOCALE == "undefined" || top.LOCALE == null)
{    
  //The reason for modifying the locale we're passed is that we haven't yet 
  //been able to map it using the locale mapping mechanism.  So we might
  //receive "en_us" but it will eventually be resolved to "en"  For now, we just 
  //assume that we don't need a regional dialect and just use the base language.
  //If this assumption is incorrect, the proper locale/global properites will be loaded
  //in Mozilla/IExplore.html
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


top.OSTYPE = "windows";

if (typeof top.OS == "undefined") top.OS = secureGetEnv(new Function('return window'), "LaunchPadOS" );

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

top.BROWSER = "IExplore";

top.PATHSEPARATOR = top.getNativeFileSeparator();
top.STARTINGDIR = top.getStartingTopDir();

top.CONTENTDIR = secureGetEnv(new Function('return window'), "LaunchPadContentDirectory" );
top.SKINDIR = secureGetEnv(new Function('return window'), "LaunchPadSkinDirectory" );
top.STARTPAGE = secureGetEnv(new Function('return window'), "LaunchPadStartPage" );

top.COMPATIBILITYVERSION = secureGetEnv(new Function('return window'), "LaunchPadCompatibilityVersion" );
top.VIEWERPATH = secureGetEnv(new Function('return window'), "LaunchPadBrowser" );
top.VIEWERARGS = secureGetEnv(new Function('return window'), "LaunchPadBrowserArgs" );

  
    
// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // iqIYD++n+5/hQYpPOX1jShiv84TrP33JFDQU+fYgRsqg
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
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCDUnkdF
// SIG // zpe6GfTQwsdlpwLk6vyHLzHEhrOa3R0V7NxqCjANBgkq
// SIG // hkiG9w0BAQEFAASCAgB7JEdTvaXziLh8Jisq9d/0fqj7
// SIG // IzDQnKoAL25zbmEOx1cE12ANUS2o4mtu6orRi9reHwKQ
// SIG // 3OGYt3VgUnf0jvJIWAqOyDBAWlC9Nc+MH8o8k3L2f/a9
// SIG // P48e1TmwoDFsqE5sIpu0yFSm1jLqdJuVX80RNs8DH1eT
// SIG // oY07DnZQOnk44t/fU9hCT6vhGECC3DB92IMgzrffchbM
// SIG // g41/6F77RzFlMqUxwkfYVT4WssVnGrBgQYO6bQfrf00B
// SIG // ElSz/1b/XT1SD4zSlJaqGCoqdzWn7mjD+syTFaagTZxV
// SIG // XD7N6asv28oFZFDbAQpx5TojTWDayNu2QxnOMVueK0WL
// SIG // 2RiZE9kGye3q/Z4CSmDtPpROyTzyBuIOLnGzJqvmoRu0
// SIG // DzGi59uPBu7M7PDN9uB0Uq7fX9QUtq0YmpOtal8zyn8j
// SIG // 3i7SNZtGothDS9tawK9gnNt4B93fbccHmK9+diHSD0zK
// SIG // Mb4rt2t+tPpXnJMJDJfdT2L1BInk/DCeX92AmHsoWDHQ
// SIG // vVEtgDGuocj4zzbELaKjgWwsS4C014Y/8kE751mplIJg
// SIG // M8u8ucxM+3ChOTlDKlmz+uCr4sioMP1ZkzVlur9fhSSS
// SIG // j9jFPwEK/NCaqryTHXkJik0IcvnCscjVBIj3BTpJ4VgC
// SIG // +2uxcc1Q6r29iR741Ep7QwnhH1K8PfJd6+stQg+nyKGC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4MzFaMC8GCSqGSIb3
// SIG // DQEJBDEiBCAQr+MU5qeOI+a02c9Pu0Okj1McQGBtcnra
// SIG // Q9RaIxy12zANBgkqhkiG9w0BAQEFAASCAgB4X91rs1UO
// SIG // pI0DcFQVquyTCBQuIkED2BerK2S9OX6OhRxXBC3co1/W
// SIG // A56dr1CdpQPrTfIHXG+2UfBrkCy0pajlMzGqXzpxWtPl
// SIG // ZVaDsvpDQITNW38excDRS095mLI0cU3hZCkBxPbTvfiM
// SIG // LCR6T15fAk2tahGHPwg3uci7H4Qbg1LZncrzOBAcmH4f
// SIG // X/0/Ynu1f+Ht/JWcqi6Edocp96xpXmGABPq7hiwSVQkC
// SIG // xVgFzZpEDWtIvegCgU83CfwhxpBNm7p/Q6OEWddwyJaA
// SIG // zyr9fuvv3tR/O1b3mwNKlQgn+nUyUyVwpLXmqFxlg5Gy
// SIG // bB4GtLAhvwdUFSppOjcTc4UvOltS+6kgspIkxfkRoJmP
// SIG // 9eTxwUPDIPej/7ENXPcovkV2f77noPDxHnXu2W3HG8EW
// SIG // 04ZUdGi4x/tHKCc+8Nid6aE9SdyqbOhWX+GqGs/M5ZBJ
// SIG // tIN6olfc8bkCrC+SxjXNwpx2JlR3HghdPBgfNFvL9n27
// SIG // e3YjoL7bgkKhnqiMulvtg47vph4VD1H/swNIZBb/H3xG
// SIG // B6sQn6ZyVsysxrVUpUVEYS9vc+RVE/RtuL1KRovWiyCa
// SIG // uYLvn1B7vXSxf+me+uDwrIZuYgy0rTsfU+fdHeObxfYj
// SIG // 61arffN2GnAGaU5palogGydE8cPI5w37QZOQCtskqTD6
// SIG // OhyKdotOsew1Hg==
// SIG // End signature block
