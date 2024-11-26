var launchpad = launchpad || {};

launchpad.extend = launchpad.extend || function (extensions, target) {
	
	target = target || this;
	
	for(var property in extensions){
	
		target[property] = extensions[property];
	}
	
	return target;
};

launchpad.extend({
		
	log: function (message) {
		console.log(message);
	},
	
	each: function(object, callback) {
		for (var i in object) {
			var next = object[i];
			if (callback.call(next, i, next) === false) {
				break;
			}
		}
	}
});

launchpad.extend({

	event: (function () {

		var windowUniqueID = 'window' + Math.round(Math.random() * 1000000000);
		var documentUniqueID = 'document' + Math.round(Math.random() * 1000000000);

		function getKey(element, onEventName, callback) {
		
			var elementID = element === window ? windowUniqueID : element === document ? documentUniqueID : element.uniqueID;
			return elementID + '[' + onEventName + ']=' + callback;
		}

		function isMemberOf(element, potentialMember) {
			
			while (potentialMember && potentialMember !== element) {
				potentialMember = potentialMember.parentNode;
			}
			return potentialMember === element;
		}
		
		function createHoverFunction(callback, type)
		{
			return function (event) {
				var relatedTarget = event.relatedTarget;
				if (!isMemberOf(this, relatedTarget)) {
					callback.call(this, event);
				}
			}
		}

		var registeredEvents = [];

		return {

			add: function(element, eventName, callback, useCapture) {
			
				element = launchpad.dom.get(element);
				
				if (!!element.addEventListener) {
				
					if (eventName === 'mouseenter') {
					
						element.addEventListener('mouseover', createHoverFunction(callback, eventName), useCapture);
						
					} else if (eventName === 'mouseleave') { 
					
						element.addEventListener('mouseout', createHoverFunction(callback, eventName), useCapture);
						
					} else {
					
						element.addEventListener(eventName, callback, useCapture);
						
					}
					
				} else if (!!element.attachEvent) {
				
					var onEventName = 'on' + eventName;
					var key = getKey(element, onEventName, callback);
					var registeredEvent = registeredEvents[key];
					
					if (!registeredEvent) {
					
						element.attachEvent(onEventName, registeredEvent = registeredEvents[key] = function() {
							callback.call(element, event || (element.ownerDocument && element.ownerDocument.parentWindow && element.ownerDocument.parentWindow.event) || window.event);
						});
						
						window.attachEvent('onunload', function () {
							element.detachEvent(onEventName, registeredEvent);
						});
					}
				}
				return this;
			},

			remove: function(element, eventName, callback, useCapture) {
			
				element = launchpad.dom.get(element);
				
				if (!!element.removeEventListener) {
				
					element.removeEventListener(eventName, callback, useCapture);
					
				} else if (!!element.detachEvent) {
				
					var onEventName = 'on' + eventName;
					var key = getKey(element, onEventName, callback);
					var registeredEvent = registeredEvents[key];
					
					if (!!registeredEvent) {
					
						element.detachEvent(onEventName, registeredEvent);
						delete registeredEvents[key];
					}
				}
				return this;
			},
			
			hover: function (element, onEnter, onLeave) {
				launchpad.event.add(element, 'mouseenter', onEnter, false);
				launchpad.event.add(element, 'mouseleave', onLeave, false);
				return this;
			}, 
			
			extend: launchpad.extend
		};
	})()
	
});

launchpad.each('abort,blur,change,click,contextmenu,copy, cut,dblclick,error,focus,keydown,keypress,keyup,load,mousedown,mousemove,mouseout,mouseover,mouseup,mousewheel,paste,reset,resize,scroll,select,submit,unload'.split(','),
	function(i, name){
		launchpad.event[name] = function (element, callback) { launchpad.event.add(element, name, callback) };
	}
);

launchpad.extend({

	dom: {

		get: function(element, doc) {
			return typeof element === 'string' ? (doc || document).getElementById(element) : element;
		},
		
		remove: function(element, options) {

			options = options || {};
			element = this.get(element);
			
			var parent = element.parentNode;
			parent.removeChild(element);
			
			return this;
		},
		
		append: function(element, content, options) {

			options = options || {};
			element = this.get(element);
			
			var fragment = element.ownerDocument.createDocumentFragment();
			var buffer = element.ownerDocument.createElement('div');
			buffer.innerHTML = content;
			
			while (buffer.firstChild) {
				fragment.appendChild(buffer.firstChild);
			}

			element.appendChild(fragment);
			
			return this;
		},
		
		prepend: function(element, content, options) {
		
			options = options || {};
			element = this.get(element);
			
			var fragment = element.ownerDocument.createDocumentFragment();
			var buffer = element.ownerDocument.createElement('div');
			buffer.innerHTML = content;
			
			while (buffer.firstChild) {
				fragment.appendChild(buffer.firstChild);
			}

			element.insertBefore(fragment, element.firstChild);
			
			return this;
		},
		
		style: function(element, name, value, options) {
		
			options = options || {};
			element = this.get(element);
			
			var style = element.style;
			
			if (value === undefined) {
				return style[name];
				
			} else {
			
				style[name] = value;
				return this;
			}
		},
		
		html: function(element, html, options) {

			options = options || {};
			element = this.get(element);
			
			element.innerHTML = html;
			return this;
		},

		hide: function(element, options) {

			options = options || {};
			element = this.get(element);
			
			element.style.display = 'none';

			return this;
		},

		show: function(element, options) {

			options = options || {};
			element = this.get(element);
			
			element.style.display = 'block';

			return this;
		},
		
		extend: launchpad.extend
	}
});

