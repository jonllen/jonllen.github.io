
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Flex屏蔽默认右键菜单。 - Flex - 金龙博客</title>
<meta name="description" content="首先需要修改index.template.html生成的静态模板页面,使用js监听document.onmousedown事件，并调用Flex里暴露的方法，代码如下：(Index为生成的flash对象id)
function onNsRightClick(e){     if(e.which == 3){          Index.openRightClick();          e.stopPropagation();      }     return false;}function onIeRightClick(e){     if(event.button  1){          Index.openRightClick();          parent.frames.location.replace('javascript: parent.falseframe');     }     return false;}if(navigator.appName == "Netscape"){     document.captureEvents(Event.MOUSEDOWN);      document.addEventListener("mousedown", onNsRightClick, true); }else{     document.onmousedown=onIeRightClick; }第二步，还需要修改index.template.html默认生成flash的脚本，在AC_FL_RunContent方法调用里添加一行"wmode", "opaque",参数设置，这是关键。
最后，在Flex端注册暴露能被js调用的函数，E" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-12-20' } );
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
		     > <a href="/jonllen/flex/contextMenu.aspx">Flex屏蔽默认右键菜单。</a>
		</div>
        <div class="article">
			<div class="title"><h2>Flex屏蔽默认右键菜单。</h2></div>
			<div class="category">分类：<a href="/jonllen/flex/">Flex</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="line-height: 30px;">
