// Licensed Materials - Property of IBM
// 5648-F10 (C) Copyright International Business Machines Corp. 2008
// All Rights Reserved
// US Government Users Restricted Rights - Use, duplication or disclosure
// restricted by GSA ADP Schedule Contract with IBM Corp.

top.navigationHistory = [];
var navOrder;

function enableAccessDefaultWizardAccessKeys(){
    if (top.isDojo())  return;  // hot keys don't work with dojo buttons yet
	
	top.logCLPEnter("enableAccessDefaultWizardAccessKeys", arguments);
	var assignKeysFx = function(){
		top.assignAccessKey({
			id: 'previousButton',
			accessKey: property('previousButtonHotkey',null)
		});
		top.assignAccessKey({
			id: 'nextButton',
			accessKey: property('nextButtonHotkey',null)
		});
		top.assignAccessKey({
			id: 'cancelButton',
			accessKey: property('cancelButtonHotkey',null)
		});
	}
	
	var waitFx = function(){
		//If we do it any earlier than top.footerPropertiesSet then we chance
		//having multiple access keys set since display value might change during jscp
		if (top.footerPropertiesSet != true) {
			setTimeout(waitFx, 250)
		}
		else {
			assignKeysFx();
		}
	}
	if(isStringTrue(property('enableDefaultAccessKeys',false)))
		waitFx();
		
    top.logCLPExit("enableAccessDefaultWizardAccessKeys", arguments);
}

function isStringTrue(string)
{
  if(string == true) return true;
	if(string == false) return false;
	if(typeof string == "string" && string.toUpperCase() == "TRUE") return true;
	return false;
}

function getBooleanString(string)
{
	return isStringTrue(string)?"true":"false";
}

/*
 * Enables or disables the button with the given id based on the value of enable.
 * @arg button_id the id of the button to enable/disable
 * @arg enable true to enable, false to disable
 */
function enableButton(button_id, enable)
{
  top.logCLPEnter("enableButton", arguments);
  //top.logEnter("enableButton", arguments);
  enable = isStringTrue(enable);
  if (top.root.footer.enableButton)
	top.root.footer.enableButton(button_id, enable);
  else
  {
	var button = top.root.footer.document.getElementById(button_id);
	if (button != null) {
		button.disabled = !enable;
	}
  }
  top.logCLPExit("enableButton", arguments);
}

/*
 * Enables or disables all of the wizard buttons.
 * @arg enable true to enable, false to disable
 */
function enableButtons(enable)
{
  //top.logEnter("enableButtons", arguments);
  
  enable = isStringTrue(enable);
  enableButton('cancelButton', enable);
  enableButton('nextButton', enable);
  enableButton('previousButton', enable);
}

/*
 * Shows or hides the button with the given id based on the value of show.
 * @arg button_id the id of the button to hide/show
 * @arg enable true to show, false to hide
 */
function showButton(button_id, show)
{
  top.logCLPEnter("showButton", arguments);
  show = isStringTrue(show);

  if(show) showButtonBar(true);

  if (top.root.footer.showButton)
	top.root.footer.showButton(button_id, show);
  else
  {
	var button = top.root.footer.document.getElementById(button_id);
	if(button != null)
		button.style.display = show ? "inline" : "none";
  }
  top.logCLPExit("showButton", arguments);
}

/*
 * Shows or hides all of the wizard buttons. 
 * @arg enable true to show, false to hide
 */
function showButtons(show)
{
  //top.logEnter("showButtons", arguments);
  show = isStringTrue(show);

  showButtonBar(show);

  showButton('cancelButton', show);
  showButton('nextButton', show);
  showButton('previousButton', show);
}

function showButtonBar(show)
{
  show = isStringTrue(show);
  var buttonBar = top.root.footer.document.getElementById('buttonForm');
  if(buttonBar != null) {
	if(show) 
		buttonBar.style.display="block";
	else
		buttonBar.style.display="none";
  }
}

/*
 * Sets the text for the given button to the given text.
 * @arg button_id the id of the button to change
 * @arg text the new text for the button to display
 */
function renameButton(button_id, text)
{
  var getFooterElement = function(button_id){return top.root.footer.document.getElementById(button_id);}
  var button = getFooterElement(button_id);
  if( button != null) {
  
    if ( button.originalValue) {
  	    if (text !=  button.originalValue) {
			button.value = text;
			button.label = text;
			button.originalValue = undefined;
			top.assignAccessKey({id: button_id, accessKey: property(button_id + 'Hotkey',null)});
		}
	}
	else {
		if (top.root.footer.renameButton)
		{
			top.root.footer.renameButton(button_id, text);
		}
		getFooterElement(button_id).value = text;
		getFooterElement(button_id).label = text;
	}
	getFooterElement(button_id).name = text;
  }
  
  var progressWrapper = top.root.footer.document.getElementById("progressWrapper");
  if (progressWrapper != null) {
	if (top.isBidiLocale())
		top.root.footer.document.getElementById("progressWrapper").style.marginLeft = Math.max(10, top.root.footer.document.getElementById('buttonForm').offsetWidth) +    "px";
	else
		top.root.footer.document.getElementById("progressWrapper").style.marginRight = Math.max(10, top.root.footer.document.getElementById('buttonForm').offsetWidth) +    "px";
  }
  
  top.logCLPExit("renameButton", arguments);
}

/*
 * Shows or hides a panel entirely.
 * @arg panelId either 'navigation', 'footer', or 'banner'
 * @arg show true to show, false to hide
 */
