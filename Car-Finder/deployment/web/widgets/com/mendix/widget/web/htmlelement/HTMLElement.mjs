import{useState as e,createElement as t,Fragment as n}from"react";
/*! @license DOMPurify 2.4.1 | (c) Cure53 and other contributors | Released under the Apache license 2.0 and Mozilla Public License 2.0 | github.com/cure53/DOMPurify/blob/2.4.1/LICENSE */function r(e){return r="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(e){return typeof e}:function(e){return e&&"function"==typeof Symbol&&e.constructor===Symbol&&e!==Symbol.prototype?"symbol":typeof e},r(e)}function o(e,t){return o=Object.setPrototypeOf||function(e,t){return e.__proto__=t,e},o(e,t)}function a(){if("undefined"==typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"==typeof Proxy)return!0;try{return Boolean.prototype.valueOf.call(Reflect.construct(Boolean,[],(function(){}))),!0}catch(e){return!1}}function i(e,t,n){return i=a()?Reflect.construct:function(e,t,n){var r=[null];r.push.apply(r,t);var a=new(Function.bind.apply(e,r));return n&&o(a,n.prototype),a},i.apply(null,arguments)}function l(e){return function(e){if(Array.isArray(e))return c(e)}(e)||function(e){if("undefined"!=typeof Symbol&&null!=e[Symbol.iterator]||null!=e["@@iterator"])return Array.from(e)}(e)||function(e,t){if(!e)return;if("string"==typeof e)return c(e,t);var n=Object.prototype.toString.call(e).slice(8,-1);"Object"===n&&e.constructor&&(n=e.constructor.name);if("Map"===n||"Set"===n)return Array.from(e);if("Arguments"===n||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(n))return c(e,t)}(e)||function(){throw new TypeError("Invalid attempt to spread non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function c(e,t){(null==t||t>e.length)&&(t=e.length);for(var n=0,r=new Array(t);n<t;n++)r[n]=e[n];return r}var u=Object.hasOwnProperty,s=Object.setPrototypeOf,m=Object.isFrozen,f=Object.getPrototypeOf,p=Object.getOwnPropertyDescriptor,d=Object.freeze,g=Object.seal,h=Object.create,y="undefined"!=typeof Reflect&&Reflect,v=y.apply,b=y.construct;v||(v=function(e,t,n){return e.apply(t,n)}),d||(d=function(e){return e}),g||(g=function(e){return e}),b||(b=function(e,t){return i(e,l(t))});var T,N=M(Array.prototype.forEach),E=M(Array.prototype.pop),A=M(Array.prototype.push),w=M(String.prototype.toLowerCase),S=M(String.prototype.toString),x=M(String.prototype.match),_=M(String.prototype.replace),k=M(String.prototype.indexOf),C=M(String.prototype.trim),L=M(RegExp.prototype.test),R=(T=TypeError,function(){for(var e=arguments.length,t=new Array(e),n=0;n<e;n++)t[n]=arguments[n];return b(T,t)});function M(e){return function(t){for(var n=arguments.length,r=new Array(n>1?n-1:0),o=1;o<n;o++)r[o-1]=arguments[o];return v(e,t,r)}}function O(e,t,n){n=n||w,s&&s(e,null);for(var r=t.length;r--;){var o=t[r];if("string"==typeof o){var a=n(o);a!==o&&(m(t)||(t[r]=a),o=a)}e[o]=!0}return e}function D(e){var t,n=h(null);for(t in e)v(u,e,[t])&&(n[t]=e[t]);return n}function I(e,t){for(;null!==e;){var n=p(e,t);if(n){if(n.get)return M(n.get);if("function"==typeof n.value)return M(n.value)}e=f(e)}return function(e){return console.warn("fallback value for",e),null}}var H=d(["a","abbr","acronym","address","area","article","aside","audio","b","bdi","bdo","big","blink","blockquote","body","br","button","canvas","caption","center","cite","code","col","colgroup","content","data","datalist","dd","decorator","del","details","dfn","dialog","dir","div","dl","dt","element","em","fieldset","figcaption","figure","font","footer","form","h1","h2","h3","h4","h5","h6","head","header","hgroup","hr","html","i","img","input","ins","kbd","label","legend","li","main","map","mark","marquee","menu","menuitem","meter","nav","nobr","ol","optgroup","option","output","p","picture","pre","progress","q","rp","rt","ruby","s","samp","section","select","shadow","small","source","spacer","span","strike","strong","style","sub","summary","sup","table","tbody","td","template","textarea","tfoot","th","thead","time","tr","track","tt","u","ul","var","video","wbr"]),F=d(["svg","a","altglyph","altglyphdef","altglyphitem","animatecolor","animatemotion","animatetransform","circle","clippath","defs","desc","ellipse","filter","font","g","glyph","glyphref","hkern","image","line","lineargradient","marker","mask","metadata","mpath","path","pattern","polygon","polyline","radialgradient","rect","stop","style","switch","symbol","text","textpath","title","tref","tspan","view","vkern"]),U=d(["feBlend","feColorMatrix","feComponentTransfer","feComposite","feConvolveMatrix","feDiffuseLighting","feDisplacementMap","feDistantLight","feFlood","feFuncA","feFuncB","feFuncG","feFuncR","feGaussianBlur","feImage","feMerge","feMergeNode","feMorphology","feOffset","fePointLight","feSpecularLighting","feSpotLight","feTile","feTurbulence"]),z=d(["animate","color-profile","cursor","discard","fedropshadow","font-face","font-face-format","font-face-name","font-face-src","font-face-uri","foreignobject","hatch","hatchpath","mesh","meshgradient","meshpatch","meshrow","missing-glyph","script","set","solidcolor","unknown","use"]),P=d(["math","menclose","merror","mfenced","mfrac","mglyph","mi","mlabeledtr","mmultiscripts","mn","mo","mover","mpadded","mphantom","mroot","mrow","ms","mspace","msqrt","mstyle","msub","msup","msubsup","mtable","mtd","mtext","mtr","munder","munderover"]),j=d(["maction","maligngroup","malignmark","mlongdiv","mscarries","mscarry","msgroup","mstack","msline","msrow","semantics","annotation","annotation-xml","mprescripts","none"]),B=d(["#text"]),W=d(["accept","action","align","alt","autocapitalize","autocomplete","autopictureinpicture","autoplay","background","bgcolor","border","capture","cellpadding","cellspacing","checked","cite","class","clear","color","cols","colspan","controls","controlslist","coords","crossorigin","datetime","decoding","default","dir","disabled","disablepictureinpicture","disableremoteplayback","download","draggable","enctype","enterkeyhint","face","for","headers","height","hidden","high","href","hreflang","id","inputmode","integrity","ismap","kind","label","lang","list","loading","loop","low","max","maxlength","media","method","min","minlength","multiple","muted","name","nonce","noshade","novalidate","nowrap","open","optimum","pattern","placeholder","playsinline","poster","preload","pubdate","radiogroup","readonly","rel","required","rev","reversed","role","rows","rowspan","spellcheck","scope","selected","shape","size","sizes","span","srclang","start","src","srcset","step","style","summary","tabindex","title","translate","type","usemap","valign","value","width","xmlns","slot"]),G=d(["accent-height","accumulate","additive","alignment-baseline","ascent","attributename","attributetype","azimuth","basefrequency","baseline-shift","begin","bias","by","class","clip","clippathunits","clip-path","clip-rule","color","color-interpolation","color-interpolation-filters","color-profile","color-rendering","cx","cy","d","dx","dy","diffuseconstant","direction","display","divisor","dur","edgemode","elevation","end","fill","fill-opacity","fill-rule","filter","filterunits","flood-color","flood-opacity","font-family","font-size","font-size-adjust","font-stretch","font-style","font-variant","font-weight","fx","fy","g1","g2","glyph-name","glyphref","gradientunits","gradienttransform","height","href","id","image-rendering","in","in2","k","k1","k2","k3","k4","kerning","keypoints","keysplines","keytimes","lang","lengthadjust","letter-spacing","kernelmatrix","kernelunitlength","lighting-color","local","marker-end","marker-mid","marker-start","markerheight","markerunits","markerwidth","maskcontentunits","maskunits","max","mask","media","method","mode","min","name","numoctaves","offset","operator","opacity","order","orient","orientation","origin","overflow","paint-order","path","pathlength","patterncontentunits","patterntransform","patternunits","points","preservealpha","preserveaspectratio","primitiveunits","r","rx","ry","radius","refx","refy","repeatcount","repeatdur","restart","result","rotate","scale","seed","shape-rendering","specularconstant","specularexponent","spreadmethod","startoffset","stddeviation","stitchtiles","stop-color","stop-opacity","stroke-dasharray","stroke-dashoffset","stroke-linecap","stroke-linejoin","stroke-miterlimit","stroke-opacity","stroke","stroke-width","style","surfacescale","systemlanguage","tabindex","targetx","targety","transform","transform-origin","text-anchor","text-decoration","text-rendering","textlength","type","u1","u2","unicode","values","viewbox","visibility","version","vert-adv-y","vert-origin-x","vert-origin-y","width","word-spacing","wrap","writing-mode","xchannelselector","ychannelselector","x","x1","x2","xmlns","y","y1","y2","z","zoomandpan"]),V=d(["accent","accentunder","align","bevelled","close","columnsalign","columnlines","columnspan","denomalign","depth","dir","display","displaystyle","encoding","fence","frame","height","href","id","largeop","length","linethickness","lspace","lquote","mathbackground","mathcolor","mathsize","mathvariant","maxsize","minsize","movablelimits","notation","numalign","open","rowalign","rowlines","rowspacing","rowspan","rspace","rquote","scriptlevel","scriptminsize","scriptsizemultiplier","selection","separator","separators","stretchy","subscriptshift","supscriptshift","symmetric","voffset","width","xmlns"]),q=d(["xlink:href","xml:id","xlink:title","xml:space","xmlns:xlink"]),Y=g(/\{\{[\w\W]*|[\w\W]*\}\}/gm),$=g(/<%[\w\W]*|[\w\W]*%>/gm),K=g(/\${[\w\W]*}/gm),X=g(/^data-[\-\w.\u00B7-\uFFFF]/),Z=g(/^aria-[\-\w]+$/),J=g(/^(?:(?:(?:f|ht)tps?|mailto|tel|callto|cid|xmpp):|[^a-z]|[a-z+.\-]+(?:[^a-z+.\-:]|$))/i),Q=g(/^(?:\w+script|data):/i),ee=g(/[\u0000-\u0020\u00A0\u1680\u180E\u2000-\u2029\u205F\u3000]/g),te=g(/^html$/i),ne=function(){return"undefined"==typeof window?null:window},re=function(e,t){if("object"!==r(e)||"function"!=typeof e.createPolicy)return null;var n=null,o="data-tt-policy-suffix";t.currentScript&&t.currentScript.hasAttribute(o)&&(n=t.currentScript.getAttribute(o));var a="dompurify"+(n?"#"+n:"");try{return e.createPolicy(a,{createHTML:function(e){return e},createScriptURL:function(e){return e}})}catch(e){return console.warn("TrustedTypes policy "+a+" could not be created."),null}};var oe=function e(){var t=arguments.length>0&&void 0!==arguments[0]?arguments[0]:ne(),n=function(t){return e(t)};if(n.version="2.4.1",n.removed=[],!t||!t.document||9!==t.document.nodeType)return n.isSupported=!1,n;var o=t.document,a=t.document,i=t.DocumentFragment,c=t.HTMLTemplateElement,u=t.Node,s=t.Element,m=t.NodeFilter,f=t.NamedNodeMap,p=void 0===f?t.NamedNodeMap||t.MozNamedAttrMap:f,g=t.HTMLFormElement,h=t.DOMParser,y=t.trustedTypes,v=s.prototype,b=I(v,"cloneNode"),T=I(v,"nextSibling"),M=I(v,"childNodes"),oe=I(v,"parentNode");if("function"==typeof c){var ae=a.createElement("template");ae.content&&ae.content.ownerDocument&&(a=ae.content.ownerDocument)}var ie=re(y,o),le=ie?ie.createHTML(""):"",ce=a,ue=ce.implementation,se=ce.createNodeIterator,me=ce.createDocumentFragment,fe=ce.getElementsByTagName,pe=o.importNode,de={};try{de=D(a).documentMode?a.documentMode:{}}catch(e){}var ge={};n.isSupported="function"==typeof oe&&ue&&void 0!==ue.createHTMLDocument&&9!==de;var he,ye,ve=Y,be=$,Te=K,Ne=X,Ee=Z,Ae=Q,we=ee,Se=J,xe=null,_e=O({},[].concat(l(H),l(F),l(U),l(P),l(B))),ke=null,Ce=O({},[].concat(l(W),l(G),l(V),l(q))),Le=Object.seal(Object.create(null,{tagNameCheck:{writable:!0,configurable:!1,enumerable:!0,value:null},attributeNameCheck:{writable:!0,configurable:!1,enumerable:!0,value:null},allowCustomizedBuiltInElements:{writable:!0,configurable:!1,enumerable:!0,value:!1}})),Re=null,Me=null,Oe=!0,De=!0,Ie=!1,He=!1,Fe=!1,Ue=!1,ze=!1,Pe=!1,je=!1,Be=!1,We=!0,Ge=!1,Ve="user-content-",qe=!0,Ye=!1,$e={},Ke=null,Xe=O({},["annotation-xml","audio","colgroup","desc","foreignobject","head","iframe","math","mi","mn","mo","ms","mtext","noembed","noframes","noscript","plaintext","script","style","svg","template","thead","title","video","xmp"]),Ze=null,Je=O({},["audio","video","img","source","image","track"]),Qe=null,et=O({},["alt","class","for","id","label","name","pattern","placeholder","role","summary","title","value","style","xmlns"]),tt="http://www.w3.org/1998/Math/MathML",nt="http://www.w3.org/2000/svg",rt="http://www.w3.org/1999/xhtml",ot=rt,at=!1,it=null,lt=O({},[tt,nt,rt],S),ct=["application/xhtml+xml","text/html"],ut="text/html",st=null,mt=a.createElement("form"),ft=function(e){return e instanceof RegExp||e instanceof Function},pt=function(e){st&&st===e||(e&&"object"===r(e)||(e={}),e=D(e),he=he=-1===ct.indexOf(e.PARSER_MEDIA_TYPE)?ut:e.PARSER_MEDIA_TYPE,ye="application/xhtml+xml"===he?S:w,xe="ALLOWED_TAGS"in e?O({},e.ALLOWED_TAGS,ye):_e,ke="ALLOWED_ATTR"in e?O({},e.ALLOWED_ATTR,ye):Ce,it="ALLOWED_NAMESPACES"in e?O({},e.ALLOWED_NAMESPACES,S):lt,Qe="ADD_URI_SAFE_ATTR"in e?O(D(et),e.ADD_URI_SAFE_ATTR,ye):et,Ze="ADD_DATA_URI_TAGS"in e?O(D(Je),e.ADD_DATA_URI_TAGS,ye):Je,Ke="FORBID_CONTENTS"in e?O({},e.FORBID_CONTENTS,ye):Xe,Re="FORBID_TAGS"in e?O({},e.FORBID_TAGS,ye):{},Me="FORBID_ATTR"in e?O({},e.FORBID_ATTR,ye):{},$e="USE_PROFILES"in e&&e.USE_PROFILES,Oe=!1!==e.ALLOW_ARIA_ATTR,De=!1!==e.ALLOW_DATA_ATTR,Ie=e.ALLOW_UNKNOWN_PROTOCOLS||!1,He=e.SAFE_FOR_TEMPLATES||!1,Fe=e.WHOLE_DOCUMENT||!1,Pe=e.RETURN_DOM||!1,je=e.RETURN_DOM_FRAGMENT||!1,Be=e.RETURN_TRUSTED_TYPE||!1,ze=e.FORCE_BODY||!1,We=!1!==e.SANITIZE_DOM,Ge=e.SANITIZE_NAMED_PROPS||!1,qe=!1!==e.KEEP_CONTENT,Ye=e.IN_PLACE||!1,Se=e.ALLOWED_URI_REGEXP||Se,ot=e.NAMESPACE||rt,e.CUSTOM_ELEMENT_HANDLING&&ft(e.CUSTOM_ELEMENT_HANDLING.tagNameCheck)&&(Le.tagNameCheck=e.CUSTOM_ELEMENT_HANDLING.tagNameCheck),e.CUSTOM_ELEMENT_HANDLING&&ft(e.CUSTOM_ELEMENT_HANDLING.attributeNameCheck)&&(Le.attributeNameCheck=e.CUSTOM_ELEMENT_HANDLING.attributeNameCheck),e.CUSTOM_ELEMENT_HANDLING&&"boolean"==typeof e.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements&&(Le.allowCustomizedBuiltInElements=e.CUSTOM_ELEMENT_HANDLING.allowCustomizedBuiltInElements),He&&(De=!1),je&&(Pe=!0),$e&&(xe=O({},l(B)),ke=[],!0===$e.html&&(O(xe,H),O(ke,W)),!0===$e.svg&&(O(xe,F),O(ke,G),O(ke,q)),!0===$e.svgFilters&&(O(xe,U),O(ke,G),O(ke,q)),!0===$e.mathMl&&(O(xe,P),O(ke,V),O(ke,q))),e.ADD_TAGS&&(xe===_e&&(xe=D(xe)),O(xe,e.ADD_TAGS,ye)),e.ADD_ATTR&&(ke===Ce&&(ke=D(ke)),O(ke,e.ADD_ATTR,ye)),e.ADD_URI_SAFE_ATTR&&O(Qe,e.ADD_URI_SAFE_ATTR,ye),e.FORBID_CONTENTS&&(Ke===Xe&&(Ke=D(Ke)),O(Ke,e.FORBID_CONTENTS,ye)),qe&&(xe["#text"]=!0),Fe&&O(xe,["html","head","body"]),xe.table&&(O(xe,["tbody"]),delete Re.tbody),d&&d(e),st=e)},dt=O({},["mi","mo","mn","ms","mtext"]),gt=O({},["foreignobject","desc","title","annotation-xml"]),ht=O({},["title","style","font","a","script"]),yt=O({},F);O(yt,U),O(yt,z);var vt=O({},P);O(vt,j);var bt=function(e){var t=oe(e);t&&t.tagName||(t={namespaceURI:ot,tagName:"template"});var n=w(e.tagName),r=w(t.tagName);return!!it[e.namespaceURI]&&(e.namespaceURI===nt?t.namespaceURI===rt?"svg"===n:t.namespaceURI===tt?"svg"===n&&("annotation-xml"===r||dt[r]):Boolean(yt[n]):e.namespaceURI===tt?t.namespaceURI===rt?"math"===n:t.namespaceURI===nt?"math"===n&&gt[r]:Boolean(vt[n]):e.namespaceURI===rt?!(t.namespaceURI===nt&&!gt[r])&&(!(t.namespaceURI===tt&&!dt[r])&&(!vt[n]&&(ht[n]||!yt[n]))):!("application/xhtml+xml"!==he||!it[e.namespaceURI]))},Tt=function(e){A(n.removed,{element:e});try{e.parentNode.removeChild(e)}catch(t){try{e.outerHTML=le}catch(t){e.remove()}}},Nt=function(e,t){try{A(n.removed,{attribute:t.getAttributeNode(e),from:t})}catch(e){A(n.removed,{attribute:null,from:t})}if(t.removeAttribute(e),"is"===e&&!ke[e])if(Pe||je)try{Tt(t)}catch(e){}else try{t.setAttribute(e,"")}catch(e){}},Et=function(e){var t,n;if(ze)e="<remove></remove>"+e;else{var r=x(e,/^[\r\n\t ]+/);n=r&&r[0]}"application/xhtml+xml"===he&&ot===rt&&(e='<html xmlns="http://www.w3.org/1999/xhtml"><head></head><body>'+e+"</body></html>");var o=ie?ie.createHTML(e):e;if(ot===rt)try{t=(new h).parseFromString(o,he)}catch(e){}if(!t||!t.documentElement){t=ue.createDocument(ot,"template",null);try{t.documentElement.innerHTML=at?"":o}catch(e){}}var i=t.body||t.documentElement;return e&&n&&i.insertBefore(a.createTextNode(n),i.childNodes[0]||null),ot===rt?fe.call(t,Fe?"html":"body")[0]:Fe?t.documentElement:i},At=function(e){return se.call(e.ownerDocument||e,e,m.SHOW_ELEMENT|m.SHOW_COMMENT|m.SHOW_TEXT,null,!1)},wt=function(e){return e instanceof g&&("string"!=typeof e.nodeName||"string"!=typeof e.textContent||"function"!=typeof e.removeChild||!(e.attributes instanceof p)||"function"!=typeof e.removeAttribute||"function"!=typeof e.setAttribute||"string"!=typeof e.namespaceURI||"function"!=typeof e.insertBefore||"function"!=typeof e.hasChildNodes)},St=function(e){return"object"===r(u)?e instanceof u:e&&"object"===r(e)&&"number"==typeof e.nodeType&&"string"==typeof e.nodeName},xt=function(e,t,r){ge[e]&&N(ge[e],(function(e){e.call(n,t,r,st)}))},_t=function(e){var t;if(xt("beforeSanitizeElements",e,null),wt(e))return Tt(e),!0;if(L(/[\u0080-\uFFFF]/,e.nodeName))return Tt(e),!0;var r=ye(e.nodeName);if(xt("uponSanitizeElement",e,{tagName:r,allowedTags:xe}),e.hasChildNodes()&&!St(e.firstElementChild)&&(!St(e.content)||!St(e.content.firstElementChild))&&L(/<[/\w]/g,e.innerHTML)&&L(/<[/\w]/g,e.textContent))return Tt(e),!0;if("select"===r&&L(/<template/i,e.innerHTML))return Tt(e),!0;if(!xe[r]||Re[r]){if(!Re[r]&&Ct(r)){if(Le.tagNameCheck instanceof RegExp&&L(Le.tagNameCheck,r))return!1;if(Le.tagNameCheck instanceof Function&&Le.tagNameCheck(r))return!1}if(qe&&!Ke[r]){var o=oe(e)||e.parentNode,a=M(e)||e.childNodes;if(a&&o)for(var i=a.length-1;i>=0;--i)o.insertBefore(b(a[i],!0),T(e))}return Tt(e),!0}return e instanceof s&&!bt(e)?(Tt(e),!0):"noscript"!==r&&"noembed"!==r||!L(/<\/no(script|embed)/i,e.innerHTML)?(He&&3===e.nodeType&&(t=e.textContent,t=_(t,ve," "),t=_(t,be," "),t=_(t,Te," "),e.textContent!==t&&(A(n.removed,{element:e.cloneNode()}),e.textContent=t)),xt("afterSanitizeElements",e,null),!1):(Tt(e),!0)},kt=function(e,t,n){if(We&&("id"===t||"name"===t)&&(n in a||n in mt))return!1;if(De&&!Me[t]&&L(Ne,t));else if(Oe&&L(Ee,t));else if(!ke[t]||Me[t]){if(!(Ct(e)&&(Le.tagNameCheck instanceof RegExp&&L(Le.tagNameCheck,e)||Le.tagNameCheck instanceof Function&&Le.tagNameCheck(e))&&(Le.attributeNameCheck instanceof RegExp&&L(Le.attributeNameCheck,t)||Le.attributeNameCheck instanceof Function&&Le.attributeNameCheck(t))||"is"===t&&Le.allowCustomizedBuiltInElements&&(Le.tagNameCheck instanceof RegExp&&L(Le.tagNameCheck,n)||Le.tagNameCheck instanceof Function&&Le.tagNameCheck(n))))return!1}else if(Qe[t]);else if(L(Se,_(n,we,"")));else if("src"!==t&&"xlink:href"!==t&&"href"!==t||"script"===e||0!==k(n,"data:")||!Ze[e]){if(Ie&&!L(Ae,_(n,we,"")));else if(n)return!1}else;return!0},Ct=function(e){return e.indexOf("-")>0},Lt=function(e){var t,o,a,i;xt("beforeSanitizeAttributes",e,null);var l=e.attributes;if(l){var c={attrName:"",attrValue:"",keepAttr:!0,allowedAttributes:ke};for(i=l.length;i--;){var u=t=l[i],s=u.name,m=u.namespaceURI;if(o="value"===s?t.value:C(t.value),a=ye(s),c.attrName=a,c.attrValue=o,c.keepAttr=!0,c.forceKeepAttr=void 0,xt("uponSanitizeAttribute",e,c),o=c.attrValue,!c.forceKeepAttr&&(Nt(s,e),c.keepAttr))if(L(/\/>/i,o))Nt(s,e);else{He&&(o=_(o,ve," "),o=_(o,be," "),o=_(o,Te," "));var f=ye(e.nodeName);if(kt(f,a,o)){if(!Ge||"id"!==a&&"name"!==a||(Nt(s,e),o=Ve+o),ie&&"object"===r(y)&&"function"==typeof y.getAttributeType)if(m);else switch(y.getAttributeType(f,a)){case"TrustedHTML":o=ie.createHTML(o);break;case"TrustedScriptURL":o=ie.createScriptURL(o)}try{m?e.setAttributeNS(m,s,o):e.setAttribute(s,o),E(n.removed)}catch(e){}}}}xt("afterSanitizeAttributes",e,null)}},Rt=function e(t){var n,r=At(t);for(xt("beforeSanitizeShadowDOM",t,null);n=r.nextNode();)xt("uponSanitizeShadowNode",n,null),_t(n)||(n.content instanceof i&&e(n.content),Lt(n));xt("afterSanitizeShadowDOM",t,null)};return n.sanitize=function(e){var a,l,c,s,m,f=arguments.length>1&&void 0!==arguments[1]?arguments[1]:{};if((at=!e)&&(e="\x3c!--\x3e"),"string"!=typeof e&&!St(e)){if("function"!=typeof e.toString)throw R("toString is not a function");if("string"!=typeof(e=e.toString()))throw R("dirty is not a string, aborting")}if(!n.isSupported){if("object"===r(t.toStaticHTML)||"function"==typeof t.toStaticHTML){if("string"==typeof e)return t.toStaticHTML(e);if(St(e))return t.toStaticHTML(e.outerHTML)}return e}if(Ue||pt(f),n.removed=[],"string"==typeof e&&(Ye=!1),Ye){if(e.nodeName){var p=ye(e.nodeName);if(!xe[p]||Re[p])throw R("root node is forbidden and cannot be sanitized in-place")}}else if(e instanceof u)1===(l=(a=Et("\x3c!----\x3e")).ownerDocument.importNode(e,!0)).nodeType&&"BODY"===l.nodeName||"HTML"===l.nodeName?a=l:a.appendChild(l);else{if(!Pe&&!He&&!Fe&&-1===e.indexOf("<"))return ie&&Be?ie.createHTML(e):e;if(!(a=Et(e)))return Pe?null:Be?le:""}a&&ze&&Tt(a.firstChild);for(var d=At(Ye?e:a);c=d.nextNode();)3===c.nodeType&&c===s||_t(c)||(c.content instanceof i&&Rt(c.content),Lt(c),s=c);if(s=null,Ye)return e;if(Pe){if(je)for(m=me.call(a.ownerDocument);a.firstChild;)m.appendChild(a.firstChild);else m=a;return ke.shadowroot&&(m=pe.call(o,m,!0)),m}var g=Fe?a.outerHTML:a.innerHTML;return Fe&&xe["!doctype"]&&a.ownerDocument&&a.ownerDocument.doctype&&a.ownerDocument.doctype.name&&L(te,a.ownerDocument.doctype.name)&&(g="<!DOCTYPE "+a.ownerDocument.doctype.name+">\n"+g),He&&(g=_(g,ve," "),g=_(g,be," "),g=_(g,Te," ")),ie&&Be?ie.createHTML(g):g},n.setConfig=function(e){pt(e),Ue=!0},n.clearConfig=function(){st=null,Ue=!1},n.isValidAttribute=function(e,t,n){st||pt({});var r=ye(e),o=ye(t);return kt(r,o,n)},n.addHook=function(e,t){"function"==typeof t&&(ge[e]=ge[e]||[],A(ge[e],t))},n.removeHook=function(e){if(ge[e])return E(ge[e])},n.removeHooks=function(e){ge[e]&&(ge[e]=[])},n.removeAllHooks=function(){ge={}},n}();const ae=/(?<prop>[^:]+):(?<value>.+)/s;function ie(e){if(e.startsWith("--"))return e;const t=e.replace(/(-.)/g,(e=>e[1].toUpperCase()));return e.startsWith("-ms")?t[0].toLowerCase()+t.slice(1):t}function le(e){return t=>[t.eventName,n=>{var r;t.eventPreventDefault&&n.preventDefault(),t.eventStopPropagation&&n.stopPropagation();const o=e?null===(r=t.eventActionRepeat)||void 0===r?void 0:r.get(e):t.eventAction;o&&o.canExecute&&o.execute()}]}function ce(e){return t=>{var n,r;const o=t.attributeName;let a;return a=e?null===(n="template"===t.attributeValueType?t.attributeValueTemplateRepeat:t.attributeValueExpressionRepeat)||void 0===n?void 0:n.get(e).value:null===(r="template"===t.attributeValueType?t.attributeValueTemplate:t.attributeValueExpression)||void 0===r?void 0:r.value,[o,null!=a?a:""]}}function ue(e,t,n,r){var o;const a=Object.fromEntries(t.map((t=>{const[n,r]=e(t);switch(n){case"style":return["style",(o=r,Object.fromEntries(o.split(";").filter((e=>e.length)).map((e=>{var t,n;const{prop:r="",value:o=""}=null!==(n=null===(t=ae.exec(e.trim()))||void 0===t?void 0:t.groups)&&void 0!==n?n:{};return[r.trim(),o.trim()]})).filter((e=>2===e.length&&e[0].length&&e[1].length)).map((e=>{let[t,n]=e;return[ie(t),n]}))))];case"class":return["className",r];default:return[n,r]}var o})));return a.style={...r,...a.style},a.className="widget-html-element ".concat(null!=n?n:""," ").concat(null!==(o=a.className)&&void 0!==o?o:"").trim(),a}function se(e,t){var n,r;if("innerHTML"===e.tagContentMode)return t?null===(r=e.tagContentRepeatHTML)||void 0===r?void 0:r.get(t).value:null===(n=e.tagContentHTML)||void 0===n?void 0:n.value}function me(){const e=oe(window);return t=>e.sanitize(t)}function fe(n){const r=function(){const[t]=e(me);return t}(),o=n.tagName,{unsafeHTML:a}=n;return void 0!==a?t(o,{...n.attributes,dangerouslySetInnerHTML:{__html:r(a)}}):t(o,{...n.attributes},n.children)}function pe(e){var r;const o=function(e,t){return"__customTag__"===e?t:e}(e.tagName,e.tagNameCustom),a=e.tagUseRepeat?null===(r=e.tagContentRepeatDataSource)||void 0===r?void 0:r.items:[void 0];return(null==a?void 0:a.length)?t(n,null,a.map((n=>{return t(fe,{key:null==n?void 0:n.id,tagName:o,attributes:{...ue(ce(n),e.attributes,e.class,e.style),...(r=le(n),a=e.events,Object.fromEntries(a.map((e=>r(e)))))},unsafeHTML:se(e,n)},function(e,t){var n;if("container"===e.tagContentMode)return t?null===(n=e.tagContentRepeatContainer)||void 0===n?void 0:n.get(t):e.tagContentContainer}(e,n));var r,a}))):null}export{pe as HTMLElement};