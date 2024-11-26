// Licensed Materials - Property of IBM
// 5648-F10 (C) Copyright International Business Machines Corp. 2005, 2006
// All Rights Reserved
// US Government Users Restricted Rights - Use, duplication or disclosure
// restricted by GSA ADP Schedule Contract with IBM Corp.

// array that maps disk IDs to real disk directories
top.diskMappings = new Array();
// array of all valid disk labels
top.allLabels = new Array();
// starting disk label
top.diskLabel = new Array();

top.foundCompatibleStartDisk = true;

var DISK_STRUCTURE_PROPERTIES = "diskStructure.properties";
var WRONG_DISK_ID = "wrongDiskId";
var NOT_DEFINED = "-NULL-";

// Determines if a disk is compatible with the starting disk and is also
// compatible with the current machine.  Consider the following scenario.
// 
// Starting disk info
// ------------------
// id = DISK1
// version = 1.0
// compatible[version] = 1.0
// compatible[top.OS] = Windows.*
// 
// Newly discovered disk info
// --------------------------
// id = DISK2
// version = 1.0
// compatible[version] = 1.0
// compatible[top.OS] = Linux
// 
// Clearly, these two disks should not be compatible.  One is designed for windows and the other is designed for Linux.
// Let's look at the process that we'll go through to make that determination.
// 
// 1) Compare the base disk compatibility checks to the properties stored on DISK2
//    a) The checks defined on DISK 1 are
//       version = 1.0
//       top.OS = Windows.*
//    b) The properties defined on DISK 2 are
//       version = 1.0
//       
//    When we do the comparisons, the version property from the 2nd disk (1.0) is compared to the expected value
//    specified by the base disk (1.0).  And they match.  The next check uses top.OS which is a javascript variable
//    that is evaluated at runtime and not a property that can be specified by the disk.  It evaluates to say Windows_2003
//    (Assuming we're on a win_2k3 box) and we compare that to Windows.*.  It matches and so far the compatiblity check
//    is happy.
// 
// 2) Compare the new disk compatibility checks to the properties stored on DISK2.  We're note interested in
//    looking at the properties stored on DISK1.  Completion of step 1 told us that DISK2 is compatible with the
//    checks defined on disk 1.  Now we need to compare the compatibility checks defined on disk 2 to the current machine
//    environment.
//    a) The checks defined on DISK2 are
//       version = 1.0
//       top.OS = Linux
//    b) The properties defined on DISK1 are
//       version = 1.0
// 
//    As in step 1, the version check will work.  However, this time, we compare top.OS to Linux which will fail on 
//    our 2K3 machine.  Hence, we are able to determine that these disks are not compatible.
// 
// newDiskCompatibilityChecks: Array - The information from thisDisk.properties on a newly discovered disk
// baseCompatibilityChecks: Array - The information from thisDisk.properties on the disk the launchpad was started from
// returns boolean - if the 2 labels are compatible
function isCompatibleDiskLabel(newDiskCompatibilityChecks, baseCompatibilityChecks) {

  return isCompatibleDiskLabelHelper(newDiskCompatibilityChecks, baseCompatibilityChecks) 
      && isCompatibleDiskLabelHelper(newDiskCompatibilityChecks, newDiskCompatibilityChecks);
}

//Helper function for comparing disk labels.  
//
// newDiskCompatibilityChecks: Array - The information from thisDisk.properties on a newly discovered disk
// baseCompatibilityChecks: Array - The information from thisDisk.properties on the disk the launchpad was started from
function isCompatibleDiskLabelHelper(newDiskCompatibilityChecks, baseCompatibilityChecks) {

  try {
    var compatibleChecks = baseCompatibilityChecks["compatible"];
    if ((typeof compatibleChecks) == "undefined" || compatibleChecks == null) return true;
    var isCompatible = true;
    for (var i in compatibleChecks) try
    {
      var v = '';
      with (newDiskCompatibilityChecks) {
        //For complex ids, split the id on the plus sign and evaluate each part seperately
        var indexArray = i.split("+");
        for (var index in indexArray) {
          var tempValue = "";
          try { tempValue = eval(indexArray[index]);} 
          catch(e) { tempValue = NOT_DEFINED;}
          v += tempValue;                
        }              
      }

      var regexp = new RegExp("^(" + compatibleChecks[i] + ")$","i");
      var m = v.match(regexp);
      if (m != null && (typeof m != "string")) m = m[0];

      isCompatible = (m == v);
      if (!isCompatible) return isCompatible;
    } catch(e) {
    }
	
    return isCompatible;
  } catch(e) {
    top.logException(e,arguments);
  }
  


  return top.UNDEFINED;
}