launchpad.dom.extend({

	animate: (function () {

		function Animation(element, options) {
			this.queue = typeof options.queue === 'undefined' ? element : options.queue;
			this.element = element;
			this.s = element.style;
			this.options = options;
			this.count = 0;
			this.options.steps = options.steps || 1;
			this.steps = this.options.steps;
			this.frequency = this.options.frequency;
		}
		
		Animation.prototype.next = function () {
			if (this.count++ < this.options.steps) {
			
				var newValue = this.calculateIncrement() + parseFloat(this.s[this.options.name]);
				this.s[this.options.name] = newValue;
				return true;
				
			} else {
			
				clearInterval(this.id);
				
				if (this.queue) {
				
					queues[this.queue].shift();
					
					if (queues[this.queue].length > 0) {
						queues[this.queue][0].start();
					}
				}
			}
			return false;
		}
		
		Animation.prototype.calculateIncrement = function () {
			var increment = (this.options.end - this.options.start) / this.options.steps;
			return increment;
		}
		
		Animation.prototype.initializeStartValue = function () {
			console.log('initializeStartValue: ' + launchpad.dom.style(this.element, this.options.name));
			if (this.options.start !== undefined) {
				this.s[this.options.name] = this.options.start;
			} else {
				this.options.start = this.s[this.options.name];
				console.log('initializeStartValue: ' + this.s[this.options.name]);
			}
		}
		
		Animation.prototype.start = function() {
			var animation = this;
			animation.initializeStartValue();
			function animate() {
				animation.next();
			}
			animation.id = setInterval(animate, animation.frequency);
		}
		
		var queues = {};
		
		function queue(animation) {
		
			if (!animation.queue) {
			
				animation.start();

			} else {
			
				if (!queues[animation.queue]) {
				
					queues[animation.queue] = [];
				}
				if (queues[animation.queue].push(animation) === 1) {
				
					animation.start();					
				}
			}
		}
		
		return function(element, options) {

			element = this.get(element);
			
			options = options || {};
			options.duration = options.duration || (options.frequency && options.steps && (options.frequency * options.steps)) || 2000;
			options.frequency = options.frequency || (options.duration && options.steps && (options.duration / options.steps)) || 100;
			options.steps = options.steps || options.duration / options.frequency;
			
			var animation = new Animation(element, { name: options.name, start: options.start, end: options.end, steps: options.steps, frequency: options.frequency, queue: options.queue });
			queue(animation);
			return this;
		};
		
	})()

});

launchpad.extend({

	get: (function () {
		function Element(element, doc) {
			this.element = launchpad.dom.get(element, doc);
		}
		
		function createFunction(name, context) {
		
			return function () {
				var args = [];
				args.push(this.element);
				for(var i = 0; i < arguments.length; i++) args.push(arguments[i]);
				return context[name].apply(this, args);
			};
		}
		
		var event = launchpad.event;
		for(var name in event) {
			Element.prototype[name] = createFunction(name, event);
		}
		
		var dom = launchpad.dom;
		for(var name in dom) {
			Element.prototype[name] = createFunction(name, dom);
		}
		
		return function (id, doc) {
			var element = new Element(id, doc);
			return element.element === null ? null : element;
		};
	})()

});

launchpad.extend({

	load: function(callback, win) {
		win = win || window;
		launchpad.get(win).add('load', callback);
		return this;
	}
});

launchpad.extend({

	coordinates: (function () {

		var location = { x: 0, y: 0 };
		
		launchpad.load(function(){ 
		
			launchpad.get(document.body).mousemove( function(e) { 
				location.x = e.pageX ? e.pageX : e.clientX + document.body.scrollLeft;
				location.y = e.pageY ? e.pageY : e.clientY + document.body.scrollTop;
			});
		});
		
		return function (e) {
		
			if (!e) return location;
			
			var pageX = e.pageX ? e.pageX : e.clientX + document.body.scrollLeft;
			var pageY = e.pageY ? e.pageY : e.clientY + document.body.scrollTop;
			
			return { x: pageX, y: pageY, current: location };
		}
	})()
});


