
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Flex播放器(实现播放、缓冲进度条和音频曲线显示) - Flex - 金龙博客</title>
<meta name="description" content="<object height='200' width='450' data='/upload/jonllen/media/Index.swf' type='application/x-shockwave-flash'>
<param name='quality' value='high' />
<param name='wmode' value='transparent' />
<param name='src' value='/upload/jonllen/media/Index.swf' />
</object>
<br />" />
<link href="/styles/index/css/default/index.css" id="linkIndex" rel="stylesheet" type="text/css" />
<link href="/styles/index/css/default/template2.css" id="linkTemplate" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="/styles/index/scripts/ajax.js"></script>
</head>
<body>
<div id="toolbar">
	<div class="auto fixft" >
	    <a href="/" class="home"><span>首页</span><img alt="logo" src="/styles/index/css/default/images/logo_small.gif" /></a>
		
		<!--<form id="loginFrom" name="loginFrom" onsubmit="return loginEncrypt();" action="/User/Login.aspx"  method="post" target="loginIfr">
		    <input type="hidden" id="hdEncrypted" name="hdEncrypted" value="" />
		    <div class="login">
			    <span class="ico">用户名：</span>
			    <input id="username" name="username" onfocus="loadEncryptScript()" class="text" type="text" />
			    密码：<input id="password" name="password" onfocus="loadEncryptScript()" class="text" type="password" />
			    <input id="btnLogin" class="btn" type="submit" value="登录" />
			    
			    <a href="#" onclick="location='https://localhost/Passport';" >安全登录</a>
			    
		    </div>
		</form>
		<iframe id="loginIfr" name="loginIfr" scrolling="no" frameborder="0" width="0" height="0"></iframe>
        <script type="text/javascript">
            function loadEncryptScript(){
                if( typeof(encryptScript) == 'undefined') {
                    
                    document.getElementById('btnLogin').disabled = true;
                    
                    encryptScript = document.createElement('script');
                    encryptScript.type = 'text/javascript';
                    encryptScript.src = '/Ajax/RSAEncrypt.aspx?callback=loadEncryptScriptCallback';
                    var currScriptElem = document.getElementsByTagName('script')[0];
                    currScriptElem.parentNode.insertBefore(encryptScript, currScriptElem);
                }
            }
            function loadEncryptScriptCallback(){
                document.getElementById('btnLogin').disabled = false;
            }
            function loginEncrypt(){
                
                var pwdElem = document.getElementById('password');
                var encryptedPassword = RSAEncrypt(pwdElem.value);
                pwdElem.value = encryptedPassword;
                document.getElementById('hdEncrypted').value = 'RSA';
                return true;
            }
        </script>-->
		
		<div class="skin">
			<ul id="skinlist">
			    <li class="first">　切换风格：</li>
			    <li id="temp2" class="on"><a class="green" href="javascript:toggleTemplate(2, '/styles/index/css/default/index.css', false);"  title="切换风格：大自然绿">大自然绿</a></li><li id="temp3" class=""><a class="blue" href="javascript:toggleTemplate(3, '/styles/index/css/blue/index.css', false);"  title="切换风格：深蓝海">深蓝海</a></li><li id="temp4" class=""><a class="red" href="javascript:toggleTemplate(4, '/styles/index/css/guoqing/index.css', false);"  title="切换风格：国庆专题">国庆专题</a></li><li id="temp6" class=""><a class="christmas" href="javascript:toggleTemplate(6, '/styles/index/css/christmas/index.css', false);"  title="切换风格：圣诞节">圣诞节</a></li><li id="temp7" class=""><a class="simple" href="javascript:toggleTemplate(7, '/styles/index/css/simple/index.css', false);"  title="切换风格：简单线条">简单线条</a></li>
			</ul>
		</div>
		<div class="display">
		    <ul>
		        <li>　<!--版面：--></li>
		        <!--<li><a href="#" onclick="location='?display=1';" class="">左-中</a> | </li>
		        <li><a href="#" onclick="location='?display=2';" class="on">左-中-右</a> | </li>
		        <li><a href="#" onclick="location='?display=3';" class="">中-右</a> | </li>
		        <li><a href="#" onclick="location='?display=4';" class="">中</a></li>-->
		    </ul>
		</div>
	</div>
</div>
<div class="auto" id="top" style="" >
	<div class="title">
	    <h3>jonllen</h3>
	    <h4>金龙，目前就职于一家软件公司，从事Java和.Net信息安全开发设计。
</h4>
	</div>
</div>
<div class="auto" id="nav" >
	<ul id="navigation">
		<li><a href="/">首页</a></li>
        <li><a href="/jonllen/aspnet/" class="up" >Asp.Net</a></li>
<li><a href="/jonllen/work/"  >工作</a></li>
		<li><a class="up" href="/album/">相册</a></li>
		<li><a href="/leave/">留言</a></li>
		<li class="preview"></li>
	</ul>
