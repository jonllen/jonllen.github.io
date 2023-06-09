
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>博客个性化定制功能 - Asp.Net - 金龙博客</title>
<meta name="description" content="最近在忙几个事，工作上做天河部落的升级改版，绕有兴致的做博客的个性化功能，以前我的博客也有几个样式模板，但是模块没有定制，昨天顺便就把我博客的个性化定制功能实现了，对于Asp.Net的博客个性化定制功能的方法总结如下：1.简单的切换css样式文件；2.切换博客的MasterPage.master母版页；3.动态加载ascx控件模块；4.使用微软的WebParts个性化部件。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-03-16' } );
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
		     > <a href="/jonllen/aspnet/">Asp.Net</a>
		     > <a href="/jonllen/aspnet/106.aspx">博客个性化定制功能</a>
		</div>
        <div class="article">
			<div class="title"><h2>博客个性化定制功能</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<p style="text-indent: 2em;">最近在忙几个事，工作上做<a href="http://www.thjy.ory/" target="_blank">天河部落</a>的升级改版，绕有兴致的做博客的个性化功能，以前我的博客也有几个样式模板，但是模块没有定制，昨天顺便就把我博客的个性化定制功能实现了，对于Asp.Net的博客个性化定制功能的方法总结如下：</p>
<p style="text-indent: 2em;"><strong>1.简单的切换css样式文件</strong></p>
<p style="text-indent: 2em;">这是我之前的博客切换风格的方法，很简单，只需要改变页面的一个css样式文件即可，通过换css样式文件页面也完全可给人耳目一新，但其页面的html结构并没有发生改变，所以就不可能从根本上实现博客个性化定制，换换皮肤而已。我之前是使用javascript来改变css文件路径的，有时候加载样式很慢的情况下，在切换样式的那一瞬间页面可能会出现&ldquo;裸奔&rdquo;，也就是没有任何样式，这一点IE处理得很好，因为IE内可以预载css样式，在更换css样式文件的时候它会先预载新的css样式文件，完成之后才会被附加到页面来，所有不会出现上面的&ldquo;裸奔&rdquo;情况。然而在表扬IE的时候又想起之前碰到IE7里面的一个潜规则：在使用javascript更换css样式文件的时候不会加载样式文件内联的@import url(..)样式。适应它潜规则的方法是：先指定一个空路径再设置为样式文件路径即可，如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">document.getElementById(</span><span style="color: #000000;">'</span><span style="color: #000000;">currSkin</span><span style="color: #000000;">'</span><span style="color: #000000;">).href </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">''</span><span style="color: #000000;">;<br />document.getElementById(</span><span style="color: #000000;">'</span><span style="color: #000000;">currSkin</span><span style="color: #000000;">'</span><span style="color: #000000;">).href </span><span style="color: #000000;">=</span><span style="color: #000000;"> skinsrc;</span></div></div></pre>
<p style="text-indent: 2em;"><strong>2.切换博客的MasterPage.master母版页</strong></p>
<p style="text-indent: 2em;">假如你的博客是用Asp.Net母版页的话，并且博客前台页面都使用同一个母版页，那么你可以在所有Page基类的OnPreInit方法里更换MasterPage母版页以实现博客个性化功能。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">protected</span><span style="color: #000000;"> </span><span style="color: #0000ff;">override</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> OnPreInit(EventArgs e)<br />{<br />    </span><span style="color: #0000ff;">base</span><span style="color: #000000;">.OnPreInit(e);<br /><br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">更换母版页</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (</span><span style="color: #000000;">!</span><span style="color: #0000ff;">string</span><span style="color: #000000;">.IsNullOrEmpty(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.CurrentUser.Template.MasterPageSrc))<br />    {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.MasterPageFile </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.CurrentUser.Template.MasterPageSrc;<br />    }<br />}</span></div></div></pre>
<p style="text-indent: 2em;">此种方法虽然可以最大限度的改变博客模板，甚至是每个模板内的html可截然不同，但它同样有很大制约。因为MasterPage母版页并不能当成是模板，MasterPage母版页里面可能还有一些需要处理的逻辑，所以每个MasterPage母版可能需要对应一个cs类，如果里面所有的控件都是一样的话可以使用同一个CodeFile文件。但单更换MasterPage母版页还并不能定制博客模块，比如设置博客某些模块的位置或是否显示等，则还需要使用下面的动态加载ascx控件模块。</p>
<p style="text-indent: 2em;"><strong>3.动态加载ascx控件模块</strong></p>
<p style="text-indent: 2em;">基于Asp.Net的强大控件功能，可使用服务器控件动态加载用户控件，而每一个用户控件都对应一个模块，比如个人档案、日历等等，用户可以在后台定制这些模块是否显示，显示位置等。我的博客个性化功能是使用MasterPage母版页结合动态加载ascx控件模块，我所定制的模块都是在MasterPage母版页里动态加载的，因为相册和留言等内页同样也是应用了同一个MasterPage母版页，所以定制的模块同样应用于所有内页。我们可以把相册或留言也作为一个模块，只不过在相册页面里相册模块是固定会要加载的。另外我这里还有一个版面设置，它其实是每一个模块都有的几种页面布局，假如版面是左-中的话那其实是只加载用户设置在左栏和中栏的模块，同时隐藏掉右栏；同理版面左-中-右则加载左栏、中栏、右栏的模块，中-右则加载中栏、右栏的模块，同时隐藏掉左栏。每一个版面都应该配合css动态输出一个样式文件，以便适用该种版面的布局。</p>
<p style="text-indent: 2em;"><strong>4.使用微软的WebParts个性化部件</strong></p>
<p style="text-indent: 2em;">早在学校的时候有研究过微软自带WebParts个性化部件，那时候觉得很牛B，可以拖来拖去自定义位置，还可以自定义设置一些样式属性。不过WebParts个性化部件还是有很大的局限性，就是必须使用他那套成员资格、配置文件、角色管理、个性化设置提供程序，sqlserver版的数据库可以直接使用aspnet_regsql.exe生成，但其他类型的数据库恐怕只有自己来实现他的Provide接口了，发这些功夫去研究实现还不如自己做一个。总之，此种实现方法的约束太大，不太适用与需求多变复杂的项目中。</p>
<p style="text-indent: 2em;">目前我的博客个性化还缺一个功能，那就是自定义添加一个模块，就好比说我在那里看到了一个很漂亮的播放器，这时候我就可以自定义添加一个我的音乐盒模块，里面贴播放器的html代码内容，并同样可以设置显示位置等。其实在以前一个项目里实现过该功能，之所以没有在我博客加这个功能，那是因为如果我真在那里看到了一个漂亮的播放器，我会做成一个系统的模块，可以选择是否显示该模块，可能我的博客以后会添加更多的模块，暂不需要自定义模块。</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2010-03-16 23:24</li>
				<li>update@ </li>
				<li>阅读(<span id="articleClick">12467</span>)</li>
				<li>评论(4)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/88.aspx">asp.net(C#)常用的一些功能</a></li>