//Clean this up... it's got tons of duplicate code
function getIncompatibleMessage(diskLabel, compatibleLabel) {


  try {
    var retVal = "";
    var compatibleChecks = diskLabel["compatible"];
    if ((typeof compatibleChecks) == "undefined" || compatibleChecks == null) return top.UNDEFINED;
    var isCompatible = true;
    for (var i in compatibleChecks) try
    {
      if (isCompatible) {
        var v = '';
        // variables not found are assumed to be disklabel indexes
        try { v = eval(i);} catch(e) {
          v = compatibleLabel[i];
        }
        var regexp = new RegExp(compatibleChecks[i],"i");
        var m = v.match(regexp);
        if (m != null && (typeof m != "string")) m = m[0];
        isCompatible = (m == v);
        if (!isCompatible) {
          //If a launchpad variable failed a compatibility check, remove the "top." so
          //the message is more user friendly
          if (i.length > 4 && i.substring(0,4) == "top.") {
            i = i.substring(4, i.length);
          }
          var message = top.formatmsg(document.properties['diskIncompatibilityDetails'], v, i);
          retVal = message;
        }
      }
    } catch(e) {
    }
    return retVal;
  } catch(e) {
    top.logException(e,arguments);
  }
  return top.UNDEFINED;
}

// convert disk ID to real disk directory - this will prompt the user if needed
// id: string - the generic disk ID
// returns string - the real disk directory
function getDiskMapping(id) {



  var validator = null;
  if(id && (id.id || id.label || id.validator || id.message))
  {
	var validatorMessage = id.message || document.properties['diskDirPrompt'];
    top.allLabels[id.id] = id.label || top.allLabels[id.id];
    validator = id.validator;
    id = id.id;
  }
  
  var WIDTH = 410;
  var HEIGHT = 170;
  //Set to true so on first pass diskDirPrompt will be displayed despite errors from disk locations in array are present
  var showDiskPrompt = true;
  
  try {
    if (typeof id == "undefined") return null;
    if (id == null) {
      return top.diskMappings[diskLabel.id];
    }
    if (typeof top.allLabels[id] == "undefined" || top.allLabels[id] == null) {
      top.logMessage("LPV20015S", id);


      return top.UNDEFINED;
    }

    var diskMapping = top.diskMappings[id];

    if (typeof diskMapping != "undefined")
    {
      if (top.secureFileExists(new Function('return window'), top.getNativeFileName(diskMapping+'/'+top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO))) {
        var diskLabelProperties = new Array();
        top.secureRead1PropertyFile(new Function('return window'), top.getNativeFileName(diskMapping+'/'+top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO), diskLabelProperties, false);
        if (diskLabelProperties.id == id && isCompatibleDiskLabel(diskLabelProperties,top.diskLabel)) {


          return diskMapping;
        }
      }
      if (validator != null && validator.call(this, diskMapping, id))
      {


       return diskMapping;
      }
    }

    var showWrongDirectory = false;
    
    if ((typeof diskMapping == "undefined") || diskMapping == null)
      diskMapping = top.STARTINGDIR;

    do {

      //set the default error message
      var tempLabel = top.allLabels[id];
      if (typeof tempLabel == "object") {
        tempLabel = top.getBestOSMatch(tempLabel);            
      }
      var message = top.formatmsg(document.properties['diskDirPrompt'], tempLabel);

      if (validator != null)
      {
        message = top.formatmsg(validatorMessage, tempLabel);
        if (validator.call(this, diskMapping, id))
        {
          top.diskMappings[id] = diskMapping;
          break;
        }  
      }
      else if (top.secureFileExists(new Function('return window'), top.getNativeFileName(diskMapping+'/'+top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO)) 
          || top.secureFileExists(new Function('return window'), top.getNativeFileName(diskMapping+'/'+DISK_STRUCTURE_PROPERTIES))) {
        var mediaTop = findMediaTop(top.getNativeFileName(diskMapping + "../"), top.getNativeFileName(diskMapping + "/"));
        var errorString = updateDiskMappings(mediaTop);
        var diskLabelProperties = new Array();
        if (typeof top.diskMappings[id] != "undefined") {
          top.secureRead1PropertyFile(new Function('return window'), top.getNativeFileName(top.diskMappings[id]+'/'+top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO), diskLabelProperties, false);
          if (diskLabelProperties.id == id && isCompatibleDiskLabel(diskLabelProperties,top.diskLabel)) {
            diskMapping=top.diskMappings[id];
            break;
          }
        } else {
          if (errorString != WRONG_DISK_ID && errorString != "") {
            message = top.formatmsg(document.properties['incompatibleDiskPrompt'], errorString);                   
          }
          if(showDiskPrompt) {
            message = top.formatmsg(document.properties['diskDirPrompt'], tempLabel);
            //Set to false so on all future passes the error message will persist
            showDiskPrompt=false;
          }
          //if we get here and there's no error string, it's probably because the user was prompted
          //for a CD and never inserted the correct one.  An incompatibleDiskPrompt with a null error string is
          //a pretty useless message, so we should fall back to the diskDirPrompt.
          else if (errorString == "") {
            tempLabel = top.allLabels[id];
            if (typeof tempLabel == "object") {
              tempLabel = top.getBestOSMatch(tempLabel);            
            }
            message = top.formatmsg(document.properties['diskDirPrompt'], tempLabel);
          }
        }
      }

      //If we come through here a 2nd time, it means that the last directory entered was invalid
      if (showWrongDirectory) {
        var wrongDirMessage = top.formatmsg(document.properties['wrongDirectory'], diskMapping);
        alert(wrongDirMessage);
      } else {
        showWrongDirectory = true;
      }

	var browseDialogOptions = {
		width: WIDTH+"px",
		height: HEIGHT+"px",
		title: property('promptTitle'),
		dialogText: message,
		defaultLocation: diskMapping,
		validationFunction: top.isDirOK
	}

    diskMapping = top.BROWSER == 'IExplore' ? top.browseDialog(browseDialogOptions) : top.isMac() ? top.Launchpad.browse(diskMapping,message) : top.modalPromptWithBrowse(property('promptTitle'), message ,diskMapping, top.isDirOK, WIDTH, HEIGHT);
    if(top.isMac() && diskMapping)
	{
		diskMapping = diskMapping[0];
	}
      // Add '/' or '\' at end if not provided      

      if (diskMapping != null) {
         if ((diskMapping.indexOf("\\") != -1) &&
            (diskMapping.charAt(diskMapping.length-1) != "/") &&
            (diskMapping.charAt(diskMapping.length-1) != "\\"))
            diskMapping=diskMapping+"\\";
        else
          if ((diskMapping.indexOf("/") != -1) &&
             (diskMapping.charAt(diskMapping.length-1) != "/") &&
             (diskMapping.charAt(diskMapping.length-1) != "\\"))
             diskMapping=diskMapping + "/";
      }

    } while (diskMapping != null);
 

   return diskMapping;
  } catch(e) {
    top.logException(e,arguments);
  }


  return top.UNDEFINED;
}

