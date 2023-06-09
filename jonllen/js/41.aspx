
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>摆脱JQuery—之自定义Dom筛选器 - JavaScript - 金龙博客</title>
<meta name="description" content="之所以说要摆脱jquery，并不是说jquery不好用，本人也是佩服jquery五体投地，在没有用上jquery的时候我还没认识到javascript如此强大的功能，好在jquery的脚本是全部开源的，在它的里面我们能够学到很多的东西。不过我看过它的源码，可能是由于本人的js水平有限还有很多地方看不是很明白，不过在使用的过程可以得知jquery之所以如此强大得意于的它封装的dom对象类，并且几乎提供一个几乎"万能"的筛选器，而封装类又提供很多方便常见的方法操作dom对象，最重要的一点是jquery帮我兼容搞定所有的浏览器，使得我们不需要再考虑为ff、opera或safari做单独的判断，所以jquery倍受程序员的青睐。jquery还能进行很好扩展，提供了很多丰富的插件，也有提供一整套UI解决方案，还算好用啦。不过可能是由于本人比较叛逆的性格，出与没事干找抽，呵呵，就是不想再用jquery，也没有啦，下面我来说一下我为什么不再想用jquery的原因：

jquery脚本文件较庞大，1.2.6版没打包前有98kb，而打包后也占了31kb，但我们通常只用它其中的一个很小部分功能，感觉就有点浪费，所以没有必要把这么大的一个jquery脚本文件引用到页面；
本身的一些Bug，无论写什么东西都可能会有bug，虽然jquery是开" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-07-12' } );
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
		     > <a href="/jonllen/js/">JavaScript</a>
		     > <a href="/jonllen/js/41.aspx">摆脱JQuery—之自定义Dom筛选器</a>
		</div>
        <div class="article">
			<div class="title"><h2>摆脱JQuery—之自定义Dom筛选器</h2></div>
			<div class="category">分类：<a href="/jonllen/js/">JavaScript</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size:18px; line-height:22px" title="main">
