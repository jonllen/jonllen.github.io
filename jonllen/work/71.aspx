
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>时代财富技术部Java选型基础培训草稿 - 工作 - 金龙博客</title>
<meta name="description" content="我真是一个很幸运的人，老天待我不薄啊，好象在我身边真能发生一些不可思议的事，让我体味。这个星期，我们总监康师傅开会正式宣布技术要向Java方向转型，当然.Net不能丢，一些能用.Net应付的还是用那个.Net的IBOX内容发布系统来做。那转型的主要原因就是因为我们的客户群体主要是政府部门，而这些政府部门目前大都是采用Java平台Linux服务器，因此公司.Net的主营产品会丢掉很多的单子。我不知道这对于我是不是一件好事，但我知道我能在工作上去学习研究Java技术了，我想二、三年前学的Java又能用上了，要能多会一门技术那可是不亦乐乎，在这个有限的青春时间里。公司转型Java后需要能用jsp对.net版的功能进行copy一份，就是做一个java版的.Net IBox系统，其实我还有一个小小的愿望，我希望用jsp做出来的IBox系统能支持兼容所有的浏览器，而不是只能在IE里面跑，样式没多大的问题都是前端开发包好页面的，主要是程序要用js脚本有一些兼容问题，其实在这个W3C大的规范标准下多写一句代码几乎就能兼容所有的浏览器了，我觉得这也是一个网页最基本的东西，但是我们目前正在开发的.Net版IBox系统却存在这个问题。废话不多说了..." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-09-20' } );
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
		     > <a href="/jonllen/work/">工作</a>
		     > <a href="/jonllen/work/71.aspx">时代财富技术部Java选型基础培训草稿</a>
		</div>
        <div class="article">
			<div class="title"><h2>时代财富技术部Java选型基础培训草稿</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="FONT-SIZE: 14px; LINE-HEIGHT: 28px">