</div>
<script type="text/javascript"> 
(function (){
    var select, navlist = document.getElementById('navigation').getElementsByTagName('li');
    for(var i=0;i<navlist.length;i++)
    {
        if ( navlist[i].className=='preview') continue;
        var link = navlist[i].getElementsByTagName('a')[0];
        if ( link && window.location.href.toLowerCase().indexOf(link.href.toLowerCase())>-1 )
        {
            select = link;
        }
    }
    if( select!=undefined )
    {
        select.parentNode.className = "on";
    }
})();
function toggleTemplate(tempId, skinSrc, additionalHtml){
    if( additionalHtml) {
        location='?tempid='+tempId;
        return true;
    }
    
    var linkIndexElem = document.getElementById('linkIndex');
    var linkIndexHref = '' + skinSrc;
    linkIndexElem.href = '';
    linkIndexElem.href = linkIndexHref;
    
    var linkTemplateElem = document.getElementById('linkTemplate');
    var linkTemplateHref = linkIndexHref.substr(0, linkIndexHref.lastIndexOf('/') ) + linkTemplateElem.href.substr(linkTemplateElem.href.lastIndexOf('/'));
    linkTemplateElem.href = '';
    linkTemplateElem.href = linkTemplateHref;
    
    var skinName = 'Skin';
    var skinValue = '0='+tempId;
    var skinDate = new Date();
    skinDate.setTime(skinDate.getTime() + 1000 * 60 * 120 );
    document.cookie = skinName + '=' + skinValue + '; path=/; expires=' + skinDate.toGMTString();
    
    var templatelist = document.getElementById('skinlist').getElementsByTagName('li');
    for(var i=0;i<templatelist.length;i++){
        var templateli = templatelist[i];
        if (templateli.className == 'on')
            templateli.className = '';
        if( templateli.id == 'temp' + tempId)
            templateli.className = 'on';
    }
}
</script>

<div id="main" class="auto container">
    <div id="ctl00_panLeft" class="siderLeft column column1">
	
<div id="mod25" class="mod info">
	<div class="head"><strong class="ico">个人档案</strong></div>
	<div class="cont">
		<dl>
			<dt><a href="/jonllen/"><img src="/upload/jonllen/upload/wolf.gif" defaultsrc="/styles/index/css/default/images/ico_default.gif" onerror="if(this.src.indexOf(this.getAttribute('defaultsrc'))==-1) this.src=this.getAttribute('defaultsrc');" /><br />jonllen</a></dt>
			<dd><a href="/breast/" class="profile">心情闪存</a> | <a href="/leave/" class="article">给他留言</a></dd>
			<!--<dd><a href="/rss.aspx" target="_blank" class="rss">RSS网志</a> | <a href="/profile.aspx" class="">个人档案</a></dd>-->
			<dd>妮称：jonllen</dd>
			<dd>来自：中国. 湖南. 湘潭</dd>
			<dd>简述：金龙，目前就职于一家软件公司，从事Java和.Net信息安全开发设计。
</dd>
		</dl>
	</div>
</div>
<div id="mod26" class="mod calendar">
	<div class="head"><strong class="ico">博客日历</strong></div>
	<div id="calendar" class="cont"></div>
	<script type="text/javascript" language="javascript" src="/styles/index/scripts/DatePicker/WdatePicker.js" ></script>
    <script type="text/javascript" language="javascript">
        function ePicked(dp)
        {
            for(var i=0;i<archive.length;i++)
            {
                //if(archive[i]==dp.cal.getDateStr())
                    //window.location = '/archive/' + dp.cal.getDateStr() + '.aspx';
            }
        }
        
            function getArticleArchive()
		    {
		        var url = "/plugin/web/getArticleArchive.do?coluidpath=500&colutype=1";		        		        
		        Ajax.send({
		            type : "GET",
		            url : url,
		            fn : function (data){
	                    var rs;
	                    try{rs=eval("rs="+data);}catch(e){alert(e);return;}
                        
	                    if (rs.success)
	                    {
	                        var archive = [];
	                        if(rs.data) archive = rs.data.split(',');
	                        window.archive = archive;
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-12-29' } );
 	                    }else
	                    {
	                        alert(rs.error);
	                    }
                            }
		        });
		    }
        setTimeout(getArticleArchive,0);
    </script>
</div>
<div id="mod27" class="mod category">
	<div class="head"><strong class="ico">分类文档</strong></div>
	<div class="cont">
		<ul>

			
			        <li>
			            
			            <a href="/jonllen/reflection/" >
			                三日必省吾身<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/remark/" >
			                备忘录<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/it/" >
			                业界<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/css/" >
			                CSS<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/flex/" >
			                Flex<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/db/" >
			                数据库<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/java/" >
			                Java<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/work/" >
			                工作<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/breast/" >
			                心情笔记<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/aspnet/" >
			                Asp.Net<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/js/" >
			                JavaScript<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/album/" >
			                我的相册<!-- (0)-->
			            </a>
			        </li>
			
		</ul>
	</div>
</div>
 