function showPanel(panelId, show)
{
 top.logCLPEnter("showPanel", arguments); 
 show = isStringTrue(show);

  if(panelId == 'navigation')
  {
    if(show)
    {
      var navigationWidth = top.evalJSCP(top.root.property('navigationWidth', '250'), top.root);
      top.root.document.getElementById('navigation').parentNode.cols=navigationWidth + ",*";
      top.root.document.getElementById('navigation').style.display="block";
    }
    else
    {
      top.root.document.getElementById('navigation').parentNode.cols="0,*";
      top.root.document.getElementById('navigation').style.display="none"; //also hides for screen readers
    }
  }
  else if(panelId == 'banner')
  {
    var currentRows = top.root.document.getElementById('banner').parentNode.rows;
    var rowsArray = currentRows.split(",");

    if(show)
    {
      var bannerHeight = top.evalJSCP(top.root.property('bannerHeight', '48'), top.root);
      top.root.document.getElementById('banner').parentNode.rows=bannerHeight + "," + rowsArray[1] + "," + rowsArray[2] + "," + rowsArray[3];
      top.root.document.getElementById('banner').style.display="block";
    }
    else
    {
      top.root.document.getElementById('banner').parentNode.rows="0," + rowsArray[1] + "," + rowsArray[2] + "," + rowsArray[3];
      top.root.document.getElementById('banner').style.display="none";
    }
  }
  else if(panelId == 'footer')
  {
    var currentRows = top.root.document.getElementById('footer').parentNode.rows;
    var rowsArray = currentRows.split(",");

    if(show)
    {
      var footerHeight = top.evalJSCP(top.root.property('footerHeight', '48'), top.root);
      top.root.document.getElementById('footer').parentNode.rows=rowsArray[0] + "," + rowsArray[1] + "," + footerHeight + "," + rowsArray[3];
      top.root.document.getElementById('footer').style.display="block";
    }
    else
    {
      top.root.document.getElementById('footer').parentNode.rows=rowsArray[0] + "," + rowsArray[1] + ",0," + rowsArray[3];
      top.root.document.getElementById('footer').style.display="none";
    }
  }
  top.logCLPExit("showPanel", arguments);
}

/*
 * By default, this goes to the next navigation page
 * If the nextAction property has been set for the current menu item, this will override the default behavior
 * However, if the nextAction() function is declared in the html page for this menu item, it will override everything else.
 */
function next()
{
  var contentWindow = getContentWindow();
  if(contentWindow && contentWindow.nextAction) //If nextAction is defined on the content page, executes that action
  {
    contentWindow.nextAction();
    return;
  }

  var actionText = top.navigationReferences[top.navigationCurrent]["nextAction"];
  var nextItem = top.getNextItem(top.navigationCurrent);
  var navOrder = getNavOrder();
  
  if(actionText)
  {
    if(contentWindow) contentWindow.eval(actionText);
    else eval(actionText);
  }
  else if (nextItem)
  {
    var nextItem = top.evalJSCP(nextItem, contentWindow);
    top.navigateTo(nextItem);
  }
  else if (top.navigationCurrent == navOrder[navOrder.length - 1])
  {
    top.Exit(false);
  }
}

/*
 * By default, this goes to the previous navigation page
 * If the previousAction property has been set for the current menu item, this will override the default behavior
 * However, if the previousAction() function is declared in the html page for this menu item, it will override everything else.
 */
function previous()
{
  var contentWindow = getContentWindow();
  if(contentWindow && contentWindow.previousAction) //If previousAction is defined on the content page, executes that action
  {
    contentWindow.previousAction();
    return;
  }
  
  var actionText = top.navigationReferences[top.navigationCurrent]["previousAction"];
  var prevItemPropertyText = top.navigationReferences[top.navigationCurrent]["previousItem"];
  if(actionText)
  {
    if(contentWindow) contentWindow.eval(actionText);
    else eval(actionText);
  }
  else if (prevItemPropertyText)
  {
    var prevItem = top.evalJSCP(prevItemPropertyText, contentWindow);
    top.navigateTo(prevItem);
  }
  else if (top.navigationHistory&&top.navigationHistory.length>1) //navigate to last know position 
  {
		top.navigationHistory.pop();//remove LOQ, currentposition
		var previousPageViewed = top.navigationHistory.pop();//get previous position in history
        top.navigateTo(previousPageViewed.page);  	
  }//Do not believe we should ever get past here if navigationHistory is working properly
  else //Default behavior goes to the previous page in the nav tree
  {
    var navOrder = getWizardNavOrder();
    var found = false;
    for(var i = 0; i < navOrder.length; i++)
    {
      if(navOrder[i] == top.navigationCurrent && i > 0)
      {
        found = true;
        top.navigateTo(navOrder[i-1]);
        break;
      }
    }
    if (!found)
		{
			// If we get here, we're currently sitting on a deactivated nav item. 
			//  Fallback to complete nav order to navigate to the previous item.
			var allNavOrder = getNavOrder();
			var found = false;
			for(var i = 0; i < allNavOrder.length; i++)
			{
				if(allNavOrder[i] == top.navigationCurrent && i > 0)
				{
					top.navigateTo(allNavOrder[i-1]);
					break;
				}
			}
		}
  }
}

/*
 * By default, this exits the launchpad
 * If the cancelAction property has been set for the current menu item, this will override the default behavior
 * However, if the cancelAction() function is declared in the html page for this menu item, it will override everything else.
 */
function cancel()
{  
  var contentWindow = getContentWindow();
  if(contentWindow && contentWindow.cancelAction) //If cancelAction is defined on the content page, executes that action
  {
    contentWindow.cancelAction();
    return;
  }
  
  var actionText = top.navigationReferences[top.navigationCurrent]["cancelAction"];
  if(actionText)
  {
	if(contentWindow) contentWindow.eval(actionText);
    else eval(actionText);
  }
  else
  {
    top.Exit(true);
  }
}

/*
 * This is called when the preloaded page is displayed corresponding to the given menu id.  Called from navigation.html method navigateTo
 * Runs asynchronously; waits for getContentWindow() to have jscp loaded so that footer properties can be evaluated with jscp
 */