//Searches for other disks that may exist in a DVD and updates the disk mapping array
//with their location.
//
//directory: string - The top level directory where the recursive search begins
function updateDiskMappings(directory) {




  var errorString="";

  try{        
    var diskStructureFile = top.getNativeFileName(directory + "/" + DISK_STRUCTURE_PROPERTIES);
    if (top.secureFileExists(new Function('return window'), diskStructureFile)) {
      var diskInfo = new Array();    
	  
      top.secureRead1PropertyFile(new Function('return window'), diskStructureFile, diskInfo, false);
      if (typeof diskInfo['recurse'] != "undefined") {
        for (var i = 0; i < diskInfo['recurse'].length; i++) {
          var recurseDirectory = top.getNativeFileName(directory + "/" + diskInfo['recurse'][i]);
          if (top.secureDirectoryExists(new Function('return window'), recurseDirectory)) {
            errorString = updateDiskMappings(recurseDirectory);                        
          } else {
            top.logMessage("LPV20032W", recurseDirectory);
          }                    
        }
      } else {
        top.logMessage("LPV20031E", diskStructureFile);
      }
    }
    //check for disk label file and make the necessary updates
    var thisDiskPropFile = top.getNativeFileName(directory + "/" + top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO);

    if (top.secureFileExists(new Function('return window'), thisDiskPropFile)) {
      var diskLabelProperties = new Array();
      top.secureRead1PropertyFile(new Function('return window'), thisDiskPropFile, diskLabelProperties, false); 
      if (typeof diskLabelProperties.id != "undefined" && diskLabelProperties.id != top.diskLabel.id && isCompatibleDiskLabel(diskLabelProperties,top.diskLabel)) {
        top.diskMappings[diskLabelProperties.id] = directory + "/";
      } else {
        if (typeof diskLabelProperties.id == "undefined" || diskLabelProperties.id == top.diskLabel.id) {
          errorString = WRONG_DISK_ID;
        } else {
          errorString = getIncompatibleMessage(diskLabelProperties,top.diskLabel);
        }
      }
    }
  }
  catch(e) {
    top.logException(e,arguments);
  }

  return errorString;
}