<!--<div id="mod28" class="mod links">
	<div class="head"><strong class="ico">友情链接</strong></div>
	<div class="cont">
		<ul>
                    
		    <li><a href="http://www.applezqp.com" title="老平同志，高妹。" target="_blank">applezqp</a></li>
                    
		    <li><a href="http://www.thjy.org" title="天河部落教育博客" target="_blank">天河部落</a></li>
                    
		    <li><a href="http://weibo.com/zjj" title="时代财富张静君的微博" target="_blank">张静君</a></li>
                    
		    <li><a href="http://www.fortuneage.com" title="广州网站建设" target="_blank">时代财富</a></li>
                    
		</ul>
	</div>
</div>-->
 
</div>

	<div class="siderMiddle">
	    <div class="content column column2">
            

    <div class="articlecont">
        <div class="position">
		    <strong>当前位置：</strong>
		    <a href="http://www.jonllen.com">首页</a>
		     > <a href="/jonllen/flex/">Flex</a>
		     > <a href="/jonllen/flex/sound.aspx">Flex播放器(实现播放、缓冲进度条和音频曲线显示)</a>
		</div>
        <div class="article">
			<div class="title"><h2>Flex播放器(实现播放、缓冲进度条和音频曲线显示)</h2></div>
			<div class="category">分类：<a href="/jonllen/flex/">Flex</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<p style="text-indent: 2em;">一时兴起，玩起了Flex，本来还想要做个Flex博客，不过目前还只能在里面树个公告。。。没办法做完啊，河蟹的个杯具的！Flex布局不像是CSS，精美Flash动画不是拖一个两个控件就能做出来滴，而是一笔一条线绘制出来滴！这些我都还不熟悉，所有折腾快一个星期了，每天都是搞到头大才睡觉，今天终于能出一个简单的播放器。</p>