<p style="text-indent:2em">之所以说要摆脱jquery，并不是说jquery不好用，本人也是佩服jquery五体投地，在没有用上jquery的时候我还没认识到javascript如此强大的功能，好在jquery的脚本是全部开源的，在它的里面我们能够学到很多的东西。不过我看过它的源码，可能是由于本人的js水平有限还有很多地方看不是很明白，不过在使用的过程可以得知jquery之所以如此强大得意于的它封装的dom对象类，并且几乎提供一个几乎"万能"的筛选器，而封装类又提供很多方便常见的方法操作dom对象，最重要的一点是jquery帮我兼容搞定所有的浏览器，使得我们不需要再考虑为ff、opera或safari做单独的判断，所以jquery倍受程序员的青睐。jquery还能进行很好扩展，提供了很多丰富的插件，也有提供一整套UI解决方案，还算好用啦。不过可能是由于本人比较叛逆的性格，出与没事干找抽，呵呵，就是不想再用jquery，也没有啦，下面我来说一下我为什么不再想用jquery的原因：</p>
<ol style="margin:0; padding:0; padding-left:2em;">
<li>jquery脚本文件较庞大，1.2.6版没打包前有98kb，而打包后也占了31kb，但我们通常只用它其中的一个很小部分功能，感觉就有点浪费，所以没有必要把这么大的一个jquery脚本文件引用到页面；</li>
<li>本身的一些Bug，无论写什么东西都可能会有bug，虽然jquery是开源的，但是一般很少有人能真正看懂它里面的框架而进行修正。bug如放入了jquery脚本自定义的window的resize事件不能正确触发，UI里面的滚动页面后的拖拽bug(好象新版已修复)，及和其他脚本库不能兼容等。</li>
<li>不能满足所有的需求，这点是必然的，jquery只能做到尽量通用。对于那些门户网站我想它一定不会要依赖jquery，而是会积累出来一套适合自己的脚本库，如ajax。我想要ajax在callback回调函数不止带responseText还需要自定义多传一个参数，jquery没有提供那只能自己写。</li>
<li>有时候直接操作dom对象会比jquery更直接方便，如document.getElementById('test').innerHTML += 'html'而jquery要使用$('#test').html( $('#test').html()+'html' )，有人会说那上面我写的代码还是比jquery的长，但是其实我们在js里面用到document.getElementById并不是很多，最重要的还是一些逻辑判断操作。这里再暴jquery一个小bug：不知它做了什么判断使用$("#test").html(0)后test的innerHTML被设成了''空而不是0，但使用最原始的东西当然是不会有错的。 </li>
</ol>
<p style="text-indent:2em">说了这么多无非就是想不用jquery，那么我们应该使用什么东西来代替jquery里面的一些常见方法呢，还有什么？DIY(Do it yourself)自己来写呗~~</p>
<p style="text-indent:2em">首先，我们需要的是一个类似于jquery的筛选器函数，并且返回的是数组，能像jquery一样批量的操作dom元素，这里我暂时不想用jquery那样自己做个对象来封装dom元素，先直接就用个Array好了，筛选器函数代码如下：</p>
<div style=" background-color:#eee; border:solid 1px #ccc; margin:20px; padding:10px" class="code"><span style="color: #0000FF;">function</span><span style="color: #000000;">&nbsp;$$(selector)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">&nbsp;(&nbsp;</span><span style="color: #0000FF;">typeof</span><span style="color: #000000;">(selector)&nbsp;</span><span style="color: #000000;">!=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">'</span><span style="color: #000000;">string</span><span style="color: #000000;">'</span><span style="color: #000000;">&nbsp;)&nbsp;</span><span style="color: #0000FF;">return</span><span style="color: #000000;">&nbsp;selector;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;selectors&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;selector.trim().split(</span><span style="color: #000000;">'</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">'</span><span style="color: #000000;">),&nbsp;list&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">new</span><span style="color: #000000;">&nbsp;Array();<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list.push(document);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">debugger;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">for</span><span style="color: #000000;">&nbsp;(</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;i</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;&nbsp;i</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">selectors.length;&nbsp;i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;item&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;selectors[i];<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">&nbsp;(item.trim()</span><span style="color: #000000;">==</span><span style="color: #000000;">''</span><span style="color: #000000;">&nbsp;)&nbsp;</span><span style="color: #0000FF;">continue</span><span style="color: #000000;">;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">if&nbsp;(item.indexOf('#')&nbsp;&gt;&nbsp;-1&nbsp;)</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">{</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">&nbsp;&nbsp;&nbsp;&nbsp;list.length&nbsp;=&nbsp;1;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;id&nbsp;=&nbsp;item.substring(1,item.search(/\.|\[/));</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(id.trim()!='')&nbsp;list.push(document.getElementById(id));</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">}else</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">{</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">上次列表</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;tmp&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;list.slice(</span><span style="color: #000000;">0</span><span style="color: #000000;">),&nbsp;doc&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;tmp.length&nbsp;</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">0</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">?</span><span style="color: #000000;">&nbsp;tmp[</span><span style="color: #000000;">0</span><span style="color: #000000;">]&nbsp;:&nbsp;document;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;list.length&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">0</span><span style="color: #000000;">;</span><span style="color: #008000;">//</span><span style="color: #008000;">重置</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">var&nbsp;tmpList&nbsp;=&nbsp;new&nbsp;Array();</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">for</span><span style="color: #000000;">(</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;j</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;&nbsp;j</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">tmp.length;&nbsp;j</span><span style="color: #000000;">++</span><span style="color: #000000;">)</span><span style="color: #008000;">//</span><span style="color: #008000;">循环上次列表</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;tagName&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;item.search(</span><span style="color: #000000;">/</span><span style="color: #000000;">\.|\[</span><span style="color: #000000;">/</span><span style="color: #000000;">)&nbsp;</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">?</span><span style="color: #000000;">&nbsp;item.substring(</span><span style="color: #000000;">0</span><span style="color: #000000;">,item.search(</span><span style="color: #000000;">/</span><span style="color: #000000;">\.|\[</span><span style="color: #000000;">/</span><span style="color: #000000;">))&nbsp;:&nbsp;item;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">&nbsp;(tagName.trim()</span><span style="color: #000000;">==</span><span style="color: #000000;">''</span><span style="color: #000000;">)&nbsp;tagName</span><span style="color: #000000;">=</span><span style="color: #000000;">'</span><span style="color: #000000;">*</span><span style="color: #000000;">'</span><span style="color: #000000;">;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;tmpList&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;doc.getElementsByTagName(&nbsp;tagName&nbsp;);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">for</span><span style="color: #000000;">(</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;tl</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;&nbsp;tl</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">tmpList.length;&nbsp;tl</span><span style="color: #000000;">++</span><span style="color: #000000;">&nbsp;)&nbsp;{&nbsp;list.push(tmpList[tl]);&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;className&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;item.indexOf(</span><span style="color: #000000;">'</span><span style="color: #000000;">.</span><span style="color: #000000;">'</span><span style="color: #000000;">)&nbsp;</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">?</span><span style="color: #000000;">&nbsp;item.substring(&nbsp;item.indexOf(</span><span style="color: #000000;">'</span><span style="color: #000000;">.</span><span style="color: #000000;">'</span><span style="color: #000000;">),&nbsp;item.indexOf(</span><span style="color: #000000;">'</span><span style="color: #000000;">[</span><span style="color: #000000;">'</span><span style="color: #000000;">)&nbsp;)&nbsp;:&nbsp;</span><span style="color: #000000;">''</span><span style="color: #000000;">;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;attrlist&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;item.match(</span><span style="color: #000000;">/</span><span style="color: #000000;">\[\S+=\S+\]</span><span style="color: #000000;">/</span><span style="color: #000000;">g);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">&nbsp;(className.trim()</span><span style="color: #000000;">!=</span><span style="color: #000000;">''</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">||</span><span style="color: #000000;">&nbsp;attrlist</span><span style="color: #000000;">!=</span><span style="color: #0000FF;">null</span><span style="color: #000000;">)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">for</span><span style="color: #000000;">(</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;t</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;&nbsp;t</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">list.length;&nbsp;t</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">(className.trim()</span><span style="color: #000000;">!=</span><span style="color: #000000;">''</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;">&nbsp;list[t].className</span><span style="color: #000000;">!=</span><span style="color: #000000;">className.trim())&nbsp;list.splice(t,</span><span style="color: #000000;">1</span><span style="color: #000000;">);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">&nbsp;(attrlist</span><span style="color: #000000;">!=</span><span style="color: #0000FF;">null</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;">&nbsp;attrlist.length&nbsp;</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">0</span><span style="color: #000000;">)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">for</span><span style="color: #000000;">(</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;a</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;&nbsp;a</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">attrlist.length;&nbsp;a</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;attr&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;attrlist[a].trim().split(</span><span style="color: #000000;">'</span><span style="color: #000000;">=</span><span style="color: #000000;">'</span><span style="color: #000000;">),&nbsp;name&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;attr[</span><span style="color: #000000;">0</span><span style="color: #000000;">].substring(</span><span style="color: #000000;">1</span><span style="color: #000000;">),&nbsp;val&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;attr[</span><span style="color: #000000;">1</span><span style="color: #000000;">].substring(</span><span style="color: #000000;">0</span><span style="color: #000000;">,attr[</span><span style="color: #000000;">1</span><span style="color: #000000;">].length</span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;">);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">&nbsp;(list[t].getAttribute&nbsp;</span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;">&nbsp;list[t].getAttribute(name)&nbsp;</span><span style="color: #000000;">!=</span><span style="color: #000000;">&nbsp;val)&nbsp;list.splice(t,</span><span style="color: #000000;">1</span><span style="color: #000000;">);<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">if&nbsp;(tmp.length&nbsp;&gt;&nbsp;0)&nbsp;list&nbsp;=&nbsp;list.concat(&nbsp;tmp&nbsp;);</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;doc&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;tmp[tmp.length</span><span style="color: #000000;">&gt;=</span><span style="color: #000000;">2</span><span style="color: #000000;">?</span><span style="color: #000000;">j</span><span style="color: #000000;">+</span><span style="color: #000000;">1</span><span style="color: #000000;">:j];<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">}</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">if&nbsp;(i==selectors.length-1)</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">{</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">&nbsp;&nbsp;&nbsp;&nbsp;list.shift();return&nbsp;list;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">}</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">alert(item);</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #008000;">//</span><span style="color: #008000;">list.shift();</span><span style="color: #008000;"><br /></span><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">return</span><span style="color: #000000;">&nbsp;list;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;String.prototype.trim</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">function</span><span style="color: #000000;">()&nbsp;{&nbsp;</span><span style="color: #0000FF;">return</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">this</span><span style="color: #000000;">.replace(</span><span style="color: #000000;">/</span><span style="color: #000000;">(^\s*)|(\s*$)</span><span style="color: #000000;">/</span><span style="color: #000000;">g,&nbsp;</span><span style="color: #000000;">""</span><span style="color: #000000;">);&nbsp;};</span></div>
<p style="text-indent:2em">以上是实现类似jquery筛选的方法，还有为#id等的情况没有考虑，支持加tagName $$('div')，再加类筛选 $$('div.className')，加属性值$$('div[title=main]')，以空格间隔的dom层次$$('div p li')的筛选，返回为Array数组，那么我们操作筛选后的元素只需要扩展Array的prototype如下所示：</p>
<div style=" background-color:#eee; border:solid 1px #ccc; margin:20px; padding:10px" class="cnblogs_code code"><span style="color: #000000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Array.prototype.css&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">function</span><span style="color: #000000;">&nbsp;(name,val){};<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Array.prototype.drag&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">function</span><span style="color: #000000;">&nbsp;(){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">for</span><span style="color: #000000;">(</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;i</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;&nbsp;i</span><span style="color: #000000;">&lt;</span><span style="color: #0000FF;">this</span><span style="color: #000000;">.length;i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">function</span><span style="color: #000000;">&nbsp;eDrag(target,e)<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;target.style.position&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">'</span><span style="color: #000000;">absolute</span><span style="color: #000000;">'</span><span style="color: #000000;">;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;e&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;window.event&nbsp;</span><span style="color: #000000;">||</span><span style="color: #000000;">&nbsp;e;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;_xy&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;parseInt(target.offsetTop)&nbsp;</span><span style="color: #000000;">-</span><span style="color: #000000;">&nbsp;e.clientY;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;_xx&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;parseInt(target.offsetLeft)&nbsp;</span><span style="color: #000000;">-</span><span style="color: #000000;">&nbsp;e.clientX;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;document.onmouseup&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">function</span><span style="color: #000000;">(){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">this</span><span style="color: #000000;">.onmousemove&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">null</span><span style="color: #000000;">;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">if</span><span style="color: #000000;">(e.preventDefault){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;e.preventDefault();<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;document.onmousemove&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">function</span><span style="color: #000000;">(e){<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">var</span><span style="color: #000000;">&nbsp;e&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;window.event&nbsp;</span><span style="color: #000000;">||</span><span style="color: #000000;">&nbsp;e;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;target.style.top&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;_xy&nbsp;</span><span style="color: #000000;">+</span><span style="color: #000000;">&nbsp;e.clientY&nbsp;</span><span style="color: #000000;">+</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;target.style.left&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;_xx&nbsp;</span><span style="color: #000000;">+</span><span style="color: #000000;">&nbsp;e.clientX&nbsp;</span><span style="color: #000000;">+</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><span style="color: #0000FF;">this</span><span style="color: #000000;">[i].onmousedown&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000FF;">function</span><span style="color: #000000;">&nbsp;(e){&nbsp;eDrag(</span><span style="color: #0000FF;">this</span><span style="color: #000000;">,e);};<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;};</span></div>
<p style="text-indent:2em">上面只对Array的css和drag进行扩展，我这里只是示范下，以后我们还可以从jquery那里偷过来一些方法到这里来进行扩展，我们先来试一下drag拖拽的功能。</p>
<div style="color:#666; background-color:#f1f7f9; border:solid 1px #ccc;margin:20px; padding:5px">$$('div.drag .item').drag();</div>
<p style="text-indent:2em">html元素结构如下：</p>
<div style="margin:20px; border:solid 1px #ccc;" class="drag">
<div style="display: inline; float: left; margin: 5px; width: 100px; line-height: 100px; height: 100px; background-color: #f1f7f9; text-align: center; border: #ccc 1px dashed;" class="item">Item 1</div>
<div style="display: inline; float: left; margin: 5px; width: 100px; line-height: 100px; height: 100px; background-color: #f1f7f9; text-align: center; border: #ccc 1px dashed;" class="item">Item 2</div>
<div style="display: inline; float: left; margin: 5px; width: 100px; line-height: 100px; height: 100px; background-color: #f1f7f9; text-align: center; border: #ccc 1px dashed;" class="item">Item 3</div>
<div style="clear:left" class="mft">　</div>
</div>
<p style="text-indent:2em">今天就先写到这里，下次续。。。</p>
</div>
<p>
<script type="text/javascript"><!--
		function $$(selector)
		{
			if ( typeof(selector) != 'string' ) return selector;
			var selectors = selector.trim().split(' '), list = new Array();
			list.push(document);
			for (var i=0; i<selectors.length; i++)
			{
				var item = selectors[i];
				if (item.trim()=='' ) continue;
				//if (item.indexOf('#') > -1 )
				//{
				//	list.length = 1;
				//	var id = item.substring(1,item.search(/\.|\[/));
				//	if (id.trim()!='') list.push(document.getElementById(id));
				//}else
				//{
				
				//上次列表
				var tmp = list.slice(0), doc = tmp.length > 0 ? tmp[0] : document;
				list.length = 0;//重置
				
				//var tmpList = new Array();
				for(var j=0; j<tmp.length; j++)//循环上次列表
				{
					//debugger;
					var tagName = item.search(/\.|\[/) > -1 ? item.substring(0,item.search(/\.|\[/)) : item;
					if (tagName.trim()=='') tagName='*';
					
					var tmpList = doc.getElementsByTagName( tagName );
					for(var tl=0; tl<tmpList.length; tl++ ) { list.push(tmpList[tl]); }
					
					var className = item.indexOf('.') > -1 ? item.substring( item.indexOf('.')+1, item.indexOf('[') > -1 ? item.indexOf('[') : item.length) : '';
					var attrlist = item.match(/\[\S+=\S+\]/g);
					if (className.trim()!='' || attrlist!=null)
					{
						var removeList = new Array();
						for(var t=0; t<list.length; t++)
						{
							if(className.trim()!='' && list[t].className!=className.trim()) removeList.push(list[t]);//list.splice(t,1);
							if (attrlist!=null && attrlist.length > 0)
							{
								for(var a=0; a<attrlist.length; a++)
								{
									var attr = attrlist[a].trim().split('='), name = attr[0].substring(1), val = attr[1].substring(0,attr[1].length-1);
									if (list[t].getAttribute && list[t].getAttribute(name) != val) removeList.push(list[t]);//list.splice(t,1);
								}
							}
						}
						
						for(var r=0;r<removeList.length;r++)
						{
							list.remove(removeList[r]);
						}
					}
					//if (tmp.length > 0) list = list.concat( tmp );
					doc = tmp[tmp.length>=2?j+1:j];
				}
					
				//}
				//if (i==selectors.length-1)
				//{
				//	list.shift();return list;
				//}
				//alert(item);
			}
			//list.shift();
			return list;
		}
		String.prototype.trim= function() { return this.replace(/(^\s*)|(\s*$)/g, ""); };
		Array.prototype.remove = function (o){
			var index = -1;
			for(var i=0; i<this.length;i++)
			{
				if(this[i]==o)
				{
					index = i;
					break;
				}
			}
			if (index > -1) {
				this.splice(index, 1);
			}
			return this;
		};
		Array.prototype.css = function (name,val){};
		Array.prototype.drag = function (){
			//alert(this.length)
			for(var i=0; i<this.length;i++)
			{
				function eDrag(target,e)
				{
					target.style.position = 'absolute';
					var e = window.event || e;
					var _xy = parseInt(target.offsetTop) - e.clientY;
					var _xx = parseInt(target.offsetLeft) - e.clientX;
					document.onmouseup = function(){
						this.onmousemove = null;
					}
					if(e.preventDefault){
						e.preventDefault();
					}
					document.onmousemove = function(e){
						var e = window.event || e;
						target.style.top = _xy + e.clientY + "px";
						target.style.left = _xx + e.clientX + "px";
					}
				}
				this[i].onmousedown = function (e){ eDrag(this,e);};
			}
		};
		window.onload = function (){
		    //$$('div[title=main] li').drag();
			$$('div.drag .item').drag();
		    //alert( $$('div.d[name=1] [a=b]').length );
		};
// --></script>
</p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/js/">JavaScript</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-07-12 22:52</li>
				<li>update@ 2009-07-17 13:56:25</li>
				<li>阅读(<span id="articleClick">12771</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a></li>
<li>下一篇：<a href="/jonllen/js/43.aspx">网页版弹钢琴&&滚动的音符</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=41&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/js/41.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=41";
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
                    
		    <li><a href="/jonllen/js/107.aspx">博客个性化定制(2)-实现类似iGoogle首页功能</a>(2010-03-21)</li>
                    

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