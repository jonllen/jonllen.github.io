﻿/*
** Version: Popup1.1
** Author : Jonllen
** Create : 2009-05-17
** Update : 2010-01-14
** WebSite: http://www.jonllen.com/
*/
var Popup = {
	maxZindex : 1000,
	list : new Array(),
	current : null,
	settings : {
		target : null,
		autoOpen : false,
		createOverlay : false,
		overlay : undefined,
		overlayClass : "popup-overlay",
		openButton : undefined,
		closeButton : undefined,
		isOpen : false,
		drag : false,
		resize : false,
		autoLayout : true,
		listenEsc : true,
		align : 'center',
		vertical : 'middle',
		alignSlant : 0,
		verticalSlant : 0
	},
	init: function (settings) {
		
		var isExist = false;
		for (var i=0;i<this.list.length;i++)
		{
			if (this.list[i].target==settings.target)
			{
				isExist = true;
				this.current = this.list[i];
				break;
			}
		}
		if (!isExist)
		{
		    settings.target = this.$(settings.target);
		    settings.closeButton = this.$(settings.closeButton);
		    if(settings.target.id=='')
		    {
		        settings.target.id = 'popup_ad_' + this.list.length;
		    }
		    for(p in this.settings)
            {
                if ( !settings.hasOwnProperty(p) ) settings[p] = this.settings[p];
            }
            if (settings.closeButton)
		    {
		        settings.closeButton.onclick = function (){ Popup.getInstanceById(settings.target.id).close(); };
		    }
		    if (settings.openButton)
		    {
		        this.$(settings.openButton).onclick = function (){ Popup.getInstanceById(settings.target.id).open(); };
		    }
			this.list.push(settings);
			this.current = settings;
		}
		if (settings.autoOpen)
		{
		    this.open();
		}
	},
	getInstanceById : function (id) {
		for(var i=0;i<this.list.length;i++)
		{
			var current = this.list[i];
			if ( current.target.id == id )
			{
				this.current = current;
			}
		}
		return this;
	},
	overlay : function (){
		var overlay = this.current.overlay;
		if(overlay==undefined)
		{
			overlay = document.createElement("div");
			overlay.title = "点击层关闭";
			overlay.className = this.current.overlayClass ? this.current.overlayClass : "popup-overlay";
			overlay.style.top = 0;
	        overlay.style.left = 0;
			overlay.style.position = "absolute";
			overlay.style.zIndex = ++this.maxZindex;
			var currentId = this.current.target.id;
			overlay.onclick = function (){ Popup.getInstanceById(currentId).close(); };
			document.body.insertBefore(overlay,document.body.childNodes[0]);
		}
		overlay.style.width = this.width()+"px";
		overlay.style.height = this.height()+"px";
		overlay.style.display = "block";
		return overlay;
	},
	open : function (){
	
		var self = this;
		var target = this.current.target;
		
		if( target.parentNode != document.body )
		{
		    //移动target位置，使之与overlay同级以修复ie的z-index问题
		    document.body.insertBefore(target, document.body.childNodes[0]);
		}
		
		if( this.current.createOverlay )
		{
		    //must be set overlay then target(Zindex)
		    this.current.overlay = this.overlay();
		    //fix select for ie6
		    this.toggleIframe(true);
		}
		
		//must be set position then Zindex
		target.style.position = "absolute";
		target.style.zIndex =  ++this.maxZindex;
		
		target.style.display = "block";

		if (this.opened()==null)
		{
		    if( this.current.autoLayout === true )
			{
		        this.addEvent(window,"scroll",this.autoLayout);
		        this.addEvent(window,"resize", this.autoLayout);
			}
			if ( this.current.listenEsc === true)
			    this.addEvent(document,"keydown",this.eKeydown );
		}
		
		if (this.current.closeButton)
		{
		    this.current.closeButton.focus();
		}
		
		this.current.isOpen = true;
		
		this.autoLayout(this.current);
		
		//drag
		if (this.current.drag == true )
		{
		    var dragHandle = target;
		    var titlebar = target.getElementsByTagName("div")[0];
		    if( typeof(titlebar) != 'undefined' && titlebar.className.indexOf("titlebar")>-1)
		    {
		        dragHandle = titlebar;
		    }
		    else if( typeof(titlebar) != 'undefined' && typeof(titlebar.getElementsByTagName("div")[0]) != 'undefined' )
		    {
		        titlebar = titlebar.getElementsByTagName("div")[0];
		        if( titlebar.className.indexOf("titlebar")>-1 )
		            dragHandle = titlebar;
		    }
		    this.eDrag(target, dragHandle);
			
		}
		
		//resize
		if( this.current.resize == true)
		{
		    var resizeHandle = this.current.target.lastChild;
		    if( resizeHandle.nodeType == 3 || resizeHandle.className.indexOf('popup-resize') == -1 )
		    {
		        target.onselectstart = function (e){ return false;};
		        resizeHandle = document.createElement('div');
		        resizeHandle.className = 'popup-resize';

		        resizeHandle.innerHTML = '<div title="点击缩放大小">▲</div>';
		        this.current.target.appendChild(resizeHandle);
		        this.eResize(
		            target
		            , resizeHandle
		            , function (x, y, target ,resizeHandle){
		                var self = Popup;
		                target.style.width = x + 'px';
		                target.style.height = 'auto';
		                var content = target.lastChild.previousSibling;
		                while( content.nodeType ==3){ content = content.previousSibling;}
	                    var titleHeight = self.objProperty(target, 'Height') - self.objProperty(content, 'Height');
	                    content.style.height = y - titleHeight + 'px';
		                var iframe = target.getElementsByTagName('iframe')[0];
		                if( typeof(iframe) != 'undefined')
			            {
			                iframe.style.display = 'none';
                            iframe.height = y - titleHeight + 'px';
                            iframe.width = x + 'px';
			            }
		            },
		            function (x, y, target ,resizeHandle){
		                var iframe = target.getElementsByTagName('iframe')[0];
		                if ( iframe) iframe.style.display = 'block';
		            }
		        );
		        
		    }
		}
		
	},
	close : function (){
		if(!this.current) return;
		this.current.isOpen = false;
		this.current.target.style.display = "none";
		if (this.current.overlay) this.current.overlay.style.display = "none";

        this.removeEvent(window,"scroll",this.autoLayout);
		this.removeEvent(window,"resize",this.autoLayout);
		this.removeEvent(document,"keydown",this.eKeydown);
		
		if(this.current.createOverlay)
		{
		    //fix select for ie6(hide)
		    this.toggleIframe(false);
		}

		if ( this.opened() != null)
		{
			this.current = this.opened();
			if( this.current.autoLayout === true )
			{
		        this.addEvent(window,"scroll",this.autoLayout);
		        this.addEvent(window,"resize",this.autoLayout);
			}
			if ( this.current.listenEsc === true)
		        this.addEvent(document,"keydown",this.eKeydown );
			if (this.current.closeButton)
			    this.current.closeButton.focus();
		}
		
	},
	opened : function (){
		for(var i=0;i<this.list.length;i++)
		{
			if(this.list[i].isOpen) return this.list[i];
		}
		return null;
	},
	create : function (containerId,title,content,width,height){
	    var container = document.getElementById(containerId);
	    if( container != null)
	    {
	        return container;
	    }
		container = document.createElement("div");
		container.id = containerId;
		container.className = "popup-container";
		container.style.display = "none";
		container.style.width = width + "px";
		container.innerHTML = "<div class=\"popup-titlebar\" title=\"点击拖拽\">"
			+ "<a class=\"close\" href=\"javascript:Popup.getInstanceById('"+containerId+"').close();\" title=\"关闭\">&nbsp;</a>"
			+ "<span class=\"title\">"+title+"</span>"
		    + "</div>"
		    + "<div class=\"popup-content\"></div>";
		if ( width && height )
		{
		    container.lastChild.innerHTML = '<iframe allowtransparency="true" frameborder="0" scrolling="no" src="'+content+'" width="'+width+'" height="'+height+'"></iframe>';
		}else
		{
		    container.lastChild.appendChild(this.$(content));
		}
		document.body.insertBefore(container,document.body.childNodes[0]);
		return container;
	},
	autoLayout : function (current){
	    var self = Popup;
	    function layout(current) {
			var target = current.target;
			var left = 0;
			switch( current.align )
			{
			    case 'left':
			        left = 0;
			        break;
			    case 'center':
			        left = (self.objProperty(window,"Width")-self.objProperty( target,"Width"))/2;
			        break;
			    case 'right':
			        left = self.objProperty(window,"Width")-self.objProperty( target,"Width");
			        break;
			}
			left += current.alignSlant;
			target.style.left = left + self.scrollLeft() + "px";
			var top = 0;
			switch( current.vertical )
			{
			    case 'top':
			        top = 0;
			        break;
			    case 'middle':
			        top = (self.objProperty(window,"Height")-self.objProperty( target,"Height"))/2;
			        break;
			    case 'bottom':
			        top = self.objProperty(window,"Height")-self.objProperty( target,"Height");
			        break;
			}
			top += current.verticalSlant;
			target.style.top = top + self.scrollTop() + "px";
			
			if( current.createOverlay )
		    {
		        //fix select for ie6
		        self.toggleIframe();
		    }
			
			var overlay = current.overlay;
			if (overlay==undefined) return;
			
			overlay.style.width = 0;
			overlay.style.height = 0;
			overlay.style.width = self.width()+"px";
			overlay.style.height = self.height()+"px";
	    }
		if (current && !current.type ) 
		{
		    //手动调用事件
		    layout(current);
		    return;
		}
		for(var i=0;i<self.list.length;i++)
		{
		    var settings = self.list[i];
		    if( settings.autoLayout && settings.isOpen) layout(settings);
		}
	},
	toggleIframe : function ( display ) {
	    
	    if( !(this.browser.msie && this.browser.version <= 6) ) return;
	
	    if( display === true || display === false )
	    {
	        var selects = document.getElementsByTagName("select");
	        for(var i=0;i<selects.length;i++)
	        {
	            selects[i].style.visibility = display ? "hidden" : "visible";
	        }
	    }
        return;//Do Not Fix
	    var iframeId = "puopup-overlay-iframe";
	    var iframe = document.getElementById(iframeId);
	    if( iframe == null )
	    {
	        iframe = document.createElement("iframe");
	        iframe.id = iframeId;
	        iframe.name = iframeId;
	        iframe.tabIndex = -1;
	        iframe.frameBorder = 0;
	        iframe.style.position = "absolute";
	        iframe.style.top = 0;
	        iframe.style.left = 0;
	        //iframe.allowTransparency = true;
			iframe.src = "about:blank";
	        document.body.insertBefore(iframe,document.body.lastChild);
	    }
		iframe.style.width = 0;
		iframe.style.height = 0;
	    iframe.style.width = this.width()+"px";
		iframe.style.height = this.height()+"px";
		if( display === true || display === false )
	        iframe.style.display = display ? "block" : "none";
	},
	eDrag : function (target ,dragHandle) {
	    dragHandle = dragHandle || target;
        dragHandle.onmousedown = function (e){
		    e = window.event || e;
            var _xy = parseInt(target.offsetTop) - e.clientY;
            var _xx = parseInt(target.offsetLeft) - e.clientX;
            document.onmouseup = function(){
	            this.onmousemove = null;
	            this.onmouseup=null;
            }
            if(e.preventDefault){
	            e.preventDefault();
            }
            document.onmousemove = function(e){
	            var e = window.event || e;
	            target.style.top = _xy + e.clientY + "px";
	            target.style.left = _xx + e.clientX + "px";
            }
            window.getSelection ? window.getSelection().removeAllRanges() : document.selection.empty();
	    };
	},
	eResize : function (target ,resizeHandle, mousemove, mouseup) {
	    var self = Popup;
	    resizeHandle = resizeHandle || target;
	    resizeHandle.childNodes[0].onmousedown = function (e){
            e = window.event || e;
            var y = parseInt( self.objProperty(target,'Height') ) - e.clientY;
            var x = parseInt( self.objProperty(target,'Width') ) - e.clientX;
            document.onmouseup = function(){
	            this.onmousemove = null;
	            this.onmouseup = null;
	            if(mouseup) mouseup(x, y, target, resizeHandle);
            }  
            if(e.preventDefault){
	            e.preventDefault();
            }
            document.onmousemove = function(e){
	            var e = window.event || e;
	            if(mousemove) mousemove(x + e.clientX, y + e.clientY, target, resizeHandle);
            }
            window.getSelection ? window.getSelection().removeAllRanges() : document.selection.empty();
        };
	},
	eKeydown : function (e) {
		var num = e.which?e.which:e.keyCode;
		if(num==27) Popup.close();
	},
	$ : function (id) {
        if( typeof(id) == 'string')
     	    return document.getElementById(id);
     	return id;
    },
	browser : {
	    userAgent : navigator.userAgent.toLowerCase(),
		version: (navigator.userAgent.toLowerCase().match( /.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/ ) || [])[1],
		safari: /webkit/.test(navigator.userAgent.toLowerCase()),
		opera: /opera/.test( navigator.userAgent.toLowerCase() ),
		msie: /msie/.test( navigator.userAgent.toLowerCase() ) && !/opera/.test( navigator.userAgent.toLowerCase() ),
		mozilla: /mozilla/.test( navigator.userAgent.toLowerCase() ) && !/(compatible|webkit)/.test( navigator.userAgent.toLowerCase() )
	},
	addEvent : function(target,eventType,func){
		if(target.attachEvent)
		{
			target.attachEvent("on"+eventType,func);
			
		}else if(target.addEventListener)
		{
			target.addEventListener(eventType,func,false);
		}
		return this;
	},
	removeEvent : function(target,eventType,func){
		if(target.detachEvent)
		{
			target.detachEvent("on"+eventType,func);
			
		}else if(target.removeEventListener)
		{
			target.removeEventListener(eventType,func,false);
		}
		return this;
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
};