// SIG // Begin signature block
// SIG // MIIoXwYJKoZIhvcNAQcCoIIoUDCCKEwCAQExDzANBglg
// SIG // hkgBZQMEAgEFADB3BgorBgEEAYI3AgEEoGkwZzAyBgor
// SIG // BgEEAYI3AgEeMCQCAQEEEBDgyQbOONQRoqMAEEvTUJAC
// SIG // AQACAQACAQACAQACAQAwMTANBglghkgBZQMEAgEFAAQg
// SIG // eiZve3+i6vVowCQOEaVWXhEWCDaeEM1oEGy/Qfkrg3ig
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
// SIG // BgorBgEEAYI3AgEVMC8GCSqGSIb3DQEJBDEiBCDUw627
// SIG // UdIp3FWLHzCVarQqpZolSGETWyvgAmZtVm0xhDANBgkq
// SIG // hkiG9w0BAQEFAASCAgCaMmzZi5NPxdVBUpBIZFnCY3UC
// SIG // faUwy9u65GNxYj4SitU79GHIsceH91bPVNuYUkrswL+C
// SIG // nPq7OIm+J+BtcGENDGVKlOltzl9VTJxYUpMuBT/u99a0
// SIG // fSzX/+vuvB7UO/axNXY+Fpxh78TST7sTMODJ1etv9RAh
// SIG // vHv5TLgZNQqcbUGV/UbPZ4+B27EBb6DyBgARAw/ncJG6
// SIG // V0R3DfU34PYCQC0PBeo9d9zDgf1x5maZlYzd3RjBBAVH
// SIG // hrPtivkPkCRm/o4a+k7gWsXTAKqf/jCKfNDeyHp3HBrJ
// SIG // hiJI29906DSCPn7GEXL1bSRznljmBI4ejfDoOuyHoMvG
// SIG // IaeQb1dUSGaQBX3tZ22gq96m8umibKQvZMlgnXGUG422
// SIG // xvyQ82QxjsTIlKz+dSbQ2v3EsISL+Pja1uAQsRYAfJew
// SIG // BtnBMDojLatYXdJ4zQlq34j6V1Q2Zhf1Kdt2EbKzjCnn
// SIG // xq0lc7r0R+G81ygMAqyHsJetYdqpMoCZtHhdQAaMuFYy
// SIG // k123324q16F9cxLwRj6MhJQXWWyMqekt3eAUcZcdQ/cl
// SIG // opdyAGBoKYqjxjKYGv67QzcWKrZKIH8/YqCvx1HMaOGU
// SIG // pPxIzdWNUXM/6u7idC6tljztDezt2vCOVCv4Gl2vhyXQ
// SIG // ZVjcb8PG4UKgaXRrAq1XHnLurLWkWMmlsb3jgt0J8qGC
// SIG // AyAwggMcBgkqhkiG9w0BCQYxggMNMIIDCQIBATB3MGMx
// SIG // CzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwg
// SIG // SW5jLjE7MDkGA1UEAxMyRGlnaUNlcnQgVHJ1c3RlZCBH
// SIG // NCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBpbmcgQ0EC
// SIG // EAVEr/OUnQg5pr/bP1/lYRYwDQYJYIZIAWUDBAIBBQCg
// SIG // aTAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
// SIG // SIb3DQEJBTEPFw0yMzExMDUxOTA4NDZaMC8GCSqGSIb3
// SIG // DQEJBDEiBCC+e1TObtljMbCzhJ65JGNf9Ls3aBafUV3U
// SIG // IH3A9TUjWTANBgkqhkiG9w0BAQEFAASCAgCXthf3jRfO
// SIG // OGnNzqc6r1T16YGW/u4rj9+peOQK7FQLjmx7MTPAM3BF
// SIG // D12fREiUG7/bEzmQV7ipW2MYc+0diu42Gh8Ef5UNemf3
// SIG // lsv+J14wmvmbHFoW7UGd3SIsUeBrBnN2U3rKF5f5mZEq
// SIG // LA4+77yakYFIeCtAGFz1AldyznU+baf3Jn92SXLk9DDh
// SIG // 05i3C6EyXVLIQfmulQRfBGDU/1Natip4KImv6QZGtCA2
// SIG // /VJl6VltH0/tuysLGKqPEtMf+4kWpcnTzGsuthVv6aVv
// SIG // 2QRsxVRhr3Pe7Oswyk7olJVyvkrtDVAm4Kfw07PvHMQd
// SIG // YrrAzvzQOQVqgTAOn7GD29Gcq1A+Cks3KXLEzeZToVOS
// SIG // r8QEFgv6nvbwXXvoVBeQOP4iq5rSzuxBPfffRngCNXIl
// SIG // hGVFUe7lHXpXrDhJgnmWXV2Lof2w6IzhGz9Yr06Oqv3M
// SIG // 2cH0+KMtWoxNspHIRqImv0CdFbMKZt2g+Q5AB7WGRzpx
// SIG // tcgw/4StKI2vsKV1qC9ZMG+231bDbOLblqgzGoPq7lZb
// SIG // dYNr6/KipsumviqG8zGI6sXNVnzI5bFWlCO5eynHd77O
// SIG // qLPHWb2J7nSPgHB0TnXq5xl4bxj6djBJD6SpynwEI0Jl
// SIG // oF7ZukEy79PRzv2TTpe4Y8IdBt4XzMszDGH5Fb5oNXBB
// SIG // 37uz53FB0ulBuQ==
// SIG // End signature block