function setFooterProperties(menu_id)
{

  var hasWindow = hasContentWindow(menu_id);
  var contentWindow = getContentWindow(menu_id);
  if(hasWindow == null || (hasWindow && !contentWindow))
  {
    setTimeout("setFooterProperties('" + menu_id + "')", 200);   
    return;
  }
  if(typeof top.navigationReferences[menu_id]["nextText"] != "undefined" && top.navigationReferences[menu_id]["nextText"] != null)
  {
    top.renameButton("nextButton", top.evalJSCP(top.navigationReferences[menu_id]["nextText"], contentWindow));
  }
  else
  {
    var navOrder = getNavOrder();
    top.renameButton("nextButton", menu_id == navOrder[navOrder.length - 1] ? property('buttonFinish', 'Finish') : property('buttonNext', property('buttonNext', 'Next'))); //Default is the word Next, except on the last page, where it says Finish
  }
  
  if(typeof top.navigationReferences[menu_id]["previousText"] != "undefined" && top.navigationReferences[menu_id]["previousText"] != null)
  {
    top.renameButton("previousButton", top.evalJSCP(top.navigationReferences[menu_id]["previousText"], contentWindow));
  }
  else
  {
    top.renameButton("previousButton", property('buttonBack', property('buttonPrevious', 'Previous')));
  }
  
  if(typeof top.navigationReferences[menu_id]["cancelText"] != "undefined" && top.navigationReferences[menu_id]["cancelText"] != null)
  {
    top.renameButton("cancelButton", top.evalJSCP(top.navigationReferences[menu_id]["cancelText"], contentWindow));
  }
  else
  {
    top.renameButton("cancelButton", property('buttonCancel', 'Cancel'));
  }
  
  if(typeof top.navigationReferences[menu_id]["helpText"] != "undefined" && top.navigationReferences[menu_id]["helpText"] != null)
  {
    top.renameButton("helpButton", top.evalJSCP(top.navigationReferences[menu_id]["helpText"], contentWindow));
  }
  else
  {
    top.renameButton("helpButton", property('buttonHelp', 'Help'));
  } 

  setCustomEnableState('nextButton', 'enableNext', menu_id);
  setCustomEnableState('previousButton', 'enablePrevious', menu_id);
  setCustomEnableState('cancelButton', 'enableCancel', menu_id);
  //setCustomEnableState('helpButton', 'enableHelp', menu_id);
  // By default, previous button on the default menu should be disabled
  if(menu_id == top.navigationReferences.menu['default'] && !top.navigationReferences[menu_id]["enablePrevious"])
  {
    top.enableButton("previousButton", false);
  }
  
  if(top.navigationReferences[menu_id]["showButtons"])
  {
    top.showButtons(top.evalJSCP(top.navigationReferences[menu_id]["showButtons"], contentWindow));
  }
  else
  {
	top.showButtons(true);
  }
  
  if(top.navigationReferences[menu_id]["showNext"])
  {
    top.showButton("nextButton", top.evalJSCP(top.navigationReferences[menu_id]["showNext"], contentWindow));
  }
  
  if(top.navigationReferences[menu_id]["showPrevious"])
  {
    top.showButton("previousButton", top.evalJSCP(top.navigationReferences[menu_id]["showPrevious"], contentWindow));
  }
  
  if(top.navigationReferences[menu_id]["showCancel"])
  {
    top.showButton("cancelButton", top.evalJSCP(top.navigationReferences[menu_id]["showCancel"], contentWindow));
  }

  if(top.navigationReferences[menu_id]["showHelp"])
  {
    top.showButton("helpButton", top.evalJSCP(top.navigationReferences[menu_id]["showHelp"], contentWindow));
  }
  
  if(top.navigationReferences[menu_id]["showProgress"])
  {
    top.showProgress(top.evalJSCP(top.navigationReferences[menu_id]["showProgress"]));
  }

  waitForNextPage(menu_id);
  
  top.footerPropertiesSet = true;
}

/*
 * Called when the launchpad is started.  Checks if this is a wizard.  If so, loads the footer and the wizard properties.
 * If not, hides the footer panel and enables side navigation. (Default LP behavior)
 */
function loadDefaultFooter(skipTimeout)
{
  if(!top.navigationLoaded)
  {
    setTimeout("loadDefaultFooter()", 250);
    return;
  }
  
  if(typeof top.navigationMode != "undefined" && top.navigationMode.toUpperCase() == "WIZARD")
  {
    setFooterProperties(top.navigationReferences.menu['default']);
    enableNavigation(top.startMenu, false);
    enableAndShowNavigationItemsFromProperties();
	enableAccessDefaultWizardAccessKeys();
  }
  else
  {
	showButtons(false);
  }
  top.footerLoaded = true;
}

/*
 * Reads the menu_id[enable] and menu_id[show] properties and changes navigation settings accordingly when the launchpad loads
 * PRE: navOrder array must be built
 * POST: navigation menu will obey properties
 */
function enableAndShowNavigationItemsFromProperties()
{
  var navOrder = getNavOrder();
  for(var i in navOrder)
  {
    var enableText = top.navigationReferences[navOrder[i]]["enable"];
    var showText = top.navigationReferences[navOrder[i]]["show"];
    var activateText = top.navigationReferences[navOrder[i]]["activate"];
    
    if(enableText)
    {
      enableNavigation(navOrder[i], enableText);
    }
    if(showText)
    {
      showNavigation(navOrder[i], showText);
    }
    if (activateText)
    {
      activateNavigation(navOrder[i], activateText);
    }
  }
}

/*
 * Retrieves the navOrder array
 * which contains a linear ordering of the navigation for the wizard
 */
function getNavOrder()
{
	if(!navOrder)
	{
		navOrder = new Array();
		var i = 0;
		for(var obj in top.navigationReferences)
		{
			if(obj != "menu")
			{
				navOrder[i] = obj;
				i++;
			}
		}
	}
	return navOrder;
}