<p style="text-indent: 2em;">一直很喜欢音乐这个东西，喜欢Jay，更喜欢他的歌，也很崇拜小猪，他的一段灰色空间曾让我激流奋进，想过自己能做个播客放自己喜欢听的歌曲，出于自恋那样会更有一点点满足感。呃~走神了，前二天无意看到一群教师的个人博客，深深的被他们的博文所吸引，无论是谈技术还是记录生活的，写得都是那么的真切，还有坚持每日一博的，坚持不放弃...</p>
<p style="text-indent: 2em;"><b>mx:ProgressBar实现加载歌曲缓冲进度条</b></p>
<p style="text-indent: 2em;">ProgressBar有三大mode模式，分别为event、manual、polled，event为基于事件驱动模式，可设置source对象自动显示加载进程；manual为手动模式，需要调用<samp class="codeph">ProgressBar.setProgress()</samp>方法设置滚动条进度；polled为轮询模式，本例使用的manual模式，Sound加载load请求歌曲添加一个ProgressEvent.PROGRESS处理中监听事件，然后根据Sound已加载的bytes和bytesTotal数，设置setProgress进度。这里需要注意在切换歌曲的时候先要移除ProgressEvent.PROGRESS事件，否则之前播放歌曲还未加载完又切换load新歌曲时回出现ProgressBar触发多个PROGRESS事件被设置进度出现来回滚动的问题。</p>
<p style="text-indent: 2em;"><b>mx:HSlide调节滑秆</b></p>
<p style="text-indent: 2em;">这个控件在本例中2处使用，实现对播放进度和声音大小的控制。最一开始调整播放进度的问题难倒了我很久，因为在歌曲播放过程中HSlide要自动滑动当前播放位置，同时又需要能手动拖动播放位置，HSlide本来有一个很好的change事件用来侦听改变，但是我使用定时器设置HSlide的value的时竟然也给我触发change事件，参考了Adobe哥官网的帮助文档，说是Slider 组件的值因鼠标或键盘交互操作而改变时调度，如果 <code>liveDragging</code> 属性是 <code>true</code>，则在用户移动滑块时持续调度该事件。 如果 <code>liveDragging</code> 是 <code>false</code>，则在用户释放滑块时调度该事件。但是无论我怎么设置，在代码里改变了HSlide的value值怎会触发change事件，不是说在用户交互操作而改变时调度吗？无赖啊，后来只能折中采取监听thumbDrag滑秆拖动时事件，这个事件Adobe哥的解释是当按下滑块并随后随鼠标移动时调度，这样会有一个小问题，就是需要拖动滑秆按下时才会触发，点击无效。</p>
<p style="text-indent: 2em;"><b>SoundMixer.computeSpectrum()分析音频曲线</b></p>
<p style="text-indent: 2em;">本例你看到显示的音频曲线其实是右64个绘制成条状的Canvas控件排列而成，然后使用定时器每间隔100毫秒重新设置他们的scaleY位置以呈现出变幻曲线的效果，代码只有三行很简单，具体可参见我下面源码给出的timerTick事件。这里为什么要用定时器呢？在网上看别人是监听Event.ENTER_FRAME事件重绘音频曲线的，不想搞那么麻烦就直接用定时器了，随便根据bytesTotal和bytesLoaded计算下歌曲播放时间，使用100毫秒的定时器也并好耗站资源，CPU没有涨很高。</p>
<p style="text-indent: 2em;"><b>播放器：</b></p>
<p style="text-indent: 2em;">
<object height="200" width="450" data="/upload/jonllen/media/Index.swf" type="application/x-shockwave-flash">
<param name="quality" value="high" />
<param name="src" value="/upload/jonllen/media/Index.swf" />
<param name="bgcolor" value="#869ca7" />
</object>
</p>
<p style="text-indent: 2em;"><b>mxml代码如下：</b></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;?</span><span style="color: #ff00ff;">xml version="1.0" encoding="utf-8"</span><span style="color: #0000ff;">?&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Application </span><span style="color: #ff0000;">xmlns:mx</span><span style="color: #0000ff;">="http://www.adobe.com/2006/mxml"</span><span style="color: #ff0000;"> verticalGap</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> scroll</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> backgroundAlpha</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"><br />     horizontalScrollPolicy</span><span style="color: #0000ff;">="off"</span><span style="color: #ff0000;"> verticalScrollPolicy</span><span style="color: #0000ff;">="off"</span><span style="color: #ff0000;"> verticalAlign</span><span style="color: #0000ff;">="middle"</span><span style="color: #ff0000;"> horizontalAlign</span><span style="color: #0000ff;">="center"</span><span style="color: #ff0000;"><br />     initialize</span><span style="color: #0000ff;">="init(event)"</span><span style="color: #ff0000;"> layout</span><span style="color: #0000ff;">="vertical"</span><span style="color: #ff0000;"> fontSize</span><span style="color: #0000ff;">="14"</span><span style="color: #ff0000;"> paddingLeft</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> paddingTop</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> paddingRight</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> paddingBottom</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Script</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;![CDATA[</span><span style="color: #808080;"><br />            import mx.formatters.DateFormatter;<br />        <br />            import mx.effects.SoundEffect;<br />            import mx.events.SliderEvent;<br />            import mx.core.SoundAsset;<br />        <br />            import mx.controls.Alert;<br />            import mx.managers.CursorManager;<br />            import flash.media.*;<br />            <br />            import flash.utils.Timer;<br />            <br />            [Embed(source="/styles/index/images/cursor.gif")] <br />            private var cursorHand : Class;//图标<br />            <br />            private var xml:XML; <br />            private var xmlPath:String = "/flex/bin-debug/song.xml";<br />            private var currIndex : Number = 0; <br />            <br />            private var song :Sound;<br />            private var channel :SoundChannel;<br />            private var position : Number = 0;<br /><br />            // 保存 512 个声音波形的快照<br />            private var bytes:ByteArray = new ByteArray();<br />            // SoundBar 的个数<br />            private var barNum:uint = 64;<br />            // 保存所有 SoundBar 的引用<br />            private var soundBars:Array = new Array();<br />            <br />            //定时器<br />            private var timer : Timer;<br />            <br />            //Application的initialize初试化事件<br />            private function init(event:Event):void<br />            {<br />                var loader:URLLoader = new URLLoader(); <br />                loader.load(new URLRequest(xmlPath)); <br />                loader.addEventListener(Event.COMPLETE,Xml_Complete);<br />                <br />                timer = new Timer(100);<br />                timer.addEventListener(TimerEvent.TIMER,timerTick);<br />                <br />                var barWidth:Number = boxSoundBar.width*1.00/barNum;<br />                // 初始化Canvas为音频条，放入舞台并加入数组<br />                for (var i:uint = 0; i &lt; barNum; i++)  {<br />                   var soundBar:Canvas = new Canvas();<br />                   soundBar.width = barWidth;<br />                   soundBar.height = boxSoundBar.height;<br />                   soundBar.x = i * barWidth;<br />                      soundBar.y =  0;<br /><br />                   var g:Graphics = soundBar.graphics;<br />                   g.lineStyle(1,0x6688AA,1);<br />                   g.beginGradientFill(GradientType.RADIAL,[0x33cc00,0x456628],[1,1],[0,255],null,SpreadMethod.REFLECT,InterpolationMethod.RGB,0);<br />                   g.drawRect(0,0,soundBar.width,soundBar.height);<br />                   g.endFill();<br />                   boxSoundBar.addChild(soundBar);<br />                   soundBars.push(soundBar);<br />                }<br /><br />                // 隐藏一些内建的鼠标右键菜单项<br />                this.contextMenu.hideBuiltInItems(); <br />                var contextMenuItem : ContextMenuItem = new ContextMenuItem("Powered By: Jonllen");<br />                contextMenuItem.enabled = false;<br />                contextMenu.customItems.push(contextMenuItem);<br />                this.contextMenu.customItems.push(contextMenuItem);<br />                <br />                //更改鼠标图标<br />                CursorManager.setCursor(cursorHand);<br />            }<br />            <br />            //读取XML文件完成事件<br />            private function Xml_Complete(event:Event):void <br />            {<br />                xml = new XML(event.target.data);<br />                if(xml.item.length()&gt;=1)<br />                {<br />                    listSong.dataProvider= xml.item.name;<br />                    listSong.selectedIndex = 0;<br />                    //手动触发List的Change事件<br />                    listSong.dispatchEvent(new mx.events.ListEvent(Event.CHANGE, true, false));<br />                }<br />            }<br />            <br />            //List选择歌曲改变事件<br />            private function Xml_Change(event:Event):void<br />            {<br />                currIndex = event.target.selectedIndex;<br />                <br />                timer.stop();<br />                <br />                //停止声音文件的加载<br />                if( song!=null )<br />                {<br />                    //移除之前加载PROGRESS事件对songProgress进度条的控制<br />                    song.removeEventListener(ProgressEvent.PROGRESS,songProgress_Change);<br />                    if( song.isBuffering )<br />                        song.close();<br />                }<br />                <br />                song = new Sound();<br />                var url : String = xml.item[currIndex].url;<br />                var source:URLRequest = new URLRequest(url);<br />                song.load(source);<br />                song.addEventListener(ProgressEvent.PROGRESS, songProgress_Change);<br />                song.addEventListener(IOErrorEvent.IO_ERROR, songProgress_Error);<br />                <br />                position = 0;<br />                songStart();<br />            }<br />            <br />            //歌曲播放完成<br />            private function songProgress_Complete(e:Event):void {<br />                if(currIndex == xml.item.length()-1) {<br />                    currIndex = 0;<br />                }else {<br />                    currIndex++;<br />                }<br />                listSong.selectedIndex = currIndex;<br />                listSong.dispatchEvent(new mx.events.ListEvent(Event.CHANGE, true, false));<br />            }<br />            <br />            //加载歌曲失败<br />            private function songProgress_Error(e:IOErrorEvent):void {<br />                Alert.show("文件不存在！","系统提示");<br />            }<br />            <br />            //开始播放歌曲<br />            private function songStart():void {<br />                <br />                if ( channel != null ){<br />                    channel.stop();<br />                }<br />                <br />                lblName.text = xml.item[currIndex].name;<br />                channel = song.play(position,int.MAX_VALUE);<br />                <br />                var length :Number = song.length*song.bytesTotal/song.bytesLoaded;<br />                var date : Date = new Date();<br />                date.time = length;                <br />                var dt : DateFormatter = new DateFormatter();<br />                dt.formatString="NN:SS";<br />                var totalTime : String = dt.format(date);<br />                <br />                date.time = channel.position;<br />                lblTime.text = dt.format(date) + " | " + totalTime;<br />                lblStatus.text = "播放";<br />                <br />                var soundcontrol : SoundTransform = channel.soundTransform;<br />                soundcontrol.volume = volumeSlider.value;<br />                channel.soundTransform= soundcontrol;<br />                <br />                timer.start();<br />                boxSoundBar.visible = true;<br />            }<br />            <br />            //停止歌曲播放<br />            private function songStop():void {<br />                timer.stop();<br />                position = 0;<br />                boxSoundBar.visible = false;<br />                lblTime.text = "00:00 |"+lblTime.text.split("|")[1];<br />                lblStatus.text = "停止";<br />                songSlider.value = songSlider.minimum;<br />                songProgress.setProgress(songProgress.minimum,songProgress.maximum);<br />                if ( channel != null )<br />                {<br />                    channel.stop();<br />                }<br />            }<br />            <br />            //暂停歌曲播放<br />            private function songPause():void {<br />                if ( channel != null ){<br />                    timer.stop();<br />                    position = channel.position;<br />                    channel.stop();<br />                    lblStatus.text = "暂停";<br />                }<br />            }<br />            <br />            //加载歌曲进度条显示<br />            private function songProgress_Change(e:ProgressEvent):void {<br />                var percent:int = Math.round(e.bytesLoaded * 100 / e.bytesTotal);<br />                songProgress.setProgress(e.bytesLoaded,e.bytesTotal);<br />            }<br />            <br />            //定时器方法<br />            private function timerTick( e:TimerEvent):void {<br />                <br />                if( channel!=null) {<br />                    <br />                    var length :Number = song.length*song.bytesTotal/song.bytesLoaded;<br />                    var date : Date = new Date();<br />                    date.time = length;                <br />                    var dt : DateFormatter = new DateFormatter();<br />                    dt.formatString="NN:SS";<br />                    var totalTime : String = dt.format(date);<br />                    <br />                    date.time = channel.position;<br />                    lblTime.text = dt.format(date) + " | " + totalTime;<br />                    <br />                    songSlider.value=100*channel.position/length;<br />                    if( songSlider.value&gt;=songSlider.maximum){<br />                        timer.stop();<br />                        songProgress_Complete(null);<br />                        return;<br />                    }<br />                    <br />                    SoundMixer.computeSpectrum(bytes, false, 0);<br />                    for (var i:uint = 0; i &lt; barNum; i++)  {<br />                       soundBars[i].scaleY = bytes.readFloat();<br />                    }<br />                    <br />                }<br />            }<br />            <br />            //歌曲进度调整事件<br />            internal function songSlider_Change(e:SliderEvent):void{<br />                timer.stop();<br />                if ( channel != null ){<br />                    var length :Number = song.length*song.bytesTotal/song.bytesLoaded;<br />                    position = e.value*length/100;<br />                    songStart();<br />                }<br />            }<br />            <br />            //声音大小调整事件<br />            internal function changeVolume(evt:SliderEvent):void{<br />                if ( channel != null ){<br />                    var soundcontrol : SoundTransform = channel.soundTransform;<br />                    soundcontrol.volume = evt.value;<br />                    channel.soundTransform= soundcontrol;<br />                }<br />            }<br />            <br />            //设置歌曲播放时间和总时间<br />            private function setTimeStatus():void {<br />                var length :Number = song.length*song.bytesTotal/song.bytesLoaded;<br />                var date : Date = new Date();<br />                date.time = length;                <br />                var dt : DateFormatter = new DateFormatter();<br />                dt.formatString="NN:SS";<br />                var totalTime : String = dt.format(date);<br />                <br />                date.time = channel.position;<br />                lblTime.text = dt.format(date) + " | " + totalTime;<br />            }<br />            <br />        </span><span style="color: #0000ff;">]]&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:Script</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:HBox </span><span style="color: #ff0000;">width</span><span style="color: #0000ff;">="100%"</span><span style="color: #ff0000;"> verticalGap</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> verticalAlign</span><span style="color: #0000ff;">="middle"</span><span style="color: #ff0000;"> horizontalAlign</span><span style="color: #0000ff;">="center"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Canvas </span><span style="color: #ff0000;">width</span><span style="color: #0000ff;">="440"</span><span style="color: #ff0000;"> borderColor</span><span style="color: #0000ff;">="#CCCCCC"</span><span style="color: #ff0000;"> borderStyle</span><span style="color: #0000ff;">="solid"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="171"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Label </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="lblName"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="5"</span><span style="color: #ff0000;"> fontSize</span><span style="color: #0000ff;">="18"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="10"</span><span style="color: #ff0000;"> text</span><span style="color: #0000ff;">=""</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:HBox </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="boxSoundBar"</span><span style="color: #ff0000;"> horizontalGap</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> verticalAlign</span><span style="color: #0000ff;">="middle"</span><span style="color: #ff0000;"><br />                 width</span><span style="color: #0000ff;">="192"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="50"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="5"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="39"</span><span style="color: #ff0000;"> visible</span><span style="color: #0000ff;">="false"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">mx:HBox</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:ProgressBar </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="songProgress"</span><span style="color: #ff0000;"> label</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> <br />                width</span><span style="color: #0000ff;">="290"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="3"</span><span style="color: #ff0000;"> mode</span><span style="color: #0000ff;">="manual"</span><span style="color: #ff0000;"> textAlign</span><span style="color: #0000ff;">="left"</span><span style="color: #ff0000;"> <br />                labelPlacement</span><span style="color: #0000ff;">="center"</span><span style="color: #ff0000;"> fontSize</span><span style="color: #0000ff;">="3"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="10"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="97"</span><span style="color: #ff0000;"> <br />                minimum</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> maximum</span><span style="color: #0000ff;">="100"</span><span style="color: #ff0000;"> barColor</span><span style="color: #0000ff;">="yellow"</span><span style="color: #ff0000;"><br />                trackColors</span><span style="color: #0000ff;">="[white, haloSilver]"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:HSlider </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="songSlider"</span><span style="color: #ff0000;"> styleName</span><span style="color: #0000ff;">="song"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"><br />                 showTrackHighlight</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="5"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="85"</span><span style="color: #ff0000;"> thumbDrag</span><span style="color: #0000ff;">="songSlider_Change(event)"</span><span style="color: #ff0000;"><br />                 width</span><span style="color: #0000ff;">="300"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="22"</span><span style="color: #ff0000;"> minimum</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> maximum</span><span style="color: #0000ff;">="100"</span><span style="color: #ff0000;"> <br />                 liveDragging</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> snapInterval</span><span style="color: #0000ff;">="1"</span><span style="color: #ff0000;">  toolTip</span><span style="color: #0000ff;">="拖动调整播放进度"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:HSlider</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Label </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="lblStatus"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="243"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="41"</span><span style="color: #ff0000;"> text</span><span style="color: #0000ff;">=""</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Label </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="lblTime"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="205"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="66"</span><span style="color: #ff0000;"> text</span><span style="color: #0000ff;">="00:00 | 5:23"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Button </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="10"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="124"</span><span style="color: #ff0000;"> label</span><span style="color: #0000ff;">="Play"</span><span style="color: #ff0000;"> click</span><span style="color: #0000ff;">="songStart()"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Button </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="74"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="124"</span><span style="color: #ff0000;"> label</span><span style="color: #0000ff;">="Pause"</span><span style="color: #ff0000;"> click</span><span style="color: #0000ff;">="songPause()"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Button </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="152"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="124"</span><span style="color: #ff0000;"> label</span><span style="color: #0000ff;">="Stop"</span><span style="color: #ff0000;"> click</span><span style="color: #0000ff;">="songStop()"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:HSlider </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="volumeSlider"</span><span style="color: #ff0000;"> styleName</span><span style="color: #0000ff;">="volume"</span><span style="color: #ff0000;"> change</span><span style="color: #0000ff;">="changeVolume(event)"</span><span style="color: #ff0000;"><br />                 showTrackHighlight</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="0.5"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="222"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="133"</span><span style="color: #ff0000;"><br />                  width</span><span style="color: #0000ff;">="81"</span><span style="color: #ff0000;"> minimum</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> maximum</span><span style="color: #0000ff;">="10"</span><span style="color: #ff0000;"> liveDragging</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"><br />                   snapInterval</span><span style="color: #0000ff;">="0.1"</span><span style="color: #ff0000;"> toolTip</span><span style="color: #0000ff;">="音量调节"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Label </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="308"</span><span style="color: #ff0000;"> fontSize</span><span style="color: #0000ff;">="18"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="10"</span><span style="color: #ff0000;"> text</span><span style="color: #0000ff;">="歌曲列表"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:List </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="listSong"</span><span style="color: #ff0000;"> alpha</span><span style="color: #0000ff;">="0.25"</span><span style="color: #ff0000;"> x</span><span style="color: #0000ff;">="308"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="43"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="116"</span><span style="color: #ff0000;"><br />                 change</span><span style="color: #0000ff;">="Xml_Change(event)"</span><span style="color: #ff0000;"> width</span><span style="color: #0000ff;">="130"</span><span style="color: #ff0000;"> toolTip</span><span style="color: #0000ff;">="点击选择歌曲"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">mx:List</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:Canvas</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:HBox</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:Application</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<br />
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/flex/">Flex</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-12-29 00:33</li>
				<li>update@ </li>
				<li>阅读(<span id="articleClick">16384</span>)</li>
				<li>评论(3)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/flex/flex-js.aspx">Flex和js互调</a></li>
