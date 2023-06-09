/**************************************************
Name   : New Photo Miniature Page List Manage
Author : Jonllen
SVN    : 163
Create : 2009-07-04 18:35:21
Update : 2009-08-15 23:04:01
Update : 2010-07-11 20:53:33
Update : 2011-02-27 11:38:00
WebSite: http://www.jonllen.com/
**************************************************/

var Photo = function (settings){
    settings = settings || {};
    for( p in this.settings) {
        if( !settings.hasOwnProperty(p) ) settings[p] = this.settings[p];
    }
    this.settings = settings;
    
}

Photo.prototype = {
    list : new Array(),
    settings : {
        pageCount : 0,
        pageIndex : 1,
        pageSize : 5,
        imgWidth : 66,
        imgHeight : 49,
        imgLoading : "images/loading.gif",
        imgBoxElem : null,
        itemWidth : 0,
        prevId : null,
        prevElem : null,
        nextId : null,
        nextElem : null,
        showName : false,
        containerId : "miniaturebox",
        ulElem : null,
        speed : 20,
        interval : 40,
        timer : undefined
    },
    img : {
        id : "",
        alt: "图片未加载",
        title : "",
        src : "",
        href :"javascript:;",
        imgElem : undefined,
        isLoad : false
    },
    currImg : null,
    push : function (img){
        
        for(p in this.img) {
            if (!img.hasOwnProperty(p)) img[p]=this.img[p];
        }
        
        //div.imgbox
        var imgBoxElem = this.settings.imgBoxElem;
        
        if ( imgBoxElem == null) {
            imgBoxElem = document.createElement("div");
            imgBoxElem.className = "list";
            
            var containerElem = document.getElementById(this.settings.containerId);
            containerElem.appendChild(imgBoxElem);
            
            this.settings.imgBoxElem = imgBoxElem;
        }
        
        //ul
        var ulElem = this.settings.ulElem;
        if ( ulElem == null) {
            ulElem = document.createElement("ul");
            
            imgBoxElem.appendChild(ulElem);
            
            this.settings.ulElem = ulElem;
        }
        
        //img
        var imgElem = document.createElement("img");
        imgElem.alt = img.alt;
        imgElem.title = img.title;
        img.imgElem = imgElem;
        
        ///a
        var linkElem = document.createElement("a");
        linkElem.href = img.href;
        linkElem.appendChild(imgElem);
        
        var _this = this;
        linkElem.onclick = function () { return _this.eClick(img); };
        
        //li
        var itemElem = document.createElement("li");
        itemElem.className = "item";
        itemElem.appendChild(linkElem);
        
        if(this.showName)
        {
            //p
            var nameElem = document.createElement("p");
            nameElem.innerHTML = img.name ? img.name : img.title;
            itemElem.appendChild(nameElem);
        }
        
        ulElem.appendChild(itemElem);
        
        if(this.settings.itemWidth == 0) {
            this.settings.itemWidth = parseInt(itemElem.clientWidth);
        }
        
        this.list.push(img);
        
    },
    init : function ( id ){
    
        //计算分页
        this.settings.pageCount = Math.ceil(this.list.length/this.settings.pageSize*1.0);
        
        var containerElem = document.getElementById(this.settings.containerId);
        
        var _this = this;
        
        //上一页
        var prevElem = this.settings.prevId ? document.getElementById(this.settings.prevId) : null;
        if( prevElem == null){
            prevElem = document.createElement("a");
            prevElem.innerHTML = "&lt;";
            prevElem.title = "上一页";
            prevElem.className = "prev";
            prevElem.href = "javascript:;";
            containerElem.insertBefore(prevElem, containerElem.childNodes[0]);
        }
        prevElem.onclick = function (){ _this.prev();};
        this.settings.prevElem = prevElem;
        
        //下一页
        var nextElem = this.settings.nextId ? document.getElementById(this.settings.nextId) : null;
        if( nextElem == null){
            nextElem = document.createElement("a");
            nextElem.innerHTML = "&gt;";
            nextElem.title = "下一页";
            nextElem.className = "next";
            nextElem.href = "javascript:;";
            containerElem.appendChild(nextElem);
        }
        nextElem.onclick = function (){ _this.next();};
        this.settings.nextElem = nextElem;
        
        var selectImg = null;
        
        //初始化图片id
        if( id )
            selectImg = this.select(id);
        
        //初始化第1页
        if( selectImg == null )
            this.go(1);      
    },
    isFirstPage : function ()
    {
        return this.settings.pageIndex == 1;
    },
    isLastPage : function ()
    {
        return this.settings.pageIndex == this.settings.pageCount;
    },
    eFirstPage :function (prevElem, nextElem){
        this.removeClass(nextElem,'disabled');
        this.addClass(prevElem,'disabled');
    },
    eLastPage :function (prevElem, nextElem){
        this.removeClass(prevElem,'disabled');
        this.addClass(nextElem,'disabled');
    },
    eMiddlePage :function (prevElem, nextElem){
        this.removeClass(prevElem,'disabled');
        this.removeClass(nextElem,'disabled');
    },
    eOnePage : function (prevElem, nextElem){
        this.addClass(prevElem,'disabled');
        this.addClass(nextElem,'disabled');
    },
    eChange : function (pageIndex, oldPageIndex) {
        
        if ( pageIndex==1 )
            this.eFirstPage(this.settings.prevElem, this.settings.nextElem);
            
        if ( pageIndex==this.settings.pageCount )
            this.eLastPage(this.settings.prevElem, this.settings.nextElem);
            
        if( pageIndex > 1 && pageIndex < this.settings.pageCount)
            this.eMiddlePage(this.settings.prevElem, this.settings.nextElem);
        
        if( this.settings.pageCount == 1)
            this.eOnePage(this.settings.prevElem, this.settings.nextElem);
    },
    eClick : function (img) {
        if( this.currImg) this.currImg.imgElem.parentNode.className = "";
        this.currImg = img;
        this.currImg.imgElem.parentNode.className = "on";
        return false;
    },
    prev :function (){
        
        if( this.isFirstPage() ) return;
        this.go( this.settings.pageIndex-1 );
    },
    next :function (){
        if( this.isLastPage() ) return;
        this.go( this.settings.pageIndex+1 );
    },
    go : function (pageIndex, unselect) {
        pageIndex = pageIndex || this.settings.pageIndex;
        
        if (pageIndex <= 0) pageIndex=1;
        
        if (pageIndex > this.settings.pageCount) pageIndex = this.settings.pageCount;
        
        var msie = /msie/.test( navigator.userAgent.toLowerCase() ) && !/opera/.test( navigator.userAgent.toLowerCase() );
        
        var list = null;
        if ( pageIndex==1 )
        {
            list = this.list.slice(0,( this.list.length  > this.settings.pageSize ? this.settings.pageSize : this.list.length ) );
        }
        else if ( pageIndex==this.settings.pageCount )
        {
            // Last Page Padding pageSize Count
            list = msie ? this.list.slice( -this.settings.pageSize) : this.list.slice( -(this.list.length - (this.settings.pageCount-1)*this.settings.pageSize));
        }
        else
        {
            var preloadCount = 0;
            
            if (msie) preloadCount = this.settings.pageSize-1;
            
            list = this.list.slice( (pageIndex-1)*this.settings.pageSize - preloadCount, pageIndex*this.settings.pageSize + preloadCount);
        }
        
        var itemWidth = 0;
        
        for (var i=0;i<list.length;i++)
        {
            var img = list[i];
            
            if( img.id == this.list[(pageIndex-1)*this.settings.pageSize].id && !unselect) this.eClick(img);
            
            if( list[i].isLoad ) continue;
            
            img.imgElem.src = this.settings.imgLoading;
                
            this.loadImg(
                img.src,
                this.settings.imgWidth,
                this.settings.imgHeight,
                function (src,width,height,parms,imgWidth,imgHeight){
                    parms.imgElem.style.width = width + 'px';
                    parms.imgElem.style.height = height + 'px';
                    parms.imgElem.src = parms.src;
                    if(height < imgHeight)
                        parms.imgElem.style.marginTop = Math.ceil((imgHeight - height)/2) + 'px';
                },
                img);
            
            img.isLoad = true;
        }
        
        //onChange Event
        this.eChange(pageIndex, this.settings.pageIndex);
        
        if (pageIndex==this.settings.pageIndex) return;
        
        //get the scroll space
        var space = (pageIndex - this.settings.pageIndex) * (this.settings.itemWidth * this.settings.pageSize);
        
        //scroll in the container using timer
        this.scroll(space);
        
        //set pageIndex
        this.settings.pageIndex = pageIndex;
    },
    select : function (id) {
        for( var i=0; i< this.list.length; i++) {
            var img = this.list[i];
            if( img.id != id) continue;
            
            var pageIndex = Math.ceil( (i+1)/this.settings.pageSize);
            
            //计算出页码
            this.go( pageIndex, true);
            
            //选中图片
            this.eClick(img);
            
            return img;
        }
    },
    scroll : function (space) {
    
        var _this = this;
        var hasMove = 0;
        
        function enlarge(){
            var interval = space > 0 ? _this.settings.interval : - _this.settings.interval;            
            _this.settings.imgBoxElem.scrollLeft += interval;
            hasMove += Math.abs(interval);
            if( hasMove >= Math.abs(space) ){
                clearInterval(_this.settings.timer);
            };
        }
        this.settings.timer = setInterval(enlarge,this.settings.speed);
    },
    loadImg : function(src,width,height,callback,parms)
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
        imgElem.onabort = function (){ imgElem.src = imgElem.src; };
        //imgElem.onreadystatechange=function(){ if (imgElem.readyState=="complete") {} }
        document.body.insertBefore(imgElem,document.body.childNodes[0]);
    },
    hasClass : function (elem, name) {
        return !!elem && (' '+elem.className+' ').indexOf(' '+name+' ') != -1;
    },
    addClass : function (elem, name) {
        if( !this.hasClass(elem, name)) {
            elem.className += (elem.className ? ' ' : '') + name;
        }
    },
    removeClass : function (elem, name) {
        if( this.hasClass(elem, name)) {
            elem.className = this.trim((' '+elem.className+' ').replace(' '+name+' ',' '));
        }
    },
    trim : function (str) {
     	return str.replace(/(^\s*)|(\s*$)/g, '');
    },
    $ : function (id) {
     	return document.getElementById(id);
    }
}