
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>把网站搬到Linux上 - Asp.Net - 金龙博客</title>
<meta name="description" content="前段时间主机快过期了，最近又在研究SSL证书，因为原来用的虚拟主机不是独立的VPS，不支持自己到网站上配置SSL，心里就捣鼓着想换一台独立的虚拟主机，我网站原来的运行环境是Windows2003 + IIS6.0 + .Net2.0 + MS Access数据，而Windows主机都比较贵，所有后面就想着把网站搬到Linux上，移植到的Linux的运行环境是Ubuntu12 + Apache2 + mono + mysql，亲身实践使用mono在Linux运行.Net网站，于是便有出此文。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2013-06-29' } );
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
		     > <a href="/jonllen/aspnet/163.aspx">把网站搬到Linux上</a>
		</div>
        <div class="article">
			<div class="title"><h2>把网站搬到Linux上</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>前段时间主机快过期了，最近又在研究SSL证书，因为原来用的虚拟主机不是独立的VPS，不支持自己到网站上配置SSL，心里就捣鼓着想换一台独立的虚拟主机，我网站原来的运行环境是Windows2003 + IIS6.0 + .Net2.0 + MS Access数据，而Windows主机都比较贵，所有后面就想着把网站搬到Linux上，移植到的Linux的运行环境是Ubuntu12 + Apache2 + mono + mysql，自己实践使用mono在Linux运行.Net网站，于是便有出此文。</p>
