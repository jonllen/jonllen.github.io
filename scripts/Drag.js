
/*
** Author : Jonllen
** Create : 2010-03-21
** Update : 2010-04-25
** Update : 2011-03-19
** WebSite: http://www.jonllen.com/
*/

var Drag = function ( settings ) {

        for(p in this.settings) {
            if ( !settings.hasOwnProperty(p) ) settings[p] = this.settings[p];
        }
        this.settings = settings;
        
        
        this.columns = this.settings.column ? this.getElementsByClassName(this.settings.column, this.settings.container, 'div') : document.body.childNodes;

	    var _this = this;
	    
	    //down
        settings.container.onmousedown = function (e){
        
            e = window.event || e;
            var handle = e.target || e.srcElement;
            
            if( _this.settings.enableEdit && _this.hasClass(handle, _this.settings.editClass) )
                return;
            
            if( !_this.hasClass(handle, _this.settings.handle) && !_this.hasClass(handle.parentNode, _this.settings.handle) )
                return;
                
            handle = _this.hasClass(handle, _this.settings.handle) ? handle : handle.parentNode;
            
            var mod = handle.parentNode;
            if( !_this.hasClass(mod, _this.settings.mod) )
                return;
            
            _this.close();
            _this.settings.state = 'dragging';

	        mod.style.width = mod.offsetWidth + 'px';
	        mod.style.height = mod.offsetHeight + 'px';
	        _this.addClass(mod, _this.settings.draggingClass);
	        
	        if( _this.getStyle(mod, 'position') != 'absolute' )
	            mod.style.position = 'absolute';
            
            var y = parseInt(mod.offsetTop) - e.clientY;
            var x = parseInt(mod.offsetLeft) - e.clientX;

            //window.enableLog =true;
            log(e);
            
            if(e.preventDefault){
	            e.preventDefault();
            }
            
            var modPosition = _this.getPosition(mod);
            var mousePosition = _this.mouseCoords(e);
            //鼠标和拖拽模块之间偏移距离
            var mouseExcursionPosition = { x : mousePosition.x - modPosition.x , y : mousePosition.y - modPosition.y };
            
            var shadowElem = _this.getDragshow();
            shadowElem.style.height = mod.offsetHeight + 'px';
            mod.parentNode.insertBefore(shadowElem, mod);
            
            mod.style.top = y + e.clientY + 'px';
            mod.style.left = x + e.clientX + 'px';

            //move
            document.onmousemove = function(ev){
            
	            ev = window.event || ev;
	            
	            var mousePosition = _this.mouseCoords(ev); 
	            
	            mod.style.top = mousePosition.y - mouseExcursionPosition.y + 'px';
	            mod.style.left= mousePosition.x - mouseExcursionPosition.x + 'px';
	            
	            handle.style.cursor = 'move';
	            
	            if( !_this.settings.shadow) return;
	            
	            var mousePos = _this.mouseCoords(ev);
                
                for(var i=0; i< _this.columns.length; i++){                    
                    
	                var column  = _this.columns[i];
                    
	                var columnPos    = _this.getPosition(column);
	                var columnWidth  = parseInt(column.offsetWidth);
	                var columnHeight = parseInt(column.offsetHeight);
             
	                if( mousePos.x >= columnPos.x && mousePos.x <= (columnPos.x + columnWidth) ) {
			                
			                var insertBeforeMod = column.lastChild;
			                
			                for( var j=0; j<column.childNodes.length; j++){
			                
			                    var modTarget = column.childNodes[j];
			                    if( modTarget.nodeType == 1) {
			                        
			                        var modTargetPos = _this.getPosition(modTarget);
			                        var modTargetWidth = parseInt(modTarget.offsetWidth);
			                        var modTargetHeight = parseInt(modTarget.offsetHeight);
			                        
			                        log(
			                        'mousePos.y：'+mousePos.y,
			                        'modTarget：'+modTarget.id,
			                        'modTarget.y：' + modTargetPos.y + '-' + (modTargetPos.y + modTargetHeight)
			                        );
			                        
			                        if( modTarget != mod  && mousePos.y >= modTargetPos.y && mousePos.y <= modTargetPos.y + modTargetHeight ) {
			                                insertBeforeMod = modTarget;
			                                break;
			                        }
			                        
			                    }
			                }
			                
			                if( insertBeforeMod == column.lastChild 
			                    && _this.hasClass(insertBeforeMod, _this.settings.mod)
			                    && mousePos.y > _this.getPosition(insertBeforeMod).y + insertBeforeMod.offsetHeight ) {
			                    column.appendChild(shadowElem);
			                    break;
			                }
	
	                        column.insertBefore(shadowElem, insertBeforeMod);
		                    break;
	                }
	                
                }
                
                window.getSelection ? window.getSelection().removeAllRanges() : document.selection.empty();
                
            };
            
            //up
            document.onmouseup = function(ev){
            
                ev = window.event || ev;
            
                this.onmousemove = null;
                this.onmouseup=null;
	            
	            handle.style.cssText = '';
                mod.style.cssText = '';
	            _this.removeClass(mod, _this.settings.draggingClass);
                
                _this.settings.state = 'normal';
                if( !_this.settings.shadow) return;
	            
                var shadowElem = _this.getDragshow();
	            if( shadowElem.parentNode.tagName != 'BODY')
                    shadowElem.parentNode.replaceChild(mod, shadowElem);
                else shadowElem.parentNode.removeChild(shadowElem);
                
                _this.save();
                
                log('save complate!',document.cookie);
            }
            
            window.getSelection ? window.getSelection().removeAllRanges() : document.selection.empty();
	    };
	    
	    //if( !settings.enableEdit) return;
	    
	    //onmouseover
	    settings.container.onmouseover = function (e){
	        
	        if( _this.settings.state == 'dragging') return;
	        
	        e = window.event || e;
	        var targetElem = e.target || e.srcElement;
	        
	        var handleElem = null;
	        var modElem = targetElem;
            while(modElem) {
                if( _this.hasClass(modElem, _this.settings.mod)) {
                    for(var i=0; i<modElem.childNodes.length; i++) {
                        if( _this.hasClass(modElem.childNodes[i], _this.settings.handle)) {
                            handleElem = modElem.childNodes[i];
                            break;
                        }
                    }
                    break;
                }
                modElem = modElem.parentNode;
            }
	        
            if( !handleElem || !modElem ) {
                _this.close(targetElem);
                return;
            }
            
            handleElem.style.cursor = 'move';
            handleElem.title = '点击拖拽该模块';
            
            if( _this.currentMod != modElem) {
                
                if( _this.currentMod != null) {
                    _this.removeClass(_this.currentMod, _this.settings.selectedClass);
                    if( _this.currentMod.editElem) _this.currentMod.editElem.style.display = 'none';
                }
                
                var editElem = modElem.editElem;
                if( editElem == null) {
                    // Create Edit Element Only The First
                    editElem = document.createElement('DIV');
                    editElem.className = _this.settings.editClass;                    
                    
                    var profileElem = document.createElement('A');
                    profileElem.innerHTML = '▼';
                    profileElem.title = '设置该模块';
                    profileElem.onclick = function (ev){
                        this.blur();
                        
                        for(var i=0;i <modElem.childNodes.length; i++) {
                            var childElem = modElem.childNodes[i];
                            if( childElem.nodeType == 1 && childElem.style.display == 'none' 
                                && childElem.tagName != 'SCRIPT' && !_this.hasClass(childElem, _this.settings.handle)) {
                                // Show The Min State Element
                                childElem.style.display = 'block';
                            }
                        }
                        
                        if ( modElem.style.cssText != '') {
                            // Hidden The Max State Element
                            modElem.style.cssText = '';
                            return false;
                        }
            
                        var profileElemPos = _this.getPosition(this);
                        
                        var menuElem = _this.getEditmenu();
                        menuElem.style.display = 'block';
                        menuElem.style.top = profileElemPos.y + parseInt(this.offsetHeight) + 'px';
                        menuElem.style.left = profileElemPos.x + parseInt(this.offsetWidth) - parseInt(menuElem.offsetWidth) + 'px';
                    };
                    editElem.appendChild(profileElem);
                }
                
                var menuElem = _this.getEditmenu();
                menuElem.style.display = 'none';
                
                editElem.style.display = 'block';
                handleElem.insertBefore(editElem ,handleElem.childNodes[0]);
                modElem.editElem = editElem;
                
                _this.currentMod = modElem;
                _this.addClass(_this.currentMod, _this.settings.selectedClass);
                
            }
            
	    };
	    
	    settings.container.onmouseout = function (e){
	        e = window.event || e;
	        var targetElem = e.target || e.srcElement;
	        _this.mouseLeave(this, e, function (e){
	                var menuElem = _this.getEditmenu();
	                var parentElement = e.relatedTarget || e.toElement;
	                if ( menuElem != parentElement )
	                    _this.close();
	            });
	    }
	    
	    document.onclick = function (e){
	        e = window.event || e;
	        var targetElem = e.target || e.srcElement;
	        _this.close(targetElem);
	    };
	    
	    if(_this.getCookie('Drag') != '')
	        setTimeout(function (){ _this.showPrompt();}, 2000);
}