<li>下一篇：<a href="/jonllen/flex/97.aspx">Flex播放器同步显示歌词</a></li></ul>
		</div>
		

<div class="correlative">
	
		    <h4>相关文章</h4>
			<ul>



			</ul>
		
</div>

		
		<div class="comment">
			<div class="title">评论</div>
			<div class="commentlist" id="commentContent">
				



				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'evlos')">引用</a></li>

						        </ul>
						        <a>1楼</a> evlos 2010-01-02 13:42:20
					        </div><div class="cont">真不错，这歌也很好听</div>
					        <div class="reply" ><span>回复：</span>欢迎常来听：)
（2010-01-02 13:43:46）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'mellon17')">引用</a></li>

						        </ul>
						        <a>2楼</a> mellon17 2011-05-06 19:01:45
					        </div><div class="cont">为什么发布以后，考出swf后，单独运行，波行有问题?</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'sky0319')">引用</a></li>

						        </ul>
						        <a>3楼</a> sky0319 2011-06-06 17:48:09
					        </div><div class="cont">请问你的xml中是怎么定义的</div>
					        
				        </div>


				
			</div>
		</div>
		<div class="postcomment">
	        <div class="title">发表评论<a id="comment"></a></div>
	        <div class="box">
		        <div class="fi"><label>用户名</label><input id="txtUserName" type="text" value="" class="text" title="请输入显示用户名称" /><span class="note">*必填</span></div>
		        
		        
		        <div class="fi"><label>网站链接</label><input id="txtWebsite" type="text" class="text" title="请输入您的网站链接地址以便回访（非必填）" /></div>
		        
		        <div class="fi"><label>邮箱地址</label><input id="txtEmail" type="text" class="text" title="请输入您的邮箱地址以便回复（非必填）" /><input id="chkEmailNotify" type="checkbox" title="当博主回复时以邮件通知我" />回复通知我</div>
		        <div class="fi"><label>内容</label><textarea id="txtContent" class="textarea"></textarea><span class="note">*必填</span></div>
		        <div class="btn"><input type="button" class="submit" onclick="postComment()" value="提交" /></div>
	        </div>
        </div>
        <script type="text/javascript" src="/styles/index/scripts/ajax.js"></script>
        <script type="text/javascript">
            function postComment()
		    {
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=93&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/flex/sound.aspx';
		        data += "&content="+ encodeURIComponent(document.getElementById("txtContent").value);
		        var pwd = document.getElementById("txtPassword");
		        if (pwd!=null)
		        {
		            data += "&pwd="+ pwd.value;
		        }
		        var website = document.getElementById("txtWebsite");
		        if (website!=null)
		        {
		            data += "&website="+ website.value;
		        }
		        data += "&email="+ encodeURIComponent(document.getElementById("txtEmail").value);
		        data += "&emailNotify="+ encodeURIComponent(document.getElementById("chkEmailNotify").checked);
		        Ajax.send({
		            type : "POST",
		            url : url,
		            data : data,
		            fn : function (data){
	                    var rs;
	                    try{rs=eval("rs="+data);}catch(e){alert(e);return;}
                        
	                    if (rs.success)
	                    {
	                        appendComment();
	                        if(document.getElementById('commentNothing')!=null){ 
	                          document.getElementById('commentNothing').style.display = 'none';
	                        }
	                        document.getElementById("txtContent").value = "";
	                        alert("提交评论成功！");
	                    }else
	                    {
	                        alert(rs.error);
	                    }
                            }
		        });
		    }