/*
 * Retrieves the linear navigation order taking into account activated and deactivated wizard items.
 */
 function getWizardNavOrder()
{
	var wizardNavOrder = new Array();
	var i = 0;
	for(var obj in top.navigationReferences)
	{
		if(obj != "menu")
		{
			if ((top.navigationDocument.properties[obj]["activate"] == undefined) || isStringTrue(top.evalJSCP(top.navigationDocument.properties[obj]["activate"])))
			{
				wizardNavOrder[i] = obj;
				i++;
			}
		}
	}
return wizardNavOrder;
}

/*
 * Used to hide or show a navigation item
 * @arg menu_id the id of the navigation item to show or hide
 * @arg show true to show, false to hide
 */
function showNavigation(menu_id, show)
{
  top.logCLPEnter("showNavigation", arguments);
  show = isStringTrue(show);
  try 
  {
	var menu_idBlock = menu_id + "Block";
	if(menu_id == top.startMenu) //if menu id is the root, enable or disable all
    {
	  var navOrder = getNavOrder();
      for(var index in navOrder)
      {
        showNavigation(navOrder[index], show);
      }
	  top.logCLPExit("showNavigation", arguments);
      return;
    }
    
    if (!show)
    {
      top.navigationDocument.getElementById(menu_idBlock).style.display="none";
    }
    else
    {
      top.navigationDocument.getElementById(menu_idBlock).style.display="block";
    }
	if(top.navigationDocument.properties[menu_id].order != null)
    {
	  var childItems = getChildMenuItems(menu_id);
      for (var i = 0; i < childItems.length; i++)
      {
        showNavigation(childItems[i], show);
      }
    }
  }
  catch(e)
  { 
    top.logException(e,arguments);
  }
  top.logCLPExit("showNavigation", arguments);
}

/*
 * Used to enable or disable a navigation item
 * @arg menu_id the id of the navigation item to enable or disable
 * @arg enable true to enable, false to disable
 */
function enableNavigation(menu_id, enable)
{
  top.logCLPEnter("enableNavigation", arguments);
  enable = isStringTrue(enable);
  try
  {
	if(menu_id == top.startMenu) //if menu id is the root, enable or disable all
    {
	  var navOrder = getNavOrder();
      for(var index in navOrder)
      {
        enableNavigation(navOrder[index], enable);
      }
	  top.logCLPExit("enableNavigation", arguments);
      return;
    }

	var element = top.navigationDocument.getElementById(menu_id + "Span");
	var menuText = evalJSCP(property(menu_id+"[text]", top.navigationDocument.properties[menu_id]["text"]));
    if (!enable)
    {
      if (!element.enableCursor && element.enableCursor != "")
        element.enableCursor = (element.style.cursor == "") ? "" : element.style.cursor;
      element.style.cursor = 'default';
      element.innerHTML = menuText;
    }
    else 
    {
      if (element.enableCursor)
        element.style.cursor = element.enableCursor;
      else
        element.style.cursor = "hand";
      var anchorContents = '<a class="'+ top.navigationDocument.properties[menu_id].deselectedStyle + '" href="javascript:top.navigateTo(\'' + menu_id  + '\')">' + menuText +'</a>';
      element.innerHTML = anchorContents;
    }
	
    if(top.navigationDocument.properties[menu_id].order != null)
    {
	  var childItems = getChildMenuItems(menu_id);
      for (var i = 0; i < childItems.length; i++)
      {
        enableNavigation(childItems[i], enable);
      }
    }
  }
  catch(e)
  { 
    top.logException(e,arguments);
  }
  top.logCLPExit("enableNavigation", arguments);
}

/*
 * Used to enable or disable a navigation item
 * @arg menu_id the id of the navigation item to enable or disable
 * @arg enable true to enable, false to disable
 */
function activateNavigation(menu_id, activate)
{
  top.navigationDocument.properties[menu_id]["activate"] = getBooleanString(activate);
  if(top.navigationDocument.properties[menu_id].order != null)
  {
	  var childItems = getChildMenuItems(menu_id);
      for (var i = 0; i < childItems.length; i++)
      {
        activateNavigation(childItems[i], activate);
      }
  }
}

/*
* Returns a handle to the contentWindow displayed within the content frame.  If it is not yet loaded,
* this method will return null.  A callback function can be passed to this method which will
* be called once the page has finished loading.
* @arg menu_id the menu id. If this is not set, uses the current content page
* @arg callback the function to execute once the content window has finished loading
*/
function getContentWindow(menu_id, callback)
{
  if(isEssentials())
  {
    return top.root.content;
  }
  
  if(!menu_id)
  {
    menu_id = top.navigationCurrent;
  }
  
  //If all pages are loaded and there is no page for this menu_id, we return null
  var check = hasContentWindow(menu_id);
  if(check != null && check == false) return null;

  var frame = top.root.preload.document.getElementById("frame_" + menu_id);
    
  //If the frame is finished loading, we call the callback function if it is set and return the frame
  if(frame && frame.contentWindow.jscpLoaded)
  {
    if(callback) callback(menu_id, frame);
    return frame.contentWindow;
  }

  //We reach this if the frame is not yet loaded.  If a callback is set, we recurse this function until the page
  //has finished loading, then call the callback function
  if(callback)
  {
    var wrappedCallback = function(){ getContentWindow(menu_id, callback) };
    setTimeout(wrappedCallback, 250);
  }
  return null;
}

/* Similar to getContentWindow, but does not return the content window; simply waits for all windows in the menu_ids
 * array to finish loading, then calls the callback function
 */
function waitForContentWindows(menu_ids, callback)
{
  var flag = true;
  for(var i = 0; i < menu_ids.length; i++)
  {
    var id = menu_ids[i];
    var check = hasContentWindow(id);
    if(check != null && check == false) continue; //If there is no page for this menu_id, we do not need to wait for it
     
    var window = getContentWindow(id);
    //If any of these frames are not fully loaded, we do not perform the callback
    if(!window)
    {
      flag = false;
      break;
    }
  }
  if(flag)
  {
    callback();
  }
  else
  {
    var wrappedCallback = function(){ waitForContentWindows(menu_ids, callback) };
    setTimeout(wrappedCallback, 250);
  }
}

