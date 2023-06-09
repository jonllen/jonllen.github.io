    
    /**************************************************
    Description : Link ToolTip Manage V1.0
    Author : Jonllen
    WebSite: http://www.jonllen.com
    Create : 2009-08-28 21:28:15
    Update : 2009-11-15 23:21
    **************************************************/
    var Tooltip = function ( elem ){
        if (!elem) return;
        this.elem = elem;
        this.init();
    };
    
    Tooltip.prototype = {
    
        excursionX : 4,
        
        excursionY : 4,
    
        maxWidth : '450px',
        
        lineLenth :55, 
        
        maxLength : 450,
        
        cursorSrc : '',
    
        layer: function (){
            
            var layerElem = document.getElementById('tooltipLayer');
            if ( layerElem== null)
            {
                layerElem = document.createElement('div');
                layerElem.id = 'tooltipLayer';
                layerElem.className = 'tooltip';
                layerElem.style.display = 'none';
                layerElem.style.position = 'absolute';
                layerElem.innerHTML = '<div id="tooltipTitle"></div><div id="tooltipContent"></div><div><span class="linkto">Link To：</span><span id="tooltipLink"></span></div><div class="coordinate">Position：X:<span id="pageX"></span>,Y:<span id="pageY"></span></div>'; 
                document.body.insertBefore(layerElem, document.body.childNodes[0]);
            }
            return layerElem;
        },
    
        init: function () {
            this.content = this.elem.title;
            if (this.content=='') return;
            
            this.content = this.content.replace(/\n/g,'<br />');
            if (this.content.length > this.maxLength)
            {
                this.content = this.content.substring(0, this.maxLength-1) + '...';
            }
            this.elem.title = '';
            if ( this.cursorSrc != '')
            {
                this.elem.style.cursor = 'url(' + this.cursorSrc + ')';
            }
            
            var _self = this;
            
            _self.addEvent( _self.elem, 'mouseover', function (e, _self) {
                 
                 var layer = _self.layer();

                 document.getElementById('tooltipContent').innerHTML = _self.content;
                 document.getElementById('tooltipLink').innerHTML = _self.elem.href;
                 document.getElementById('tooltipTitle').innerHTML = _self.elem.innerHTML.replace(/<[^>].*?>/g,'');
                 
                 layer.style.left = '0px';
                 layer.style.top = '0px';
                 layer.style.display = 'block';
                 layer.style.width = _self.content.length > _self.lineLenth ? _self.maxWidth : 'auto';
                 
                 var mousePos = _self.mousePosition(e);
                 
                 document.getElementById('pageX').innerHTML = mousePos.x;
                 document.getElementById('pageY').innerHTML = mousePos.y;
                 
                 //alert('mousePos.y:'+mousePos.y+', _self.excursionY:'+_self.excursionY+', layer.clientHeight:'+layer.clientHeight+', document.documentElement.clientHeight:'+document.documentElement.clientHeight+', document.documentElement.scrollTop:'+document.documentElement.scrollTop);
                 var docWidth = document.body.offsetWidth, docHeight = document.body.offsetHeight;
                 
                 if (mousePos.x + _self.excursionX + layer.clientWidth > document.documentElement.clientWidth + document.documentElement.scrollLeft )
                 {
                    mousePos.x = mousePos.x - layer.clientWidth - _self.excursionX;
                    _self.excursionX = -_self.excursionX;
                 }
                 if (mousePos.y + _self.excursionY + layer.clientHeight > document.documentElement.clientHeight + document.documentElement.scrollTop )
                 {
                    mousePos.y = mousePos.y - layer.clientHeight - _self.excursionY;
                    _self.excursionY = -_self.excursionY;
                 }
                 
                 layer.style.left = mousePos.x + _self.excursionX + 'px';
                 layer.style.top = mousePos.y + _self.excursionY + 'px';
                 
                 
            }, _self);
            
            _self.addEvent(
                _self.elem, 
                'mouseout', 
                function (e, _self) {
                     var layer = _self.layer();
                     layer.style.display = 'none';
                }, 
                _self
            );
        },
        
        bind: function () {
        
            var _self = this;

            _self.addEvent(
                window
                ,'load'
                ,function (e, _self){
                    _self.layer();
                    var list = document.getElementsByTagName('a');    
                    for(var i=0;i<list.length;i++)
		            {
		                if( list[i].getAttribute('tooltip') == null)
		                {
		                    new Tooltip(list[i]);
		                }
		            }
                },
                _self
            );

        },
        
        addEvent: function (target, eventType, func, parameter) {
            var efunc = function (e){
                func (e, parameter);
            }
			if( target && target.attachEvent)
			{
				target.attachEvent("on" + eventType, efunc );
				
			}else if( target && target.addEventListener)
			{
				target.addEventListener(eventType, efunc, false);
			}
			return this;
		},
		
		mousePosition: function(e) { 
            if(e.pageX || e.pageY) { 
                return {
                    x: e.pageX,
                    y:e.pageY 
                }; 
            }
            var scrollElem = (document.compatMode && document.compatMode!="BackCompat")? document.documentElement : document.body;
            return {
                x: e.clientX + scrollElem.scrollLeft,
                y: e.clientY + scrollElem.scrollTop
            };
        },
		
		each: function (list,fn) {
		    for(var i=0;i<list.length;i++)
		    {
		        fn (list[i], i);
		    }
		}
		
    };
    
    //Bind;
    new Tooltip().bind();
    