function appendComment()
		    {
var itemComment = document.createElement('div');
itemComment.className = 'item';
var username = document.getElementById("txtUserName").value;
var index = document.getElementById('commentContent').getElementsByTagName('ul').length + 1;
var content =  document.getElementById("txtContent").value;
itemComment.innerHTML = '<div class="desc"><ul class="options"><li><a href="javascript:;" onclick="quote(this,\''+username+'\')">引用</a></li></ul><a>'+index+'楼</a> '+username+'</div><div class="cont">'+content+'</div>';
document.getElementById('commentContent').appendChild(itemComment);
}

            function addClick()
		    {
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=93";
		        Ajax.send({
		            type : "GET",
		            url : url,
		            fn : function (data){
		                 var clickElem = document.getElementById('articleClick');
		                 if(clickElem !=null) clickElem.innerHTML = data; 
		            }
		        });

		    }
            addClick();
        </script>
		
	</div>
	<script type="text/javascript">
	    function zoom(size)
	    {
	        var content = document.getElementById("content");
	        content.style.fontSize = size+"px";
	        for(var i=0;i<content.childNodes.length;i++)
	        {
	            if(content.childNodes[i].nodeType==1)
	                content.childNodes[i].style.fontSize = size+"px";
	        }
	    }
	    
	    function quote(target,name)
	    {
	        var content = name+"："+target.parentNode.parentNode.parentNode.nextSibling.innerHTML;
	        var reply = document.getElementById("txtContent");
	        if (reply==null) return;
	        reply.value += "[quote]"+content.replace(/<br>/ig,'\n\r')+"[/quote]\n";
	        reply.focus();
	        
            var r = reply.createTextRange();
            r.moveStart('character',reply.innerHTML.length);
            r.collapse(true);
            r.select();
            
            //replace <fieldset(\S|\s)+?legend>(\S|\s)+</fieldset> to [quote]$2[/quote]
	    }
	</script>
 


        </div>
	</div>
	<div id="ctl00_panRight" class="siderRight column column3">
	
