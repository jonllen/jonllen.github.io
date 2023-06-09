String.prototype.trim= function()  
{  
    // 用正则表达式将前后空格  
    // 用空字符串替代。  
    return this.replace(/(^\s*)|(\s*$)/g, "");  
}
function $$ (id)
{
	if (id.indexOf(".")>0)
	{
		var rs = id.split(".");
		var list = document.getElementsByTagName(rs[0]);
		for(var i=0;i<list.length;i++)
		{
			if (list[i].className==rs[1])
			{
				return list[i];	
			}
		}
	}
	return document.getElementById(id);	
}
var global = {
	userAgent : navigator.userAgent.toLowerCase(),
	browser : {
		version: (navigator.userAgent.toLowerCase().match( /.+(?:rv|it|ra|ie)[\/: ]([\d.]+)/ ) || [])[1],
		safari: /webkit/.test( navigator.userAgent.toLowerCase() ),
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
	scrollTop: function(){
	 return this.browser.msie ? ((document.compatMode && document.compatMode!="BackCompat")? document.documentElement.scrollTop : document.body.scrollTop) : window.pageYOffset;
	},
	height : function() {
		if ( global.browser.msie && global.browser.version < 7) {
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
			//alert(version)
			//return document.documentElement.scrollHeight ;
			return this.objProperty(document,"Height");
		}
	},
	width : function() {
		if ( global.browser.msie && global.browser.version <7 ) {
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
			this.browser.opera && document.body[ "client" + name ] ||

			// Safari reports inner[Width/Height] just fine (Mozilla and Opera include scroll bar widths)
			this.browser.safari && window[ "inner" + name ] ||

			// Everyone else use document.documentElement or document.body depending on Quirks vs Standards mode
			document.compatMode == "CSS1Compat" && document.documentElement[ "client" + name ] || document.body[ "client" + name ] :

			// Get document width or height
			target == document ?
				// Either scroll[Width/Height] or offset[Width/Height], whichever is greater
				Math.max(
					Math.max(document.body["scroll" + name], document.documentElement["scroll" + name]),
					Math.max(document.body["offset" + name], document.documentElement["offset" + name])
				) : target["client"+name];
	},
	ajax: function()
    {
        var len=arguments.length;
        var type,url,postdata,fn;
        if(len<2)
        {
            alert('没有2个一下参数的重载,至少必须指定请求类型(type)和url地址!');
            return;
        }
        type=arguments[0];
        url=arguments[1];
        if(len>2)
        {
            var args=arguments[2];
            if(typeof(args)=="string")
            {
                postdata=args;
            }
        }
        var xhr = window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
        xhr.open(type,url,true);
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        fn = arguments[len-1];
        xhr.onreadystatechange = function (){
			if(xhr.readyState==4)
			{
			   if(xhr.status==200)
			   {
					if(typeof(fn)=="function")
						fn(xhr.responseText);
			   }
			   else
			   {
				 alert("你所请求的页面有异常");
			   }
			}
        };
        xhr.send(postdata);
     },
     trim : function (str)
     {
     	return str.replace(/(^\s*)|(\s*$)/g, "");
     },
     $ : function (id)
     {
     	return document.getElementById(id);
     },
     val : function (id)
     {
     	var elem = document.getElementById(id);
     	return elem ? elem.value : null;
     }
};