/*
 * If there is a next page, this function disables the next button until that page has been loaded, then it defaults
 * to the user's custom setting for nextEnable, or enables the button if none is set
 */
function waitForNextPage(menu_id)
{
  top.enableButton('nextButton', false);
  var nextItem = getNextItem(menu_id);

  if(nextItem)
  {
    //If the next item does not need to load because it is not a content window, we do not need to wait
    if(hasContentWindow(nextItem) != null && hasContentWindow(nextItem) == false)
    {
      setCustomEnableState('nextButton', 'enableNext', menu_id);
    }
    else
    {
      waitForContentWindows(new Array(menu_id, nextItem), function(){ setCustomEnableState('nextButton', 'enableNext', menu_id); });
    }
  }
  else //if there is no next page, we only need to wait for this window
  {
    waitForContentWindows(new Array(menu_id), function(){ setCustomEnableState('nextButton', 'enableNext', menu_id); });
  }
}

/*
 * If a custom nextItem has been set for this menu_id, it will be returned.  If not, the next item in the default order will be returned.
 * If there is no next item or a bad menu_id is given, this will return null.
 */
function getNextItem(menu_id, ignoreCustomValue, window)
{
  var navOrder = getWizardNavOrder();
  if (!menu_id)
    menu_id = top.navigationCurrent;
  if (!window)
    window = top;
  var nextItem = top.navigationReferences[menu_id]["nextItem"];
  var found = false;
  if(ignoreCustomValue || !nextItem)
  {
    for(var i = 0; i < navOrder.length; i++)
    {
      if(navOrder[i] == menu_id)
      {
        nextItem = navOrder[i + 1] ? navOrder[i + 1] : null;
        found = true;
        break;
      }
    }
    if(!found)
    {
      // If we get here, we're currently sitting on a deactivated nav item. 
      //  Fallback to complete nav order to navigate to the next item.
      var allNavOrder = getNavOrder();
      var found = false;
      for(var i = 0; i < allNavOrder.length; i++)
      {
        if(allNavOrder[i] == menu_id)
        {
          while(i < allNavOrder.length - 1)
          {            
            var activateText = top.navigationReferences[navOrder[i + 1]]["activate"];
            if(activateText != null && activateText.toUpperCase() == "FALSE")
            {
              nextItem = null;
              i++;
            }
            else
            {
              nextItem = allNavOrder[i+1];
              break;
            }
          }
          break;
        }
      }
    }
  }
  else
  {
    nextItem = top.evalJSCP(nextItem, window);
  }
  return nextItem;
}

/*
 * Sets the enabled state of a button corresponding to 'buttonId' based on the property menu_id[propertyId]
 * If this property is not set, the button is enabled by default.
 */
function setCustomEnableState(buttonId, propertyId, menu_id)
{
  if(top.navigationReferences[menu_id][propertyId])
  {
    top.enableButton(buttonId, top.evalJSCP(top.navigationReferences[menu_id][propertyId],top.getContentWindow(menu_id)));
  }
  else
  {
    var enable = true;
    if(top.navigationReferences[menu_id]["enableButtons"])
    {
      enable = top.evalJSCP(top.navigationReferences[menu_id]["enableButtons"], top.getContentWindow(menu_id));
    }

    top.enableButton(buttonId, enable);
  }
}

/*
 * Waits for the page corresponding to menu_id to load if one exists before running the action.
 */
function runAction(menu_id, actionName)
{
  waitForContentWindows(new Array(menu_id), function() { runActionCallback(menu_id, actionName) });
}

/*
 * Executes the specified action for the given menu_id
 */
function runActionCallback(menu_id, actionName)
{
  var currentNavigationContentFrame = top.getContentWindow(menu_id);
  if(currentNavigationContentFrame && currentNavigationContentFrame[actionName])
  {
    currentNavigationContentFrame[actionName]();
  }
  if (top.navigationReferences[menu_id][actionName])
  {
	var context = currentNavigationContentFrame ? currentNavigationContentFrame : top;
    context.eval(top.navigationReferences[menu_id][actionName]);
  }
}

/*
 * Marks the given element with the given css class
 * If that class is already in the class list for the given element, no action is taken.
 * If it is not already in the class list for the given element, it appends it to the end.
 */
function addClass(element, className)
{
  var classArray = element.className.split(" ");
  var alreadyHasClass = false;
  
  for(var obj in classArray)
  {
    if(classArray[obj] == className)
    {
      alreadyHasClass = true;
    }
  }
  if(!alreadyHasClass)
  {
    element.className += " " + className;
  }
}

/*
 * Removes the given class name from the list of classes for element
  @arg element the element object
  @arg className the name of the class to be removed
 */
function removeClass(element, className)
{
  var classArray = element.className.split(" ");
  
  var newClassName = "";
  var multipleElements = false;
  for(var obj in classArray)
  {
    if(classArray[obj] != className)
    {
      newClassName += (multipleElements ? " " : "") + classArray[obj];
      multipleElements = true;
    }
  }
  element.className = newClassName;
}

/*
 * Returns the navigation element's span corresponding to the given menu id.
 * Use this function for setting selected/deselected styles.  These will be 
 * overriden by any styles set explicitly on the anchor.
 */
function getNavigationElementSpan(menu_id)
{
  return top.navigationDocument.getElementById(menu_id + "Span");
}

/*
 * Returns the navigation element's accessibility label corresponding to the given menu id.
 * Use this function for setting the accessibility label for that menu item.
 */
function getNavigationElementAccessibilityLabelElement(menu_id)
{
  return top.navigationDocument.getElementById(menu_id + "AccessibilityLabel");
}

