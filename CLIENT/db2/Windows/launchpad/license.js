function createLicensePanel(options) {
   top.logCLPEnter("createLicensePanel", arguments);
   

	options = options || {};
	var defaultOptions = {
		document: document,
		id: 'license' + Math.round(Math.random() * 1000000000),
		groups: [{id: 'IBM', name: top.property('licenseGroupIBM'), licenses: ['license']}],
		provider: function (locale, id, group) {
			var licenseFileName = id + this.extension;
			var licenseFile = top.findFileInPaths(null, [this.directory + locale, this.directory + top.property('fallBackLocale','en'), this.directory], licenseFileName);
			var text;
			if(licenseFile == null) {
				this.failed = true;
				this.onFailure({locale: locale, id: id, group: group, file: licenseFile});
				text = top.formatmsg(property('licenseError'), licenseFileName);
			} else {
				text = this.converter(top.readTextFile(licenseFile), locale, id, group);			
			}
			return text;
		},
		converter: function(data, locale, id, group) {
			return data;
		},
		onFailure: function(){},
		directory: 'license/',
		extension: '.txt',
		type: 'text',
		className: { 
			text: 'licenseTextArea',
			html: 'licenseHTMLArea'
		},
		accept: function(){}, 
		decline: function(){},

		license: { 
			locale: top.LOCALE,
			group: null,
			id: null
		},
		
		locales: [{ id: top.LOCALE, name: top.property('localeName[' + top.LOCALE + ']') }, { id: 'en', name: top.property('localeName[' + 'en' + ']') }],
		isTranslatedLocale: function(locale, groupId) {
			var group = this.getGroup(groupId);
			var locales = group.locales;
			if(locales && locales.length) {
				for(var i in locales) {
					if(locales[i] == locale) {
						return true;
					}
				}
				return false;
			} else {
				return locale != 'en';
			}
		},

		changeLocale: function(locale){ this.setLocale(locale) },
		changeGroup: function(group){ this.setGroup(group)},				
		
		title:			top.property('licenseTitle'),
		subtitle:		top.property('licenseSubtitle'),
		readTermsText:	top.property('licenseReadTerms'),
		viewText:		top.property('licenseView'),
		xOfYText:		top.property('licenseXofY'),
		acceptText:		top.property('licenseAccept'),
		acceptBothText:	top.property('licenseAcceptBoth'),
		declineText:	top.property('licenseDecline'),
		printText:		top.property('print'),
		englishText:	top.property('localeName[en]'),
		
		template: '\
			<div class="licenseContainer" id="licenseContainer%1">\
				<h4 class="licenseTitle">%2</h4>\
				<p class="licenseSubtitle">%3</p>\
				<div class="licenseTextWrapper">\
					<div class="licenseTextArea" id="license%1" %4>\
					</div>\
				</div>\
				<div class="licenseButtonBox">\
					%5\
					<input type="button" value="%6" class="licensePrintButton" id="licensePrintButton%1">\
					<input type="button" value="%7" class="licenseLanguageButton" id="licenseLanguageButton%1" locale="en">\
					<input type="button" value="%8" group="%9" class="licenseGroupButton" id="licenseGroupButton%1" %10>\
				</div>\
				<div class="acceptDeclineLicenseButtons" style="clear:both">\
					<p class="licenseRadioButtonBlock"><label><input type="radio" name="group1" value="accept" id="licenseAcceptButton%1"> %11 </label></p>\
					<p class="licenseRadioButtonBlock"><label><input type="radio" name="group1" value="decline" id="licenseDeclineButton%1"> %12 </label></p>\
				</div>\
			</div>',
			
		populateTemplate: function(){
			var displayNone = 'style="display: none"';
			var groups = this.groups;
			var totalGroups = groups.length;
			var readTermsText = (totalGroups > 1) ? top.formatmsg(this.readTermsText, groups[1].name) : '';
			var groupId = (totalGroups > 1) ? groups[1].id : '';
			var displayGroupButton = (totalGroups > 1) ? '' : displayNone;
			var selectionLists = this.createSelectionLists();
			var acceptText = (totalGroups <= 1) ? this.acceptText : top.formatmsg(this.acceptBothText, groups[0].name, groups[1].name);
			var height = this.height ? 'style="height:' + this.height + '"' : '';
			return top.formatmsg(this.template, this.id, this.title, this.subtitle, height, selectionLists, this.printText, this.englishText, readTermsText, groupId, displayGroupButton, acceptText, this.declineText);
		},

		setActions: function(){
			var element;
			var license = this;
			if(element = this.document.getElementById('licenseGroupButton' + this.id)) element.onclick = function(){ license.changeGroup(this.group) };
			if(element = this.document.getElementById('licenseLanguageButton' + this.id)) element.onclick = function(){ license.changeLocale(this.locale) };
			if(element = this.document.getElementById('licensePrintButton' + this.id)) element.onclick = function(){ license.print(this) };
			if(element = this.document.getElementById('licenseAcceptButton' + this.id)) element.onclick = function(){ license.accept() };
			if(element = this.document.getElementById('licenseDeclineButton' + this.id)) element.onclick = function(){ license.decline() };
			
			var total = license.groups.length;
			for(var index = 0; index < total; index++ ) {
				if(element = this.document.getElementById('licenseSelectionList' + license.groups[index].id)) element.onclick = function() { license.setId(this.options[this.selectedIndex].value) };
			}
		},
		
		createSelectionLists: function () {
		
			function createLicenseSelectionList(license, groupNumber, active) {
				var display = active ? '' : 'style="display:none"';
				var listText = '<select class="licenseSelectionList" id="licenseSelectionList' + license.groups[groupNumber].id + '" ' + display + '>\n';
				
				var index = 1;
				var licenses = license.groups[groupNumber].licenses;
				var totalLicenses = licenses.length;
				var xOfYText = license.xOfYText;
				for(var index = 0; index < totalLicenses; ) {
					var selected = (index == 0 ? 'selected' : '');
					var optionText = '    <option ' + selected + ' value="' + licenses[index] + '">' + top.formatmsg(xOfYText, "" + (++index), "" + totalLicenses) + '</option>\n';
					listText += optionText;
				}

				listText += '</select>\n';
				return listText;
			}
			
			var total = this.groups.length;
			var listsText = '<div class="licenseListBox" id="licenseListBox'+ this.id +'">\n';
			listsText += this.viewText;
			for(var index = 0; index < total; index++ ) {
				listsText += createLicenseSelectionList(this, index, index == 0);
			}
			listsText += '</div>\n';
			return listsText;
		}, 
		
		getGroup: function(id) {
			var groups = this.groups;
			var length = groups.length;
			for(var i = 0; i < length; i++) {
				if(groups[i].id == id) return groups[i];
			}
			return null;
		},
				
		getType: function(id, groupId) {
			var type;
			var group = this.getGroup(groupId);
			if(group && group.type) {
				if(typeof group.type == 'string') {
					type = group.type;
				} else {
					type = group.type[id];
				}
			} else if(typeof this.type == 'string') {
				type = this.type;
			} else {
				type = this.type[id];
			}
			return type;
		},
		
		getClassName: function(type) {
			return this.className[type];
		},
		
		getPropertyName: function(type) {
			if(type == 'text' && top.BROWSER == 'IExplore') {
				return 'innerText';
			}
			return 'innerHTML';
		},

		updateText: function () {
			var type = this.getType(this.license.id, this.license.group);
			var className = this.getClassName(type);
			var propertyName = this.getPropertyName(type);
			var element = this.document.getElementById('license'+this.id);
			var licenseText = this.provider(this.license.locale, this.license.id, this.license.group);
			element[propertyName] = licenseText;
			element.className = className;
			
		},

		setId: function (id) {
			this.license.id = id;
			
			this.updateText();
		},

		setGroup: function (group) {

			var license = this;

			function showLanguageButton(show, licensePanelId) {
				var id = 'licenseLanguageButton' + licensePanelId;
				
				var selectionList = license.document.getElementById(id);
				selectionList.style.display = !show ? 'none' : 'inline';
			}
			
			function showLicenseSelectionList(show, groupId) {
				var id = 'licenseSelectionList' + groupId;
				
				var selectionList = license.document.getElementById(id);
				selectionList.style.display = !show ? 'none' : 'inline';
			}

			function getSelectedIndex(groupId) {
				var id = 'licenseSelectionList' + groupId;
				
				var selectionList = license.document.getElementById(id);
				
				return selectionList.selectedIndex;	
			}
			
			function showViewLicenseBox(show, licensePanelId) {
				var id = 'licenseListBox' + licensePanelId;
				
				var licenseListBox = license.document.getElementById(id);
				licenseListBox.style.display = !show ? 'none' : 'block';
			}
			
			var thisGroup = (group == this.groups[0].id ? this.groups[0] : this.groups[1]);
			var alternateGroup = (group == this.groups[0].id ? this.groups[1] : this.groups[0]);
			
			if(alternateGroup) showLicenseSelectionList(false, alternateGroup.id);
			showLanguageButton(this.isTranslatedLocale(top.LOCALE, thisGroup.id), this.id);
			showLicenseSelectionList(thisGroup.licenses.length > 1, thisGroup.id);
			showViewLicenseBox(thisGroup.licenses.length > 1, this.id);

			this.license.group = thisGroup.id;
			this.license.id = thisGroup.licenses[getSelectedIndex(thisGroup.id)];
			
			if(alternateGroup) {
				this.document.getElementById('licenseGroupButton' + this.id).group = alternateGroup.id;
				this.document.getElementById('licenseGroupButton' + this.id).value = top.formatmsg(this.readTermsText, alternateGroup.name);
			}

			this.updateText();
		},

		setLocale: function (locale) {
			this.license.locale = locale;
			
			var alternateLocale = (locale == this.locales[0].id ? this.locales[1] : this.locales[0]);
			this.document.getElementById('licenseLanguageButton' + this.id).locale = alternateLocale.id;
			this.document.getElementById('licenseLanguageButton' + this.id).value = alternateLocale.name;

			this.updateText();
		},
		inject: function() {
			var licenseTextTemplate = this.populateTemplate();
			var element = top.launchpad.get(this.id, this.document);
			if(!element) {
				element = top.launchpad.get(this.document.body);
				element.prepend('<div id="' + this.id + '"></div>');
				element = top.launchpad.get(this.id, this.document);
			}
			element.append(licenseTextTemplate);
		},
		create: function() {
			this.inject();
			this.setActions();
			this.setId(this.groups[0].licenses[0]);
			this.setGroup(this.groups[0].id);
			this.setLocale(top.LOCALE);
		},
		
		printTemplate: '\
			<div class="licensePrintContainer">\
				<h1 class="licensePrintTitle">%1</h1>\
				<h2 class="licensePrintSubtitle">%2</h2>\
				<hr>\
				<div class="licenseTextPrintWrapper">%3</div>\
			</div>',

		printGroupTemplate: '\
			<div class="licenseGroupPrintContainer">\
				<h3 class="licenseGroupPrintTitle">%1</h3>\
				<div class="licenseGroupTextPrintWrapper">%2</div>\
				<hr>\
			</div>',

		printXofYTemplate: '\
			<div class="licenseXofYPrintContainer">\
				<h4 class="licenseXofYPrintTitle">%1</h4>\
				<div class="licenseXofYTextPrintWrapper">%2</div>\
			</div>',

		printGroupTitleText: top.property('licensePrintGroupTitle'),
		printXofYTitleText: top.property('licensePrintXofYTitle'),
		
		formatPrintTemplate: function() {
			var text = '';
			for(var i = 0; i < this.groups.length; i++) {
				var groupText = this.formatPrintGroupTemplate(i);
				text += groupText;
			}
			text = top.formatmsg(this.printTemplate, this.title, this.subtitle, text);
			return text;
		},
		
		formatPrintGroupTemplate: function(groupNumber) {
			var text = '';
			for(var i = 0; i < this.groups[groupNumber].licenses.length; i++) {
				var licenseText = this.formatPrintXofYTemplate(i, groupNumber);
				text += licenseText;
			}

			if(this.groups.length > 1) {
				var printGroupTitle = top.formatmsg(this.printGroupTitleText, this.groups[groupNumber].name);
				text = top.formatmsg(this.printGroupTemplate, printGroupTitle, text);
			}
			return text;
		},
		
		formatPrintXofYTemplate: function(licenseNumber, groupNumber) {
			var text = this.formatPrint(licenseNumber, groupNumber);

			if(this.groups[groupNumber].licenses.length > 1) {
				var printXofYTitle = top.formatmsg(this.printXofYTitleText, '' + (licenseNumber + 1) , '' + this.groups[groupNumber].licenses.length);
				text = top.formatmsg(this.printXofYTemplate, printXofYTitle, text);
			}
			return text;
		},
		
		formatPrint: function(licenseNumber, groupNumber) {
			var text = this.printFormatProvider(this.license.locale, this.groups[groupNumber].licenses[licenseNumber], this.groups[groupNumber].id);
			return text;
		},
		
		printFormatProvider: function (locale, id, group) {
			var type = this.getType(this.license.id, this.license.group);
			var text = this.provider(locale, id, group);
			if(type == 'text') text = '<pre>' + text + '</pre>';
			return text;
		},
		
		print: function(element){ 
			var content = this.formatPrintTemplate();
			top.printContent(content, element);
		}
	};
	
	var license = top.launchpad.extend(options, defaultOptions);
	
	license.create();
	top.logCLPExit("createLicensePanel", arguments);
	return license;	
}

// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // QezLAsTYLbPgOwXDB+GZPjLAWt0EPsXWy5Rleo8iYk6g
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
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCCTQYqw
// SIG // l+4U3K3EpEmznjxETemRRxAVxnUkr50S86kFizANBgkq
// SIG // hkiG9w0BAQEFAASCAgA/rM+NCTYxsbCEm1SYwI560K71
// SIG // nYs/W7pCQkRrLeXFmrR9m9WK4xwpFgGl79Ip5QLUUg6h
// SIG // WH7X66EiACdUsUtKrBtj2tjgBuGPuZdNY50Iqzk65RI6
// SIG // n0mWKEmge/WCawX4Gv6rr0Trz+vR/dqRCY4DLN7nIcaa
// SIG // RoLYIPYqWaF94nHYp2VyFoYenRq5NHcNqT4fuxaqQF4V
// SIG // /eNkBvQfdLSFwf8Ys22kMisN3KWAnjOWohqSr/jY9hX4
// SIG // 0yg7hBezgrEejsK4/0JFMSy2CqPFDhgoJEuOoxeTRZvW
// SIG // xcj4QT9+bnkbL2m3bO61Mo1CZrDj9Mpm09um5ZKoVcrv
// SIG // EVVNI5BRwRMr/+OCG8Q65hy4IE63kO5PqI64kASp+XSF
// SIG // 5Wta1iwmDxOmSr0kgAVlpjqWMRo3YVYNbxezSF9oHEQ2
// SIG // htwJEXa/37ToDmF2qkRoBM2K1S+4piGGU3BAct/zYMCX
// SIG // V2burbBlH4/Y5gNZy2aSBDTvpgSu5esl3PstI8uKTOSZ
// SIG // 34CA8nPgj4AL3Xvcf7kb1hLDNQYnM8uNXKygPCo+k131
// SIG // 34O9vUEsfMhGPdZKGxvWHQnQzZ150RMH5hO+jg87O3Ub
// SIG // SZE+VG+Aj+Tv+hPe4lqXWACMB9WkmmcrD6vN0rLq23IS
// SIG // BFJc8b3qRl9XpSFOEjNWBna0qXBRp9b+gTBCToMrd6GC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4NDhaMC8GCSqGSIb3
// SIG // DQEJBDEiBCBauc+TDQew6So/tQMJk2CR3hYXbw2hePsm
// SIG // npkhq73fPjANBgkqhkiG9w0BAQEFAASCAgBrdQKu3Fsw
// SIG // gTHOhdDa/ReUzAfsBSEgTUzt4bAZ1s06Cfs44h0GDbIB
// SIG // QjfYmsb3VdYtYYXwLulz8gc3C0JE0gZFqFRpFNcY4Yco
// SIG // xt9cchTfWh/J/pFROQqxVRHV4kykU4O3OA2pzgbCU5Qw
// SIG // W9z3vkb58WteEqwvs7UYuru/GJj1Cxac2qZAgK6LP2mK
// SIG // nj2+F0aHeeHpGm4palU+TuaF2niGhHuFIyjlDo+AXrLq
// SIG // UwPl7ypqL0lTXGCZ2cfBve6X+DO5+Hlnpd2u51FlhsoE
// SIG // CThonxGWqwPjoMqdt44FIo5yHv4Np7ecV0QIImGQm/pj
// SIG // SVzZuxDpSa4TklptqSmcOY1NMxkjsibzyd8UIOBU4CcL
// SIG // PXiYGYJGHuxfCwI6exn8IwzLlp59tiVofvp1m7u9oC0c
// SIG // ujbtpDcqjjX2DSDU/8YDk5JjHd7OkFNx9j2n95SPuXV9
// SIG // gkqkSdQt5rDc1HPNO5weM5F7vrqfFwss1ZtQUnvMP5nF
// SIG // uXDC+HGzHBgH3lXrU7AbiyD6spyqiSbA3hjtuuuNEW44
// SIG // H4GgR2duI+dC1Ku9PAe+Qr/dP/cNVISGjOuNhIjz/8Pi
// SIG // 0uBR6SYpyDQaPTKc7PxNr6vU4XODutciQQnimvDsVdGx
// SIG // oOcw2F1qMWUEv0EmhBNgcW9gzxaxOYddqCI+GxzrI894
// SIG // l4re6LJNvG5nLQ==
// SIG // End signature block
