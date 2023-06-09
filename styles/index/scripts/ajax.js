									﻿var Ajax = {
    settings : {
        type : "GET",
        url : undefined,
        data : "",
        fn : function (data){},
        cache : true,
        parms : undefined,
        error : function (status) {if (console && console.log) console.log("Ajax请求失败！状态："+status);}
    },
    send : function (settings) {
        for(p in this.settings)
		{
			if(!settings.hasOwnProperty(p)) settings[p] = this.settings[p];
		}

        if (settings.data!="" && settings.type.toUpperCase()=="GET" )
        {
            settings.url += (settings.url.indexOf('?') > -1 ? "&" : "?") + this.settings.data;
        }
        
        var xhr = window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
        xhr.open(settings.type, settings.url, true);
        
        xhr.onreadystatechange = function (){
            if(xhr.readyState == 4){
                if(xhr.status == 200){
                    settings.fn(xhr.responseText,settings.parms);
                }else{
                    settings.error(xhr.status);
                }
            }
        };
        
        if(settings.cache === false && settings.type.toUpperCase() == 'GET')
        {
            xhr.setRequestHeader("cache-control","no-cache");
            xhr.setRequestHeader("If-Modified-Since","0");
        }
        
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xhr.send(settings.data.replace(/\+/g,"%2B"));

        return xhr;
    },
    get : function (url, fn, parms) {
        return this.send({
            url : url,
            fn : fn,
            cache : false,
            parms : parms
        });
    },
    post : function (url, data, fn, parms) {
        return this.send({
            type : 'POST',
            url : url,
            data : data,
            fn : fn,
            parms : parms
        });
    },
    loadScript : function ( url, callback ) {
        var script = document.createElement('script');
        script.type= 'text/javascript';
        if ( callback ) {
            script.onload = script.onreadystatechange= function() {
                if( script.readyState && script.readyState!='loaded' && script.readyState!='complete' )
                    return;
                script.onreadystatechange = script.onload = null;
                callback( script );
            };
        }
        script.src = url;
        document.getElementsByTagName('head')[0].appendChild(script);
        return script;
    },
    loadIframe : function ( url, callback ) {
        var iframe = document.createElement('iframe');
        iframe.src = url;
        iframe.frameBorder = 0;
        iframe.style.cssText = 'width:0; height:0; display:none;';
        document.body.insertBefore(iframe, document.body.childNodes[0]);
        if ( callback ) {
            if( iframe.attachEvent)
                iframe.attachEvent('onload',callback);
            else
                iframe.onload = callback;
        }
        return iframe;
    }
};


						