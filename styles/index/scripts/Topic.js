
/*
** Name   : Slide图片幻灯滚动
** Author : Jonllen
** Create : 2016-04-21
** WebSite: http://www.jonllen.com/
*/

var Topic = function (settings) {

    //默认构造参数初始化
    for(p in this.settings)
    {
        if ( !settings.hasOwnProperty(p) ) settings[p] = this.settings[p];
    }
    this.settings = settings;
    
    //获取宽高度
    if( this.settings.itemWidth == 'auto')
        this.settings.itemWidth = this.settings.container.clientWidth;
    if( this.settings.itemHeight == 'auto')
        this.settings.itemHeight = this.settings.container.clientHeight;
    
    //图片列表
    if( this.settings.list.length == 0) return;
    else this.init(); 
}

//原型
Topic.prototype = {
    settings : {
        index : 0,
        container : null,
        tickTime : 10000,
        speedTime : 1000,
        speedTick : 10,
        autoStart : true,
        itemWidth : 'auto',
        itemHeight : 'auto',
		list : []
    },
	init : function (){
		this.list = this.settings.list;
		//创建页码
		this.createPages();
		
		//创建标题
		this.createTitle();
		
		
		
		//初始化第一项
		this.go(this.settings.index);
		
		//开始记时器
		if( this.list.length > 1 && this.settings.autoStart)
			this.startTimer();
		
		var _this = this;
		
		//监听主幻灯容器事件
		this.settings.container.onmouseover = function (e){
		
			_this.stopTimer();
			
			e = e || window.event;
			var target = e.target || e.srcElement;
			
			if( target.parentNode == _this.pages || target.parentNode.parentNode == _this.pages ) {
				var pageElem = target.tagName.toLowerCase() == 'a' ? target : target.childNodes[0];
				_this.go( parseInt(pageElem.innerHTML) - 1 );
			}
			
			this.onmouseout = function (ev) {
	
				if( _this.settings.autoStart) 
					_this.startTimer();
			}
		};       
		this.settings.container.oncontextmenu = function (e){
			e = e || window.event;
			e.cancelBubble = true
			e.returnValue = false;
			return false;
		};
	},
    createPages : function () {
        var ulElem = document.createElement('ul');
        ulElem.className = 'pages';
        for( var i = 0; i < this.list.length; i++) {
            var liElem = document.createElement('li');
            liElem.className = i == this.settings.index ? 'current' : '';
            liElem.innerHTML = '<a href="javascript:;" >' + (i+1) + '</a>';
			liElem.title = this.list[i].title;
            ulElem.appendChild(liElem);
        }
        this.pages = ulElem;
        this.settings.container.appendChild(ulElem);
    },
    createTitle : function (){
        //var shadow = document.createElement('div');
        //shadow.className = 'shadow';
        //this.settings.container.appendChild(shadow);
        
        var shadowtitle = document.createElement('div');
        shadowtitle.className = 'shadowtitle';
        shadowtitle.innerHTML = '<h4><a></a></h4>';
        this.title = shadowtitle.childNodes[0].childNodes[0];
        this.settings.container.appendChild(shadowtitle);
    },
    go : function (index) {
        
        if( this.settings.container==null || this.list.length == 0 ) return;
    
        //清空原pages选择页
        this.pages.childNodes[this.settings.index].className = '';
        
        //计算出当前页
        index = index == this.list.length ? 0 : index;
        
        //滚动到当前页
        this.slide(index);
        
    },
    slide : function (index) {
    
        if ( this.settings.index == index ) {
        
            //第一次初始化
            this.slideFinish();
            return;
        }
		
		this.settings.index = index;
		this.slideFinish(this.settings.index);
		return;
    
        //当前absoluteTop
        var currentTop = -this.settings.index * this.settings.itemHeight;
        
        //新absoluteTop
        var newTop = -index * this.settings.itemHeight;
        
        var _this = this;
        
        //切换页时滚动定时器
        this.timerSpeed = setInterval( function (){

                //每刻间隔滚动的absoluteTop
                var tickTop = (newTop - currentTop) / _this.settings.speedTick;
                
                //原元素absoluteTop
                var absoluteTop = parseFloat( _this.slideBox.style.top );
                absoluteTop = isNaN(absoluteTop) ? 0 : absoluteTop;
                
                //计算是否已滚动完成
                if( (tickTop < 0 && absoluteTop <= newTop)
                    || ( tickTop > 0 && absoluteTop >= newTop ) ) {
                
                    //清除记时器
                    clearInterval(_this.timerSpeed);
                    
                    //设置为当前页
                    _this.settings.index = index;
                    
                    //完成滚动
                    _this.slideFinish();
                    
                    return;
                }
                
                //累加要滚动的absoluteTop
                absoluteTop += tickTop;
                
                //设置top
                _this.slideBox.style.top = absoluteTop + 'px';
                
            },
            this.settings.speedTick
        );        
        
    },
    slideFinish :function (){
    
        //设置当前pages页
        this.pages.childNodes[this.settings.index].className = 'current';
        

        
        //设置标题和链接
        this.title.innerHTML = this.list[this.settings.index].title;
        this.title.href = this.list[this.settings.index].href || '###';
        this.title.target = this.list[this.settings.index].target || '_self';
        
        //this.slideBox.style.top = -(this.settings.index * this.settings.itemHeight) + 'px';
		var elem = this.settings.container;
        var styleBackground = 'url('+this.list[this.settings.index].src+') no-repeat center top';
		elem.style.cssText = 'background:'+styleBackground+' !important';
		//elem.style.width = 'auto';
		if(document.body.className.indexOf('topic')==-1){
			document.body.className = document.body.className.length > 0 ? document.body.className + ' topic' : 'topic';
		}
    },
    startTimer : function (){
        
        var _this = this;
    
        //页自动滚定时器
        this.timerTick = setInterval( function (){
                _this.go(_this.settings.index+1);
            },
            this.settings.tickTime
        );
        
    },
    stopTimer : function () {
        clearInterval(this.timerTick);
        clearInterval(this.timerSpeed);
        this.slideFinish();
    }
}