// Given a disk name and a top level starting directory, this function will recursively
// search for a disk that is compatible with the current machine of the same name.
// This function will not recurse unless an appropriately formatted diskStructure.properties file
// exists
function searchForCompatibleDiskByName(diskName, startingDirectory)
{




  var diskLocation = null;

  var diskStructureFile = top.getNativeFileName(startingDirectory + "/" + DISK_STRUCTURE_PROPERTIES);
  if (top.secureFileExists(new Function('return window'), diskStructureFile)) {
    var diskInfo = new Array();    

    top.secureRead1PropertyFile(new Function('return window'), diskStructureFile, diskInfo, false);
    if (typeof diskInfo['recurse'] != "undefined") {
      for (var i = 0; i < diskInfo['recurse'].length && diskLocation == null; i++) {
        var recurseDirectory = top.getNativeFileName(startingDirectory + "/" + diskInfo['recurse'][i]);
        if (top.secureDirectoryExists(new Function('return window'), recurseDirectory)) {
          diskLocation = searchForCompatibleDiskByName(diskName, recurseDirectory);
        } else {
          top.logMessage("LPV20032W", recurseDirectory);
        }                    
      }
    } else {
      top.logMessage("LPV20031E", diskStructureFile);
    }
  }
  else
  {    
    var thisDiskPropFile = top.getNativeFileName(startingDirectory + "/" + top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO);
    if (top.secureFileExists(new Function('return window'), thisDiskPropFile)) {
      var diskLabelProperties = new Array();
      top.secureRead1PropertyFile(new Function('return window'), thisDiskPropFile, diskLabelProperties, false); 
      if (typeof diskLabelProperties.id != "undefined" && diskLabelProperties.id == diskName && isCompatibleDiskLabel(diskLabelProperties, diskLabelProperties))
      {
        diskLocation = startingDirectory;
      }
    }
  }  
 

 return diskLocation;
}


//This is a helper function that looks for the top level of the media.  This is defined
//by the highest location of the file diskStructure.properties
//
//Things to fix: make getNativeFileName remove excess ../
//
//directory - the current directory that is being check for the existance of the diskStructure.properties file
//previousDirectory - the last directory that contains diskStructure.properties
function findMediaTop(directory, previousDirectory) {



  var mediaTop = previousDirectory;

  var parentDirIndex = directory.indexOf(".." + top.getNativeFileSeparator());
  if (parentDirIndex != -1) {
    directory = directory.substring(0, parentDirIndex);  //Once you get to the root, ../ start building up
  }                                                        //in the path and aren't removed by getNativeFileName
  if (previousDirectory != directory) {   //could get stuck in an infinite recursion at the media root without this check
    var file = top.getNativeFileName(directory + "/" + DISK_STRUCTURE_PROPERTIES);
    if (top.secureFileExists(new Function('return window'), file)) {
      mediaTop = findMediaTop(getNativeFileName(directory + "../"), directory);                  
    }
  }
  



  return mediaTop; 
}

//This function returns the disklabel array for a given directory path
//The argument directory is assumed to be the directory that contains launchpad/diskinfo
function getDiskLabelInformation(directory)
{



  var diskInfoArray = new Array();
  var thisDiskPropFile = top.getNativeFileName(directory + "/" + top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO);

  if (top.secureFileExists(new Function('return window'), thisDiskPropFile)) {
    top.secureRead1PropertyFile(new Function('return window'), thisDiskPropFile, diskInfoArray, false); 
  }
  



  return diskInfoArray;
}

/**
 * This function runs all of the disk labels through a FSM that will evaluate any embedded expressions in the disk label.
 * 
 * Example:  FSDISK = "First Steps Disk <%=property('fallBackLocale')%>"
 * 
 * This function should only be called after jscp and user extensions have been loaded in either IExplore.html or Mozilla.html.
 * There's nothing that prohibits it from being run before then.  However, the public APIs that a content writer will use
 * when creating the disk label will not yet be available.  
 */ 