<p><strong>1.安装apache2</strong></p>
<p>Ubuntu下使用apt-get安装很方便，需要先配置好安装包的源。编辑配置文件增加如下源：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">vi </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apt</span><span style="color: #000000;">/</span><span style="color: #000000;">source</span><span style="color: #000000;">.</span><span style="color: #000000;">list<br /><br /></span><span style="color: #000000;">#</span><span style="color: #000000;"> 上海交大的源<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">ftp</span><span style="color: #000000;">.</span><span style="color: #000000;">sjtu</span><span style="color: #000000;">.</span><span style="color: #000000;">edu</span><span style="color: #000000;">.</span><span style="color: #000000;">cn</span><span style="color: #000000;">/</span><span style="color: #000000;">debian lenny main non-free contrib<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">ftp</span><span style="color: #000000;">.</span><span style="color: #000000;">sjtu</span><span style="color: #000000;">.</span><span style="color: #000000;">edu</span><span style="color: #000000;">.</span><span style="color: #000000;">cn</span><span style="color: #000000;">/</span><span style="color: #000000;">debian lenny-proposed-updates main non-free contrib<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">ftp</span><span style="color: #000000;">.</span><span style="color: #000000;">sjtu</span><span style="color: #000000;">.</span><span style="color: #000000;">edu</span><span style="color: #000000;">.</span><span style="color: #000000;">cn</span><span style="color: #000000;">/</span><span style="color: #000000;">debian-security lenny</span><span style="color: #000000;">/</span><span style="color: #000000;">updates main non-free contrib<br /></span><span style="color: #000000;">#</span><span style="color: #000000;"> 163的源<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">163</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">debian lenny main non-free contrib<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">163</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">debian lenny-proposed-updates main non-free contrib<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">163</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">debian-security lenny</span><span style="color: #000000;">/</span><span style="color: #000000;">updates main non-free contrib<br /></span><span style="color: #000000;">#</span><span style="color: #000000;"> 附搜狐的源：<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic main restricted<br />deb-src http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic main restricted<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic-updates main restricted<br />deb-src http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic-updates main restricted<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic universe<br />deb-src http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic universe<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic-updates universe<br />deb-src http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic-updates universe<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic multiverse<br />deb-src http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic multiverse<br />deb http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic-updates multiverse<br />deb-src http:</span><span style="color: #000000;">//</span><span style="color: #000000;">mirrors</span><span style="color: #000000;">.</span><span style="color: #000000;">sohu</span><span style="color: #000000;">.</span><span style="color: #000000;">com</span><span style="color: #000000;">/</span><span style="color: #000000;">ubuntu</span><span style="color: #000000;">/</span><span style="color: #000000;"> karmic-updates multiverse<br /><br /><br />sudo apt-get update<br /><br /><br />--解决 公钥签名<br />gpg --keyserver subkeys</span><span style="color: #000000;">.</span><span style="color: #000000;">pgp</span><span style="color: #000000;">.</span><span style="color: #0000ff;">net</span><span style="color: #000000;"> --recv 40976EAF437D05B5<br />gpg --export --armor 40976EAF437D05B5|sudo apt-key add -</span></div></div></pre>
<p>然后再安装Apache2</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">sudo apt-get install apache2</span></div></div></pre>
<p><strong>2.配置mysql</strong></p>
<p>同样使用apt-get安装mysql服务器端，如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">sudo apt-get install mysql-server</span></div></div></pre>
<p>然后修改my.cnf配置文件，允许远程访问mysql，不区分表名大小写，再重启mysql服务。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">sudo apt-get install mysql-server<br /><br />sudo vi </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">mysql</span><span style="color: #000000;">/</span><span style="color: #000000;">my</span><span style="color: #000000;">.</span><span style="color: #000000;">cnf<br /><br /><br /></span><span style="color: #000000;">#</span><span style="color: #000000;"> 允许远程访问<br /></span><span style="color: #000000;">#</span><span style="color: #000000;">bind-address </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">127.0</span><span style="color: #000000;">.</span><span style="color: #000000;">0.1</span><span style="color: #000000;"><br /><br /></span><span style="color: #000000;">#</span><span style="color: #000000;"> 在[mysqld]下加入一行 不区分表名大小写<br />lower_case_table_names </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;"><br /><br /><br />sudo </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">init</span><span style="color: #000000;">.</span><span style="color: #000000;">d</span><span style="color: #000000;">/</span><span style="color: #000000;">mysql restart</span></div></div></pre>
<p>有一次重启mysql后，账户就连不进不去了，必须要用系统登录账户进去修改密码。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">mysql </span><span style="color: #808080;">-</span><span style="color: #000000;">udebian</span><span style="color: #808080;">-</span><span style="color: #000000;">sys</span><span style="color: #808080;">-</span><span style="color: #000000;">maint </span><span style="color: #808080;">-</span><span style="color: #000000;">p<br /><br />Enter password: </span><span style="color: #808080;">&lt;</span><span style="color: #000000;">输入</span><span style="color: #ff0000;">[</span><span style="color: #ff0000;">client</span><span style="color: #ff0000;">]</span><span style="color: #000000;">节的密码</span><span style="color: #808080;">&gt;</span><span style="color: #000000;"><br />直接使用</span><span style="color: #808080;">/</span><span style="color: #000000;">etc</span><span style="color: #808080;">/</span><span style="color: #000000;">mysql</span><span style="color: #808080;">/</span><span style="color: #000000;">debian.cnf文件中</span><span style="color: #ff0000;">[</span><span style="color: #ff0000;">client</span><span style="color: #ff0000;">]</span><span style="color: #000000;">节提供的用户名和密码<br /><br /></span><span style="color: #0000ff;">use</span><span style="color: #000000;"> mysql;<br /></span><span style="color: #0000ff;">UPDATE</span><span style="color: #000000;"> </span><span style="color: #ff00ff;">user</span><span style="color: #000000;"> </span><span style="color: #0000ff;">SET</span><span style="color: #000000;"> Password</span><span style="color: #808080;">=</span><span style="color: #000000;">PASSWORD(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">pengjinlong</span><span style="color: #ff0000;">'</span><span style="color: #000000;">) </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> </span><span style="color: #ff00ff;">USER</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">root</span><span style="color: #ff0000;">'</span><span style="color: #000000;">;<br />FLUSH </span><span style="color: #0000ff;">PRIVILEGES</span><span style="color: #000000;">;<br /><br />quit;</span></div></div></pre>
<p>mysql默认安装的不支持中文模糊查询，需要修改配置来设置默认编码。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">编码设置</span><span style="color: #008080;"><br /></span><span style="color: #000000;">sudo vi </span><span style="color: #808080;">/</span><span style="color: #000000;">etc</span><span style="color: #808080;">/</span><span style="color: #000000;">mysql</span><span style="color: #808080;">/</span><span style="color: #000000;">my.cnf<br /><br /><br /></span><span style="color: #ff0000;">[</span><span style="color: #ff0000;">mysql</span><span style="color: #ff0000;">]</span><span style="color: #000000;"><br />#no</span><span style="color: #808080;">-</span><span style="color: #000000;">auto</span><span style="color: #808080;">-</span><span style="color: #000000;">rehash # faster start </span><span style="color: #0000ff;">of</span><span style="color: #000000;"> mysql but no tab completition<br /></span><span style="color: #0000ff;">default</span><span style="color: #808080;">-</span><span style="color: #0000ff;">character</span><span style="color: #808080;">-</span><span style="color: #0000ff;">set</span><span style="color: #808080;">=</span><span style="color: #000000;">utf8<br /><br /></span><span style="color: #ff0000;">[</span><span style="color: #ff0000;">mysqld</span><span style="color: #ff0000;">]</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">character</span><span style="color: #808080;">-</span><span style="color: #0000ff;">set</span><span style="color: #808080;">-</span><span style="color: #000000;">server </span><span style="color: #808080;">=</span><span style="color: #000000;"> utf8</span></div></div></pre>
<p><strong>3.安装mono</strong></p>
<p>mono对.Net2.0的支持比较全，做Web服务器需要安装xsp2。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">--安装mono运行环境<br />sudo apt-get install mono-gmcs mono-xsp2 libapache2-mod-mono mono-apache-server2<br /><br />--启用mono模块<br />sudo a2enmod mod_mono</span></div></div></pre>
<p>安装完成后，我们就可以开始配置.Net网站了，假如网站主目录在/var/www/blog，修改/etc/apache2/sites-enabled/000-default如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">#</span><span style="color: #000000;">修改apache配置文件增加网站配置<br />sudo vi sites-enabled</span><span style="color: #000000;">/</span><span style="color: #000000;">000</span><span style="color: #000000;">-default<br /><br />MonoAutoApplication disabled<br />AddHandler mono </span><span style="color: #000000;">.</span><span style="color: #000000;">aspx ascx </span><span style="color: #000000;">.</span><span style="color: #000000;">asax </span><span style="color: #000000;">.</span><span style="color: #000000;">ashx </span><span style="color: #000000;">.</span><span style="color: #000000;">config </span><span style="color: #000000;">.</span><span style="color: #000000;">cs </span><span style="color: #000000;">.</span><span style="color: #000000;">asmx </span><span style="color: #000000;">.</span><span style="color: #000000;">axd<br />MonoPath default </span><span style="color: #000000;">"</span><span style="color: #000000;">/usr/bin/mono/2.0</span><span style="color: #000000;">"</span><span style="color: #000000;"><br />MonoServerPath default </span><span style="color: #000000;">/</span><span style="color: #000000;">usr</span><span style="color: #000000;">/</span><span style="color: #000000;">bin</span><span style="color: #000000;">/</span><span style="color: #000000;">mod-mono-server2<br />AddMonoApplications default </span><span style="color: #000000;">"</span><span style="color: #000000;">/blog:/var/www/blog</span><span style="color: #000000;">"</span><span style="color: #000000;"><br /></span><span style="color: #000000;">#</span><span style="color: #000000;">文件不需要大小写<br />MonoSetEnv MONO_IOMAP</span><span style="color: #000000;">=</span><span style="color: #000000;">all<br /><br /></span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Directory </span><span style="color: #000000;">/</span><span style="color: #000000;">var</span><span style="color: #000000;">/</span><span style="color: #000000;">www</span><span style="color: #000000;">/</span><span style="color: #000000;">blog</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"><br />                 Options Indexes FollowSymLinks MultiViews<br />                 AllowOverride All<br />                 Order allow</span><span style="color: #000000;">,</span><span style="color: #000000;">deny<br />                 allow from all<br />                 SetHandler mono<br />                 DirectoryIndex default</span><span style="color: #000000;">.</span><span style="color: #000000;">aspx Default</span><span style="color: #000000;">.</span><span style="color: #000000;">aspx index</span><span style="color: #000000;">.</span><span style="color: #000000;">aspx index</span><span style="color: #000000;">.</span><span style="color: #000000;">html<br /></span><span style="color: #000000;">&lt;/</span><span style="color: #000000;">Directory</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"><br /><br /><br />--赋予网站执行权限<br />chmod -R </span><span style="color: #000000;">755</span><span style="color: #000000;"> </span><span style="color: #000000;">/</span><span style="color: #000000;">var</span><span style="color: #000000;">/</span><span style="color: #000000;">www</span><span style="color: #000000;">/</span><span style="color: #000000;">blog<br /><br />--重启apache服务<br />sudo </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">init</span><span style="color: #000000;">.</span><span style="color: #000000;">d</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2 restart</span></div></div></pre>
<p>重启apache服务后，如果不出问题使用localhost就能访问网站了，需要注意Liunx系统默认都没安装中文编码，在mono中有中文路径都显示乱码访问不到，需要修改系统配置增加中文语言包。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">#</span><span style="color: #000000;">增加中文支持<br /><br />sudo vi </span><span style="color: #000000;">/</span><span style="color: #000000;">var</span><span style="color: #000000;">/</span><span style="color: #000000;">lib</span><span style="color: #000000;">/</span><span style="color: #000000;">locales</span><span style="color: #000000;">/</span><span style="color: #000000;">supported</span><span style="color: #000000;">.</span><span style="color: #000000;">d</span><span style="color: #000000;">/</span><span style="color: #000000;">local<br /><br />zh_CN</span><span style="color: #000000;">.</span><span style="color: #000000;">UTF-</span><span style="color: #000000;">8</span><span style="color: #000000;"> UTF-</span><span style="color: #000000;">8</span><span style="color: #000000;"><br />en_US</span><span style="color: #000000;">.</span><span style="color: #000000;">UTF-</span><span style="color: #000000;">8</span><span style="color: #000000;"> UTF-</span><span style="color: #000000;">8</span><span style="color: #000000;"><br /><br /><br />sudo locale-gen --purge<br /><br /><br />sudo vi </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">default</span><span style="color: #000000;">/</span><span style="color: #000000;">locale<br />LANG</span><span style="color: #000000;">=</span><span style="color: #000000;">"</span><span style="color: #000000;">zh_CN.UTF-8</span><span style="color: #000000;">"</span><span style="color: #000000;"><br />LANGUAGE</span><span style="color: #000000;">=</span><span style="color: #000000;">"</span><span style="color: #000000;">zh_CN:zh</span><span style="color: #000000;">"</span></div></div></pre>
<p><strong>4.配置ssl证书</strong></p>
<p>配置apache服务器SSL证书，首先需要启用ssl模块，然后再配置服务器证书和私钥Key。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">--</span><span style="color: #000000;">启用ssl模块<br />sudo a2enmod ssl<br /><br /><br /></span><span style="color: #000000;">--</span><span style="color: #000000;">创建默认ssl网站配置<br />sudo ln </span><span style="color: #000000;">-</span><span style="color: #000000;">s </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2</span><span style="color: #000000;">/</span><span style="color: #000000;">sites</span><span style="color: #000000;">-</span><span style="color: #000000;">available</span><span style="color: #000000;">/</span><span style="color: #000000;">default</span><span style="color: #000000;">-</span><span style="color: #000000;">ssl </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2</span><span style="color: #000000;">/</span><span style="color: #000000;">sites</span><span style="color: #000000;">-</span><span style="color: #000000;">enabled</span><span style="color: #000000;">/</span><span style="color: #800000;">000</span><span style="color: #000000;">-</span><span style="color: #000000;">default</span><span style="color: #000000;">-</span><span style="color: #000000;">ssl<br /><br /><br /></span><span style="color: #000000;">--</span><span style="color: #000000;">增加ssl网站配置<br />sudo vi </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2</span><span style="color: #000000;">/</span><span style="color: #000000;">sites</span><span style="color: #000000;">-</span><span style="color: #000000;">enabled<br /><br /><br /></span><span style="color: #008000;">#</span><span style="color: #008000;">启用ssl</span><span style="color: #008000;"><br /></span><span style="color: #000000;">SSLEngine on<br /><br /></span><span style="color: #008000;">#</span><span style="color: #008000;">ssl证书文件</span><span style="color: #008000;"><br /></span><span style="color: #000000;">SSLCertificateFile    </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2</span><span style="color: #000000;">/</span><span style="color: #000000;">ssl</span><span style="color: #000000;">/</span><span style="color: #000000;">server</span><span style="color: #000000;">.</span><span style="color: #000000;">crt<br /></span><span style="color: #008000;">#</span><span style="color: #008000;">ssl证书私钥</span><span style="color: #008000;"><br /></span><span style="color: #000000;">SSLCertificateKeyFile </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2</span><span style="color: #000000;">/</span><span style="color: #000000;">ssl</span><span style="color: #000000;">/</span><span style="color: #000000;">server</span><span style="color: #000000;">.</span><span style="color: #000000;">key<br /><br /><br /></span><span style="color: #008000;">#</span><span style="color: #008000;">证书链</span><span style="color: #008000;"><br /></span><span style="color: #000000;">SSLCertificateChainFile  </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2</span><span style="color: #000000;">/</span><span style="color: #000000;">ssl</span><span style="color: #000000;">/</span><span style="color: #000000;">ca</span><span style="color: #000000;">.</span><span style="color: #000000;">crt<br /><br /></span><span style="color: #008000;">#</span><span style="color: #008000;">证书验证深度</span><span style="color: #008000;"><br /></span><span style="color: #000000;">SSLVerifyDepth  </span><span style="color: #800000;">10</span><span style="color: #000000;"><br /><br /><br /></span><span style="color: #008000;">#</span><span style="color: #008000;">ssl选项</span><span style="color: #008000;"><br /></span><span style="color: #000000;">SSLOptions </span><span style="color: #000000;">+</span><span style="color: #000000;">FakeBasicAuth </span><span style="color: #000000;">+</span><span style="color: #000000;">ExportCertData </span><span style="color: #000000;">+</span><span style="color: #000000;">StrictRequire</span></div></div></pre>
<p>配置好ssl网站重启apache服务，输入<a href="https://jonllen.com" target="_blank" title="金龙博客">https://jonllen.com</a>就能使用安全连接访问网站，如果需要客户端证书，可以将网站配置为双向认证，则要在apache网站配置中指定客户端颁发机构CA证书。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">&lt;</span><span style="color: #000000;">Directory </span><span style="color: #000000;">/</span><span style="color: #000000;">var</span><span style="color: #000000;">/</span><span style="color: #000000;">www</span><span style="color: #000000;">/</span><span style="color: #000000;">blog</span><span style="color: #000000;">/</span><span style="color: #000000;">Passport</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"><br />    SSLVeriFyClient </span><span style="color: #0000ff;">require</span><span style="color: #000000;"><br />    SSLCACertificateFile </span><span style="color: #000000;">/</span><span style="color: #000000;">etc</span><span style="color: #000000;">/</span><span style="color: #000000;">apache2</span><span style="color: #000000;">/</span><span style="color: #000000;">ssl</span><span style="color: #000000;">/</span><span style="color: #000000;">ca</span><span style="color: #000000;">.</span><span style="color: #000000;">crt<br /></span><span style="color: #000000;">&lt;/</span><span style="color: #000000;">Directory</span><span style="color: #000000;">&gt;</span></div></div></pre>
<p>这样，在访问需要配置SSL客户端证书路径时，客户端浏览器就会提示需要ca.crt颁发的客户端证书。需要注意服务器端要使用Request.ClientCertificate获取客户端证书，上面SSLOptions选项一定配置，否则会取不到客户端证书数据。</p>
<p>将这个网站移植到Linux上，总体来说使用mono基本能够满足功能，但还是有些地方还需要调整。比如Linux下对Access数据库访问支持不好，需要使用第三方工具或更换成mysql。在使用NHibernate时偶尔也出现了些问题，另外，使用了log4net日志的用mono版本的log4net.dll，日志内容会输出到apache的日志文件中。</p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2013-06-29 17:43</li>
				<li>update@ 2013-06-30 23:23:52</li>
				<li>阅读(<span id="articleClick">4363</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/155.aspx">ASP.NET分页控件</a></li>
<li>下一篇：<a href=""></a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=163&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/163.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=163";
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