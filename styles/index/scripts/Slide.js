
/*
** Name   : Slide图片幻灯滚动
** Author : Jonllen
** Create : 2010-04-04
** WebSite: http://www.jonllen.com/
*/

var Slide = function (settings) {

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
    var list = this.settings.container.getElementsByTagName('img');
    if( list.length == 0) return;
    this.list = list;
    
    //创建页码
    this.createPages();
    
    //创建标题
    this.createTitle();
    
    //图片幻灯容器
    var slideBox = null;
    for( var i=0; i< this.settings.container.childNodes.length; i++ ) {
        if( this.settings.container.childNodes[i].nodeType == 1 ) {
            slideBox = this.settings.container.childNodes[i];
            break;
        }
    }
    this.slideBox = slideBox;
    
    //初始化第一项
    this.go(this.settings.index);
    
    //开始记时器
    if( list.length > 1 && this.settings.autoStart)
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
}

//原型
Slide.prototype = {
    settings : {
        index : 0,
        container : null,
        tickTime : 3000,
        speedTime : 1000,
        speedTick : 10,
        autoStart : true,
        itemWidth : 'auto',
        itemHeight : 'auto'
    },
    createPages : function () {
        var ulElem = document.createElement('ul');
        ulElem.className = 'pages';
        for( var i = 0; i < this.list.length; i++) {
            var liElem = document.createElement('li');
            liElem.className = i == this.settings.index ? 'current' : '';
            liElem.innerHTML = '<a href="javascript:;">' + (i+1) + '</a>';
            ulElem.appendChild(liElem);
        }
        this.pages = ulElem;
        this.settings.container.appendChild(ulElem);
    },
    createTitle : function (){
        var shadow = document.createElement('div');
        shadow.className = 'shadow';
        this.settings.container.appendChild(shadow);
        
        var shadowtitle = document.createElement('div');
        shadowtitle.className = 'shadowtitle';
        shadowtitle.innerHTML = '<h4 class="title"><a></a></h4>';
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
        this.title.href = this.list[this.settings.index].parentNode.href;
        this.title.target = this.list[this.settings.index].parentNode.target;
        
        this.slideBox.style.top = -(this.settings.index * this.settings.itemHeight) + 'px';
        
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
new Slide( {container : document.getElementById('slide') } );