function isMenuItemSubMenu(menu_id)
{
    return top.navigationReferences[menu_id].subMenu;
}

function setAccessibilityLabel(menu_id, label)
{
	var labelElement = getNavigationElementAccessibilityLabelElement(menu_id);
    var newLabel = (isMenuItemSubMenu(menu_id)?evalJSCP(property('accessibilityLabels[submenu]')):'') + evalJSCP(label);
    labelElement.title = newLabel;
}


//These are the default valid states for a navigation item
var wizardNavStates = ['default', 'error', 'warning', 'complete', 'unvisited', 'incomplete'];
top.wizardNavStates = wizardNavStates;

/*
 * Returns the navigation element corresponding to the given menu id.  Use this function
 * for changing the state.  It will override selected/deselected styles
 */
function getNavigationElementAnchor(menu_id)
{
  return top.navigationDocument.getElementById(menu_id);
}

//These are the default valid states for a navigation item
var wizardNavStates = ['default', 'error', 'warning', 'complete', 'unvisited', 'incomplete'];
top.wizardNavStates = wizardNavStates;

/*
 * Sets the state of the navigation item corresponding to menu_id to the given state.
 *  The state refers to the name of the css class to set the navigation item to.
 */
function setNavigationState(menu_id, state, recursive, accessibilityLabel)
{
  var hasWindow = hasContentWindow(menu_id);
  var contentWindow = getContentWindow(menu_id);
  
  if(hasWindow == null || (hasWindow && !contentWindow))
  {
    setTimeout("setNavigationState('" + menu_id + "','" + state + "'," + recursive +")", 200);   
    return;
  }
   top.logCLPEnter("setNavigationState", arguments);
  
  var navItem = getNavigationElementSpan(menu_id);
  var knownState = false; //Denotes whether the state provided is one of the known states, as listed in the navigationStates array

  // If the state is not specified, use default logic to determine state (look for state property/function for this nav item/document)
  if(!state)
  {
	// Precedence: 
	// contentWindow.state function
	// menu_id[state] property
	// top.navigationState function
	// default: don't modify the state
	if(contentWindow && typeof contentWindow.state == "function")
	{
		state = contentWindow.state(menu_id);
	}
	else if(typeof top.navigationReferences[menu_id]["state"] != "undefined" && top.navigationReferences[menu_id]["state"] != null)
	{
		state = top.evalJSCP(top.navigationReferences[menu_id]["state"], contentWindow);
	}
	else if(typeof top.navigationState == "function")
	{
		state = top.navigationState(menu_id);
	}
  }
  // if a function is passed as the state, pass it the menu_id so it can return the state for that menu_id
  else if(typeof state == "function")
  {
	state = state(menu_id);
  }
  
  if(state)
  {
	for(var index in wizardNavStates) //Removes any of the other standard states on the nav element before setting its new state
	{
		var wizardState = wizardNavStates[index];
		removeClass(navItem, wizardState);
		if(state == wizardState)
		{
		  knownState = true;
		}
	}

	if(!knownState) //If this is a new state, it is added to the list of distinct states, since the nav item can be in only one state at a time
	{
	  wizardNavStates.push(state);
	}

	addClass(navItem, state);	
	if(state != 'unvisited' || top.navigationMode == 'wizard')
		setAccessibilityLabel(menu_id, property('accessibilityLabels[' + state +']', ""));
	else
		setAccessibilityLabel(menu_id, "");
  }
  
  if(recursive)
  {
	if(top.navigationDocument.properties[menu_id].order != null)
    {
      var childItems = getChildMenuItems(menu_id);
      for (var i = 0; i < childItems.length; i++)
      {
        setNavigationState(childItems[i], state, recursive);
      }
    }
  }
  top.logCLPExit("setNavigationState", arguments);
}

/*
 * Sets the state, activation, visibility, and enable properties of the navigation item corresponding to menu_id 
 *  The state refers to the name of the css class to set the navigation item to.
 */
function setNavigationProperties(menu_id, activate, show, enable, state, recursive)
{
  if((enable != undefined) && (enable != null))
  {
    enableNavigation(menu_id, enable);
  }
  if(( show != undefined) && ( show != null))
  {
    showNavigation(menu_id, show);
  }
  if ((activate != undefined) && (activate != null))
  {
  activateNavigation(menu_id, activate);
  }
  if (state)
  {
    setNavigationState(menu_id, state, recursive)
  }
}

/*
 * Returns the child items of menu_id
 */
function getChildMenuItems (menu_id)
{
  var children = new Array();
  for (var i = 0; i < top.navigationDocument.properties[menu_id].order.length; i++)
  {
    children.push(top.navigationDocument.properties[menu_id].order[i]);
  }
  return children;
}

/*
 * Returns if the navigation element corresponding to the given menu id is visible.  
 *  Checks parent if not set for itself.  Returns true if startMenu reached.
 */
function isNavigationVisible (menu_id)
{
	if (menu_id == top.startMenu)
		return true;
	var menu_idBlock = menu_id + "Block";
	var displaystyle = "";
	var menuBlockDiv = top.navigationDocument.getElementById(menu_idBlock);
	// Mozilla/Safari/etc.
	if(window.getComputedStyle)
		displaystyle = window.getComputedStyle(menuBlockDiv,null).display;
	// IE
	else if(menuBlockDiv.currentStyle)
		displaystyle = menuBlockDiv.currentStyle.display;
		
	if (displaystyle == "none")
		return false;
	else
		return isNavigationVisible(navigationReferences[menu_id].parentMenuName);
}

/*
 *  If the preloaded pages have finished loading, this returns whether or not there is a preloaded page corresponding to the given menu_id.
 *  If preload has NOT finished, we have no way of knowing, so this method will simply return null.
 */
function hasContentWindow(menu_id)
{
  if(top.preloadLoaded)
  {
    var element = top.preloadDocument.getElementById("preload_" + menu_id);
    return element != null;
  }
  return null;
}