<p class="hide" style="TEXT-INDENT: 2em">我真是一个很幸运的人，老天待我不薄啊，好象在我身边真能发生一些不可思议的事，让我体味。这个星期，我们总监康师傅开会正式宣布技术要向Java方向转型，当然.Net不能丢，一些能用.Net应付的还是用那个.Net的IBOX内容发布系统来做。那转型的主要原因就是因为我们的客户群体主要是政府部门，而这些政府部门目前大都是采用Java平台Linux服务器，因此公司.Net的主营产品会丢掉很多的单子。我不知道这对于我是不是一件好事，但我知道我能在工作上去学习研究Java技术了，我想二、三年前学的Java又能用上了，要能多会一门技术那可是不亦乐乎，在这个有限的青春时间里。</p>
<p class="hide" style="TEXT-INDENT: 2em">&nbsp;公司转型Java后需要能用jsp对.net版的功能进行copy一份，就是做一个java版的.Net IBox系统，其实我还有一个小小的愿望，我希望用jsp做出来的IBox系统能支持兼容所有的浏览器，而不是只能在IE里面跑，样式没多大的问题都是前端开发包好页面的，主要是程序要用js脚本有一些兼容问题，其实在这个W3C大的规范标准下多写一句代码几乎就能兼容所有的浏览器了，我觉得这也是一个网页最基本的东西，但是我们目前正在开发的.Net版IBox系统却存在这个问题。废话不多说了，今天已经是星期天了，下周还有一个技术部的Java基础知识培训的会，还是先打下草稿准备下。</p>
<p class="hide" style="TEXT-INDENT: 2em">哈哈，上～</p>
<p style="TEXT-INDENT: 2em">同学们，今天又要听我唠叨了。首先，这是一个很基础的Java知识培训，我会让大家了解一下MyEclipse开发工具、建立工程，Tomcat运行环境等jsp一些大概的了解，我想在坐的各位以前大都学过Java，里面应该也有比我更了解Java的，只不过我这个人脸皮比较厚，所以又被我给抢到了这个机会给大家来培训，但其实我的Java知识也是很肤浅的，算是入门级别的，所以如果我下面讲的有什么错误的地方就请大家一定要指出来，因为我怕会误导大家。好，那下面我就开始献丑了。</p>
<p style="TEXT-INDENT: 2em"><strong>Java里几个名词概念</strong></p>
<p style="TEXT-INDENT: 2em">J2EE：Enterprise Edition(企业版)，J2EE 包含J2SE 中的类，并且还包含用于开发企业级应用的类。比如：EJB、servlet、JSP、XML、事务控制。</p>
<p style="TEXT-INDENT: 2em">J2SE：Java Standard Edition(标准版),包含那些构成Java语言核心基础的类。比如：数据库连接、接口定义、输入/输出、网络编程。</p>
<p style="TEXT-INDENT: 2em">J2ME：Java Micro Edition(微缩版)，J2ME 包含J2SE中一部分类，用于消费类电子产品的软件开发。比如：呼机、智能卡、手机、PDA、机顶盒，多用于嵌入试开发，比如手机里面jar格式的Java小程序。</p>
<p style="TEXT-INDENT: 2em">三者的范围是：J2SE包含于J2EE中，J2ME包含了J2SE的核心类，但新添加了一些专有类应用场合，API的覆盖范围各不相同。笼统的讲，可以这样理解：J2SE是基础；压缩一点，再增加一些CLDC等方面的特性就是J2ME；扩充一点，再加一些EJB等企业应用方面的特性就是J2EE。那我们现在就是J2EE企业级的开发。</p>
<p style="TEXT-INDENT: 2em">JDK：Java development toolkit,相当于是Java的库函数，是编译，运行java程序的工具包，是Java开发的SDK运行环境。</p>
<p style="TEXT-INDENT: 2em">JRE：Java Runtime Enviroment，是指Java的运行环境，是面向Java程序的使用者，jdk包含jre运行环境。</p>
<p style="TEXT-INDENT: 2em"><strong>实例步骤</strong></p>
<p style="TEXT-INDENT: 2em">打开MyEclipse，建立一个普通的JavaWeb工程。</p>
<p style="TEXT-INDENT: 2em">配置好Tomcat，运行jsp页面输出Hello World。。</p>
<p style="TEXT-INDENT: 2em">使用Struts建立jsp页面，简述它MVC结构模式。。。</p>
<p style="TEXT-INDENT: 2em">切换到演示项目，大概讲述MySql数据库的连接，Java的URL重写，servlet等。。。。</p>
<p style="TEXT-INDENT: 2em">。。。。。。</p>
<p style="TEXT-INDENT: 2em"><strong>要讨论的问题：</strong></p>
<p style="TEXT-INDENT: 2em">一、开发IDE工具</p>
<p style="TEXT-INDENT: 2em"><span style="font-weight:600">NetBeans</span> <span style="color: #ff0000;font-weight:700">VS</span> <span style="font-weight:600">MyEclipse</span></p>
<p>
<table style="margin-left:2em" cellpadding="5" class="collapse">
<tr>
<th style="width: 80px;"></th><th>NetBeans</th><th>Eclipse(MyEclipse)</th>
</tr>
<tr>
<td>版权收费</td>
<td>免费开源</td>
<td>Eclipse是IBM的免费开源软件，插件很多。MyEclipse全称企业级工作平台，作为Eclipse的插件存在，相比Eclipse更智能、更快捷、更简单，但是<span style="color: #ff0000;">收费</span>的。</td>
</tr>
<tr>
<td>开发平台</td>
<td>跨平台</td>
<td>跨平台</td>
</tr>
<tr>
<td>支持容器</td>
<td>所有主流</td>
<td>所有主流，能很好的集成Tomcat。</td>
</tr>
<tr>
<td>易用性</td>
<td>桌面程序占优势</td>
<td>感觉较好，比较智能，提供配置文件的可视化操作，进行Web开发很方便。</td>
</tr>
</table>
</p>
<p style="TEXT-INDENT: 2em">二、Web服务器</p>
<p style="TEXT-INDENT: 2em">Tomcat服务器是一个免费开源的轻量级Web 应用服务器，我的版本Tomcat5.5，目前最新版本是6.0.20(截止到2009-03-20)，是Apache 软件基金会（Apache Software Foundation）的Jakarta 项目中的一个核心项目，由Apache、Sun 和其他一些公司及个人共同开发而成。</p>
<p style="TEXT-INDENT: 2em">三、数据库</p>
<p style="TEXT-INDENT: 2em">Oracle 10g</p>
<p style="TEXT-INDENT: 2em">四、源代码管理</p>
<p style="TEXT-INDENT: 2em">SVN或CVS，推荐使用SVN源代码管理工具，支持https加密连接，可在Web浏览器内直接浏览，是Google Code等众多开源项目采用的源代码管理工具。我装的版本客户端：TortoiseSVN 1.4.8, Build 12137，服务器端：VisualSVN-Server-1.6。</p>
<p style="TEXT-INDENT: 2em"><strong>会后总结:</strong></p>
<p style="TEXT-INDENT: 2em">感觉比上次的那个培训退步了好多，而且还出现了调试程序数都没能解决错误的情况，可能是自己也没有做好充分的准备，说话又太随便圆滑，准备讨论的NetBeans和源代码管理工具之前早就决定好了，总之不理想。康师傅还说下次还要继续做一些基础的培训，我真不知道要不要做。。。。。。</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-09-20 22:48</li>
				<li>update@ 2009-09-21 15:57:08</li>
				<li>阅读(<span id="articleClick">10302</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/62.aspx">发布IBOX插件之LEAVE留言置标使用说明书</a></li>
<li>下一篇：<a href="/jonllen/work/94.aspx">linux下常用管理命令</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=71&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/71.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=71";
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
                    
		    <li><a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a>(2013-06-26)</li>
                    
		    <li><a href="/jonllen/work/158.aspx">SSL的服务器客户端双向认证</a>(2013-04-20)</li>
                    

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