//初始化
setTimeout(
	function (){
		new Topic( {container : document.getElementById('top'), 
			list : [{'src':'/upload/jonllen/upload/IMG_1612.jpg','title':''},{'src':'/upload/jonllen/upload/banner2009.jpg','title':'厦门鼓浪屿', 'href':'/jonllen/breast/nianhui.aspx'},{'src':'/upload/jonllen/upload/banner2011.jpg','title':'2011', 'href' : '/jonllen/breast/142.aspx'}]									
			} );//{'src':'/upload/jonllen/upload/IMG_1702.jpg','title':''},
	},
	0
);

document.writeln('<style type="text/css">');
document.writeln('body.topic #top{background:none;min-height:255px;width:auto !important;}');
document.writeln('body.topic #top .shadow{ height:30px; line-height:30px;background-color:#1B3674;opacity:.5;filter:alpha(opacity=50); border:none !important;}');
document.writeln('body.topic #top .shadowtitle{ position:absolute;right:5px; bottom:54px;border:none !important;display:none;}');
document.writeln('body.topic #top .shadowtitle h4{ height:30px; line-height:30px; overflow:hidden;text-indent:2em; margin:0; padding:0; font-size:13px;}');
document.writeln('body.topic #top .shadowtitle h4 a{text-indent:2em; color:#FFFFFF;}');
document.writeln('body.topic #top ul.pages{ position:absolute; left:50%; bottom:54px;}');
document.writeln('body.topic #top ul.pages li{ list-style:none; line-height:normal;float:left;margin:0px;}');
document.writeln('body.topic #top ul.pages li a{display:block;border:solid 1px #ccc; background:#fff; margin:0 2px; padding:2px 2px; color:green;}');
document.writeln('body.topic #top ul.pages li.current a,');
document.writeln('body.topic #top ul.pages li a:hover{border:#004C82 1px solid; background-color:green; color:#FFFFFF; font-weight:700;}');
document.writeln('</style>');