//------------------------------------ PROGRESS BAR FUNCTIONS-------------------------------------------
var staticProgressBarHeight = '64px';
var progressBars = new Array();
var progressBarOptions = new Array();
top.abortProgress = new Array();

function createProgressBarHTML(dialogId)
{
  return '<div id="' + dialogId + 'progressWrapper" class="navigationMargin buttonsMargin hide progressBarWrapper">' +
    '<div id="frontCap" class="progressBarFrontCap">' +
      '<div id="endCap" class="progressBarEndCap">' +
        '<div id="progressBackground" class="progressBarBackground"> ' +
          '<div id="' + dialogId + 'progressForeground" class="progressBarForeground"></div> ' +
        '</div>' +
      '</div>' +
    '</div>' +
    '<div id="' + dialogId + 'progressDialogDescription" class="progressText navigationMargin"></div>' +
  '</div>';
}


/*
 * Shows or hides the progress bar.  Set show=true to show, or false to hide the progress bar.
 * If show is not set, defaults to true.
 */
function showProgress(show, dialogId, options)
{
  top.logCLPEnter("showProgress", arguments);
  options = options || {};
  var defaultOptions = {
    document: document,
    cancel: false
  };
  options = top.launchpad.extend(options, defaultOptions);
  
  if(show == null) show = true;
  show = isStringTrue(show); 

  var dialogTitle = "";
  
  if (dialogId)
  {
    var existingDiv = options.document.getElementById(dialogId);
    if(!show)
    {
      	top.closeDialog(dialogId);
    }
    else if (existingDiv)
    {
      progressBars[dialogId] = existingDiv;
      progressBarOptions[dialogId] = options;
      existingDiv.innerHTML = createProgressBarHTML(dialogId);
    }
    else if (show)
    {
      if (!options.cancel)
       {
      	top.showDialog(createProgressBarHTML(dialogId),{ id: dialogId, title: dialogTitle});
       }
       else
         top.showDialog(createProgressBarHTML(dialogId),{ id: dialogId, title: dialogTitle, buttons: [
         {
           id: dialogId + "CancelButton",
           name: dialogId + "CancelButton",
           value: property('buttonCancel'),
           onclick: function(){ top.abortProgress[dialogId] = true;  top.closeDialog(dialogId); }
         }
       ]});
    }  
  }
  else
  {
    wizard = typeof top.navigationMode != "undefined" && top.navigationMode.toUpperCase() == "WIZARD";
    top.enableButton('nextButton', !show);
    top.enableButton('previousButton', !show);
    
    top.root.document.getElementById('footer').style.display="block";
  }
  try 
  {
    var progressBar = getProgressBar(dialogId);
    progressBar.style.display = show ? "block" : "none";
    setProgressIndeterminate(dialogId);
	top.logCLPExit("showProgress", arguments);
    return progressBar.id;
  }
  catch(e)
  {
    // Just in case the dialog went away before why try to update it.
  }
  top.logCLPExit("showProgress", arguments);
  return null;
}

function setContent(element, content)
{
	element.innerHTML = content;
}

function getProgressBar(dialogId)
{
  var progressWrapper = null;
  if (dialogId)
	{
    var existingDiv = (progressBars[dialogId])?progressBarOptions[dialogId].document.getElementById(dialogId):null;
    if (existingDiv)
    {
      progressWrapper = progressBarOptions[dialogId].document.getElementById(dialogId + "progressWrapper");
    }
    else
    {
      progressWrapper = document.getElementById(dialogId + "progressWrapper");
    }
	}
  else
  {
    progressWrapper = top.root.footer.document.getElementById('progressWrapper');
  }
  return progressWrapper;
}

var backgroundColor;
var isIndeterminate = new Array();

function updateProgress(completed, total, dialogId, isLoopingIndeterminate)
{
  try
  {
    if(!total)
    {
      total = 100.0;
    }
    var progressBar = null;
    if (dialogId)
    {
      progressBar = getProgressBar(dialogId).ownerDocument.getElementById( dialogId + "progressForeground");
    }
    else
    {
      if (top.root.footer.dojoUpdateProgress)
	  {
		top.root.footer.dojoUpdateProgress(completed, total);
		return;
	  }		
	  else
		progressBar = top.root.footer.document.getElementById('progress');
  }
    
    if(!isLoopingIndeterminate)
    {
      isIndeterminate[dialogId?dialogId:'progressWrapper'] = false;
    }

    var percentComplete = Math.round((completed / total) * 100.0);
    percentCompleteString = percentComplete > 100 ? '100%' : percentComplete + '%';

    progressBar.style.width=percentCompleteString;
  }
  catch(e)  // If the progress bar dialog is closed while trying to update the progress, we will get an exception.  Squash it here.
  { 
  }
  
}

function setProgressIndeterminate(dialogId)
{
	if (top.root.footer.dojoSetProgressIndeterminate)
	{
		top.root.footer.dojoSetProgressIndeterminate();
	}		
	else
	{
		var startLoop = function() 
		{
			isIndeterminate[dialogId?dialogId:'progressWrapper'] = true;
			loopIndeterminate(null, dialogId);
		}
		isIndeterminate[dialogId?dialogId:'progressWrapper'] = false;
		setTimeout(startLoop, 50);
	}
}