function handleDiskLabelJavascriptSubstitution()
{




  for (var key in top.allLabels) {
    var label = top.allLabels[key];
    //This means that there are OS specific labels.  For example:
    //disk1[windows] = "Disk 1 for Windows"
    //disk1[unix] = "Disk 1 for unix"
    if (typeof label == "object") {
      for (var index in label) {
        //In this case, "label" is an array, label[index] is the value of the property
        //to be evaluated, and "index" is simply the location where the updated value should
        //be stored back into the label array.  
        handleDiskLabelJavascriptSubstitutionHelper(label, label[index], index);
      }
    }
    else
    {
        handleDiskLabelJavascriptSubstitutionHelper(top.allLabels, label, key);
    }
  }


}

/**
 * Helper function used by handleDiskLabelJavascriptSubstitution.
 * labelArray - possibly top.allLabels or perhaps a subarray of it
 * label - the label to be evaluated
 * key - an index into labelArray
 */ 
function handleDiskLabelJavascriptSubstitutionHelper(labelArray, label, key)
{



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

  while (i < label.length) {
    var curChar = label.charAt(i);

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
        var result = null;

        try
        {
          eval("result = " + expression);
        }
        catch(e)
        {
          top.logException(e,arguments);
          result = undefined;
        }

        if (typeof result == "undefined") {
          top.logMessage("LPV22038W", label);
          state = START;
          tempBuffer = "";
        } else {
          //Append what ever we get to the verified buffer and get ready to start over
          verifiedBuffer += result;
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
    top.logMessage('LPV22039W', label);
    verifiedBuffer += tempBuffer;
    tempBuffer = "";
  }

  labelArray[key] = verifiedBuffer; 


}

function initializeDiskLabelService()
{  




  //If this function is called sometime other than when the launchpad is first loaded, we should clear out these array
  //to be sure there is no lingering data.
  top.allLabels = new Array();
  top.diskLabel = new Array();
  top.diskMappings = new Array();

  //Scan for parent directories that may contain additional disk directories
  var mediaTop = findMediaTop(top.getNativeFileName(top.STARTINGDIR + "../"), top.STARTINGDIR);

  // read all valid labels
  top.secureRead1PropertyFile(new Function('return window'), top.getNativeFileName(top.STARTINGDIR+top.RELATIVEDIR+top.DISKINFODIR+top.ALLDISKLABELS), top.allLabels, false);  

  // read this disk label
  top.secureRead1PropertyFile(new Function('return window'), top.getNativeFileName(top.STARTINGDIR+top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO), top.diskLabel, false);
  //Check to see if the starting disk can actually run on this computer
  if (!isCompatibleDiskLabel(top.diskLabel, top.diskLabel)) {
    //If not, search for a disk that is valid
    var newStartingDisk = searchForCompatibleDiskByName(top.diskLabel.id, mediaTop);
    if (newStartingDisk != null) {
      //re-read the disk properties
      top.secureRead1PropertyFile(new Function('return window'), top.getNativeFileName(newStartingDisk + "/" +top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO), top.diskLabel, false);
      top.diskMappings[top.diskLabel.id] = newStartingDisk + "/";      
    }   
    else
    {
      top.foundCompatibleStartDisk = false;
    }
  }

  //Don't waste our time trying to find other compatible disks if we can't find a start disk that works on this machine
  if (top.foundCompatibleStartDisk) {
    updateDiskMappings(mediaTop);
  }
  
  if (typeof top.diskMappings[top.diskLabel.id] == "undefined") {    
    top.diskMappings[top.diskLabel.id] = top.STARTINGDIR+"/";
  }

  // see if any sibling directories have valid disk labels that can be used so the user is not prompted as often
  var parentdir = top.getNativeFileName(top.STARTINGDIR+"/../");
  var dirs = top.secureGetDirectories(new Function('return window'), parentdir);
  for (var i=0; i < dirs.length; i++) {
    var f = top.getNativeFileName(parentdir+dirs[i]+"/"+top.RELATIVEDIR+top.DISKINFODIR+top.THISDISKINFO);
    if (top.secureFileExists(new Function('return window'), f)) {
      var diskLabelProperties = new Array();
      top.secureRead1PropertyFile(new Function('return window'), f, diskLabelProperties, false);
      if (typeof diskLabelProperties.id != "undefined" && diskLabelProperties.id != top.diskLabel.id && isCompatibleDiskLabel(diskLabelProperties,top.diskLabel)) {
        top.diskMappings[diskLabelProperties.id] = parentdir+dirs[i];
      }
    }
  } 


  
}


initializeDiskLabelService();

// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // HOtxU3vPnGcTIjmvlGsvu+0g8p0Xt8OIiCcoRTQ5Bmig
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
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCCdkPJ8
// SIG // xT3VuVJtxZayOdH7t1MQeni6FopyL5c/dt9X+TANBgkq
// SIG // hkiG9w0BAQEFAASCAgBApVzKE4S8RuAwcV+WV3hotpU2
// SIG // kaMO/4dk7rxIovBVsNijJhkY/aM4PjEiv9MaZtcgxN1L
// SIG // 0F79wpsvjIxzVmN5N8d+5Vn/a0bpmXeQwX5e6f8NGWkP
// SIG // C/P+VZhNr/kM/p5xEYK6n1FE0WM8KtUpPpE7HM9YKQOh
// SIG // QvB+93C3/SxPQaLzr7mDceS0PV3ZWsW42tKHz2cMjnFu
// SIG // uylbFOf7B/yYUVWHNOUMHswiNp4im0R7IYDKI0LWgNZx
// SIG // HoaRRjdtaWb8ztx1AY5pwtuTjj6qLB6946fW3oqtg1Bd
// SIG // vSqqq4hkECV6h8ACIlQ7WkKvmze7vn5IRvJaulyvORzQ
// SIG // RdCviKepd4TjWxVOvafaA3vKtKJ97ScTlNl+xFmlMxW3
// SIG // JyG4sN4uvxR8pcfC+VIecDtYwBwy+6c7MVx+aLEMgnAp
// SIG // MJF3iDPE3mQzr3NjMgLT9q4KtwgKtM6CMVAOx5JxIpN7
// SIG // WPWWKAFlKH1fpueL5sDi7QkzWd3YZ7esvalpBpe7qfTf
// SIG // M1RnRJmrhtmb609eL5XofUV7/2vTeg7Nw5vT65t9xKgC
// SIG // BYu7B6qWJAQX6Pd3NxIyup817jZbtowKUL2VOxOAcaaa
// SIG // GaxtcmPnQ3nR0v3SrZm3YYyvPXdeP41yXUecEdoR21L3
// SIG // 5i1YvckCJRjlG8yed8WezZv8P25ZFXPRLrJCeQhdpKGC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4NDNaMC8GCSqGSIb3
// SIG // DQEJBDEiBCB4+qOJy+HXI1W+0/tH7+S9lyVplEIS3VtU
// SIG // W1iFXV79TDANBgkqhkiG9w0BAQEFAASCAgAmNZ9dcNNQ
// SIG // Xg7DQbwtl4b2sC+92MMdeZyYKsGmWS51KBnTMR9/TTXi
// SIG // yWtpKhpC58mED9/xiJek/b5Dp1tWP5BoyBJs8hUthSYj
// SIG // 2WOk+jrQQ0PLAFCsu5yuF7L+n8POJlFNNR7JgmcLSbtq
// SIG // rKYR5kIZWmgTe1ER3o/K+w3cMq4bWBs2ShaieRbxb3D+
// SIG // wAyWdOoUdm5Ts5BiI03gjdCCEzo3DzzUGYC4fMQrL32R
// SIG // PL3hPuIo5ThhFVXHEdl2a2DrAzArRs84RfH/b0M1Yd3S
// SIG // n+55r3AOCBkIENFQqekrjTSk6L146IN0X/LCWI0Bx49m
// SIG // gqg2EeDjYFBOZNrr2zF3JYI0Qy15HKOSp7vcziMDUyHV
// SIG // /ib7xqdy7LCiHpgy04C7beCa/cEL8ZjgO2xRErW97DAg
// SIG // /nD7tlB7Yv2vqQUqUUm3sPvWUBu9kYksUlrgF9QeAOVp
// SIG // 8uvltb9nQOQVl6TS/s+MipCojNvbA8z9qyCDZ4cnuiSB
// SIG // igbkIXit372Un+kIl/US9Vr65blJHn5dXFJnsOaymk57
// SIG // UP4GTLqIThs+UgmsUyDlGIteol+yiRs6WXg28zYse6BD
// SIG // wZyprrsKwMQpp3VELdL7xhhD+6DcnFyBOGs+ru70+y94
// SIG // JQjZzLq6869irtblvvD7LozBFqWJ9uYsnimpLdX/Z+Ow
// SIG // ZNKfBe4URpvyPA==
// SIG // End signature block