<li>下一篇：<a href="/jonllen/aspnet/123.aspx">我的ORM（一）——重复造轮子</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'文夕')">引用</a></li>

						        </ul>
						        <a>1楼</a> 文夕 2010-03-17 14:16:39
					        </div><div class="cont">啊，现在这个很好看啊~ 我也想定制下，可是自己做不来……</div>
					        <div class="reply" ><span>回复：</span>呵呵，还好拉~主要是要有好的创意设计，程序其实很简单。（2010-03-17 19:34:49）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'ximesss')">引用</a></li>

						        </ul>
						        <a>2楼</a> ximesss 2010-04-07 14:26:58
					        </div><div class="cont">你好 ！ 看了你的东西觉得你做的很好<br />    我想请教你个问题；<br />  你那个版式 是怎么实现的；<br />  怎样变成3列 有变成两列<br /> 可以给我个思路吗；我现在正在做这个<br /></div>
					        <div class="reply" ><span>回复：</span>你好！我是用的Asp.Net服务器控件，每一列就是一个服务器控件的容器，所以后台很容易控制是否显示该列，以及动态加载列容器里所有的用户控件模块。（2010-04-07 20:16:17）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'ximesss')">引用</a></li>

						        </ul>
						        <a>3楼</a> ximesss 2010-04-08 09:00:11
					        </div><div class="cont">谢谢你的回复；<br />  我下了你的js看了；<br />   看到你的发布的文档；你可以把现在保存状态的js发给我吗? 谢谢你；</div>
					        <div class="reply" ><span>回复：</span>保存状态的js在我的博客个性化定制(2)-实现类似iGoogle首页功能一文.（2010-04-08 13:03:39）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'xx')">引用</a></li>

						        </ul>
						        <a>4楼</a> xx 2011-09-06 21:57:42
					        </div><div class="cont">我也在做这个 就不知道要怎么把它保存下来 能发个DEMO给我吗<br />378588579@qq.com</div>
					        <div class="reply" ><span>回复：</span>参考我的博客首页看下~（2011-09-06 23:24:05）</div>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=106&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/106.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=106";
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