function setProgressDescription(description, title, dialogId)
{
  if(!description) description = '';
  if(!title) title = '';
  var progressBar = getProgressBar(dialogId);
  if (!progressBar)
    return false;
	
  top.logCLPEnter("setProgressDescription", arguments);
  
  var progressTitle = dialogId?progressBar.ownerDocument.getElementById(dialogId + 'Title'):top.root.footer.document.getElementById('progressTitle');
  var progressDescription = dialogId?progressBar.ownerDocument.getElementById(dialogId + 'progressDialogDescription'):top.root.footer.document.getElementById('progressDescription');
  
  var hideTitle = title == '';
  var hideDescription = description == '';
  try
  {
    progressTitle.style.display = hideTitle ? "none" : "block";
  }
  catch (e)
  {
    // standalone progress bars won't have a title.
  }
  if (progressDescription)
    progressDescription.style.display = hideDescription ? "none" : "block";
  
  if(description == '') description = '&nbsp;';
  if(title == '') title = '&nbsp;';

  try
  {
    if(!hideTitle) setContent(progressTitle, title);
  }
  catch (e)
  {
    // standalone progress bars won't have a title.
  }
  
  try
  {
    if(!hideDescription) setContent(progressDescription, description);
  }
  catch (e)
  {
    // If the progress bar is in a disposed dialog, this won't work.
  }
  top.logCLPExit("setProgressDescription", arguments);
}

function loopIndeterminate(percentComplete, dialogId)
{
    if (isIndeterminate[dialogId?dialogId:'progressWrapper'])
    {
        if(!percentComplete)
        {
            percentComplete = 0;
        }
        if(percentComplete == 100)
        {
            percentComplete = 0;
        }    
        top.updateProgress(percentComplete += 1, 100, dialogId, true);
        var callbackString = "";
        if (dialogId && dialogId != "undefined")
            callbackString = "loopIndeterminate(" + percentComplete + ",\"" + dialogId + "\")";
        else
            callbackString = "loopIndeterminate(" + percentComplete + ",null)";
        setTimeout(callbackString, 25);
    }
}

// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // 2V25JLYqmF+r6E4RVXZdwhYS+gw+d320xExuwHXrMF6g
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
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCCmyR7M
// SIG // i3JPnXIno4wdhIrM4C1j1loeEvEZrHsMexaynTANBgkq
// SIG // hkiG9w0BAQEFAASCAgAJpcGbObiDy6qDIE1MyHIqBlZ3
// SIG // xHChpzCiF1MKc1+w3cWiHIxUeGpbr5LYk6TMLncq9yjC
// SIG // n+8N6ux/qbe7LCYtoGvx9sXU0Jc6vliabS4p1UCpv2p/
// SIG // C7Pd/JaY5gPwk519EK2hiyOTr1vo8S4zkBIEuaBiu+C9
// SIG // vRif9bGhb1T3151ZLmsVDpFyqU0L0QZwTicVMZlIZJ8r
// SIG // JR263fKwQg37kP79/15dbJ3aK+6L81O9xl/CqzLyknPY
// SIG // RlejnczwMhVXTzyVpRWOmkqtEUy7yTDtowjdKEZjTJyr
// SIG // zHb8S9uUYoIXOeAyz+i8Oag+qMLS3NEEje/GEsuQP111
// SIG // dt1m1RV6aV/TgWApBMhCgAqxcZpJDu+pa1is9dMLwP/Y
// SIG // JMwLKsa89gxVPH09vBK9C20rSLarxRlbCLwx3vuxkcsV
// SIG // vYAHti2rKLi1sj5fpbRue8FC/qEnLFC/hfhSuzBtPnm9
// SIG // YMfI89hJ7G3WY8JD0ugEt2HKdxaa70mLqOAi0SggNdzk
// SIG // 5CXXgUS78ptYAMSTA21Y2Ka1P451voxOUzayEp62K/l8
// SIG // XFDlfvldzV4A4iaXJZv+pwkVXv/A4M7suLN3pzq/zLsF
// SIG // Fvaxq6x1vz8O9DVzyesWRVOUjadb61dg8dhEI6yVsiue
// SIG // ukHBQ12sKBlbxKaRZ5g/Pilxv3QKE6iP8PX1jpPRUKGC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4NTVaMC8GCSqGSIb3
// SIG // DQEJBDEiBCB4lyscgmr+g0cxyndAKU9DFUmLX+/PoVqF
// SIG // 4pO/uZmenDANBgkqhkiG9w0BAQEFAASCAgCBe+NXK8tb
// SIG // 3XQRCCQmaJsvU/bnUFSAmM3JSnc05qN9ePOQ9cS0cQCD
// SIG // rOHuEMZqXtgcPS1+Z+JHYnZIMuMF4NTuId9QRrlAxmsD
// SIG // FvWEgrcqLgT04crCXz4y93fQTjRgDENghXBKsV7sSzAW
// SIG // /7sfLPSZ8S6vRqAAmCRbsqdFQj2/Com6InfbYNthforE
// SIG // HUwi2HfYiqjc7LZS1WkdHh6Q5I25MVy/rJYLM8DwOvjF
// SIG // FR7uHXzS8uv87vcGijUnQUCQlJvpnsggukQ2tAp372sJ
// SIG // LpJrHeuNITe2Pl1valbdceRem2zqDXmtSZw+GuVbjT/D
// SIG // v8cprZaA6x3+Y+6TWYN/b+3SqR7PWvS1w28+qD1j7F7p
// SIG // wvVLe8ipZlkAWJ+3E56Fd/iTao6AJ5GoCGgkpnEnHRLr
// SIG // DwxayGGZY9I3NR8yAzt6Rh5pTpFaD9Jhbd+a3iSzncmx
// SIG // Pv0S7D5slvudRPmh8F6Nv+dV9a48pJYvY521lMm079Hx
// SIG // JWFydrlNMyuSIjfiXoW7MnKgUS6yFs2tWn8IUCXyjMHo
// SIG // zp3zOSzWZEy6jzOwYmc6CLWP4ea+HgU1TnCHYPIi08Yj
// SIG // U7YgAd+8jz/ap+Hs7iQrNFsQUy7ic8mnt/Pn4/X2I0RE
// SIG // K/rHHSVjEbz+/e+FttGLPpl5jnTVdaqoCSYwoP59M8aZ
// SIG // FbJp1tFUbQAs1Q==
// SIG // End signature block
