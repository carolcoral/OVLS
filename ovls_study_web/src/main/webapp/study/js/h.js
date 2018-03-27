(function() {
	var h = {},
		mt = {},
		c = {
			id: "f0cfcccd7b1393990c78efdeebff3968",
			dm: ["imooc.com"],
			js: "tongji.baidu.com/hm-web/js/",
			etrk: [],
			icon: '/hmt/icon/21|gif|20|20',
			ctrk: true,
			align: 1,
			nv: -1,
			vdur: 1800000,
			age: 31536000000,
			rec: 0,
			rp: [],
			trust: 0,
			vcard: 0,
			qiao: 0,
			lxb: 0,
			conv: 0,
			med: 0,
			cvcc: {
				q: /tencent:\/\/|qq\.(com|htm)|kefu|openkf|swt|zoos|53kf|doyoo|looyu|leyu|zixun|chat|talk|openQQ|open_ask|online/i
			},
			cvcf: [],
			apps: ''
		};
	var q = void 0,
		r = !0,
		s = null,
		u = !1;
	mt.i = {};
	mt.i.X = /msie (\d+\.\d+)/i.test(navigator.userAgent);
	mt.i.Ka = /msie (\d+\.\d+)/i.test(navigator.userAgent) ? document.documentMode || +RegExp.$1 : q;
	mt.i.cookieEnabled = navigator.cookieEnabled;
	mt.i.javaEnabled = navigator.javaEnabled();
	mt.i.language = navigator.language || navigator.browserLanguage || navigator.systemLanguage || navigator.userLanguage || "";
	mt.i.Na = (window.screen.width || 0) + "x" + (window.screen.height || 0);
	mt.i.colorDepth = window.screen.colorDepth || 0;
	mt.cookie = {};
	mt.cookie.set = function(a, b, g) {
		var e;
		g.K && (e = new Date, e.setTime(e.getTime() + g.K));
		document.cookie = a + "=" + b + (g.domain ? "; domain=" + g.domain : "") + (g.path ? "; path=" + g.path : "") + (e ? "; expires=" + e.toGMTString() : "") + (g.cb ? "; secure" : "")
	};
	mt.cookie.get = function(a) {
		return(a = RegExp("(^| )" + a + "=([^;]*)(;|$)").exec(document.cookie)) ? a[2] : s
	};
	mt.o = {};
	mt.o.va = function(a) {
		return document.getElementById(a)
	};
	mt.o.wa = function(a) {
		var b;
		for(b = "A";
			(a = a.parentNode) && 1 == a.nodeType;)
			if(a.tagName == b) return a;
		return s
	};
	(mt.o.$ = function() {
		function a() {
			if(!a.C) {
				a.C = r;
				for(var b = 0, g = e.length; b < g; b++) e[b]()
			}
		}

		function b() {
			try {
				document.documentElement.doScroll("left")
			} catch(e) {
				setTimeout(b, 1);
				return
			}
			a()
		}
		var g = u,
			e = [],
			k;
		document.addEventListener ? k = function() {
			document.removeEventListener("DOMContentLoaded", k, u);
			a()
		} : document.attachEvent && (k = function() {
			"complete" === document.readyState && (document.detachEvent("onreadystatechange", k), a())
		});
		(function() {
			if(!g)
				if(g = r, "complete" === document.readyState) a.C = r;
				else if(document.addEventListener) document.addEventListener("DOMContentLoaded",
				k, u), window.addEventListener("load", a, u);
			else if(document.attachEvent) {
				document.attachEvent("onreadystatechange", k);
				window.attachEvent("onload", a);
				var e = u;
				try {
					e = window.frameElement == s
				} catch(n) {}
				document.documentElement.doScroll && e && b()
			}
		})();
		return function(b) {
			a.C ? b() : e.push(b)
		}
	}()).C = u;
	mt.event = {};
	mt.event.c = function(a, b, g) {
		a.attachEvent ? a.attachEvent("on" + b, function(e) {
			g.call(a, e)
		}) : a.addEventListener && a.addEventListener(b, g, u)
	};
	mt.event.preventDefault = function(a) {
		a.preventDefault ? a.preventDefault() : a.returnValue = u
	};
	mt.j = {};
	mt.j.parse = function() {
		return(new Function('return (" + source + ")'))()
	};
	mt.j.stringify = function() {
		function a(a) {
			/["\\\x00-\x1f]/.test(a) && (a = a.replace(/["\\\x00-\x1f]/g, function(a) {
				var e = g[a];
				if(e) return e;
				e = a.charCodeAt();
				return "\\u00" + Math.floor(e / 16).toString(16) + (e % 16).toString(16)
			}));
			return '"' + a + '"'
		}

		function b(a) {
			return 10 > a ? "0" + a : a
		}
		var g = {
			"\b": "\\b",
			"\t": "\\t",
			"\n": "\\n",
			"\f": "\\f",
			"\r": "\\r",
			'"': '\\"',
			"\\": "\\\\"
		};
		return function(e) {
			switch(typeof e) {
				case "undefined":
					return "undefined";
				case "number":
					return isFinite(e) ? String(e) : "null";
				case "string":
					return a(e);
				case "boolean":
					return String(e);
				default:
					if(e === s) return "null";
					if(e instanceof Array) {
						var g = ["["],
							l = e.length,
							n, p, f;
						for(p = 0; p < l; p++) switch(f = e[p], typeof f) {
							case "undefined":
							case "function":
							case "unknown":
								break;
							default:
								n && g.push(","), g.push(mt.j.stringify(f)), n = 1
						}
						g.push("]");
						return g.join("")
					}
					if(e instanceof Date) return '"' + e.getFullYear() + "-" + b(e.getMonth() + 1) + "-" + b(e.getDate()) + "T" + b(e.getHours()) + ":" + b(e.getMinutes()) + ":" + b(e.getSeconds()) + '"';
					n = ["{"];
					p = mt.j.stringify;
					for(l in e)
						if(Object.prototype.hasOwnProperty.call(e, l)) switch(f =
							e[l], typeof f) {
							case "undefined":
							case "unknown":
							case "function":
								break;
							default:
								g && n.push(","), g = 1, n.push(p(l) + ":" + p(f))
						}
					n.push("}");
					return n.join("")
			}
		}
	}();
	mt.lang = {};
	mt.lang.d = function(a, b) {
		return "[object " + b + "]" === {}.toString.call(a)
	};
	mt.lang.$a = function(a) {
		return mt.lang.d(a, "Number") && isFinite(a)
	};
	mt.lang.bb = function(a) {
		return mt.lang.d(a, "String")
	};
	mt.localStorage = {};
	mt.localStorage.I = function() {
		if(!mt.localStorage.g) try {
			mt.localStorage.g = document.createElement("input"), mt.localStorage.g.type = "hidden", mt.localStorage.g.style.display = "none", mt.localStorage.g.addBehavior("#default#userData"), document.getElementsByTagName("head")[0].appendChild(mt.localStorage.g)
		} catch(a) {
			return u
		}
		return r
	};
	mt.localStorage.set = function(a, b, g) {
		var e = new Date;
		e.setTime(e.getTime() + g || 31536E6);
		try {
			window.localStorage ? (b = e.getTime() + "|" + b, window.localStorage.setItem(a, b)) : mt.localStorage.I() && (mt.localStorage.g.expires = e.toUTCString(), mt.localStorage.g.load(document.location.hostname), mt.localStorage.g.setAttribute(a, b), mt.localStorage.g.save(document.location.hostname))
		} catch(k) {}
	};
	mt.localStorage.get = function(a) {
		if(window.localStorage) {
			if(a = window.localStorage.getItem(a)) {
				var b = a.indexOf("|"),
					g = a.substring(0, b) - 0;
				if(g && g > (new Date).getTime()) return a.substring(b + 1)
			}
		} else if(mt.localStorage.I()) try {
			return mt.localStorage.g.load(document.location.hostname), mt.localStorage.g.getAttribute(a)
		} catch(e) {}
		return s
	};
	mt.localStorage.remove = function(a) {
		if(window.localStorage) window.localStorage.removeItem(a);
		else if(mt.localStorage.I()) try {
			mt.localStorage.g.load(document.location.hostname), mt.localStorage.g.removeAttribute(a), mt.localStorage.g.save(document.location.hostname)
		} catch(b) {}
	};
	mt.sessionStorage = {};
	mt.sessionStorage.set = function(a, b) {
		if(window.sessionStorage) try {
			window.sessionStorage.setItem(a, b)
		} catch(g) {}
	};
	mt.sessionStorage.get = function(a) {
		return window.sessionStorage ? window.sessionStorage.getItem(a) : s
	};
	mt.sessionStorage.remove = function(a) {
		window.sessionStorage && window.sessionStorage.removeItem(a)
	};
	mt.ba = {};
	mt.ba.log = function(a, b) {
		var g = new Image,
			e = "mini_tangram_log_" + Math.floor(2147483648 * Math.random()).toString(36);
		window[e] = g;
		g.onload = g.onerror = g.onabort = function() {
			g.onload = g.onerror = g.onabort = s;
			g = window[e] = s;
			b && b(a)
		};
		g.src = a
	};
	mt.H = {};
	mt.H.Ca = function() {
		var a = "";
		if(navigator.plugins && navigator.mimeTypes.length) {
			var b = navigator.plugins["Shockwave Flash"];
			b && b.description && (a = b.description.replace(/^.*\s+(\S+)\s+\S+$/, "$1"))
		} else if(window.ActiveXObject) try {
			if(b = new ActiveXObject("ShockwaveFlash.ShockwaveFlash"))(a = b.GetVariable("$version")) && (a = a.replace(/^.*\s+(\d+),(\d+).*$/, "$1.$2"))
		} catch(g) {}
		return a
	};
	mt.H.oa = function(a, b, g, e, k) {
		return '<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="' + a + '" width="' + g + '" height="' + e + '"><param name="movie" value="' + b + '" /><param name="flashvars" value="' + (k || "") + '" /><param name="allowscriptaccess" value="always" /><embed type="application/x-shockwave-flash" name="' + a + '" width="' + g + '" height="' + e + '" src="' + b + '" flashvars="' + (k || "") + '" allowscriptaccess="always" /></object>'
	};
	mt.url = {};
	mt.url.f = function(a, b) {
		var g = a.match(RegExp("(^|&|\\?|#)(" + b + ")=([^&#]*)(&|$|#)", ""));
		return g ? g[3] : s
	};
	mt.url.Za = function(a) {
		return(a = a.match(/^(https?:)\/\//)) ? a[1] : s
	};
	mt.url.za = function(a) {
		return(a = a.match(/^(https?:\/\/)?([^\/\?#]*)/)) ? a[2].replace(/.*@/, "") : s
	};
	mt.url.V = function(a) {
		return(a = mt.url.za(a)) ? a.replace(/:\d+$/, "") : a
	};
	mt.url.Ya = function(a) {
		return(a = a.match(/^(https?:\/\/)?[^\/]*(.*)/)) ? a[2].replace(/[\?#].*/, "").replace(/^$/, "/") : s
	};
	(function() {
		function a() {
			for(var a = u, g = document.getElementsByTagName("script"), e = g.length, e = 100 < e ? 100 : e, k = 0; k < e; k++) {
				var l = g[k].src;
				if(l && 0 === l.indexOf("https://hm.baidu.com/h")) {
					a = r;
					break
				}
			}
			return a
		}
		return h.ua = a
	})();
	var A = h.ua;
	h.r = {
		Ja: "http://tongji.baidu.com/hm-web/welcome/ico",
		P: "hm.baidu.com/hm.gif",
		ga: "baidu.com",
		Ga: "hmmd",
		Ha: "hmpl",
		Va: "utm_medium",
		Fa: "hmkw",
		Xa: "utm_term",
		Da: "hmci",
		Ua: "utm_content",
		Ia: "hmsr",
		Wa: "utm_source",
		Ea: "hmcu",
		Ta: "utm_campaign",
		p: 0,
		k: Math.round(+new Date / 1E3),
		T: Math.round(+new Date / 1E3) % 65535,
		protocol: "https:" === document.location.protocol ? "https:" : "http:",
		D: A() || "https:" === document.location.protocol ? "https:" : "http:",
		ab: 0,
		ma: 6E5,
		na: 10,
		S: 1024,
		la: 1,
		z: 2147483647,
		ca: "cc cf ci ck cl cm cp cu cw ds ep et fl ja ln lo lt nv rnd si st su v cv lv api sn ct u tt".split(" ")
	};
	(function() {
		var a = {
			m: {},
			c: function(a, g) {
				this.m[a] = this.m[a] || [];
				this.m[a].push(g)
			},
			A: function(a, g) {
				this.m[a] = this.m[a] || [];
				for(var e = this.m[a].length, k = 0; k < e; k++) this.m[a][k](g)
			}
		};
		return h.s = a
	})();
	(function() {
		function a(a, e) {
			var k = document.createElement("script");
			k.charset = "utf-8";
			b.d(e, "Function") && (k.readyState ? k.onreadystatechange = function() {
				if("loaded" === k.readyState || "complete" === k.readyState) k.onreadystatechange = s, e()
			} : k.onload = function() {
				e()
			});
			k.src = a;
			var l = document.getElementsByTagName("script")[0];
			l.parentNode.insertBefore(k, l)
		}
		var b = mt.lang;
		return h.load = a
	})();
	(function() {
		var a = h.r,
			b = mt.H,
			g = {
				init: function() {
					if("" !== c.icon) {
						var e;
						e = c.icon.split("|");
						var g = a.Ja + "?s=" + c.id,
							l = ("http:" == a.protocol ? "http://eiv" : "https://bs") + ".baidu.com" + e[0] + "." + e[1];
						switch(e[1]) {
							case "swf":
								e = b.oa("HolmesIcon" + a.k, l, e[2], e[3], "s=" + g);
								break;
							case "gif":
								e = '<a href="' + g + '" target="_blank"><img border="0" src="' + l + '" width="' + e[2] + '" height="' + e[3] + '"></a>';
								break;
							default:
								e = '<a href="' + g + '" target="_blank">' + e[0] + "</a>"
						}
						document.write(e)
					}
				}
			};
		h.s.c("pv-b", g.init);
		return g
	})();
	(function() {
		var a = mt.o,
			b = mt.event,
			g = mt.i,
			e = h.r,
			k = [],
			l = {
				da: function() {
					c.ctrk && (b.c(document, "mouseup", l.ka()), b.c(window, "unload", function() {
						l.F()
					}), setInterval(function() {
						l.F()
					}, e.ma))
				},
				ka: function() {
					return function(a) {
						a = l.xa(a);
						if("" !== a) {
							var b = (e.D + "//" + e.P + "?" + h.b.aa().replace(/ep=[^&]*/, "ep=" + encodeURIComponent("[" + a + "]"))).length;
							b + (e.z + "").length > e.S || (b + encodeURIComponent(k.join(",") + (k.length ? "," : "")).length + (e.z + "").length > e.S && l.F(), k.push(a), (k.length >= e.na || /t:a/.test(a)) && l.F())
						}
					}
				},
				xa: function(b) {
					if(0 ===
						e.la) {
						var k = b.target || b.srcElement,
							f = k.tagName.toLowerCase();
						if("embed" == f || "object" == f) return ""
					}
					g.X ? (k = Math.max(document.documentElement.scrollTop, document.body.scrollTop), f = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft), f = b.clientX + f, k = b.clientY + k) : (f = b.pageX, k = b.pageY);
					var d = window.innerWidth || document.documentElement.clientWidth || document.body.offsetWidth;
					switch(c.align) {
						case 1:
							f -= d / 2;
							break;
						case 2:
							f -= d
					}
					f = "{x:" + f + ",y:" + k + ",";
					k = b.target || b.srcElement;
					return f = (b = "a" == k.tagName.toLowerCase() ?
						k : a.wa(k)) ? f + ("t:a,u:" + encodeURIComponent(b.href) + "}") : f + "t:b}"
				},
				F: function() {
					0 !== k.length && (h.b.a.et = 2, h.b.a.ep = "[" + k.join(",") + "]", h.b.h(), k = [])
				}
			};
		h.s.c("pv-b", l.da);
		return l
	})();
	(function() {
		function a() {
			return function() {
				h.b.a.nv = 0;
				h.b.a.st = 4;
				h.b.a.et = 3;
				h.b.a.ep = h.J.Aa() + "," + h.J.ya();
				h.b.h()
			}
		}

		function b() {
			clearTimeout(y);
			var a;
			x && (a = "visible" == document[x]);
			z && (a = !document[z]);
			p = "undefined" == typeof a ? r : a;
			if((!n || !f) && p && d) v = r, m = +new Date;
			else if(n && f && (!p || !d)) v = u, t += +new Date - m;
			n = p;
			f = d;
			y = setTimeout(b, 100)
		}

		function g(d) {
			var a = document,
				m = "";
			if(d in a) m = d;
			else
				for(var e = ["webkit", "ms", "moz", "o"], b = 0; b < e.length; b++) {
					var t = e[b] + d.charAt(0).toUpperCase() + d.slice(1);
					if(t in a) {
						m =
							t;
						break
					}
				}
			return m
		}

		function e(a) {
			if(!("focus" == a.type || "blur" == a.type) || !(a.target && a.target != window)) d = "focus" == a.type || "focusin" == a.type ? r : u, b()
		}
		var k = mt.event,
			l = h.s,
			n = r,
			p = r,
			f = r,
			d = r,
			w = +new Date,
			m = w,
			t = 0,
			v = r,
			x = g("visibilityState"),
			z = g("hidden"),
			y;
		b();
		(function() {
			var d = x.replace(/[vV]isibilityState/, "visibilitychange");
			k.c(document, d, b);
			k.c(window, "pageshow", b);
			k.c(window, "pagehide", b);
			"object" == typeof document.onfocusin ? (k.c(document, "focusin", e), k.c(document, "focusout", e)) : (k.c(window, "focus", e),
				k.c(window, "blur", e))
		})();
		h.J = {
			Aa: function() {
				return +new Date - w
			},
			ya: function() {
				return v ? +new Date - m + t : t
			}
		};
		l.c("pv-b", function() {
			k.c(window, "unload", a())
		});
		return h.J
	})();
	(function() {
		var a = mt.lang,
			b = h.r,
			g = h.load,
			e = {
				La: function(e) {
					if((window._dxt === q || a.d(window._dxt, "Array")) && "undefined" !== typeof h.b) {
						var l = h.b.L();
						g([b.protocol, "//datax.baidu.com/x.js?si=", c.id, "&dm=", encodeURIComponent(l)].join(""), e)
					}
				},
				Sa: function(e) {
					if(a.d(e, "String") || a.d(e, "Number")) window._dxt = window._dxt || [], window._dxt.push(["_setUserId", e])
				}
			};
		return h.pa = e
	})();
	(function() {
		function a(d, a, m, e) {
			if(!(d === q || a === q || e === q)) {
				if("" === d) return [a, m, e].join("*");
				d = String(d).split("!");
				for(var b, g = u, f = 0; f < d.length; f++)
					if(b = d[f].split("*"), String(a) === b[0]) {
						b[1] = m;
						b[2] = e;
						d[f] = b.join("*");
						g = r;
						break
					}
				g || d.push([a, m, e].join("*"));
				return d.join("!")
			}
		}

		function b(d) {
			for(var a in d)
				if({}.hasOwnProperty.call(d, a)) {
					var m = d[a];
					e.d(m, "Object") || e.d(m, "Array") ? b(m) : d[a] = String(m)
				}
		}

		function g(d) {
			return d.replace ? d.replace(/'/g, "'0").replace(/\*/g, "'1").replace(/!/g, "'2") : d
		}
		var e =
			mt.lang,
			k = mt.j,
			l = h.r,
			n = h.s,
			p = h.pa,
			f = {
				w: [],
				G: 0,
				Y: u,
				l: {
					R: "",
					page: ""
				},
				init: function() {
					f.e = 0;
					n.c("pv-b", function() {
						f.qa();
						f.sa()
					});
					n.c("pv-d", function() {
						f.ta();
						f.l.page = ""
					});
					n.c("stag-b", function() {
						h.b.a.api = f.e || f.G ? f.e + "_" + f.G : "";
						h.b.a.ct = [decodeURIComponent(h.b.getData("Hm_ct_" + c.id) || ""), f.l.R, f.l.page].join("!")
					});
					n.c("stag-d", function() {
						h.b.a.api = 0;
						f.e = 0;
						f.G = 0
					})
				},
				qa: function() {
					var d = window._hmt || [];
					if(!d || e.d(d, "Array")) window._hmt = {
						id: c.id,
						cmd: {},
						push: function() {
							for(var d = window._hmt, a = 0; a < arguments.length; a++) {
								var b =
									arguments[a];
								e.d(b, "Array") && (d.cmd[d.id].push(b), "_setAccount" === b[0] && (1 < b.length && /^[0-9a-f]{32}$/.test(b[1])) && (b = b[1], d.id = b, d.cmd[b] = d.cmd[b] || []))
							}
						}
					}, window._hmt.cmd[c.id] = [], window._hmt.push.apply(window._hmt, d)
				},
				sa: function() {
					var d = window._hmt;
					if(d && d.cmd && d.cmd[c.id])
						for(var a = d.cmd[c.id], m = /^_track(Event|MobConv|Order|RTEvent)$/, b = 0, e = a.length; b < e; b++) {
							var g = a[b];
							m.test(g[0]) ? f.w.push(g) : f.O(g)
						}
					d.cmd[c.id] = {
						push: f.O
					}
				},
				ta: function() {
					if(0 < f.w.length)
						for(var d = 0, a = f.w.length; d < a; d++) f.O(f.w[d]);
					f.w = s
				},
				O: function(d) {
					var a = d[0];
					if(f.hasOwnProperty(a) && e.d(f[a], "Function")) f[a](d)
				},
				_setAccount: function(d) {
					1 < d.length && /^[0-9a-f]{32}$/.test(d[1]) && (f.e |= 1)
				},
				_setAutoPageview: function(d) {
					if(1 < d.length && (d = d[1], u === d || r === d)) f.e |= 2, h.b.W = d
				},
				_trackPageview: function(d) {
					if(1 < d.length && d[1].charAt && "/" === d[1].charAt(0)) {
						f.e |= 4;
						h.b.a.et = 0;
						h.b.a.ep = "";
						h.b.M ? (h.b.a.nv = 0, h.b.a.st = 4) : h.b.M = r;
						var a = h.b.a.u,
							m = h.b.a.su;
						h.b.a.u = l.protocol + "//" + document.location.host + d[1];
						f.Y || (h.b.a.su = document.location.href);
						h.b.h();
						h.b.a.u = a;
						h.b.a.su = m
					}
				},
				_trackEvent: function(d) {
					2 < d.length && (f.e |= 8, h.b.a.nv = 0, h.b.a.st = 4, h.b.a.et = 4, h.b.a.ep = g(d[1]) + "*" + g(d[2]) + (d[3] ? "*" + g(d[3]) : "") + (d[4] ? "*" + g(d[4]) : ""), h.b.h())
				},
				_setCustomVar: function(d) {
					if(!(4 > d.length)) {
						var a = d[1],
							m = d[4] || 3;
						if(0 < a && 6 > a && 0 < m && 4 > m) {
							f.G++;
							for(var b = (h.b.a.cv || "*").split("!"), e = b.length; e < a - 1; e++) b.push("*");
							b[a - 1] = m + "*" + g(d[2]) + "*" + g(d[3]);
							h.b.a.cv = b.join("!");
							d = h.b.a.cv.replace(/[^1](\*[^!]*){2}/g, "*").replace(/((^|!)\*)+$/g, "");
							"" !== d ? h.b.setData("Hm_cv_" +
								c.id, encodeURIComponent(d), c.age) : h.b.Ma("Hm_cv_" + c.id)
						}
					}
				},
				_setUserTag: function(d) {
					if(!(3 > d.length)) {
						var b = g(d[1]);
						d = g(d[2]);
						if(b !== q && d !== q) {
							var m = decodeURIComponent(h.b.getData("Hm_ct_" + c.id) || ""),
								m = a(m, b, 1, d);
							h.b.setData("Hm_ct_" + c.id, encodeURIComponent(m), c.age)
						}
					}
				},
				_setVisitTag: function(d) {
					if(!(3 > d.length)) {
						var b = g(d[1]);
						d = g(d[2]);
						if(b !== q && d !== q) {
							var m = f.l.R,
								m = a(m, b, 2, d);
							f.l.R = m
						}
					}
				},
				_setPageTag: function(d) {
					if(!(3 > d.length)) {
						var b = g(d[1]);
						d = g(d[2]);
						if(b !== q && d !== q) {
							var m = f.l.page,
								m = a(m, b, 3, d);
							f.l.page = m
						}
					}
				},
				_setReferrerOverride: function(a) {
					1 < a.length && (h.b.a.su = a[1].charAt && "/" === a[1].charAt(0) ? l.protocol + "//" + window.location.host + a[1] : a[1], f.Y = r)
				},
				_trackOrder: function(a) {
					a = a[1];
					e.d(a, "Object") && (b(a), f.e |= 16, h.b.a.nv = 0, h.b.a.st = 4, h.b.a.et = 94, h.b.a.ep = k.stringify(a), h.b.h())
				},
				_trackMobConv: function(a) {
					if(a = {
							webim: 1,
							tel: 2,
							map: 3,
							sms: 4,
							callback: 5,
							share: 6
						}[a[1]]) f.e |= 32, h.b.a.et = 93, h.b.a.ep = a, h.b.h()
				},
				_trackRTPageview: function(a) {
					a = a[1];
					e.d(a, "Object") && (b(a), a = k.stringify(a), 512 >= encodeURIComponent(a).length &&
						(f.e |= 64, h.b.a.rt = a))
				},
				_trackRTEvent: function(a) {
					a = a[1];
					if(e.d(a, "Object")) {
						b(a);
						a = encodeURIComponent(k.stringify(a));
						var g = function(a) {
								var d = h.b.a.rt;
								f.e |= 128;
								h.b.a.et = 90;
								h.b.a.rt = a;
								h.b.h();
								h.b.a.rt = d
							},
							m = a.length;
						if(900 >= m) g.call(this, a);
						else
							for(var m = Math.ceil(m / 900), t = "block|" + Math.round(Math.random() * l.z).toString(16) + "|" + m + "|", v = [], x = 0; x < m; x++) v.push(x), v.push(a.substring(900 * x, 900 * x + 900)), g.call(this, t + v.join("|")), v = []
					}
				},
				_setUserId: function(a) {
					a = a[1];
					p.La();
					p.Sa(a)
				}
			};
		f.init();
		h.ha = f;
		return h.ha
	})();
	(function() {
		function a() {
			"undefined" === typeof window["_bdhm_loaded_" + c.id] && (window["_bdhm_loaded_" + c.id] = r, this.a = {}, this.W = r, this.M = u, this.init())
		}
		var b = mt.url,
			g = mt.ba,
			e = mt.H,
			k = mt.lang,
			l = mt.cookie,
			n = mt.i,
			p = mt.localStorage,
			f = mt.sessionStorage,
			d = h.r,
			w = h.s;
		a.prototype = {
			N: function(a, d) {
				a = "." + a.replace(/:\d+/, "");
				d = "." + d.replace(/:\d+/, "");
				var b = a.indexOf(d);
				return -1 < b && b + d.length === a.length
			},
			Z: function(a, d) {
				a = a.replace(/^https?:\/\//, "");
				return 0 === a.indexOf(d)
			},
			B: function(a) {
				for(var d = 0; d < c.dm.length; d++)
					if(-1 <
						c.dm[d].indexOf("/")) {
						if(this.Z(a, c.dm[d])) return r
					} else {
						var e = b.V(a);
						if(e && this.N(e, c.dm[d])) return r
					}
				return u
			},
			L: function() {
				for(var a = document.location.hostname, d = 0, b = c.dm.length; d < b; d++)
					if(this.N(a, c.dm[d])) return c.dm[d].replace(/(:\d+)?[\/\?#].*/, "");
				return a
			},
			U: function() {
				for(var a = 0, d = c.dm.length; a < d; a++) {
					var b = c.dm[a];
					if(-1 < b.indexOf("/") && this.Z(document.location.href, b)) return b.replace(/^[^\/]+(\/.*)/, "$1") + "/"
				}
				return "/"
			},
			Ba: function() {
				if(!document.referrer) return d.k - d.p > c.vdur ? 1 : 4;
				var a =
					u;
				this.B(document.referrer) && this.B(document.location.href) ? a = r : (a = b.V(document.referrer), a = this.N(a || "", document.location.hostname));
				return a ? d.k - d.p > c.vdur ? 1 : 4 : 3
			},
			getData: function(a) {
				try {
					return l.get(a) || f.get(a) || p.get(a)
				} catch(d) {}
			},
			setData: function(a, d, b) {
				try {
					l.set(a, d, {
						domain: this.L(),
						path: this.U(),
						K: b
					}), b ? p.set(a, d, b) : f.set(a, d)
				} catch(e) {}
			},
			Ma: function(a) {
				try {
					l.set(a, "", {
						domain: this.L(),
						path: this.U(),
						K: -1
					}), f.remove(a), p.remove(a)
				} catch(d) {}
			},
			Qa: function() {
				var a, b, e, g, f;
				d.p = this.getData("Hm_lpvt_" +
					c.id) || 0;
				13 === d.p.length && (d.p = Math.round(d.p / 1E3));
				b = this.Ba();
				a = 4 !== b ? 1 : 0;
				if(e = this.getData("Hm_lvt_" + c.id)) {
					g = e.split(",");
					for(f = g.length - 1; 0 <= f; f--) 13 === g[f].length && (g[f] = "" + Math.round(g[f] / 1E3));
					for(; 2592E3 < d.k - g[0];) g.shift();
					f = 4 > g.length ? 2 : 3;
					for(1 === a && g.push(d.k); 4 < g.length;) g.shift();
					e = g.join(",");
					g = g[g.length - 1]
				} else e = d.k, g = "", f = 1;
				this.setData("Hm_lvt_" + c.id, e, c.age);
				this.setData("Hm_lpvt_" + c.id, d.k);
				e = d.k === this.getData("Hm_lpvt_" + c.id) ? "1" : "0";
				if(0 === c.nv && this.B(document.location.href) &&
					("" === document.referrer || this.B(document.referrer))) a = 0, b = 4;
				this.a.nv = a;
				this.a.st = b;
				this.a.cc = e;
				this.a.lt = g;
				this.a.lv = f
			},
			aa: function() {
				for(var a = [], b = this.a.et, e = 0, g = d.ca.length; e < g; e++) {
					var f = d.ca[e],
						k = this.a[f];
					"undefined" !== typeof k && "" !== k && ("tt" !== f || "tt" === f && 0 === b) && ("ct" !== f || "ct" === f && 0 === b) && a.push(f + "=" + encodeURIComponent(k))
				}
				switch(b) {
					case 0:
						a.push("sn=" + d.T);
						this.a.rt && a.push("rt=" + encodeURIComponent(this.a.rt));
						break;
					case 3:
						a.push("sn=" + d.T);
						break;
					case 90:
						this.a.rt && a.push("rt=" + this.a.rt)
				}
				return a.join("&")
			},
			Ra: function() {
				this.Qa();
				this.a.si = c.id;
				this.a.su = document.referrer;
				this.a.ds = n.Na;
				this.a.cl = n.colorDepth + "-bit";
				this.a.ln = String(n.language).toLowerCase();
				this.a.ja = n.javaEnabled ? 1 : 0;
				this.a.ck = n.cookieEnabled ? 1 : 0;
				this.a.lo = "number" === typeof _bdhm_top ? 1 : 0;
				this.a.fl = e.Ca();
				this.a.v = "1.2.14";
				this.a.cv = decodeURIComponent(this.getData("Hm_cv_" + c.id) || "");
				this.a.tt = document.title || "";
				var a = document.location.href;
				this.a.cm = b.f(a, d.Ga) || "";
				this.a.cp = b.f(a, d.Ha) || b.f(a, d.Va) || "";
				this.a.cw = b.f(a, d.Fa) || b.f(a,
					d.Xa) || "";
				this.a.ci = b.f(a, d.Da) || b.f(a, d.Ua) || "";
				this.a.cf = b.f(a, d.Ia) || b.f(a, d.Wa) || "";
				this.a.cu = b.f(a, d.Ea) || b.f(a, d.Ta) || ""
			},
			init: function() {
				try {
					this.Ra(), 0 === this.a.nv ? this.Pa() : this.Q(".*"), h.b = this, this.ia(), w.A("pv-b"), this.Oa()
				} catch(a) {
					var b = [];
					b.push("si=" + c.id);
					b.push("n=" + encodeURIComponent(a.name));
					b.push("m=" + encodeURIComponent(a.message));
					b.push("r=" + encodeURIComponent(document.referrer));
					g.log(d.D + "//" + d.P + "?" + b.join("&"))
				}
			},
			Oa: function() {
				function a() {
					w.A("pv-d")
				}
				this.W ? (this.M = r,
					this.a.et = 0, this.a.ep = "", this.h(a)) : a()
			},
			h: function(a) {
				var b = this;
				b.a.rnd = Math.round(Math.random() * d.z);
				w.A("stag-b");
				var e = d.D + "//" + d.P + "?" + b.aa();
				w.A("stag-d");
				b.fa(e);
				g.log(e, function(d) {
					b.Q(d);
					k.d(a, "Function") && a.call(b)
				})
			},
			ia: function() {
				var a = document.location.hash.substring(1),
					e = RegExp(c.id),
					g = -1 < document.referrer.indexOf(d.ga),
					f = b.f(a, "jn"),
					k = /^heatlink$|^select$/.test(f);
				a && (e.test(a) && g && k) && (this.a.rnd = Math.round(Math.random() * d.z), a = document.createElement("script"), a.setAttribute("type",
					"text/javascript"), a.setAttribute("charset", "utf-8"), a.setAttribute("src", d.protocol + "//" + c.js + f + ".js?" + this.a.rnd), f = document.getElementsByTagName("script")[0], f.parentNode.insertBefore(a, f))
			},
			fa: function(a) {
				var d = f.get("Hm_unsent_" + c.id) || "",
					b = this.a.u ? "" : "&u=" + encodeURIComponent(document.location.href),
					d = encodeURIComponent(a.replace(/^https?:\/\//, "") + b) + (d ? "," + d : "");
				f.set("Hm_unsent_" + c.id, d)
			},
			Q: function(a) {
				var d = f.get("Hm_unsent_" + c.id) || "";
				d && (a = encodeURIComponent(a.replace(/^https?:\/\//, "")),
					a = RegExp(a.replace(/([\*\(\)])/g, "\\$1") + "(%26u%3D[^,]*)?,?", "g"), (d = d.replace(a, "").replace(/,$/, "")) ? f.set("Hm_unsent_" + c.id, d) : f.remove("Hm_unsent_" + c.id))
			},
			Pa: function() {
				var a = this,
					b = f.get("Hm_unsent_" + c.id);
				if(b)
					for(var b = b.split(","), e = function(b) {
							g.log(d.D + "//" + decodeURIComponent(b), function(d) {
								a.Q(d)
							})
						}, k = 0, l = b.length; k < l; k++) e(b[k])
			}
		};
		return new a
	})();
	(function() {
		var a = mt.o,
			b = mt.event,
			g = mt.url,
			e = mt.j;
		try {
			if(window.performance && performance.timing && "undefined" !== typeof h.b) {
				var k = +new Date,
					l = function(a) {
						var b = performance.timing,
							e = b[a + "Start"] ? b[a + "Start"] : 0;
						a = b[a + "End"] ? b[a + "End"] : 0;
						return {
							start: e,
							end: a,
							value: 0 < a - e ? a - e : 0
						}
					},
					n = s;
				a.$(function() {
					n = +new Date
				});
				var p = function() {
					var a, b, f;
					f = l("navigation");
					b = l("request");
					f = {
						netAll: b.start - f.start,
						netDns: l("domainLookup").value,
						netTcp: l("connect").value,
						srv: l("response").start - b.start,
						dom: performance.timing.domInteractive -
							performance.timing.fetchStart,
						loadEvent: l("loadEvent").end - f.start
					};
					a = document.referrer;
					var p = a.match(/^(http[s]?:\/\/)?([^\/]+)(.*)/) || [],
						v = s;
					b = s;
					if("www.baidu.com" === p[2] || "m.baidu.com" === p[2]) v = g.f(a, "qid"), b = g.f(a, "click_t");
					a = v;
					f.qid = a != s ? a : "";
					b != s ? (f.bdDom = n ? n - b : 0, f.bdRun = k - b, f.bdDef = l("navigation").start - b) : (f.bdDom = 0, f.bdRun = 0, f.bdDef = 0);
					h.b.a.et = 87;
					h.b.a.ep = e.stringify(f);
					h.b.h()
				};
				b.c(window, "load", function() {
					setTimeout(p, 500)
				})
			}
		} catch(f) {}
	})();
	(function() {
		var a = mt.i,
			b = mt.lang,
			g = mt.event,
			e = mt.j;
		if("undefined" !== typeof h.b && (c.med || (!a.X || 7 < a.Ka) && c.cvcc)) {
			var k, l, n, p, f = function(a) {
					if(a.item) {
						for(var b = a.length, d = Array(b); b--;) d[b] = a[b];
						return d
					}
					return [].slice.call(a)
				},
				d = function(a, b) {
					for(var d in a)
						if(a.hasOwnProperty(d) && b.call(a, d, a[d]) === u) return u
				},
				w = function(a, d) {
					var f = {};
					f.n = k;
					f.t = "clk";
					f.v = a;
					if(d) {
						var g = d.getAttribute("href"),
							l = d.getAttribute("onclick") ? "" + d.getAttribute("onclick") : s,
							m = d.getAttribute("id") || "";
						n.test(g) ? (f.sn = "mediate",
							f.snv = g) : b.d(l, "String") && n.test(l) && (f.sn = "wrap", f.snv = l);
						f.id = m
					}
					h.b.a.et = 86;
					h.b.a.ep = e.stringify(f);
					h.b.h();
					for(f = +new Date; 400 >= +new Date - f;);
				};
			if(c.med) l = "/zoosnet", k = "swt", n = /swt|zixun|call|chat|zoos|business|talk|kefu|openkf|online|\/LR\/Chatpre\.aspx/i, p = {
				click: function() {
					for(var a = [], b = f(document.getElementsByTagName("a")), b = [].concat.apply(b, f(document.getElementsByTagName("area"))), b = [].concat.apply(b, f(document.getElementsByTagName("img"))), d, e, g = 0, k = b.length; g < k; g++) d = b[g], e = d.getAttribute("onclick"),
						d = d.getAttribute("href"), (n.test(e) || n.test(d)) && a.push(b[g]);
					return a
				}
			};
			else if(c.cvcc) {
				l = "/other-comm";
				k = "other";
				n = c.cvcc.q || q;
				var m = c.cvcc.id || q;
				p = {
					click: function() {
						for(var a = [], b = f(document.getElementsByTagName("a")), b = [].concat.apply(b, f(document.getElementsByTagName("area"))), b = [].concat.apply(b, f(document.getElementsByTagName("img"))), d, e, g, k = 0, l = b.length; k < l; k++) d = b[k], n !== q ? (e = d.getAttribute("onclick"), g = d.getAttribute("href"), m ? (d = d.getAttribute("id"), (n.test(e) || n.test(g) || m.test(d)) &&
							a.push(b[k])) : (n.test(e) || n.test(g)) && a.push(b[k])) : m !== q && (d = d.getAttribute("id"), m.test(d) && a.push(b[k]));
						return a
					}
				}
			}
			if("undefined" !== typeof p && "undefined" !== typeof n) {
				var t;
				l += /\/$/.test(l) ? "" : "/";
				var v = function(a, d) {
					if(t === d) return w(l + a, d), u;
					if(b.d(d, "Array") || b.d(d, "NodeList"))
						for(var e = 0, f = d.length; e < f; e++)
							if(t === d[e]) return w(l + a + "/" + (e + 1), d[e]), u
				};
				g.c(document, "mousedown", function(a) {
					a = a || window.event;
					t = a.target || a.srcElement;
					var e = {};
					for(d(p, function(a, d) {
							e[a] = b.d(d, "Function") ? d() : document.getElementById(d)
						}); t &&
						t !== document && d(e, v) !== u;) t = t.parentNode
				})
			}
		}
	})();
	(function() {
		var a = mt.o,
			b = mt.lang,
			g = mt.event,
			e = mt.j;
		if("undefined" !== typeof h.b && b.d(c.cvcf, "Array") && 0 < c.cvcf.length) {
			var k = {
				ea: function() {
					for(var b = c.cvcf.length, e, p = 0; p < b; p++)(e = a.va(decodeURIComponent(c.cvcf[p]))) && g.c(e, "click", k.ra())
				},
				ra: function() {
					return function() {
						h.b.a.et = 86;
						var a = {
							n: "form",
							t: "clk"
						};
						a.id = this.id;
						h.b.a.ep = e.stringify(a);
						h.b.h()
					}
				}
			};
			a.$(function() {
				k.ea()
			})
		}
	})();
	(function() {
		var a = mt.event,
			b = mt.j;
		if(c.med && "undefined" !== typeof h.b) {
			var g = +new Date,
				e = {
					n: "anti",
					sb: 0,
					kb: 0,
					clk: 0
				},
				k = function() {
					h.b.a.et = 86;
					h.b.a.ep = b.stringify(e);
					h.b.h()
				};
			a.c(document, "click", function() {
				e.clk++
			});
			a.c(document, "keyup", function() {
				e.kb = 1
			});
			a.c(window, "scroll", function() {
				e.sb++
			});
			a.c(window, "unload", function() {
				e.t = +new Date - g;
				k()
			});
			a.c(window, "load", function() {
				setTimeout(k, 5E3)
			})
		}
	})();
})();