Drag.prototype = {
    settings : {
        state : 'normal',
        container : null,
        column : '',
        mod : '',
        handle : '',
        enableEdit : true,
        editClass : 'edit',
        shadow : true,
        shadowClass : 'shadow',
        draggingClass : 'dragging',
        selectedClass : 'selected'
    },
    getStyle : function ( elem, property) {
        if( document.defaultView )
        {
            var computed = document.defaultView.getComputedStyle(elem, null);
            return elem.style[property] || computed[property];
        }
        return elem.currentStyle[property];
    },
    hasClass : function (elem, name) {
        return !!elem && !!name && (' '+elem.className+' ').indexOf(' '+name+' ') != -1;
    },
    addClass : function (elem, name) {
        if( !this.hasClass(elem, name)) {
            var className = this.trim(elem.className);
            elem.className = className == '' ? name : className + ' ' + name;
        }
        return this;
    },
    removeClass : function (elem, name) {
        if( this.hasClass(elem, name)) {
            elem.className = this.trim((' '+elem.className+' ').replace(' '+name+' ', ''));
        }
        return this;
    },
    trim : function (str) {
     	return str.replace(/(^\s*)|(\s*$)/g, '');
    },
    isChild : function(parentElem, childElem) {
        if( !parentElem || !childElem || parentElem == childElem) return false;
        var tempElem = childElem;
        while(tempElem) {
            if( tempElem == parentElem) return true;
            tempElem = tempElem.parentNode;
        }
        return false;
    },
    getElementsByClassName : function (className, elem, tagName) {
        elem = elem || document;
        tagName = tagName || "*";
        var results = new Array();
        var elements = elem.getElementsByTagName(tagName);
        for(var i=0; i<elements.length; i++)
        {
            var element = elements[i];
            if( element.className && (' '+element.className+' ').indexOf(' '+className+' ') != -1 )
                results.push(element);
        }
        return results.length > 0 ? results : null;
    },
    addEvent : function(target,eventType,func){
		if(target.attachEvent)
		{
			target.attachEvent("on" + eventType, func);
			
		}else if(target.addEventListener)
		{
			target.addEventListener(eventType == 'mousewheel' ? 'DOMMouseScroll' : eventType, func, false);
		}
		return this;
	},
	removeEvent : function(target,eventType,func){
		if(target.detachEvent)
		{
			target.detachEvent("on" + eventType, func);
			
		}else if(target.removeEventListener)
		{
			target.removeEventListener(eventType == 'mousewheel' ? 'DOMMouseScroll' : eventType, func, false);
		}
		return this;
	},
	mouseLeave : function(elem, e, func){
	    // Check if mouse(over|out) are still within the same parent element
	    var parent = e.relatedTarget || e.toElement;
	    // Traverse up the tree
	    while ( parent && parent != elem ) try { parent = parent.parentNode; } catch(error) { parent = elem; }
	    // Check withinElement if we actually just moused on to a sub-element
	    var withinElement = parent == elem;
	    // Callback if  mouse(over|out) are not withinElement
	    if ( !withinElement) func(e);
	    
	},
    mouseCoords : function (e){
        if (e.pageX && e.pageY) {
            return {
                x: e.pageX,
                y: e.pageY
            };
        }
        var d = (document.documentElement && document.documentElement.scrollTop) ? document.documentElement : document.body;
        return {
            x: e.clientX + d.scrollLeft,
            y: e.clientY + d.scrollTop
        };
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
    getDragshow : function (){
        var id = "shadow";
        var elem = document.getElementById(id);
        if( elem == null)
        {
            elem = document.createElement('div');
            elem.id = id;
            elem.className = this.settings.mod + ' ' + id;
            this.addClass(elem, this.settings.shadowClass);
            document.body.insertBefore(elem, document.body.childNodes[0]);
        }
        return elem;
    },
    getEditmenu : function (menus){
        var defaultMenus = [ {name : '隐藏', href : 'javascript:;', className : 'item', commandName : 'delete'}, 
            {name : '最小化', href : 'javascript:;', className : 'item', commandName : 'min' }, 
            {name : '最大化', href : 'javascript:;', className : 'item', commandName : 'max' }];
        menus = menus || defaultMenus;
        var id = 'editmenu';
        var elem = document.getElementById(id);
        if ( elem == null) {
            elem = document.createElement('div');
            elem.id = id;
            elem.className = 'editmenu';
			
			var _this = this;
			elem.onclick = function (e) {
				e = window.event || e;
	        	var targetElem = e.target || e.srcElement;
				var menu = targetElem.menu || targetElem.parentNode.menu;
				if( menu) return _this.eMenuClick(menu, e);
			};
            
            for(var i=0; i<menus.length; i++) {
                var menu = menus[i];
				
                var itemElem = document.createElement('div');
                itemElem.className = menu.className;
				(function (menu){itemElem.menu = menu;})(menu);
				
                var aElem = document.createElement('a');
                aElem.innerHTML = menu.name;
                aElem.title = menu.name + '该模块';
                aElem.href = menu.href;
				
                itemElem.appendChild(aElem);
                elem.appendChild(itemElem);
            }
            
            document.body.insertBefore(elem, document.body.childNodes[0]);
        }
        
        return elem;
    },
	eMenuClick : function (menu, e){
	    var commandName = menu.commandName.toLowerCase();
		if( commandName == 'delete') {
            if( ! confirm('是否确认隐藏该模块吗？')) return;
			var mod = this.currentMod;
            mod.style.display = 'none';
            this.save();
            mod.parentNode.removeChild(mod);
            this.close();
		}
		else if( commandName == 'min') {
            for(var i=0;i <this.currentMod.childNodes.length; i++) {
                var childElem = this.currentMod.childNodes[i];
                if( childElem.nodeType == 1 && !this.hasClass(childElem, this.settings.handle)) {
                    childElem.style.display = 'none';
                }
            }
            return true;
		}
		else if( commandName == 'max') {
            this.currentMod.style.position = 'absolute';
            var containerElemPos = this.getPosition(this.settings.container);
            this.currentMod.style.left = containerElemPos.x + 'px';
            this.currentMod.style.top = containerElemPos.y + 'px';
            this.currentMod.style.width = parseInt(this.settings.container.offsetWidth) + 'px';
            this.currentMod.style.height = parseInt(this.settings.container.offsetHeight) + 'px';
            this.currentMod.style.zIndex = 10000;
		}
		// 取消事件冒泡防止触发 body 的 onClick 事件
        if(e.stopPropagation) {
            e.stopPropagation();
        }
        else {
            e.cancelBubble = true;
        }
		return false;
	},
	close : function (targetElem){
	    if( this.currentMod != null) {
            if( targetElem && (this.currentMod == targetElem || this.isChild(this.currentMod, targetElem)) ) return;
            
            this.removeClass(this.currentMod, this.settings.selectedClass);
            if( this.currentMod.editElem != null) {
                this.currentMod.editElem.style.display = 'none';
            }
            if ( this.currentMod.style.cssText != '') {
                // Hidden The Max State Element
                this.currentMod.style.cssText = '';
            }
            this.currentMod = null;
        }
        var menuElem = this.getEditmenu();
        menuElem.style.display = 'none';
	},
    save : function () {
        var sort = 1;
        var cookieArr = new Array();
        for(var i=0; i<this.columns.length; i++) {
	        var column  = this.columns[i];
	        for( var j=0; j< column.childNodes.length; j++) {
	            var mod = column.childNodes[j];
	            if( mod.nodeType == 1 && this.hasClass(mod, this.settings.mod) ) {
	                var columnId = column.className.substring(column.className.length - 1);
	                var modId = mod.id.replace(this.settings.mod,'');
	                var cookieStr = modId + '=' + columnId + '-' + sort + '-' +(mod.style.display == 'none'?'0':'1');
	                cookieArr.push( cookieStr );
	                sort++;
	            }
	        }
	    }
	    this.cookie('Drag', cookieArr.join('&'), 60);
	    this.showPrompt();
    },
    cookie : function (name, value, expires) {
        var date = new Date();
        if( expires ) {
            date.setTime(date.getTime() + 1000 * 60 * expires );
        }
        
        document.cookie = name + '=' + value + '; path=/; expires=' + ( expires ? date.toGMTString() : '0' );

    },
    getCookie : function (name) {
        var cookies = document.cookie.split(';');
        for(var i=0; i<cookies.length; i++) {
            var items = this.trim(cookies[i]);
            var cookieKey = items.split('=')[0];
            if (cookieKey == name) {
                var cookieValue = this.trim( items.substr(cookieKey.length+1));
                return cookieValue;
            }
        }
        return '';
    },
    showPrompt : function (){
        var dragPromptElem = this.getPrompt();
        dragPromptElem.style.display = '';
        
        var promptMsgElem = document.getElementById('promptMsg');
        promptMsgElem.innerHTML = promptMsgElem.title;
        promptMsgElem.style.display = '';
        
        var promptLoadingElem = document.getElementById('promptLoading');
        promptLoadingElem.style.display = 'none';
        
        var promptBtnElems = document.getElementById('promptBtn').getElementsByTagName('INPUT');
        for(var i in promptBtnElems) promptBtnElems[i].disabled = false;
        
        return dragPromptElem;
    },
    savePosition: function(){
        var promptMsgElem = document.getElementById('promptMsg');
        promptMsgElem.style.display = 'none';
        
        var promptLoadingElem = document.getElementById('promptLoading');
        promptLoadingElem.style.display = '';
        
        var promptBtnElems = document.getElementById('promptBtn').getElementsByTagName('INPUT');
        for(var i in promptBtnElems) promptBtnElems[i].disabled = true;
        
        function savePage() {
		    var ajaxUrl = (window.appPath ? window.appPath : '' ) + '/Ajax/SaveTemplate.aspx';
		    
		    var paths = location.pathname.split('/');
		    
		    var parms = new Array();
		    
		    if( paths.length > 2 )
		        parms.push("domain=" + paths[1]);
		    
		    
		    Ajax.post(
                ajaxUrl
                ,parms.join('&')
                ,function (data){
                    var rs = eval(data);
                    
                    var promptMsgElem = document.getElementById('promptMsg');
                    promptMsgElem.style.display = '';
                    
                    var promptLoadingElem = document.getElementById('promptLoading');
                    promptLoadingElem.style.display = 'none';
                        
                    if( rs.success) {
                        promptMsgElem.innerHTML = rs.success;
                    }else {

                        var promptBtnElems = document.getElementById('promptBtn').getElementsByTagName('INPUT');
                        for(var i in promptBtnElems) promptBtnElems[i].disabled = false;
        
                        promptMsgElem.innerHTML =rs.error;
                    }
                }
            );
        }
        
        if( typeof(Ajax) == 'undefined')
            this.loadScript((window.appPath ? window.appPath : '' ) + '/scripts/ajax.js', savePage);
        else
            savePage();
            
    },
    clearPosition : function (){
        if( !confirm('是否确认还原吗？')) return;
        
        this.cookie('Drag', '');
        location = location.href;
    },
    getPrompt : function (){
        var _this = this;
    
        var dragPromptElem = document.getElementById('dragPrompt');
        if( dragPromptElem != null) return dragPromptElem;
        
        dragPromptElem=document.createElement('DIV');
        dragPromptElem.id = 'dragPrompt';
        dragPromptElem.className = 'dragprompt';
        dragPromptElem.style.display = 'none';
        document.body.insertBefore(dragPromptElem, document.body.childNodes[0] );
        
        var dragPromptWrapperElem = document.createElement('DIV');
        dragPromptWrapperElem.className = 'auto fixft wrapper';
        dragPromptElem.appendChild(dragPromptWrapperElem);
        
        var promptMsgElem = document.createElement('DIV');
        promptMsgElem.id = 'promptMsg';
        promptMsgElem.className = 'promptmsg';
        promptMsgElem.innerHTML = ' 您已经修改页面布局。';
        promptMsgElem.title = promptMsgElem.innerHTML;
        dragPromptWrapperElem.appendChild(promptMsgElem);
        
        var promptLoadingElem = document.createElement('DIV');
        promptLoadingElem.id = 'promptLoading';
        promptLoadingElem.className = 'promptloading';
        promptLoadingElem.style.display = 'none';
        promptLoadingElem.innerHTML = ' 正在执行操作...';
        dragPromptWrapperElem.appendChild(promptLoadingElem);
        
        var promptBtnElem = document.createElement('DIV');
        promptBtnElem.id = 'promptBtn';
        promptBtnElem.className = 'promptbtn';
        dragPromptWrapperElem.appendChild(promptBtnElem);
        
        var btnSaveElem = document.createElement('INPUT');
        btnSaveElem.value = '保存';
        btnSaveElem.className = 'btn';
        btnSaveElem.type = 'button';
        btnSaveElem.onclick = function (){ _this.savePosition(); };
        promptBtnElem.appendChild(btnSaveElem);
        
        var btnClearElem = document.createElement('INPUT');
        btnClearElem.value = '还原';
        btnClearElem.className = 'btn';
        btnClearElem.type = 'button';
        btnClearElem.onclick = function (){ _this.clearPosition(); };
        promptBtnElem.appendChild(btnClearElem);
        
        var btnCloseElem = document.createElement('A');
        btnCloseElem.innerHTML = ' x ';
        btnCloseElem.href = 'javascript:;';
        btnCloseElem.onclick = function (){ dragPromptElem.style.display = 'none'; };
        promptBtnElem.appendChild(btnCloseElem);
        
        return dragPromptElem;
    },
    loadScript : function (src, callback) {
        var scriptElem = document.createElement('SCRIPT');
        
        scriptElem.type = 'text/javascript';
        scriptElem.async = true;
        
        if ( callback ) {
            function onScriptLoad() {
                
                if( scriptElem.readyState)
                {
                    if( scriptElem.readyState!='loaded' && scriptElem.readyState!='complete' )
                        return;
                    
                    scriptElem.onreadystatechange = scriptElem.onload = null;
                    callback(scriptElem);
                    
                }else {
                    scriptElem.onreadystatechange = scriptElem.onload = null;
                    callback(scriptElem);
                }
                
                
            }
            
            if (scriptElem.attachEvent){
                scriptElem.attachEvent('onreadystatechange', onScriptLoad);
            }else {
                scriptElem.addEventListener('load', onScriptLoad, false);
            }    
        }
                
        scriptElem.src = src;
        
        var currScriptElem = document.getElementsByTagName('script')[0];
        currScriptElem.parentNode.insertBefore(scriptElem, currScriptElem);
        
        return scriptElem;
    }
}

function log(obj) {
    if( typeof(enableLog) == 'undefined' ) return;
    
    var id = 'log';
    var logElem = document.getElementById(id);
    if( logElem == null )
    {
        logElem = document.createElement('div');
        logElem.id = id;
        logElem.style.cssText = 'position:fixed !important;position:absolute;z-index:9999;bottom:2px;left:2px;border:solid 2px #ccc;background-color:#e0e54b;opacity:0.5;filter:alpha(opacity:50);color:red;font-weight:700;overflow-x:hidden;overflow-y:auto;';
        
        document.body.insertBefore(logElem, document.body.childNodes[0]);
    }
    logElem.style.display = 'block';
    logElem.innerHTML = '';
    for(var i=0;i < arguments.length; i++)
    {
        var obj = arguments[i];
        logElem.innerHTML += '<b>'+obj+'</b><br />';
        for(var p in obj)
        {
            logElem.innerHTML += p + '：' + obj[p] + '<br />';
        }
    }
    logElem.style.height = logElem.clientHeight > 500 ? "500px" : "auto";
    
}

new Drag({
        container : document.getElementById('main'),
        column : 'column',
        mod : 'mod',
        handle : 'head'
    });
 