import{useState as e,createElement as t,Fragment as n}from"react";
/*! @license DOMPurify 2.4.7 | (c) Cure53 and other contributors | Released under the Apache license 2.0 and Mozilla Public License 2.0 | github.com/cure53/DOMPurify/blob/2.4.7/LICENSE */function r(e){return r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},r(e)}function o(e,t){return o=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e},o(e,t)}function a(e,t,n){return a=function(){if("undefined"==typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"==typeof Proxy)return!0;try{return Boolean.prototype.valueOf.call(Reflect.construct(Boolean,[],(function(){}))),!0}catch(e){return!1}}()?Reflect.construct:function(e,t,n){var r=[null];r.push.apply(r,t);var a=new(Function.bind.apply(e,r));return n&&o(a,n.prototype),a},a.apply(null,arguments)}function i(e){return function(e){if(Array.isArray(e))return l(e)}(e)||function(e){if("undefined"!=typeof Symbol&&null!=e[Symbol.iterator]||null!=e["@@iterator"])return Array.from(e)}(e)||function(e,t){if(!e)return;if("string"==typeof e)return l(e,t);var n=Object.prototype.toString.call(e).slice(8,-1);"Object"===n&&e.constructor&&(n=e.constructor.name);if("Map"===n||"Set"===n)return Array.from(e);if("Arguments"===n||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return l(e,t)}(e)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function l(e,t){(null==t||t>e.length)&&(t=e.length);for(var n=0,r=new Array(t);n<t;n++)r[n]=e[n];return r}var c=Object.hasOwnProperty,u=Object.setPrototypeOf,s=Object.isFrozen,m=Object.getPrototypeOf,f=Object.getOwnPropertyDescriptor,p=Object.freeze,d=Object.seal,g=Object.create,h="undefined"!=typeof Reflect&&Reflect,y=h.apply,v=h.construct;y||(y=function(e,t,n){return e.apply(t,n)}),p||(p=function(e){return e}),d||(d=function(e){return e}),v||(v=function(e,t){return a(e,i(t))});var b,T=M(Array.prototype.forEach),N=M(Array.prototype.pop),E=M(Array.prototype.push),A=M(String.prototype.toLowerCase),w=M(String.prototype.toString),_=M(String.prototype.match),S=M(String.prototype.replace),x=M(String.prototype.indexOf),C=M(String.prototype.trim),L=M(RegExp.prototype.test),R=(b=TypeError,function(){for(var e=arguments.length,t=new Array(e),n=0;n<e;n++)t[n]=arguments[n];return v(b,t)});function M(e){return function(t){for(var n=arguments.length,r=new Array(n>1?n-1:0),o=1;o<n;o++)r[o-1]=arguments[o];return y(e,t,r)}}function k(e,t,n){var r;n=null!==(r=n)&&void 0!==r?r:A,u&&u(e,null);for(var o=t.length;o--;){var a=t[o];if("string"==typeof a){var i=n(a);i!==a&&(s(t)||(t[o]=i),a=i)}e[a]=!0}return e}function O(e){var t,n=g(null);for(t in e)!0===y(c,e,[t])&&(n[t]=e[t]);return n}function D(e,t){for(;null!==e;){var n=f(e,t);if(n){if(n.get)return M(n.get);if("function"==typeof n.value)return M(n.value)}e=m(e)}return function(e){return console.warn("fallback value for",e),null}}var I=p(["a","abbr","acronym","address","area","article","aside","audio","b","bdi","bdo","big","blink","blockquote","body","br","button","canvas","caption","center","cite","code","col","colgroup","content","data","datalist","dd","decorator","del","details","dfn","dialog","dir","div","dl","dt","element","em","fieldset","figcaption","figure","font","footer","form","h1","h2","h3","h4","h5","h6","head","header","hgroup","hr","html","i","img","input","ins","kbd","label","legend","li","main","map","mark","marquee","menu","menuitem","meter","nav","nobr","ol","optgroup","option","output","p","picture","pre","progress","q","rp","rt","ruby","s","samp","section","select","shadow","small","source","spacer","span","strike","strong","style","sub","summary","sup","table","tbody","td","template","textarea","tfoot","th","thead","time","tr","track","tt","u","ul","var","video","wbr"]),F=p(["svg","a","altglyph","altglyphdef","altglyphitem","animatecolor","animatemotion","animatetransform","circle","clippath","defs","desc","ellipse","filter","font","g","glyph","glyphref","hkern","image","line","lineargradient","marker","mask","metadata","mpath","path","pattern","polygon","polyline","radialgradient","rect","stop","style","switch","symbol","text","textpath","title","tref","tspan","view","vkern"]),H=p(["feBlend","feColorMatrix","feComponentTransfer","feComposite","feConvolveMatrix","feDiffuseLighting","feDisplacementMap","feDistantLight","feFlood","feFuncA","feFuncB","feFuncG","feFuncR","feGaussianBlur","feImage","feMerge","feMergeNode","feMorphology","feOffset","fePointLight","feSpecularLighting","feSpotLight","feTile","feTurbulence"]),U=p(["animate","color-profile","cursor","discard","fedropshadow","font-face","font-face-format","font-face-name","font-face-src","font-face-uri","foreignobject","hatch","hatchpath","mesh","meshgradient","meshpatch","meshrow","missing-glyph","script","set","solidcolor","unknown","use"]),z=p(["math","menclose","merror","mfenced","mfrac","mglyph","mi","mlabeledtr","mmultiscripts","mn","mo","mover","mpadded","mphantom","mroot","mrow","ms","mspace","msqrt","mstyle","msub","msup","msubsup","mtable","mtd","mtext","mtr","munder","munderover"]),P=p(["maction","maligngroup","malignmark","mlongdiv","mscarries","mscarry","msgroup","mstack","msline","msrow","semantics","annotation","annotation-xml","mprescripts","none"]),j=p(["#text"]),B=p(["accept","action","align","alt","autocapitalize","autocomplete","autopictureinpicture","autoplay","background","bgcolor","border","capture","cellpadding","cellspacing","checked","cite","class","clear","color","cols","colspan","controls","controlslist","coords","crossorigin","datetime","decoding","default","dir","disabled","disablepictureinpicture","disableremoteplayback","download","draggable","enctype","enterkeyhint","face","for","headers","height","hidden","high","href","hreflang","id","inputmode","integrity","ismap","kind","label","lang","list","loading","loop","low","max","maxlength","media","method","min","minlength","multiple","muted","name","nonce","noshade","novalidate","nowrap","open","optimum","pattern","placeholder","playsinline","poster","preload","pubdate","radiogroup","readonly","rel","required","rev","reversed","role","rows","rowspan","spellcheck","scope","selected","shape","size","sizes","span","srclang","start","src","srcset","step","style","summary","tabindex","title","translate","type","usemap","valign","value","width","xmlns","slot"]),G=p(["accent-height","accumulate","additive","alignment-baseline","ascent","attributename","attributetype","azimuth","basefrequency","baseline-shift","begin","bias","by","class","clip","clippathunits","clip-path","clip-rule","color","color-interpolation","color-interpolation-filters","color-profile","color-rendering","cx","cy","d","dx","dy","diffuseconstant","direction","display","divisor","dur","edgemode","elevation","end","fill","fill-opacity","fill-rule","filter","filterunits","flood-color","flood-opacity","font-family","font-size","font-size-adjust","font-stretch","font-style","font-variant","font-weight","fx","fy","g1","g2","glyph-name","glyphref","gradientunits","gradienttransform","height","href","id","image-rendering","in","in2","k","k1","k2","k3","k4","kerning","keypoints","keysplines","keytimes","lang","lengthadjust","letter-spacing","kernelmatrix","kernelunitlength","lighting-color","local","marker-end","marker-mid","marker-start","markerheight","markerunits","markerwidth","maskcontentunits","maskunits","max","mask","media","method","mode","min","name","numoctaves","offset","operator","opacity","order","orient","orientation","origin","overflow","paint-order","path","pathlength","patterncontentunits","patterntransform","patternunits","points","preservealpha","preserveaspectratio","primitiveunits","r","rx","ry","radius","refx","refy","repeatcount","repeatdur","restart","result","rotate","scale","seed","shape-rendering","specularconstant","specularexponent","spreadmethod","startoffset","stddeviation","stitchtiles","stop-color","stop-opacity","stroke-dasharray","stroke-dashoffset","stroke-linecap","stroke-linejoin","stroke-miterlimit","stroke-opacity","stroke","stroke-width","style","surfacescale","systemlanguage","tabindex","targetx","targety","transform","transform-origin","text-anchor","text-decoration","text-rendering","textlength","type","u1","u2","unicode","values","viewbox","visibility","version","vert-adv-y","vert-origin-x","vert-origin-y","width","word-spacing","wrap","writing-mode","xchannelselector","ychannelselector","x","x1","x2","xmlns","y","y1","y2","z","zoomandpan"]),W=p(["accent","accentunder","align","bevelled","close","columnsalign","columnlines","columnspan","denomalign","depth","dir","display","displaystyle","encoding","fence","frame","height","href","id","largeop","length","linethickness","lspace","lquote","mathbackground","mathcolor","mathsize","mathvariant","maxsize","minsize","movablelimits","notation","numalign","open","rowalign","rowlines","rowspacing","rowspan","rspace","rquote","scriptlevel","scriptminsize","scriptsizemultiplier","selection","separator","separators","stretchy","subscriptshift","supscriptshift","symmetric","voffset","width","xmlns"]),V=p(["xlink:href","xml:id","xlink:title","xml:space","xmlns:xlink"]),q=d(/\{\{[\w\W]*|[\w\W]*\}\}/gm),Y=d(/<%[\w\W]*|[\w\W]*%>/gm),$=d(/\${[\w\W]*}/gm),K=d(/^data-[\-\w.\u00B7-\uFFFF]/),X=d(/^aria-[\-\w]+$/),Z=d(/^(?:(?:(?:f|ht)tps?|mailto|tel|callto|cid|xmpp):|[^a-z]|[a-z+.\-]+(?:[^a-z+.\-:]|$))/i),J=d(/^(?:\w+script|data):/i),Q=d(/[\u0000-\u0020\u00A0\u1680\u180E\u2000-\u2029\u205F\u3000]/g),ee=d(/^html$/i),te=function(){return"undefined"==typeof window?null:window};var ne=function e(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:te(),n=function(t){return e(t)};if(n.version="2.4.7",n.removed=[],!t||!t.document||9!==t.document.nodeType)return n.isSupported=!1,n;var o=t.document,a=t.document,l=t.DocumentFragment,c=t.HTMLTemplateElement,u=t.Node,s=t.Element,m=t.NodeFilter,f=t.NamedNodeMap,d=void 0===f?t.NamedNodeMap||t.MozNamedAttrMap:f,g=t.HTMLFormElement,h=t.DOMParser,y=t.trustedTypes,v=s.prototype,b=D(v,"cloneNode"),M=D(v,"nextSibling"),ne=D(v,"childNodes"),re=D(v,"parentNode");if("function"==typeof c){var oe=a.createElement("template");oe.content&&oe.content.ownerDocument&&(a=oe.content.ownerDocument)}var ae=function(e,t){if("object"!==r(e)||"function"!=typeof e.createPolicy)return null;var n=null,o="data-tt-policy-suffix";t.currentScript&&t.currentScript.hasAttribute(o)&&(n=t.currentScript.getAttribute(o));var a="dompurify"+(n?"#"+n:"");try{return e.createPolicy(a,{createHTML:function(e){return e},createScriptURL:function(e){return e}})}catch(e){return console.warn("TrustedTypes policy "+a+" could not be created."),null}}(y,o),ie=ae?ae.createHTML(""):"",le=a,ce=le.implementation,ue=le.createNodeIterator,se=le.createDocumentFragment,me=le.getElementsByTagName,fe=o.importNode,pe={};try{pe=O(a).documentMode?a.documentMode:{}}catch(e){}var de={};n.isSupported="function"==typeof re&&ce&&void 0!==ce.createHTMLDocument&&9!==pe;var ge,he,ye=q,ve=Y,be=$,Te=K,Ne=X,Ee=J,Ae=Q,we=Z,_e=null,Se=k({},[].concat(i(I),i(F),i(H),i(z),i(j))),xe=null,Ce=k({},[].concat(i(B),i(G),i(W),i(V))),Le=Object.seal(Object.create(null,{tagNameCheck:{writable:!0,configurable:!1,enumerable:!0,value:null},attributeNameCheck:{writable:!0,configurable:!1,enumerable:!0,value:null},allowCustomizedBuiltInElements:{writable:!0,configurable:!1,enumerable:!0,value:!1}})),Re=null,Me=null,ke=!0,Oe=!0,De=!1,Ie=!0,Fe=!1,He=!1,Ue=!1,ze=!1,Pe=!1,je=!1,Be=!1,Ge=!0,We=!1,Ve=!0,qe=!1,Ye={},$e=null,Ke=k({},["annotation-xml","audio","colgroup","desc","foreignobject","head","iframe","math","mi","mn","mo","ms","mtext","noembed","noframes","noscript","plaintext","script","style","svg","template","thead","title","video","xmp"]),Xe=null,Ze=k({},["audio","video","img","source","image","track"]),Je=null,Qe=k({},["alt","class","for","id","label","name","pattern","placeholder","role","summary","title","value","style","xmlns"]),et="http://www.w3.org/1998/Math/MathML",tt="http://www.w3.org/2000/svg",nt="http://www.w3.org/1999/xhtml",rt=nt,ot=!1,at=null,it=k({},[et,tt,nt],w),lt=["application/xhtml+xml","text/html"],ct=null,ut=a.createElement("form"),st=function(e){return e instanceof RegExp||e instanceof Function},mt=function(e){ct&&ct===e||(e&&"object"===r(e)||(e={}),e=O(e),ge=ge=-1===lt.indexOf(e.PARSER_MEDIA_TYPE)?"text/html":e.PARSER_MEDIA_TYPE,he="application/xhtml+xml"===ge?w:A,_e="ALLOWED_TAGS"in e?k({},e.ALLOWED_TAGS,he):Se,xe="ALLOWED_ATTR"in e?k({},e.ALLOWED_ATTR,he):Ce,at="ALLOWED_NAMESPACES"in e?k({},e.ALLOWED_NAMESPACES,w):it,Je="ADD_URI_SAFE_ATTR"in e?k(O(Qe),e.ADD_URI_SAFE_ATTR,he):Qe,Xe="ADD_DATA_URI_TAGS"in e?k(O(Ze),e.ADD_DATA_URI_TAGS,he):Ze,$e="FORBID_CONTENTS"in e?k({},e.FORBID_CONTENTS,he):Ke,Re="FORBID_TAGS"in e?k({},e.FORBID_TAGS,he):{},Me="FORBID_ATTR"in e?k({},e.FORBID_ATTR,he):{},Ye="USE_PROFILES"in e&&e.USE_PROFILES,ke=!1!==e.ALLOW_ARIA_ATTR,Oe=!1!==e.ALLOW_DATA_ATTR,De=e.ALLOW_UNKNOWN_PROTOCOLS||!1,Ie=!1!==e.ALLOW_SELF_CLOSE_IN_ATTR,Fe=e.SAFE_FOR_TEMPLATES||!1,He=e.WHOLE_DOCUMENT||!1,Pe=e.RETURN_DOM||!1,je=e.RETURN_DOM_FRAGMENT||!1,Be=e.RETURN_TRUSTED_TYPE||!1,ze=e.FORCE_BODY||!1,Ge=!1!==e.SANITIZE_DOM,We=e.SANITIZE_NAMED_PROPS||!1,Ve=!1!==e.KEEP_CONTENT,qe=e.IN_PLACE||!1,we=e.ALLOWED_URI_REGEXP||we,rt=e.NAMESPACE||nt,Le=e.CUSTOM_ELEMENT_HANDLING||{},e.CUSTOM_ELEMENT_HANDLING&&st(e.CUSTOM_ELEMENT_HANDLING.tagNameCheck)&&(Le.tagNameCheck=e.CUSTOM_ELEMENT_HANDLING.tagNameCheck),e.CUSTOM_ELEMENT_HANDLING&&st(e.CUSTOM_ELEMENT_HANDLING.attributeNameCheck)&&(Le.attributeNameCheck=e.CUSTOM_ELEMENT_HANDLING.attributeNameCheck),e.CUSTOM_ELEMENT_HANDLING&&"boolean"==typeof e.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements&&(Le.allowCustomizedBuiltInElements=e.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements),Fe&&(Oe=!1),je&&(Pe=!0),Ye&&(_e=k({},i(j)),xe=[],!0===Ye.html&&(k(_e,I),k(xe,B)),!0===Ye.svg&&(k(_e,F),k(xe,G),k(xe,V)),!0===Ye.svgFilters&&(k(_e,H),k(xe,G),k(xe,V)),!0===Ye.mathMl&&(k(_e,z),k(xe,W),k(xe,V))),e.ADD_TAGS&&(_e===Se&&(_e=O(_e)),k(_e,e.ADD_TAGS,he)),e.ADD_ATTR&&(xe===Ce&&(xe=O(xe)),k(xe,e.ADD_ATTR,he)),e.ADD_URI_SAFE_ATTR&&k(Je,e.ADD_URI_SAFE_ATTR,he),e.FORBID_CONTENTS&&($e===Ke&&($e=O($e)),k($e,e.FORBID_CONTENTS,he)),Ve&&(_e["#text"]=!0),He&&k(_e,["html","head","body"]),_e.table&&(k(_e,["tbody"]),delete Re.tbody),p&&p(e),ct=e)},ft=k({},["mi","mo","mn","ms","mtext"]),pt=k({},["foreignobject","desc","title","annotation-xml"]),dt=k({},["title","style","font","a","script"]),gt=k({},F);k(gt,H),k(gt,U);var ht=k({},z);k(ht,P);var yt=function(e){E(n.removed,{element:e});try{e.parentNode.removeChild(e)}catch(t){try{e.outerHTML=ie}catch(t){e.remove()}}},vt=function(e,t){try{E(n.removed,{attribute:t.getAttributeNode(e),from:t})}catch(e){E(n.removed,{attribute:null,from:t})}if(t.removeAttribute(e),"is"===e&&!xe[e])if(Pe||je)try{yt(t)}catch(e){}else try{t.setAttribute(e,"")}catch(e){}},bt=function(e){var t,n;if(ze)e="<remove></remove>"+e;else{var r=_(e,/^[\r\n\t ]+/);n=r&&r[0]}"application/xhtml+xml"===ge&&rt===nt&&(e='<html xmlns="http://www.w3.org/1999/xhtml"><head></head><body>'+e+"</body></html>");var o=ae?ae.createHTML(e):e;if(rt===nt)try{t=(new h).parseFromString(o,ge)}catch(e){}if(!t||!t.documentElement){t=ce.createDocument(rt,"template",null);try{t.documentElement.innerHTML=ot?ie:o}catch(e){}}var i=t.body||t.documentElement;return e&&n&&i.insertBefore(a.createTextNode(n),i.childNodes[0]||null),rt===nt?me.call(t,He?"html":"body")[0]:He?t.documentElement:i},Tt=function(e){return ue.call(e.ownerDocument||e,e,m.SHOW_ELEMENT|m.SHOW_COMMENT|m.SHOW_TEXT,null,!1)},Nt=function(e){return"object"===r(u)?e instanceof u:e&&"object"===r(e)&&"number"==typeof e.nodeType&&"string"==typeof e.nodeName},Et=function(e,t,r){de[e]&&T(de[e],(function(e){e.call(n,t,r,ct)}))},At=function(e){var t,r;if(Et("beforeSanitizeElements",e,null),(r=e)instanceof g&&("string"!=typeof r.nodeName||"string"!=typeof r.textContent||"function"!=typeof r.removeChild||!(r.attributes instanceof d)||"function"!=typeof r.removeAttribute||"function"!=typeof r.setAttribute||"string"!=typeof r.namespaceURI||"function"!=typeof r.insertBefore||"function"!=typeof r.hasChildNodes))return yt(e),!0;if(L(/[\u0080-\uFFFF]/,e.nodeName))return yt(e),!0;var o=he(e.nodeName);if(Et("uponSanitizeElement",e,{tagName:o,allowedTags:_e}),e.hasChildNodes()&&!Nt(e.firstElementChild)&&(!Nt(e.content)||!Nt(e.content.firstElementChild))&&L(/<[/\w]/g,e.innerHTML)&&L(/<[/\w]/g,e.textContent))return yt(e),!0;if("select"===o&&L(/<template/i,e.innerHTML))return yt(e),!0;if(!_e[o]||Re[o]){if(!Re[o]&&_t(o)){if(Le.tagNameCheck instanceof RegExp&&L(Le.tagNameCheck,o))return!1;if(Le.tagNameCheck instanceof Function&&Le.tagNameCheck(o))return!1}if(Ve&&!$e[o]){var a=re(e)||e.parentNode,i=ne(e)||e.childNodes;if(i&&a)for(var l=i.length-1;l>=0;--l)a.insertBefore(b(i[l],!0),M(e))}return yt(e),!0}return e instanceof s&&!function(e){var t=re(e);t&&t.tagName||(t={namespaceURI:rt,tagName:"template"});var n=A(e.tagName),r=A(t.tagName);return!!at[e.namespaceURI]&&(e.namespaceURI===tt?t.namespaceURI===nt?"svg"===n:t.namespaceURI===et?"svg"===n&&("annotation-xml"===r||ft[r]):Boolean(gt[n]):e.namespaceURI===et?t.namespaceURI===nt?"math"===n:t.namespaceURI===tt?"math"===n&&pt[r]:Boolean(ht[n]):e.namespaceURI===nt?!(t.namespaceURI===tt&&!pt[r])&&!(t.namespaceURI===et&&!ft[r])&&!ht[n]&&(dt[n]||!gt[n]):!("application/xhtml+xml"!==ge||!at[e.namespaceURI]))}(e)?(yt(e),!0):"noscript"!==o&&"noembed"!==o&&"noframes"!==o||!L(/<\/no(script|embed|frames)/i,e.innerHTML)?(Fe&&3===e.nodeType&&(t=e.textContent,t=S(t,ye," "),t=S(t,ve," "),t=S(t,be," "),e.textContent!==t&&(E(n.removed,{element:e.cloneNode()}),e.textContent=t)),Et("afterSanitizeElements",e,null),!1):(yt(e),!0)},wt=function(e,t,n){if(Ge&&("id"===t||"name"===t)&&(n in a||n in ut))return!1;if(Oe&&!Me[t]&&L(Te,t));else if(ke&&L(Ne,t));else if(!xe[t]||Me[t]){if(!(_t(e)&&(Le.tagNameCheck instanceof RegExp&&L(Le.tagNameCheck,e)||Le.tagNameCheck instanceof Function&&Le.tagNameCheck(e))&&(Le.attributeNameCheck instanceof RegExp&&L(Le.attributeNameCheck,t)||Le.attributeNameCheck instanceof Function&&Le.attributeNameCheck(t))||"is"===t&&Le.allowCustomizedBuiltInElements&&(Le.tagNameCheck instanceof RegExp&&L(Le.tagNameCheck,n)||Le.tagNameCheck instanceof Function&&Le.tagNameCheck(n))))return!1}else if(Je[t]);else if(L(we,S(n,Ae,"")));else if("src"!==t&&"xlink:href"!==t&&"href"!==t||"script"===e||0!==x(n,"data:")||!Xe[e]){if(De&&!L(Ee,S(n,Ae,"")));else if(n)return!1}else;return!0},_t=function(e){return e.indexOf("-")>0},St=function(e){var t,o,a,i;Et("beforeSanitizeAttributes",e,null);var l=e.attributes;if(l){var c={attrName:"",attrValue:"",keepAttr:!0,allowedAttributes:xe};for(i=l.length;i--;){var u=t=l[i],s=u.name,m=u.namespaceURI;if(o="value"===s?t.value:C(t.value),a=he(s),c.attrName=a,c.attrValue=o,c.keepAttr=!0,c.forceKeepAttr=void 0,Et("uponSanitizeAttribute",e,c),o=c.attrValue,!c.forceKeepAttr&&(vt(s,e),c.keepAttr))if(Ie||!L(/\/>/i,o)){Fe&&(o=S(o,ye," "),o=S(o,ve," "),o=S(o,be," "));var f=he(e.nodeName);if(wt(f,a,o)){if(!We||"id"!==a&&"name"!==a||(vt(s,e),o="user-content-"+o),ae&&"object"===r(y)&&"function"==typeof y.getAttributeType)if(m);else switch(y.getAttributeType(f,a)){case"TrustedHTML":o=ae.createHTML(o);break;case"TrustedScriptURL":o=ae.createScriptURL(o)}try{m?e.setAttributeNS(m,s,o):e.setAttribute(s,o),N(n.removed)}catch(e){}}}else vt(s,e)}Et("afterSanitizeAttributes",e,null)}},xt=function e(t){var n,r=Tt(t);for(Et("beforeSanitizeShadowDOM",t,null);n=r.nextNode();)Et("uponSanitizeShadowNode",n,null),At(n)||(n.content instanceof l&&e(n.content),St(n));Et("afterSanitizeShadowDOM",t,null)};return n.sanitize=function(e){var a,i,c,s,m,f=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};if((ot=!e)&&(e="\x3c!--\x3e"),"string"!=typeof e&&!Nt(e)){if("function"!=typeof e.toString)throw R("toString is not a function");if("string"!=typeof(e=e.toString()))throw R("dirty is not a string, aborting")}if(!n.isSupported){if("object"===r(t.toStaticHTML)||"function"==typeof t.toStaticHTML){if("string"==typeof e)return t.toStaticHTML(e);if(Nt(e))return t.toStaticHTML(e.outerHTML)}return e}if(Ue||mt(f),n.removed=[],"string"==typeof e&&(qe=!1),qe){if(e.nodeName){var p=he(e.nodeName);if(!_e[p]||Re[p])throw R("root node is forbidden and cannot be sanitized in-place")}}else if(e instanceof u)1===(i=(a=bt("\x3c!----\x3e")).ownerDocument.importNode(e,!0)).nodeType&&"BODY"===i.nodeName||"HTML"===i.nodeName?a=i:a.appendChild(i);else{if(!Pe&&!Fe&&!He&&-1===e.indexOf("<"))return ae&&Be?ae.createHTML(e):e;if(!(a=bt(e)))return Pe?null:Be?ie:""}a&&ze&&yt(a.firstChild);for(var d=Tt(qe?e:a);c=d.nextNode();)3===c.nodeType&&c===s||At(c)||(c.content instanceof l&&xt(c.content),St(c),s=c);if(s=null,qe)return e;if(Pe){if(je)for(m=se.call(a.ownerDocument);a.firstChild;)m.appendChild(a.firstChild);else m=a;return(xe.shadowroot||xe.shadowrootmod)&&(m=fe.call(o,m,!0)),m}var g=He?a.outerHTML:a.innerHTML;return He&&_e["!doctype"]&&a.ownerDocument&&a.ownerDocument.doctype&&a.ownerDocument.doctype.name&&L(ee,a.ownerDocument.doctype.name)&&(g="<!DOCTYPE "+a.ownerDocument.doctype.name+">\n"+g),Fe&&(g=S(g,ye," "),g=S(g,ve," "),g=S(g,be," ")),ae&&Be?ae.createHTML(g):g},n.setConfig=function(e){mt(e),Ue=!0},n.clearConfig=function(){ct=null,Ue=!1},n.isValidAttribute=function(e,t,n){ct||mt({});var r=he(e),o=he(t);return wt(r,o,n)},n.addHook=function(e,t){"function"==typeof t&&(de[e]=de[e]||[],E(de[e],t))},n.removeHook=function(e){if(de[e])return N(de[e])},n.removeHooks=function(e){de[e]&&(de[e]=[])},n.removeAllHooks=function(){de={}},n}();const re=/(?<prop>[^:]+):(?<value>.+)/s;function oe(e){if(e.startsWith("--"))return e;const t=e.replace(/(-.)/g,(e=>e[1].toUpperCase()));return e.startsWith("-ms")?t[0].toLowerCase()+t.slice(1):t}function ae(e){return t=>[t.eventName,n=>{var r;t.eventPreventDefault&&n.preventDefault(),t.eventStopPropagation&&n.stopPropagation();const o=e?null===(r=t.eventActionRepeat)||void 0===r?void 0:r.get(e):t.eventAction;o&&o.canExecute&&o.execute()}]}function ie(e){return t=>{var n,r;const o=t.attributeName;let a;return a=e?null===(n="template"===t.attributeValueType?t.attributeValueTemplateRepeat:t.attributeValueExpressionRepeat)||void 0===n?void 0:n.get(e).value:null===(r="template"===t.attributeValueType?t.attributeValueTemplate:t.attributeValueExpression)||void 0===r?void 0:r.value,[o,null!=a?a:""]}}function le(e,t,n,r){var o;const a=Object.fromEntries(t.map((t=>{const[n,r]=e(t);switch(n){case"style":return["style",(o=r,Object.fromEntries(o.split(";").filter((e=>e.length)).map((e=>{var t,n;const{prop:r="",value:o=""}=null!==(n=null===(t=re.exec(e.trim()))||void 0===t?void 0:t.groups)&&void 0!==n?n:{};return[r.trim(),o.trim()]})).filter((e=>2===e.length&&e[0].length&&e[1].length)).map((e=>{let[t,n]=e;return[oe(t),n]}))))];case"class":return["className",r];default:return[n,r]}var o})));return a.style={...r,...a.style},a.className="widget-html-element ".concat(null!=n?n:""," ").concat(null!==(o=a.className)&&void 0!==o?o:"").trim(),a}function ce(e,t){var n,r;if("innerHTML"===e.tagContentMode)return t?null===(r=e.tagContentRepeatHTML)||void 0===r?void 0:r.get(t).value:null===(n=e.tagContentHTML)||void 0===n?void 0:n.value}function ue(e){const t=function(e){try{return e?JSON.parse(e):{}}catch(e){throw console.error(e),new Error('Can not parse "Configuration for HTML sanitization" value. Please check your widget configuration.')}}(e),n=ne(window);return e=>n.sanitize(e,{...t,RETURN_DOM_FRAGMENT:!1,RETURN_DOM:!1})}function se(n){const r=function(t){const[n]=e((()=>ue(t)));return n}(n.sanitizationConfig),o=n.tagName,{unsafeHTML:a}=n;return void 0!==a?t(o,{...n.attributes,dangerouslySetInnerHTML:{__html:r(a)}}):t(o,{...n.attributes},n.children)}function me(e){var r;const o=function(e,t){return"__customTag__"===e?t:e}(e.tagName,e.tagNameCustom),a=e.tagUseRepeat?null===(r=e.tagContentRepeatDataSource)||void 0===r?void 0:r.items:[void 0];return(null==a?void 0:a.length)?t(n,null,a.map((n=>{return t(se,{key:null==n?void 0:n.id,tagName:o,attributes:{...le(ie(n),e.attributes,e.class,e.style),...(r=ae(n),a=e.events,Object.fromEntries(a.map((e=>r(e)))))},unsafeHTML:ce(e,n),sanitizationConfig:e.sanitizationConfigFull},function(e,t){var n;if("container"===e.tagContentMode)return t?null===(n=e.tagContentRepeatContainer)||void 0===n?void 0:n.get(t):e.tagContentContainer}(e,n));var r,a}))):null}export{me as HTMLElement};