<p style="text-indent: 2em;">首先需要修改index.template.html生成的静态模板页面,使用js监听document.onmousedown事件，并调用Flex里暴露的方法，代码如下：(Index为生成的flash对象id)</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">function</span><span style="color: #000000;"> onNsRightClick(e){<br />     </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(e.which </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #000000;">3</span><span style="color: #000000;">){<br />          Index.openRightClick();<br />          e.stopPropagation(); <br />     }<br />     </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />}<br /><br /></span><span style="color: #0000ff;">function</span><span style="color: #000000;"> onIeRightClick(e){<br />     </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(event.button </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">){<br />          Index.openRightClick();<br />          parent.frames.location.replace(</span><span style="color: #000000;">'</span><span style="color: #000000;">javascript: parent.falseframe</span><span style="color: #000000;">'</span><span style="color: #000000;">);<br />     }<br />     </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />}<br /><br /><br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;">(navigator.appName </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">Netscape</span><span style="color: #000000;">"</span><span style="color: #000000;">){<br />     document.captureEvents(Event.MOUSEDOWN); <br />     document.addEventListener(</span><span style="color: #000000;">"</span><span style="color: #000000;">mousedown</span><span style="color: #000000;">"</span><span style="color: #000000;">, onNsRightClick, </span><span style="color: #0000ff;">true</span><span style="color: #000000;">); <br />}<br /></span><span style="color: #0000ff;">else</span><span style="color: #000000;">{<br />     document.onmousedown</span><span style="color: #000000;">=</span><span style="color: #000000;">onIeRightClick; <br />}</span></div></div></pre>
<p style="text-indent: 2em;">第二步，还需要修改index.template.html默认生成flash的脚本，在AC_FL_RunContent方法调用里添加一行"wmode", "opaque",参数设置，这是关键。</p>
<p style="text-indent: 2em;">最后，在Flex端注册暴露能被js调用的函数，ExternalInterface.addCallback("openRightClick", openRightClick);我的是写在Application的creationComplete事件里的，另外增加Application的mouseOver、mouseDown事件，在showMouseEvent方法里就能自定义模拟显示右键菜单了，mxml代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;?</span><span style="color: #ff00ff;">xml version="1.0" encoding="utf-8"</span><span style="color: #0000ff;">?&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Application </span><span style="color: #ff0000;">xmlns:mx</span><span style="color: #0000ff;">="http://www.adobe.com/2006/mxml"</span><span style="color: #ff0000;"> <br />    verticalGap</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> scroll</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"><br />    horizontalScrollPolicy</span><span style="color: #0000ff;">="off"</span><span style="color: #ff0000;"> verticalScrollPolicy</span><span style="color: #0000ff;">="off"</span><span style="color: #ff0000;"><br />    creationComplete</span><span style="color: #0000ff;">="init()"</span><span style="color: #ff0000;"> initialize</span><span style="color: #0000ff;">="initApp(event)"</span><span style="color: #ff0000;"><br />    mouseOver</span><span style="color: #0000ff;">="getMouseTarget(event)"</span><span style="color: #ff0000;"> mouseDown</span><span style="color: #0000ff;">="showMouseEvent(event)"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Style </span><span style="color: #ff0000;">source</span><span style="color: #0000ff;">="/styles/index/css/style.css"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">mx:Style</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:HTTPService </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="httpsLogin"</span><span style="color: #ff0000;"> url</span><span style="color: #0000ff;">="/Flex/Login.aspx"</span><span style="color: #ff0000;"> method</span><span style="color: #0000ff;">="get"</span><span style="color: #ff0000;"> showBusyCursor</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"> result</span><span style="color: #0000ff;">="httpsLogin_Result()"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:request </span><span style="color: #ff0000;">xmlns</span><span style="color: #0000ff;">=""</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">username</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                {this.txtUserName.text}<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">username</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">password</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                {this.txtPassword.text}<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">password</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:request</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:HTTPService</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Script</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;!</span><span style="color: #ff00ff;">[CDATA[<br />            import mx.managers.ICursorManager;<br />            import mx.managers.CursorManagerPriority;<br />        <br />            import mx.controls.Alert;<br />            import mx.managers.CursorManager;<br />            <br />            import org.bytearray.gif.player.GIFPlayer;   <br />            import org.bytearray.gif.events.FileTypeEvent;   <br />            import org.bytearray.gif.events.GIFPlayerEvent;   <br />            import org.bytearray.gif.events.FrameEvent;   <br />            import org.bytearray.gif.events.TimeoutEvent;<br />            <br />            [Embed(source="/styles/index/images/cursor.gif")] <br />            private var cursorHand : Class;//图标<br />            <br />            private var mouseTarget:DisplayObject;<br />            <br />            //public var myGIFPlayer:GIFPlayer = new GIFPlayer();<br /><br />            public function httpsLogin_Result() : void<br />            {<br />                var rs : String  = httpsLogin.lastResult.result;<br />                if ( rs=="true")<br />                {<br />                    mx.controls.Alert.show("登陆成功！","提示信息", Alert.OK, this,null,null, Alert.YES);<br />                    return;<br />                }<br />                mx.controls.Alert.show(rs,"提示信息",Alert.OK,this,null,null, Alert.OK);<br />                <br />            }<br />            <br />            public function init():void<br />            {<br />                var date:Date = new Date();<br />                swfHeader.source += "&amp;daytime=" + (date.getHours() </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">= 18 ? "no" : "yes");<br />                <br />                ExternalInterface.addCallback("openRightClick", openRightClick);<br /><br />            }<br />            <br />            <br />            private function getMouseTarget(event:MouseEvent):void<br />            {<br />               mouseTarget = DisplayObject(event.target);<br />            }<br />            <br />            private function openRightClick():void<br />            {<br />                 var e:MouseEvent = new MouseEvent(MouseEvent.MOUSE_DOWN, true, false, mouseTarget.mouseX, mouseTarget.mouseY);<br />                 mouseTarget.dispatchEvent(e);<br />            }<br />            <br />            private function showMouseEvent(event:MouseEvent):void<br />            {<br />                 if(event.buttonDown == true)<br />                  Alert.show("Left");<br />                 else<br />                  Alert.show("Right");<br />            }<br />            <br />        ]]&gt;<br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:Script</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:SWFLoader </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="swfHeader"</span><span style="color: #ff0000;"> width</span><span style="color: #0000ff;">="700"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="255"</span><span style="color: #ff0000;"> source</span><span style="color: #0000ff;">="/style/blog/mobile.swf?menu=true&amp;amp;currentState=sunny&amp;amp;tempVar=11"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:SWFLoader</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:HBox </span><span style="color: #ff0000;">styleName</span><span style="color: #0000ff;">="nav"</span><span style="color: #ff0000;"> width</span><span style="color: #0000ff;">="960"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="58"</span><span style="color: #ff0000;"> horizontalGap</span><span style="color: #0000ff;">="50"</span><span style="color: #ff0000;"> paddingTop</span><span style="color: #0000ff;">="25"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:LinkButton </span><span style="color: #ff0000;">left</span><span style="color: #0000ff;">="10"</span><span style="color: #ff0000;"> click</span><span style="color: #0000ff;">="ExternalInterface.call('function(){location.reload();}')"</span><span style="color: #ff0000;"> label</span><span style="color: #0000ff;">="首页"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:LinkButton </span><span style="color: #ff0000;">label</span><span style="color: #0000ff;">="随笔"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:LinkButton </span><span style="color: #ff0000;">label</span><span style="color: #0000ff;">="相册"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:LinkButton </span><span style="color: #ff0000;">label</span><span style="color: #0000ff;">="留言"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:HBox</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:VBox </span><span style="color: #ff0000;">width</span><span style="color: #0000ff;">="960"</span><span style="color: #ff0000;"> visible</span><span style="color: #0000ff;">="false"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Panel </span><span style="color: #ff0000;">width</span><span style="color: #0000ff;">="364"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="234"</span><span style="color: #ff0000;"> backgroundAlpha</span><span style="color: #0000ff;">="2"</span><span style="color: #ff0000;"> layout</span><span style="color: #0000ff;">="absolute"</span><span style="color: #ff0000;"> fontSize</span><span style="color: #0000ff;">="12"</span><span style="color: #ff0000;"> title</span><span style="color: #0000ff;">="个人档案"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Label </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="47"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="37"</span><span style="color: #ff0000;"> text</span><span style="color: #0000ff;">="用户名："</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:TextInput </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="110"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="37"</span><span style="color: #ff0000;"> id</span><span style="color: #0000ff;">="txtUserName"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Label </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="47"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="89"</span><span style="color: #ff0000;"> text</span><span style="color: #0000ff;">="密　码："</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:TextInput </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="110"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="89"</span><span style="color: #ff0000;"> id</span><span style="color: #0000ff;">="txtPassword"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Button </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="110"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="141"</span><span style="color: #ff0000;"> click</span><span style="color: #0000ff;">="httpsLogin.send()"</span><span style="color: #ff0000;"> label</span><span style="color: #0000ff;">="登陆"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:Panel</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Panel </span><span style="color: #ff0000;">width</span><span style="color: #0000ff;">="364"</span><span style="color: #ff0000;"> height</span><span style="color: #0000ff;">="234"</span><span style="color: #ff0000;"> layout</span><span style="color: #0000ff;">="absolute"</span><span style="color: #ff0000;"> fontSize</span><span style="color: #0000ff;">="12"</span><span style="color: #ff0000;"> title</span><span style="color: #0000ff;">="日历"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Label </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="47"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="37"</span><span style="color: #ff0000;"> text</span><span style="color: #0000ff;">="用户名："</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">mx:Button </span><span style="color: #ff0000;">x</span><span style="color: #0000ff;">="110"</span><span style="color: #ff0000;"> y</span><span style="color: #0000ff;">="141"</span><span style="color: #ff0000;"> click</span><span style="color: #0000ff;">="httpsLogin.send()"</span><span style="color: #ff0000;"> label</span><span style="color: #0000ff;">="登陆"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:Panel</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">    <br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:VBox</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    <br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">mx:Application</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<p style="text-indent: 2em;">凡事有利就有弊，由于屏蔽了右键菜单，TextInput文本框默认也没有粘贴的选项了，由于设置了flash的wmode为opaque，导致一些中文输入的反作用，所以没有特别的需求还是不屏蔽到默认右键菜单，如果要加上一些自己定义的上下文菜单，Flex内也很简单，在Application的上下文内添加条不可选的菜单项实现如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008000;">//</span><span style="color: #008000;"> 隐藏一些内建的鼠标右键菜单项</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.contextMenu.hideBuiltInItems(); <br /></span><span style="color: #0000ff;">var</span><span style="color: #000000;"> contextMenuItem : ContextMenuItem </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ContextMenuItem(</span><span style="color: #000000;">"</span><span style="color: #000000;">Powered By: Jonllen</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />contextMenuItem.enabled </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />contextMenu.customItems.push(contextMenuItem);<br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.contextMenu.customItems.push(contextMenuItem);</span></div></div></pre>
<div></div>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/flex/">Flex</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-12-20 16:36</li>
				<li>update@ 2009-12-22 20:02:11</li>
				<li>阅读(<span id="articleClick">11980</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href=""></a></li>
<li>下一篇：<a href="/jonllen/flex/flex-js.aspx">Flex和js互调</a></li></ul>
		</div>
		

<div class="correlative">
	
		    <h4>相关文章</h4>
			<ul>



			</ul>
		
</div>

		
		<div class="comment">
			<div class="title">评论</div>
			<div class="commentlist" id="commentContent">
				

				<div id="commentNothing" class="nothing">
	暂无任何评论。
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=91&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/flex/contextMenu.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=91";
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