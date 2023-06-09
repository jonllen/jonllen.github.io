/*
** Author : Jonllen
** Create : 2013-08-29
** WebSite: http://www.jonllen.com/
*/

var ImgLazy = function  (selector){
    
    var settings = (!!selector && Object.prototype.toString.call(selector)=='[object Object]') ? selector : { 'selector' : selector};
    for(p in this.settings) {
        if ( !settings.hasOwnProperty(p) ) settings[p] = this.settings[p];
    }
    this.settings = settings;
    this.init();
    return this;
}


ImgLazy.prototype = {
    settings : {
        'selector' : null,
        'rawSrcAttribute' : 'rawsrc',
        'loadCompleteAttribute' : 'loadcomplete',
        'loadSrc' : '/style/default/images/lazyloading.gif',
        'images' : new Array(),
        'maxWidth' : '',
        tickTime : 1000
    },
    init : function (){
        var container = this.settings.selector ? document.getElementById(this.settings.selector) : document;
        var images = container.getElementsByTagName('img');
        for(var i=0;i<images.length;i++) {
            var imgElem = images[i];
            var imgComplete = !!imgElem.src && (this.browser.msie ? imgElem.readyState == 'complete' : imgElem.complete == true);
            if (imgComplete){
                if(this.settings.maxWidth != '') {
                    var rawWidth = this.objProperty(imgElem,"Width");
                    
                    var maxWidth = this.settings.maxWidth;
                    if(this.settings.maxWidth == 'auto') {
                        var imgParentElem = imgElem.parentNode;
                        maxWidth = imgParentElem.offsetWidth;
                        while (imgParentElem.tagName == 'A') {
                            imgParentElem = imgParentElem.parentNode;
                        }
                        maxWidth= Math.max(maxWidth, imgParentElem.offsetWidth);
                    }
                    
                    if (rawWidth > maxWidth) {
                        var rawHeight = this.objProperty(imgElem,"Height");
                        imgElem.style.width = maxWidth + 'px';
                        imgElem.style.height = Math.ceil( (maxWidth/rawWidth*1.00)*rawHeight) + 'px';
                    }
                }
                continue;
            }
            
            var src = imgElem.getAttribute(this.settings.rawSrcAttribute) || imgElem.src;
            imgElem.setAttribute(this.settings.rawSrcAttribute, src);
            imgElem.removeAttribute('src');
            
            if (this.settings.loadSrc) imgElem.src = this.settings.loadSrc;
            
            this.settings.images.push(imgElem);
        }
        if (images.length > 0) {
            var _this = this;
            var scroll = function (){
                _this.onScroll.call(_this);
            }
            window.onscroll = window.onresize = scroll;
            scroll();
            
            this.settings.timerTick = setInterval(
                function (){
                    _this.onScroll.call(_this);
                    if (_this.hasAllComplete()) {
                        clearInterval(_this.settings.timerTick);
                    }
                },this.settings.tickTime
            );
        }
        return images.length;
    },
    onScroll : function (){
        var winHeight = this.objProperty(window,"Height");
        var winWidth = this.objProperty(window,"Width");
        var scrollHeight = this.scrollTop();
        var scrollWidth = this.scrollLeft();
        for(var i=0;i<this.settings.images.length;i++) {
            var imgElem = this.settings.images[i];
            var loadcomplete = imgElem.getAttribute(this.settings.loadCompleteAttribute) == this.settings.loadCompleteAttribute;
            if (loadcomplete) continue;
            var imgPosition = this.getPosition(imgElem);
            if (imgPosition.x + this.objProperty(imgElem,"Width") >= scrollWidth && imgPosition.x <= scrollWidth + winWidth && imgPosition.y + this.objProperty(imgElem,"Height") >= scrollHeight && imgPosition.y <= scrollHeight + winHeight) {
                this.load(imgElem);
            }
        }
    },
    load : function (imgElem){
    
        if(this.settings.maxWidth == '') {
            imgElem.src=imgElem.getAttribute(this.settings.rawSrcAttribute);
            imgElem.setAttribute(this.settings.loadCompleteAttribute, this.settings.loadCompleteAttribute);
            return;
        }
        
        var maxWidth = this.settings.maxWidth;
        if(this.settings.maxWidth == 'auto') {
            var imgParentElem = imgElem.parentNode;
            maxWidth = imgParentElem.offsetWidth;
            while (imgParentElem.tagName == 'A') {
                imgParentElem = imgParentElem.parentNode;
            }
            maxWidth= Math.max(maxWidth, imgParentElem.offsetWidth);
        }
        
        var _this = this;
        var src = imgElem.getAttribute(_this.settings.rawSrcAttribute);
        
        function loadImgComplete(src,rawWidth,rawHeight){
            if (rawWidth > maxWidth) {
                imgElem.style.width = maxWidth + 'px';
                imgElem.style.height = Math.ceil( (maxWidth/rawWidth*1.00)*rawHeight) + 'px';
            }
            imgElem.src=src;
            imgElem.setAttribute(_this.settings.loadCompleteAttribute, _this.settings.loadCompleteAttribute);
        }
        
        this.loadImg(src, loadImgComplete);
    },
    loadImg : function(src,callback,parms,width,height)
    {
        var imgElem = new Image();
        imgElem.style.display = "none";
        imgElem.onload = function (){
            var loadWidth = parseFloat(imgElem.width), loadHeight = parseFloat(imgElem.height);
            var zoomWidth = loadWidth, zoomHeight = loadHeight;
            if(width && height && (loadWidth>width || loadHeight>height) )
            {
                if(Math.abs( width-loadWidth) <  Math.abs( height-loadHeight) )
                {
                    //宽度不变，等比缩放高度。
                    zoomWidth = width;
                    zoomHeight = (width*loadHeight)/loadWidth;
                    //高度大于需要高度，继续宽度缩放
                    if (zoomHeight > height)
                    {
                        zoomWidth = width*height/zoomHeight;
                        zoomHeight =  height;
                    }
                }else
                {
                    zoomHeight = height;
                    zoomWidth = (height*loadWidth)/loadHeight;
                    if (zoomWidth>width)
                    {
                        zoomHeight = width*height/zoomWidth;
                        zoomWidth =  width;
                    }
                }
            }
            if (callback) callback(src,zoomWidth,zoomHeight,parms,width,height);
            setTimeout(
                function (){
                    imgElem.parentNode.removeChild(imgElem);
                    imgElem = null;
                },
                0);
        };
        imgElem.src = src;
        //imgElem.onabort = function (){ imgElem.src = imgElem.src; };
        document.body.insertBefore(imgElem,document.body.childNodes[0]);
    },
    hasAllComplete : function (){
        var completeCount = 0;
        for(var i=0;i<this.settings.images.length;i++) {
            var imgElem = this.settings.images[i];
            var loadcomplete = imgElem.getAttribute(this.settings.loadCompleteAttribute) == this.settings.loadCompleteAttribute;
            if (loadcomplete) completeCount++;
        }
        return completeCount == this.settings.images.length;
    },
    browser : {
	    userAgent : navigator.userAgent.toLowerCase(),
		version: (navigator.userAgent.toLowerCase().match( /.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/ ) || [])[1],
		safari: /webkit/.test(navigator.userAgent.toLowerCase()),
		opera: /opera/.test( navigator.userAgent.toLowerCase() ),
		msie: /msie/.test( navigator.userAgent.toLowerCase() ) && !/opera/.test( navigator.userAgent.toLowerCase() ),
		mozilla: /mozilla/.test( navigator.userAgent.toLowerCase() ) && !/(compatible|webkit)/.test( navigator.userAgent.toLowerCase() )
	},
    getPosition : function (elem){
      var left = 0;
      var top  = 0;

      while (elem.offsetParent){
        left += elem.offsetLeft;
        top  += elem.offsetTop;
        elem  = elem.offsetParent;
      }

      left += elem.offsetLeft;
      top  += elem.offsetTop;

      return {x:left, y:top};
    },
    scrollTop: function() {
	    return this.browser.msie ? ((document.compatMode && document.compatMode!="BackCompat")? document.documentElement.scrollTop : document.body.scrollTop) : window.pageYOffset;
	},
	scrollLeft: function() {
	    return this.browser.msie ? ((document.compatMode && document.compatMode!="BackCompat")? document.documentElement.scrollLeft : document.body.scrollLeft) : window.pageXOffset;
	},
	height : function() {
		if ( this.browser.msie && this.browser.version < 7) {
			var scrollHeight = Math.max(
				document.documentElement.scrollHeight,
				document.body.scrollHeight
			);
			var offsetHeight = Math.max(
				document.documentElement.offsetHeight,
				document.body.offsetHeight
			);
			
			if (scrollHeight < offsetHeight) {
				return this.objProperty(window,"Height");
			} else {
				return scrollHeight;
			}
		} else {
			//return document.documentElement.scrollHeight ;
			return this.objProperty(document,"Height");
		}
	},
	width : function() {
		if ( this.browser.msie && this.browser.version <7 ) {
			var scrollWidth = Math.max(
				document.documentElement.scrollWidth,
				document.body.scrollWidth
			);
			var offsetWidth = Math.max(
				document.documentElement.offsetWidth,
				document.body.offsetWidth
			);
			
			if (scrollWidth < offsetWidth) {
				//return document.documentElement[ "clientWidth"];
				return this.objProperty(window,"Width");
			} else {
				return scrollWidth;
			}
		} else {
            
			return this.objProperty(document,"Width");
		}
	},
	objProperty : function( target,name ) {
		// Get window width or height
		return target == window ?
			// Opera reports document.body.client[Width/Height] properly in both quirks and standards
			//Fix opera Height
			this.browser.opera && ( name == "Height" ? document.documentElement.clientHeight : document.body[ "client" + name ]) ||

			// Safari reports inner[Width/Height] just fine (Mozilla and Opera include scroll bar widths)
			this.browser.safari && window[ "inner" + name ] ||

			// Everyone else use document.documentElement or document.body depending on Quirks vs Standards mode
			document.compatMode == "CSS1Compat" && document.documentElement[ "client" + name ] || document.body[ "client" + name ] :

			// Get document width or height
			target == document ?
				// Either scroll[Width/Height] or offset[Width/Height], whichever is greater
				//Fix opera Width
				this.browser.opera && name=="Width" ? 
				    document.documentElement["client" + name]
				    : Math.max(
				    document.documentElement["client" + name],
					Math.max(document.body["scroll" + name], document.documentElement["scroll" + name]),
					Math.max(document.body["offset" + name], document.documentElement["offset" + name])
				) : target["client"+name];
	}
}