
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>软件开发规范—模块开发卷宗(GB8567——88) - 工作 - 金龙博客</title>
<meta name="description" content="最近这个两个星期的工作都写广佛验收的相关文档，叫一个做程序的写这个东西可难为我了，Earth那时候是奸笑着对我说正好"锻炼一下"，由于之前很少这些东西，所以这一锻炼可是让我头都大了，可谓是绞尽脑汁，还不知道我写的那些东西过得关不，有时候我都不知道怎么组织好语句写通顺，左想右想都不是，还好有些能对着页面里一些帮助信息进行写。
其实，做软件开发是有那么一套国准可参照的，当然就是那些文档了，这里列出一下所有软件开发的规范文档：

操作手册
用户手册
软件质量保证计划
软件需求说明书
概要设计说明书
开发进度月报
测试计划文档
测试分析报告
数据库设计说明书
软件配置管理计划
模块开发卷宗
详细设计说明书
项目开发总结报告

我现在再做的东西是数据库设计说明书，两天前才写玩模块开发卷宗，那时候在网上找了一些事例不是很符合规范，而完全对着模块开发卷宗的模板去写真不知道里面要写什么，因为里面有太多概念性的东西都看不懂，在这里贴以下广佛都市网的模块开发卷宗，仅供参考。

广佛都市网
模块开发卷宗（GB856788）
2009年8月
广佛都市网模块开发卷宗（GB856788）...................................................." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-08-16' } );
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
		     > <a href="/jonllen/work/56.aspx">软件开发规范—模块开发卷宗(GB8567——88)</a>
		</div>
        <div class="article">
			<div class="title"><h2>软件开发规范—模块开发卷宗(GB8567——88)</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size:18px">