<div id="mod29" class="mod recommend">
    <h4 class="head">博文推荐</h4>
    <div class="cont">
	    <ul>
                    

	    </ul>
    </div>
</div>
<div id="mod30" class="mod comment">
    <h4 class="head">最新评论</h4>
    <div class="cont">
	    <ul>
		    

<li><a href="/jonllen/work/164.aspx#comment"><b>oracle_cs</b>：您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？ 1607418266@qq.com</a></li>

<li><a href="/jonllen/work/164.aspx#comment"><b>oracle_cs</b>：您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？ 1607418266@qq.com</a></li>

<li><a href="/jonllen/js/175.aspx#comment"><b>cstomcat</b>：您好，请问用js可以实现sm3算法吗？改造的难度大吗？</a></li>

<li><a href="/jonllen/js/175.aspx#comment"><b>cstomcat</b>：您好，请问用js可以实现sm3算法吗？改造的难度大吗？</a></li>

<li><a href="/jonllen/work/174.aspx#comment"><b>王誉晓</b>：博主，膜拜您已经很久了，能加个qq号吗，有很多问题想请教您啊，qq：1261634218</a></li>

	    </ul>
    </div>
</div>
 
<div id="mod31" class="mod recent">
    <h4 class="head">最近发表</h4>
    <div class="cont">
	    <ul>

                    
		    <li><a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a>(2015-06-05)</li>
                    
		    <li><a href="/jonllen/js/178.aspx">JavaScript实现SM2算法加解密</a>(2014-10-28)</li>
                    
		    <li><a href="/jonllen/breast/177.aspx">2014年国庆</a>(2014-10-04)</li>
                    
		    <li><a href="/jonllen/breast/176.aspx">面对&逃避</a>(2014-08-04)</li>
                    
		    <li><a href="/jonllen/js/175.aspx">JS版SM2国密算法的签名验证</a>(2014-06-17)</li>
                    
	    </ul>
    </div>
</div>
 
<div id="mod36" class="mod search">
	<h4 class="head">搜索</h4>
	<div class="cont">
		<form action="/" method="get">
	        <input type="text" name="key" class="text" value="" />
	        <input type="submit" class="btn" value="搜索" />
	    </form>
	</div>
</div>
 
<div id="mod32" class="mod click">
    <h4 class="head">关注最多</h4>
    <div class="cont">
	    <ul>
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(31679)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(25861)</li>
                    
		    <li><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a>(23039)</li>
                    
		    <li><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a>(20062)</li>
                    
		    <li><a href="/jonllen/java/struts.aspx">Struts增删改查实例及源代码下载</a>(19711)</li>
                    
	    </ul>
    </div>
</div>
 
</div>
</div>

<div class="auto" id="foot">
    <div class="wrapper">
	Powered By ：Jonllen  <a href="http://www.miibeian.gov.cn" target="_blank">粤ICP备10049366号</a>
	</div>
</div>
 
<script type="text/javascript" src="/styles/index/scripts/Drag.js"></script>
<script type="text/javascript" src="/styles/index/scripts/Tooltip.js" ></script>
<div style="display:none"> 
    <script type="text/javascript" src="/styles/index/scripts/statistics.js"></script>
</div>
</body>
</html>