<p style="text-indent:2em">最近这个两个星期的工作都写广佛验收的相关文档，叫一个做程序的写这个东西可难为我了，Earth那时候是奸笑着对我说正好"锻炼一下"，由于之前很少这些东西，所以这一锻炼可是让我头都大了，可谓是绞尽脑汁，还不知道我写的那些东西过得关不，有时候我都不知道怎么组织好语句写通顺，左想右想都不是，还好有些能对着页面里一些帮助信息进行写。</p>
<p style="text-indent:2em">其实，做软件开发是有那么一套国准可参照的，当然就是那些文档了，这里列出一下所有软件开发的规范文档：</p>
<ul style="padding-left:2em">
<li>操作手册</li>
<li>用户手册</li>
<li>软件质量保证计划</li>
<li>软件需求说明书</li>
<li>概要设计说明书</li>
<li>开发进度月报</li>
<li>测试计划文档</li>
<li>测试分析报告</li>
<li>数据库设计说明书</li>
<li>软件配置管理计划</li>
<li>模块开发卷宗</li>
<li>详细设计说明书</li>
<li>项目开发总结报告</li>
</ul>
<p style="text-indent:2em">我现在再做的东西是数据库设计说明书，两天前才写玩模块开发卷宗，那时候在网上找了一些事例不是很符合规范，而完全对着模块开发卷宗的模板去写真不知道里面要写什么，因为里面有太多概念性的东西都看不懂，在这里贴以下广佛都市网的模块开发卷宗，仅供参考。</p>
<div><a name="_Toc237941567"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: x-large;"><strong>广佛都市网</strong></span></span></a>
<p class="MsoTitle" style="margin: 12pt 0cm 3pt;"><strong><span style="font-size: x-large;"><span style="mso-bookmark: _Toc237941567;"><span style="font-family: 宋体; mso-bidi-font-size: 42.0pt; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">模块开发卷宗</span></span><span style="mso-bookmark: _Toc237941567;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">（</span><span lang="EN-US"><span style="font-family: Arial;">GB8567</span></span></span><span style="mso-bookmark: _Toc237941567;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">&mdash;&mdash;</span><span lang="EN-US"><span style="font-family: Arial;">88</span></span></span><span style="mso-bookmark: _Toc237941567;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">）</span></span></span></strong></p>
<p class="MsoNormal" style="margin: 0cm 0cm 0pt 262.5pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Times New Roman;">2009</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">年</span><span lang="EN-US"><span style="font-family: Times New Roman;">8</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">月</span><span style="mso-bidi-font-size: 5.0pt;" lang="EN-US"></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">广佛都市网模块开发卷宗（</span><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">GB8567&mdash;&mdash;88</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">）</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">1</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: 21.0pt right dotted 414.8pt;"><span style="font-size: small;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">1.<span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">标题</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">3</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">软件系统名称：广佛都市网</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">....................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">3</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">模块名称</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">3</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">内容发布管理系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.............................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">3</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">内容支持平台</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">4</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">通行证管理系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">4</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">博客管理系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">4</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">分类信息系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">4</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">论坛系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">............................................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">4</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">程序编制员签名</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">........................................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">4</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">修改完成日期</span><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">: 2009</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">年</span><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">8</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">月</span><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">3</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">日</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">5</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: 21.0pt right dotted 414.8pt;"><span style="font-size: small;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">2.<span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">模块开发情况表</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">........................................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">5</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: 21.0pt right dotted 414.8pt;"><span style="font-size: small;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">3.<span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">功能说明</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">7</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">内容支持平台</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">(http://sys.citygf.com)<span style="mso-tab-count: 1 dotted;">............................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">7</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">用户管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">7</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">博客管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">7</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">圈子管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">8</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">广告管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">9</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">论坛版块管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">............................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">10</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">分类信息管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">............................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">10</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">流量统计模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">11</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">系统设置模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">11</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">投稿、举报、辩论其他模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.............................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">12</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">通行证管理系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">(http://public.citygf.com)<span style="mso-tab-count: 1 dotted;">................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">13</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">个人信息管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">............................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">13</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">好友模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">13</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">站内短信模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">13</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">分类信息模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">13</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">稿件管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">14</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">安全设置</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">14</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">博客管理系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">(http://blog.citygf.com)<span style="mso-tab-count: 1 dotted;">......................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">14</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">日志模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">14</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">相册模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">15</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">留言管理模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">15</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">博客模板、风格设置模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">15</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">圈子活动管理</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">16</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">圈子模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">(http://group.citygf.com)<span style="mso-tab-count: 1 dotted;">...................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">16</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">活动模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">16</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">分类信息系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">(http://fenlei.citygf.com)<span style="mso-tab-count: 1 dotted;">....................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">17</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">分类信息发布</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">17</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">按大小分类、区域进行浏览</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.............................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">17</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">显示热门、推荐信息</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">........................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">17</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: 21.0pt right dotted 414.8pt;"><span style="font-size: small;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">4.<span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">设计说明</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">17</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">内容发布管理系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">17</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">内容支持平台</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">17</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">博文排行</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">博客之星</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">最新博文</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">点击排行</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">推荐圈子</span><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;"><span style="font-family: Times New Roman;">.......................................................................................................... </span></span></span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">相册</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">推荐博客</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">最近开博</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">用户登录</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">通行证管理系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">...................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">18</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">博客模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">19</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">分类信息系统</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">19</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">论坛模块</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">19</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: 21.0pt right dotted 414.8pt;"><span style="font-size: small;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">5.<span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">原代码清单</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">............................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">20</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">解决方案</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">PORTAL<span style="mso-tab-count: 1 dotted;">................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">20</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">PORTAL<span style="mso-tab-count: 1 dotted;">........................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">20</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">PORTAL_DL<span style="mso-tab-count: 1 dotted;">..................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">20</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">PORTAL_W<span style="mso-tab-count: 1 dotted;">...................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">20</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">Studio<span style="mso-tab-count: 1 dotted;">............................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">20</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc2" style="margin: 0cm 0cm 0pt 21pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">解决方案</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">BLOG<span style="mso-tab-count: 1 dotted;">....................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">21</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">BLOG_DL<span style="mso-tab-count: 1 dotted;">......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">21</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">Studio<span style="mso-tab-count: 1 dotted;">............................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">21</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">BLOG<span style="mso-tab-count: 1 dotted;">............................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">21</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">BLOG_W<span style="mso-tab-count: 1 dotted;">.......................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">21</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">GROUP<span style="mso-tab-count: 1 dotted;">............................................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">22</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">GROUP_W<span style="mso-tab-count: 1 dotted;">....................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">22</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">INFO<span style="mso-tab-count: 1 dotted;">................................................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">22</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">INFO_W<span style="mso-tab-count: 1 dotted;">........................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">23</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">PUBLIC<span style="mso-tab-count: 1 dotted;">............................................................................................................ </span></span><span style="mso-no-proof: yes;" lang="EN-US">23</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc3" style="margin: 0cm 0cm 0pt 42pt; tab-stops: right dotted 414.8pt;"><span style="font-size: small;"><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US">PUBLIC_W<span style="mso-tab-count: 1 dotted;">....................................................................................................... </span></span><span style="mso-no-proof: yes;" lang="EN-US">23</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: 21.0pt right dotted 414.8pt;"><span style="font-size: small;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">6.<span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">测试说明</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">................................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">23</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoToc1" style="margin: 0cm 0cm 0pt; tab-stops: 21.0pt right dotted 414.8pt;"><span style="font-size: small;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="font-family: Times New Roman;">7.<span style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes;">复审的结论</span><span style="font-family: Times New Roman;"><span style="mso-no-proof: yes;" lang="EN-US"><span style="mso-tab-count: 1 dotted;">............................................................................................................. </span></span><span style="mso-no-proof: yes;" lang="EN-US">23</span><span style="mso-no-proof: yes;" lang="EN-US"></span></span></span></p>
<p class="MsoNormal" style="margin: 0cm 0cm 0pt 262.5pt;"><span lang="EN-US"><span style="font-size: small; font-family: Times New Roman;">&nbsp;</span></span></p>
<h1 style="margin: 17pt 0cm 16.5pt 44.15pt; text-indent: -44.15pt;"><a name="_Toc237941568"><span style="mso-fareast-font-family: 'Times New Roman';" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family: Times New Roman;"><span style="font-size: x-large;">1.</span><span style="font: 7pt &quot;Times New Roman&quot;;">&nbsp;&nbsp; </span></span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: x-large;">标题</span></span></a></h1>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941569"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">软件系统名称：广佛都市网</span></span></a></h2>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941570"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">模块名称</span></span></a></h2>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941571"><span style="font-size: large; font-family: 宋体, MS Song;">内容发布管理系统</span></a></h3>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">采用北京拓尔思信息技术股份有限公司的&ldquo;</span><span lang="EN-US"><span style="font-family: Times New Roman;">TRS</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">内容协作平台&rdquo;软件</span><span lang="EN-US"><span style="font-family: Times New Roman;">V6.0,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">详情请参见</span><span lang="EN-US"><span style="font-family: Times New Roman;">TRS</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">内容管理系统</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941572"><span style="font-size: large; font-family: 宋体, MS Song;">内容支持平台</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">用户管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">圈子管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">论坛版块管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">分类信息管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">流量统计模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">系统设置模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">投稿、举报、辩论其他模块</span></span></h4>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941573"><span style="font-size: large; font-family: 宋体, MS Song;">通行证管理系统</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">个人信息管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">积分系统模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">好友模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">站内短信模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">分类信息模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">稿件管理模块</span></span></h4>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941574"><span style="font-size: large; font-family: 宋体, MS Song;">博客管理系统</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">日志模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">相册模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">留言管理模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客模板、风格设置模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">圈子模块</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">活动模块</span></span></h4>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941575"><span style="font-size: large; font-family: 宋体, MS Song;">分类信息系统</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">分类信息发布</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">按大小分类、区域进行浏览</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">显示热门、推荐信息</span></span></h4>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941576"><span style="font-size: large; font-family: 宋体, MS Song;">论坛系统</span></a></h3>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">采用康盛创想（北京）科技有限公司（</span><span lang="EN-US"><span style="font-family: Times New Roman;">Comsenz Inc.</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">）的</span><span lang="EN-US"><span style="font-family: Times New Roman;">Discuz!</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">论坛系统商业授权版本</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">并与通行证用户整合</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">详情请参考</span><span lang="EN-US"><span style="font-family: Times New Roman;">Discuz</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">论坛。</span></span></p>
<p class="MsoNormal" style="margin: 0cm 0cm 0pt;"><span lang="EN-US"><span style="font-size: small; font-family: Times New Roman;">&nbsp;</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941577"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">程序编制员签名</span></span></a></h2>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">谢康、陈炜坤、陈卓铭、蔡壮茂、陈思位、梁毅成、彭金龙、马光明、邓铭武、李慧、邝林芳、王海愉</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941578"><span style="font-size: large;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">修改完成日期</span><span lang="EN-US"><span style="font-family: Arial;">: </span></span></span></a><span style="font-size: large;"><span style="mso-bookmark: _Toc237941578;"><span lang="EN-US"><span style="font-family: Arial;">2009</span></span></span><span style="mso-bookmark: _Toc237941578;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">年</span><span lang="EN-US"><span style="font-family: Arial;">8</span></span></span><span style="mso-bookmark: _Toc237941578;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">月</span><span lang="EN-US"><span style="font-family: Arial;">3</span></span></span><span style="mso-bookmark: _Toc237941578;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">日</span></span></span></h2>
<h1 style="margin: 17pt 0cm 16.5pt 44.15pt; text-indent: -44.15pt;"><a name="_Toc237941579"><span style="mso-fareast-font-family: 'Times New Roman';" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family: Times New Roman;"><span style="font-size: x-large;">2.</span><span style="font: 7pt &quot;Times New Roman&quot;;">&nbsp;&nbsp; </span></span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: x-large;">模块开发情况</span></span></a></h1>
<h2 style="margin: 1pt 10.5pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">略</span></span></h2>
<h1 style="margin: 17pt 0cm 16.5pt 44.15pt; text-indent: -44.15pt;"><a name="_Toc237941580"><span style="mso-fareast-font-family: 'Times New Roman';" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family: Times New Roman;"><span style="font-size: x-large;">3.</span><span style="font: 7pt &quot;Times New Roman&quot;;">&nbsp;&nbsp; </span></span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: x-large;">功能说明</span></span></a></h1>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941581"><span style="font-size: large;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">内容支持平台</span><span lang="EN-US"><span style="font-family: Arial;">(</span></span></span></a><a href="http://sys.citygf.com/"><span style="mso-bookmark: _Toc237941581;"><span style="color: windowtext; text-decoration: none; text-underline: none;" lang="EN-US"><span style="font-size: large; font-family: Arial;">http://sys.citygf.com</span></span></span></a><span style="mso-bookmark: _Toc237941581;"><span lang="EN-US"><span style="font-size: large; font-family: Arial;">)</span></span></span></h2>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941582"><span style="font-size: large; font-family: 宋体, MS Song;">用户管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">用户列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对所有通行证用户进行管理，根据用户状态、博客状态、推荐博客等条件进行筛选，可批量执行关闭、锁定用户或博客等操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">实名验证</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">实名验证分为未处理、审批通过和审批不通过三种状态，默认显示所有未处理，管理员在确认审批不通时可以选择不通过原因。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">积分设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">积分设置用于设置前台用户的一些操作动作获得的积分数、如注册、发表一篇日志等，为负分数则减少积分数，保存后需要点击刷新缓存以立即应用所修改后的设置。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">等级设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">等级设置用于设定积分数所对应的等级，并将用于博客、通行证、论坛等处显示。点编辑可以修改等级号和积分范围，注意不能和已有积分等级设置的重复，系统计算用户等级是从低到高循环判断，如果积分范围</span><span lang="EN-US"><span style="font-family: Times New Roman;">(</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">最小值</span><span lang="EN-US"><span style="font-family: Times New Roman;">)&lt;=</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">用户积分</span><span lang="EN-US"><span style="font-family: Times New Roman;">&lt;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">积分范围</span><span lang="EN-US"><span style="font-family: Times New Roman;">(</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">最大值</span><span lang="EN-US"><span style="font-family: Times New Roman;">)</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">就认为用户属于该级别。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941583"><span style="font-size: large; font-family: 宋体, MS Song;">博客管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客文章管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">可根据博主帐号、文章标题、日期、状态进行搜索，可以进行批量删除、推荐、取消推荐操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博文排行管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">显示提交到门户的浏览次数最多的前</span><span lang="EN-US"><span style="font-family: Times New Roman;">10</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">篇博文列表，管理员可对不符合要求的进行排除以不在前台博客首页的博文排行处显示。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">文章评论列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">可根据博主帐号和留言人</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址进行搜索，并可对评论执行批量删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">门户文章类别</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">用于管理提交到门户的栏目类别，门户栏目编号必须与门户实际栏目的编号一致，否则文章将不会在相应栏目显示出来。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客相册管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">列表显示所有博客相册，能根据博主帐号、创建日期、门户相册类别和状态进行检索，可执行批量删除、推荐和取消推荐操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">相册评论管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对所有博客相册的评论进行管理，可批量进行删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">门户相册类别</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">用于管理提交到门户相册类别，门户栏目编号必须与门户实际栏目的编号一致，否则相册将不会在相应栏目显示出来。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客留言列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">对所有博客留言进行管理，可以根据博主帐号和留言</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址进行搜索，批量删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客标签</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示博文所有使用的标签列表，可按热门和推荐进行检索，并可批量推荐、取消推荐、设置热门、取消热门、删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客类别</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">用于博客类别的管理</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客模板</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">管理所有博客模板，按指定格式上传静态页面和样式文件即可新建博客模板。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941584"><span style="font-size: large; font-family: 宋体, MS Song;">圈子管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">圈子列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对所有用户创建的圈子进行管理，可根据圈子域名、圈子名称、圈主帐号、圈子状态进行搜索，并可进行锁定、删除、推荐、取消推荐操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">圈子文章</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示提交到圈子的所有博文，可根据域名来搜索指定的圈子，删除圈子的文章不会删除原博文。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">圈子成员</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">对所有圈子的成员进行管理，可根据圈子域名查看圈子所有成员或查询会员帐号显示用户加入的所有圈子，并可移出圈子，状态列</span><span lang="EN-US"><span style="font-family: Times New Roman;">-1</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">表示邀请等待确认、</span><span lang="EN-US"><span style="font-family: Times New Roman;">0</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">等待审批、</span><span lang="EN-US"><span style="font-family: Times New Roman;">1</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">正常、</span><span lang="EN-US"><span style="font-family: Times New Roman;">2</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">拒绝加入。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">圈子留言</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">对所有圈子留言进行管理，可根据圈子域名、名称、状态、留言</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址等进行搜索或删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">圈子类别</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">可新建、修改圈子类别，如果类别中已有圈子则不能进行删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">活动列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对所有圈子的活动进行管理，可根据圈子名、发起人、选项等筛选，操作栏可进行管理和删除操作，点击管理链接可对活动的基本信息、成员、留言进行管理。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">活动分类</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对圈子活动分类进行管理。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">活动留言</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">对圈子活动留言进行管理，可根据活动名、留言人姓名、</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址搜索，将选中的留言进行删除。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941585"><span style="font-size: large; font-family: 宋体, MS Song;">广告管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">客户管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">所有投放的广告必须是属于某个客户，客户管理用于维护所有投放广告的客户。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告素材管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">投放广告需先新建广告素材，一个客户可以有多个广告素材，一个广告素材也可以投放到多个广告位，广告素材根据展现形式分为图片、文字、</span><span lang="EN-US"><span style="font-family: Times New Roman;">Flash</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">、</span><span lang="EN-US"><span style="font-family: Times New Roman;">JavaScript</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">、</span><span lang="EN-US"><span style="font-family: Times New Roman;">HTML5</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">种类型，图片和</span><span lang="EN-US"><span style="font-family: Times New Roman;">Flash</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">类型可以上传其文件，其他类型直接在文本框内编辑。其中文字类型只显示纯文字，</span><span lang="EN-US"><span style="font-family: Times New Roman;">JavaScript</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">类型内容应为包含</span><span lang="EN-US"><span style="font-family: Times New Roman;">&lt;script&gt;&lt;/script&gt;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">标记在内的</span><span lang="EN-US"><span style="font-family: Times New Roman;">JavaScript</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">代码，</span><span lang="EN-US"><span style="font-family: Times New Roman;">HTML</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">即是为完整</span><span lang="EN-US"><span style="font-family: Times New Roman;">html</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">格式的标签。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告投放列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">广告投放列表用于显示广告素材所投放到的广告位列表，显示机率百分比</span><span lang="EN-US"><span style="font-family: Times New Roman;">100</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">表示此广告位恒显示该广告素材，当一个广告位投放了多个广告素材的时显示机率可以控制素材在此广告位显示机率次数。当广告位无素材投放或投放已过期将显示广告位默认广告。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告效果统计</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">广告效果统计为所有已投放的广告素材按天统计在广告位上展示和点击的次数，可查看特定广告素材和广告位的统计情况，如果需要查看某一天请在投放起止日期选择为同一天，由于广告系统采用缓存池，广告效果统计每一小时候更新到数据库一次，点击刷新数据强制更新到最新的统计数据。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告位绩效排名</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">广告位绩效排名可根据广告位的展示或点击次数降序排列统计，是评测某个广告位效果的一种重要依据。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">刷新广告池</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">由于广告使用数据缓存，对于新增加或修改广告素材可能不能及时更新，刷新广告池将前台所有广告更新到最新更改的广告数据。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告位管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">广告位管理用于维护整个系统的广告位，广告位的</span><span lang="EN-US"><span style="font-family: Times New Roman;">ID</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">应该为字母、下划线、数字组成并确保唯一，名称可为中文汉字，可用于检索。新建广告位时应同时指定默认广告，否则该广告位无广告投放时将显示一片空白。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告尺寸设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">当广告位没有选定大小的尺寸时，可先在广告尺寸设置内添加广告尺寸。在列表页操作栏可进行修改、删除操作，查看广告位将跳转该尺寸应用的所有广告位。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">广告频道管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">所有广告位应都所属广告频道，广告频道管理用于维护所有广告频道，查看广告位显示该频道所有的广告位。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941586"><span style="font-size: large; font-family: 宋体, MS Song;">论坛版块管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">论坛版块管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">论坛板块列表提供论坛和门户栏目的绑定，论坛板块的添加删除请登陆</span><span lang="EN-US"><a href="http://bbs.citygf.com/"><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">http://bbs.citygf.com</span></span></a></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">后台进行修改，注意子板块不会继承自父板块的门户栏目绑定。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941587"><span style="font-size: large; font-family: 宋体, MS Song;">分类信息管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">区域设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">区域设置用于设置发布信息时选择的区域，支持两级区域，点击一级区域可查看二级区域，当区域里已有信息发布则不能删除，可点击排前或排后进行排序。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">分类设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">管理用于发布信息时选择的分类，支持两级分类，分类中已有信息发布则不能删除，可点击排前或排后进行排序。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">分类表单</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">分类表单用于自定义设置分类字段，可选择输入框、文本框、下拉列表、复选框组、单选框组类型，不同类型在发布和查询时将呈现出不同的控件结构，当类型为下拉列表、复选框组、单选框组时必须添加选项参数。分类自定义表单设置之后，请刷新前台缓存。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">信息列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">信息列表是前台所有发布信息的管理中心，可根据分类、区域、审核、置顶、标题、发布人作者进行检索，并可执行批量删除、推荐、取消推荐、置顶、取消置顶、审批通过、取消审批操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">信息举报</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">信息举报管理用于处理前台用户对分类信息的举报，并可操作栏在标记为属实或虚假，以便之后再做相应的处理。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">评论列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">用于管理所有信息的评论，可根据留言</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址进行筛选，对于一些广告性质的或恶意评论可进行删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">点击排行</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">排行列表显示按点击数排行显示的前</span><span lang="EN-US"><span style="font-family: Times New Roman;">100</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">条分类信息，过期的信息将不再这里显示。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">审核关键字</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">当用户提交的信息出现关键字，则信息需要审核才能发布，将要过滤的关键字粘贴在文本输入框区域，多个使用回车换行，点击保存设置即可。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941588"><span style="font-size: large; font-family: 宋体, MS Song;">流量统计模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">站点管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">管理用于流量统计的所有站点，获取统计代码用于查看某个用户的</span><span lang="EN-US"><span style="font-family: Times New Roman;">JavaScript</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">脚本统计代码。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">频道管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">维护所有站点的所有频道</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">统计报表</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">1.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">综合报告</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">2.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">最近访客</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">3.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">时段分析</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">4.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">每日分析</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">5.IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">来源分析</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">6.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">来源地区分析</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">7.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">搜索引擎分析</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">8.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">来源关键词分析</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">9.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">来源网站分析</span></span></h4>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-size: small;"><span lang="EN-US"><span style="font-family: Arial;">10.</span></span><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">被访问页分析</span></span></h4>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941589"><span style="font-size: large; font-family: 宋体, MS Song;">系统设置模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">登陆帐号</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">列表显示所有登陆内容支持平台</span><span lang="EN-US"><span style="font-family: Times New Roman;">(</span><a href="http://sys.citygf.com/"><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">http://sys.citygf.com</span></span></a><span style="font-family: Times New Roman;">)</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">的管理员登陆帐户，只有角色高的帐户才能设置角色低的帐户，默认</span><span lang="EN-US"><span style="font-family: Times New Roman;">admin</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">为最高权限的帐户。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">服务动态</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">管理显示于博客后台首页的服务动态列表</span><span lang="EN-US"><span style="font-family: Times New Roman;">.</span></span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">非法关键字设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">非法关键词有两类，</span><span lang="EN-US"><span style="font-family: Times New Roman;">A</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">类直接替换为星号，</span><span lang="EN-US"><span style="font-family: Times New Roman;">B</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">类拒绝发布内容。一行只能输入一个关键词，多个使用回车换行。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">非法关键字处理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">列表显示捕获的文章、文章评论、</span><span lang="EN-US"><span style="font-family: Times New Roman;">&gt;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">留言、信息、评论、留言、相片评论包含关键字列表，可对一些误捕获的文章或评论进行排除通过，而对一些确实违反道德或国家法律的文章或评论进行删除。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941590"><span style="font-size: large; font-family: 宋体, MS Song;">投稿、举报、辩论其他模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">投稿管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对前台用户在线投稿的文章进行管理，可根据用户帐号、分类、状态进行搜索，点击进入稿件可以查看稿件改动过所有的历史版本，并可设置审核通过或不通过。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">投稿分类管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对投稿分类进行管理。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">举报管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">对前台用户进入</span><span lang="EN-US"><a href="http://public.citygf.com/alarm/index.aspx"><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">http://public.citygf.com/alarm/index.aspx</span></span></a></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">举报的信息进行管理，可根据举报人、</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址、类别、处理状态进行检索，标记为属实或不属实后再进行相关操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">举报分类管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">对举报分类进行管理。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">辩论管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">对辩论进行管理，验证方式为</span><span lang="EN-US"><span style="font-family: Times New Roman;">Cookie</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">的即在客户端值入一个</span><span lang="EN-US"><span style="font-family: Times New Roman;">Cookie</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">来标识已投票，</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">验证则保留</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">到数据库以保证每次参加辩论者</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">的唯一。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">辩论评论管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">对辩论的评论进行管理，可根据辩论标题、评论人、</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址、支持方进行检索，并可执行批量删除操作。</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941591"><span style="font-size: large;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">通行证管理系统</span><span lang="EN-US"><span style="font-family: Arial;">(</span></span></span></a><a href="http://public.citygf.com/"><span style="mso-bookmark: _Toc237941591;"><span style="color: windowtext; text-decoration: none; text-underline: none;" lang="EN-US"><span style="font-size: large; font-family: Arial;">http://public.citygf.com</span></span></span></a><span style="mso-bookmark: _Toc237941591;"><span lang="EN-US"><span style="font-size: large; font-family: Arial;">)</span></span></span></h2>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941592"><span style="font-size: large; font-family: 宋体, MS Song;">个人信息管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">修改个人资料</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">修改用户的基本资料。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">上传个性头像</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">用户个性头像，将用于博客、论坛、圈子等多出头像的显示。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">实名验证</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">用于网络实名验证，需要填写真实姓名、身份证号码，上传证件图片，验证通过后不许更改。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">我的积分</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我所有积分获取的历史记录，为负分数是减少积分。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941593"><span style="font-size: large; font-family: 宋体, MS Song;">好友模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">我的好友</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示已经审核通过了的好友列表。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">添加好友</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">用于添加好友，对方帐号必须不为空且存在，备注信息为对方审核时看到的信息，非必填。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941594"><span style="font-size: large; font-family: 宋体, MS Song;">站内短信模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">撰写短信</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">接收者帐号不能为空且确保用户已存在，点击右边可选择发送到的好友。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">我收到的短信</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我所有收到的短信，可根据好友帐号查找短信，已读短信显示为灰色图标。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">我发送的短信</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我发送到好友的短信和系统自动发送的短信息，如好友申请和加入圈子申请等，可选择短信进行批量删除。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941595"><span style="font-size: large; font-family: 宋体, MS Song;">分类信息模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">管理分类信息</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">管理在</span><span lang="EN-US"><a href="http://fenlei.citygf.com/"><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">http://fenlei.citygf.com</span></span></a></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">上发布的所有分类信息，可进行编辑和删除操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">发布分类信息</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">跳转至</span><span lang="EN-US"><a href="http://fenlei.citygf.com/pub.aspx"><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">http://fenlei.citygf.com/pub.aspx</span></span></a></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">发布分类信息页面</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941596"><span style="font-size: large; font-family: 宋体, MS Song;">稿件管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">管理我的稿件</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">管理我所有投放过的稿件列表，可根据审核和发布状态进行检索。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">在线投稿</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">只有登陆了通行证用户才能在线投稿，且稿件内容不能少于</span><span lang="EN-US"><span style="font-family: Times New Roman;">200</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">个字，未选发布的稿件后台管理员不会看到。每次编辑稿件后将保留历史稿件内容记录，并版本号自动加</span><span lang="EN-US"><span style="font-family: Times New Roman;">1</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941597"><span style="font-size: large; font-family: 宋体, MS Song;">安全设置</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">修改我的登陆密码</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">先输入正确旧密码，输入新密码并再输入新密码，密码强度指示新密码的评级，建议使用数字</span><span lang="EN-US"><span style="font-family: Times New Roman;">+</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">字母</span><span lang="EN-US"><span style="font-family: Times New Roman;">+</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">符号的强类型密码。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">退出登陆</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">安全退出通行证帐号。</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941598"><span style="font-size: large;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">博客管理系统</span><span lang="EN-US"><span style="font-family: Arial;">(</span></span></span></a><a href="http://blog.citygf.com/"><span style="mso-bookmark: _Toc237941598;"><span style="color: windowtext; text-decoration: none; text-underline: none;" lang="EN-US"><span style="font-size: large; font-family: Arial;">http://blog.citygf.com</span></span></span></a><span style="mso-bookmark: _Toc237941598;"><span lang="EN-US"><span style="font-size: large; font-family: Arial;">)</span></span></span></h2>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941599"><span style="font-size: large; font-family: 宋体, MS Song;">日志模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">添加日志</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">日志自动生功摘要将从日志内容中提取前若干字作为摘要内容，需要保持原摘要或手工编辑</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">请不要打勾，草稿只在管理列表显示，不会在博客页面显示。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">日志列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">用列表上的搜索工具条可对列表中的文章进行过滤，可批量选择删除、置顶、取消置顶。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">添加栏目</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">栏目支持两级分类，如果设置了</span><span lang="EN-US"><span style="font-family: Times New Roman;">&ldquo;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">栏目图片</span><span lang="EN-US"><span style="font-family: Times New Roman;">&rdquo;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">，在首页显示栏目文章时，不仅会显示该栏目的文章列表，还会显示一张图片，可使页面排版更美观，建议上传符合栏目特点和内容的图片。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">栏目列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我的栏目列表，栏目排序由排序号从低到高排列，如需要设置请在修改里操作。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941600"><span style="font-size: large; font-family: 宋体, MS Song;">相册模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">上传相片</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">点击批量上传相片可同时添加</span><span lang="EN-US"><span style="font-family: Times New Roman;">5</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">张相片进行上传，最大只允许上传</span><span lang="EN-US"><span style="font-family: Times New Roman;">2M</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">的文件</span><span lang="EN-US"><span style="font-family: Times New Roman;">, </span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">图片的宽度最好小于</span><span lang="EN-US"><span style="font-family: Times New Roman;">640px</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">添加相册</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">添加相册后，您所添加的该相册的第一张照片会成为该相册得封面图片，如果选择提交到总站频道，则需要经过管理员的审批之后才能发布。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">相册列表</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">管理我博客的相册列表，可进行预览、继续上传、修改和删除操作。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">网络文件夹</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我对应的网络文件夹列表，包含个人头像、相册图片等文件，如果删除一些所需资源文件将导致一些不正常的行为，如照片不显示等。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941601"><span style="font-size: large; font-family: 宋体, MS Song;">留言管理模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客留言管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">管理我的博客留言，可批量进行删除，您可以对留言进行回复，回复内容会以</span><span lang="EN-US"><span style="font-family: Times New Roman;">&ldquo;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">博主回复</span><span lang="EN-US"><span style="font-family: Times New Roman;">&rdquo;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">形式显示在该条留言内容里。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">文章评论管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">文章评论显示的是浏览者对您的某些日志</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">文章做的评论，可以以</span><span lang="EN-US"><span style="font-family: Times New Roman;">"</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">博主回复</span><span lang="EN-US"><span style="font-family: Times New Roman;">"</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">的形式回复浏览者的评论，并可批量选中进行删除。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">相片评论管理</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示博客相片的所有评论列表，并可批量进行删除。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941602"><span style="font-size: large; font-family: 宋体, MS Song;">博客模板、风格设置模块</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">页面版式设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">设置博客不同的版式，可以将博客分为两栏</span><span lang="EN-US"><span style="font-family: Times New Roman;">(</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">左栏、右栏</span><span lang="EN-US"><span style="font-family: Times New Roman;">)</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">或者三栏</span><span lang="EN-US"><span style="font-family: Times New Roman;">.</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">注意</span><span lang="EN-US"><span style="font-family: Times New Roman;">:</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">如果设置成两栏。那设置的在右栏的模块将无法显示。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">模块设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">设置博客首页显示的模块，可控制名称、是否显示、排序、分布左右等，支持添加自定义模块内容。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">显示模式设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">设置前台的文章列表的显示形式改变</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">两种选择</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">一种是列表的形式</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">一种是摘要的形式。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">博客摸板设置</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">选择不同的模版，将呈现出不同的风格、样式，点击图片进行预览。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941603"><span style="font-size: large; font-family: 宋体, MS Song;">圈子活动管理</span></a></h3>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">加入圈子</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">可根据省市、圈子类别、名称进行查找，并可浏览或加入圈子。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">我的圈子</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我加入的圈子列表，并可查看浏览或退出圈子，如果是创建者则是管理圈子，包含圈子基本信息、装饰、成员、邀请审批用户、公告、友情链接、文章栏目、文章、留言的管理。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">新建圈子</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">创建一个圈子，圈子域名必须是唯一的且不存在。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">活动报名</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我已加入的圈子所有活动列表，如果圈子未到期或关闭则可申请加入。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">我的活动</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">显示我加入的活动列表，如果是活动发起人则可管理活动，包括基本信息、成员和留言的管理。</span></span></p>
<h4 style="margin: 0cm 0cm 0pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: small;">发起活动</span></span></h4>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">添加自己圈子内的活动，如果无圈子请先创建一个。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941604"><span style="font-size: large;"><span style="font-family: 宋体, MS Song;">圈子模块<span lang="EN-US">(</span></span></span></a><a href="http://group.citygf.com/"><span style="mso-bookmark: _Toc237941604;"><span style="color: windowtext; text-decoration: none; text-underline: none;" lang="EN-US"><span style="font-size: large; font-family: 宋体, MS Song;">http://group.citygf.com</span></span></span></a><span style="mso-bookmark: _Toc237941604;"><span lang="EN-US"><span style="font-size: large; font-family: 宋体, MS Song;">)</span></span></span></h3>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">圈子前台首页展示，包含精华博文、最新博文、活动、自定义栏目、成员、留言，后台在博客管理后台。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941605"><span style="font-size: large; font-family: 宋体, MS Song;">活动模块</span></a></h3>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">在圈子的活动栏目，列出所有圈子的活动，点击进入活动详情可发表留言、活动报名，活动管理后台在博客管理后台。</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941606"><span style="font-size: large;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;">分类信息系统</span><span lang="EN-US"><span style="font-family: Arial;">(</span></span></span></a><a href="http://fenlei.citygf.com/"><span style="mso-bookmark: _Toc237941606;"><span style="color: windowtext; text-decoration: none; text-underline: none;" lang="EN-US"><span style="font-size: large; font-family: Arial;">http://fenlei.citygf.com</span></span></span></a><span style="mso-bookmark: _Toc237941606;"><span lang="EN-US"><span style="font-size: large; font-family: Arial;">)</span></span></span></h2>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941607"><span style="font-size: large; font-family: 宋体, MS Song;">分类信息发布</span></a></h3>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">发布信息步骤：</span><span lang="EN-US"><span style="font-family: Times New Roman;">1.</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">选择大类</span><span lang="EN-US"><span style="font-family: Times New Roman;"> &lt; 2.</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">选择小类</span><span lang="EN-US"><span style="font-family: Times New Roman;"> &lt; 3.</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">选择区域</span><span lang="EN-US"><span style="font-family: Times New Roman;"> &lt; 4.</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">填写信息。标题字数在</span><span lang="EN-US"><span style="font-family: Times New Roman;">6</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">到</span><span lang="EN-US"><span style="font-family: Times New Roman;">30</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">个字符之间，描述必须为</span><span lang="EN-US"><span style="font-family: Times New Roman;">10</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">到</span><span lang="EN-US"><span style="font-family: Times New Roman;">800</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">个字符，所有带</span><span lang="EN-US"><span style="font-family: Times New Roman;">*</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">号的为必填项。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941608"><span style="font-size: large; font-family: 宋体, MS Song;">按大小分类、区域进行浏览</span></a></h3>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">信息分类模块列出了所有的大分类及其对应的小分类，点击链接进入可选择区域列表，并可以根据后台自定义表单字段进行检索。</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941609"><span style="font-size: large; font-family: 宋体, MS Song;">显示热门、推荐信息</span></a></h3>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: small;">首页显示所有系统推荐信息、按点击数排序的热门信息、按评论数排序的热门点击信息，进入某个分类或信息则显示本类热门和推荐信息。</span></span></p>
<h1 style="margin: 17pt 0cm 16.5pt 44.15pt; text-indent: -44.15pt;"><a name="_Toc237941610"><span style="mso-fareast-font-family: 'Times New Roman';" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family: Times New Roman;"><span style="font-size: x-large;">4.</span><span style="font: 7pt &quot;Times New Roman&quot;;">&nbsp;&nbsp; </span></span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: x-large;">设计说明</span></span></a></h1>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941611"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">内容发布管理系统</span></span></a></h2>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">门户网站前台静态页面处理核心部分，使用</span><span lang="EN-US"><span style="font-family: Times New Roman;">WCM</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">内容发布管理系统，通过使用模板生成前台静态页面，并提供评论、在线直播等互动插件。</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941612"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">内容支持平台</span></span></a></h2>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">博客、通行证、分类信息等系统的总管理后台，解决方案</span><span lang="EN-US"><span style="font-family: Times New Roman;">PORTAL</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">项目按功能菜单分文件夹页面，其中</span><span lang="EN-US"><span style="font-family: Times New Roman;">WebInf</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">下面提供用户、博客、论坛调用的公共接口，详细说明如下：</span></span></p>
<h3 style="margin: 0cm 10.5pt 0pt 15.8pt;"><a name="_Toc237941613"><span style="font-size: large; font-family: 宋体, MS Song;">博文排行</span></a></h3>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941622"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">通行证管理系统</span></span></a></h2>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">提供同步登录、退出、注册等相关接口，可以实现用户一个账号，在一处登录，全站通行。系统登陆采用写入</span><span lang="EN-US"><span style="font-family: Times New Roman;">citygf.com</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">域名</span><span lang="EN-US"><span style="font-family: Times New Roman;">Cookie</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">的办法</span><span lang="EN-US"><span style="font-family: Times New Roman;">,</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">所有二级域名均共享能访问，并且使用</span><span lang="EN-US"><span style="font-family: Times New Roman;">MD5</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">进行加密验证，确保帐户认证安全。</span></span></p>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">提供积分通用调用的</span><span lang="EN-US"><span style="font-family: Times New Roman;">WebService</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">接口，地址</span><span lang="EN-US"><a href="http://public.citygf.com/PointService.asmx"><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">http://public.citygf.com/PointService.asmx</span></span></a></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">，提供</span><span lang="EN-US"><span style="font-family: Times New Roman;">funcAddPoint</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">、</span><span lang="EN-US"><span style="font-family: Times New Roman;">funcAddPointByBbs</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">、</span><span lang="EN-US"><span style="font-family: Times New Roman;">funcAddByAdmin</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">方法，供博客、论坛等多处发表文章、帖子增加积分时调用，出与权限安全的考虑，该</span><span lang="EN-US"><span style="font-family: Times New Roman;">WebService</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">接口方法只能在服务器端本机被调用。</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941623"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">博客模块</span></span></a></h2>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">博客系统采用</span><span lang="EN-US"><span style="font-family: Times New Roman;">URL</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">伪地址，将类似</span></span><span lang="EN-US"><a href="http://blog.citygf.com/帐号/index.aspx格式的URL地址进行RewritePath"><span style="font-size: small;"><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">http://blog.citygf.com/</span></span><span style="color: windowtext; font-family: 宋体; text-decoration: none; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; text-underline: none;" lang="EN-US"><span lang="EN-US">帐号</span></span><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">/index.aspx</span></span><span style="color: windowtext; font-family: 宋体; text-decoration: none; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; text-underline: none;" lang="EN-US"><span lang="EN-US">格式的</span></span><span style="color: windowtext; text-decoration: none; text-underline: none;"><span style="font-family: Times New Roman;">URL</span></span><span style="color: windowtext; font-family: 宋体; text-decoration: none; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'; text-underline: none;" lang="EN-US"><span lang="EN-US">地址进行</span></span></span><span style="font-size: 9pt; color: windowtext; font-family: 新宋体; text-decoration: none; mso-font-kerning: 0pt; mso-hansi-font-family: 'Times New Roman'; mso-no-proof: yes; text-underline: none;">RewritePath</span></a></span><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">重写处理，简洁方便让</span><span lang="EN-US"><span style="font-family: Times New Roman;">URL</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">更加友好，此技术还同时应用在了圈子、分类信息等处。系统监视每个发生错误请求的事件，将时间、</span><span lang="EN-US"><span style="font-family: Times New Roman;">IP</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">地址、错误页面、引用页面地址，错误详情等记录到网站根目录</span><span lang="EN-US"><span style="font-family: Times New Roman;">Error.log</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">文件内，方便管理员分析查看。</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941624"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">分类信息系统</span></span></a></h2>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">分类信息系统采用自定义表单，可针对不同的分类进行自定义设置，在发布或搜索的时将做为分类信息的输入属性条件，当每添加一个自定义表单字段的时候将在数据库新建一个名为</span><span lang="EN-US"><span style="font-family: Times New Roman;">&rsquo;FA_Info_Field_</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">分类编号</span><span lang="EN-US"><span style="font-family: Times New Roman;">&rsquo;</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">的表，用来存储自定义表单字段值。</span></span></p>
<h2 style="margin: 1pt 10.5pt;"><a name="_Toc237941625"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">论坛模块</span></span></a></h2>
<p class="MsoBodyTextFirstIndent2" style="margin: 6pt 0cm 12pt 21pt;"><span style="font-size: small;"><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">采用康盛创想（北京）科技有限公司（</span><span lang="EN-US"><span style="font-family: Times New Roman;">Comsenz Inc.</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">）的</span><span lang="EN-US"><span style="font-family: Times New Roman;">Discuz!</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">论坛系统商业授权版本，并与通行证用户整合，在论坛的个人信息处同时显示用户</span><span lang="EN-US"><span style="font-family: Times New Roman;">Logo</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">及个人博客、相册、加为好友、发送短信的链接，发表或回复帖子调用相应</span><span lang="EN-US"><span style="font-family: Times New Roman;">WebService</span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';">接口增加通行证用户积分。</span></span></p>
<h1 style="margin: 17pt 0cm 16.5pt 44.15pt; text-indent: -44.15pt;"><a name="_Toc237941626"><span style="mso-fareast-font-family: 'Times New Roman';" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family: Times New Roman;"><span style="font-size: x-large;">5.</span><span style="font: 7pt &quot;Times New Roman&quot;;">&nbsp;&nbsp; </span></span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: x-large;">原代码清单</span></span></a></h1>
<h2 style="margin: 1pt 10.5pt;"><span style="font-family: 宋体; mso-ascii-font-family: Arial; mso-hansi-font-family: Arial;"><span style="font-size: large;">略</span></span></h2>
<h1 style="margin: 17pt 0cm 16.5pt 44.15pt; text-indent: -44.15pt;"><a name="_Toc237941643"><span style="mso-fareast-font-family: 'Times New Roman';" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family: Times New Roman;"><span style="font-size: x-large;">6.</span><span style="font: 7pt &quot;Times New Roman&quot;;">&nbsp;&nbsp; </span></span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: x-large;">测试说明</span></span></a></h1>
<h1 style="margin: 17pt 0cm 16.5pt 44.15pt; text-indent: -44.15pt;"><a name="_Toc237941644"><span style="mso-fareast-font-family: 'Times New Roman';" lang="EN-US"><span style="mso-list: Ignore;"><span style="font-family: Times New Roman;"><span style="font-size: x-large;">7.</span><span style="font: 7pt &quot;Times New Roman&quot;;">&nbsp;&nbsp; </span></span></span></span><span style="font-family: 宋体; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';"><span style="font-size: x-large;">复审的结论</span></span></a></h1>
</div>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-08-16 22:26</li>
				<li>update@ 2009-08-16 22:58:56</li>
				<li>阅读(<span id="articleClick">12007</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/54.aspx">PowerDesigner使用(修改版)—时代财富技术部培训资料</a></li>
<li>下一篇：<a href="/jonllen/work/62.aspx">发布IBOX插件之LEAVE留言置标使用说明书</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=56&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/56.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=56";
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