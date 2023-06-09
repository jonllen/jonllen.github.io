
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>我的iKnow - Asp.Net - 金龙博客</title>
<meta name="description" content="最进忙于做一个问答系统，类似与百度知道，值得一题的时这次是全权由我来负责的，包括需求分析、数据库设计、程序前后台架构的搭建，项目进度的跟进。第一次让我把项目从头做到尾，发现有些地方还是心有余而力不足，比如系统开发进度控制等，有些都没事先的安排好，当然还会遇到一些大大小小的技术问题，不过到今天系统算是开发得差不多了，还剩下2个页面制作未完成的功能，比预期的时间提前一个星期。整个系统分为前后台2个工程，前台是一个独立网站项目，而后台则在我们公司的产品IBOX系统的插件内，其实整个iKonw也将是作为IBOX系统的插件存在，客户在买我们的产品时候可以选择是否需要此插件，在进行安装的时候就只部署选择的项目，由于前后台是独立在2个不同的项目里面，唯一相同的就是访问的同一个数据库，但是有一些系统配置我是直接用XML文件来保存的，我又不想用虚拟目录，所以给前后台通讯造成了一点麻烦。单例类所谓单例，就是说在全局里只存在一个实例，这个实例会在被频频使用，比如说系统的一些配置参数信息，或是一些过滤的关键字，访问这些信息的如果每次都要去读取配置文件的话就太麻烦了，这些内容我只希望读取一次配置，这个时候就可以考虑使用单件..." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-11-23' } );
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
		     > <a href="/jonllen/aspnet/iknow.aspx">我的iKnow</a>
		</div>
        <div class="article">
			<div class="title"><h2>我的iKnow</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<p style="text-indent: 2em;">最进忙于做一个问答系统，类似与百度知道，值得一题的时这次是全权由我来负责的，包括需求分析、数据库设计、程序前后台架构的搭建，项目进度的跟进。第一次让我把项目从头做到尾，发现有些地方还是心有余而力不足，比如系统开发进度控制等，有些都没事先的安排好，当然还会遇到一些大大小小的技术问题，不过到今天系统算是开发得差不多了，还剩下2个页面制作未完成的功能，比预期的时间提前一个星期。</p>
<p style="text-indent: 2em;">整个系统分为前后台2个工程，前台是一个独立网站项目，而后台则在我们公司的产品IBOX系统的插件内，其实整个iKonw也将是作为IBOX系统的插件存在，客户在买我们的产品时候可以选择是否需要此插件，在进行安装的时候就只部署选择的项目，由于前后台是独立在2个不同的项目里面，唯一相同的就是访问的同一个数据库，但是有一些系统配置我是直接用XML文件来保存的，我又不想用虚拟目录，所以给前后台通讯造成了一点麻烦。</p>
<p style="text-indent: 2em;"><strong>单例类</strong></p>
<p style="text-indent: 2em;">所谓单例，就是说在全局里只存在一个实例，这个实例会在被频频使用，比如说系统的一些配置参数信息，或是一些过滤的关键字，访问这些信息的如果每次都要去读取配置文件的话就太麻烦了，这些内容我只希望读取一次配置，这个时候就可以考虑使用单件类，先来看看我的系统配置单件吧。</p>
<pre><div class="code"><div class="codetitle"><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_633951011126718750').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " title="展开" /><span>系统配置单件类</span></div><div style="display: none;" id="HighlighterCode_633951011126718750" class="codemain"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">  1</span><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">using</span><span style="color: #000000;"> System;<br /></span><span style="color: #008080;">  2</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Data;<br /></span><span style="color: #008080;">  3</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Configuration;<br /></span><span style="color: #008080;">  4</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web;<br /></span><span style="color: #008080;">  5</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web.Caching;<br /></span><span style="color: #008080;">  6</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Threading;<br /></span><span style="color: #008080;">  7</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web.Configuration;<br /></span><span style="color: #008080;">  8</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Text;<br /></span><span style="color: #008080;">  9</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Text.RegularExpressions;<br /></span><span style="color: #008080;"> 10</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Xml;<br /></span><span style="color: #008080;"> 11</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Collections;<br /></span><span style="color: #008080;"> 12</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Net;<br /></span><span style="color: #008080;"> 13</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.IO;<br /></span><span style="color: #008080;"> 14</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /><br /></span><span style="color: #008080;"> 15</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">namespace</span><span style="color: #000000;"> FortuneAge.Question<br /></span><span style="color: #008080;"> 16</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_328_5537_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_328_5537_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_328_5537_Closed_Text').style.display='inline';" id="CodeHighlighter1_328_5537_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_328_5537_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_328_5537_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_328_5537_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_328_5537_Closed_Image" /></span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_328_5537_Closed_Text">...</span><span id="CodeHighlighter1_328_5537_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 17</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_334_382_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_334_382_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_334_382_Closed_Text').style.display='inline';" id="CodeHighlighter1_334_382_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_334_382_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_334_382_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_334_382_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_334_382_Closed_Image" />    </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_334_382_Closed_Text">/**/</span><span id="CodeHighlighter1_334_382_Open_Text"><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;"> 18</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />    </span><span style="color: #808080;">///</span><span style="color: #008000;">系统配置单件类<br /></span><span style="color: #008080;"> 19</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />    </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #808080;"></span></span><br /><span style="color: #008080;"> 20</span><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><span style="color: #000000;">    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> SysSettingAgent<br /></span><span style="color: #008080;"> 21</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_419_5535_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_419_5535_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_419_5535_Closed_Text').style.display='inline';" id="CodeHighlighter1_419_5535_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_419_5535_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_419_5535_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_419_5535_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_419_5535_Closed_Image" />    </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_419_5535_Closed_Text">...</span><span id="CodeHighlighter1_419_5535_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 22</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> SysSettingPath </span><span style="color: #000000;">=</span><span style="color: #000000;"> ConfigurationManager.AppSettings[</span><span style="color: #800000;">"</span><span style="color: #800000;">SysSettingPath</span><span style="color: #800000;">"</span><span style="color: #000000;">];<br /></span><span style="color: #008080;"> 23</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 24</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> SysSettingAgent()<br /></span><span style="color: #008080;"> 25</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_563_600_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_563_600_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_563_600_Closed_Text').style.display='inline';" id="CodeHighlighter1_563_600_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_563_600_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_563_600_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_563_600_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_563_600_Closed_Image" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_563_600_Closed_Text">...</span><span id="CodeHighlighter1_563_600_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 26</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            LoadConfig();<br /></span><span style="color: #008080;"> 27</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 28</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 29</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> LoadConfig()<br /></span><span style="color: #008080;"> 30</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_643_3178_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_643_3178_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_643_3178_Closed_Text').style.display='inline';" id="CodeHighlighter1_643_3178_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_643_3178_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_643_3178_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_643_3178_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_643_3178_Closed_Image" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_643_3178_Closed_Text">...</span><span id="CodeHighlighter1_643_3178_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 31</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            XmlDocument xml </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> XmlDocument();<br /></span><span style="color: #008080;"> 32</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 33</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">try</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 34</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_723_780_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_723_780_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_723_780_Closed_Text').style.display='inline';" id="CodeHighlighter1_723_780_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_723_780_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_723_780_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_723_780_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_723_780_Closed_Image" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_723_780_Closed_Text">...</span><span id="CodeHighlighter1_723_780_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 35</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                xml.Load(SysSettingPath);<br /></span><span style="color: #008080;"> 36</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 37</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 38</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_811_1168_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_811_1168_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_811_1168_Closed_Text').style.display='inline';" id="CodeHighlighter1_811_1168_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_811_1168_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_811_1168_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_811_1168_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_811_1168_Closed_Image" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_811_1168_Closed_Text">...</span><span id="CodeHighlighter1_811_1168_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 39</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">try</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 40</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_849_1016_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_849_1016_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_849_1016_Closed_Text').style.display='inline';" id="CodeHighlighter1_849_1016_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_849_1016_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_849_1016_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_849_1016_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_849_1016_Closed_Image" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_849_1016_Closed_Text">...</span><span id="CodeHighlighter1_849_1016_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 41</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    SysSettingPath </span><span style="color: #000000;">=</span><span style="color: #000000;"> HttpContext.Current.Server.MapPath(</span><span style="color: #800000;">"</span><span style="color: #800000;">~/Question/SysSetting.xml</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 42</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    xml.Load(SysSettingPath);<br /></span><span style="color: #008080;"> 43</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 44</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 45</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1055_1154_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1055_1154_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1055_1154_Closed_Text').style.display='inline';" id="CodeHighlighter1_1055_1154_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1055_1154_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1055_1154_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1055_1154_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_1055_1154_Closed_Image" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1055_1154_Closed_Text">...</span><span id="CodeHighlighter1_1055_1154_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 46</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">throw</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Exception(</span><span style="color: #800000;">"</span><span style="color: #800000;">读取系统配置文件[</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> SysSettingPath </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">]失败！</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 47</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 48</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 49</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 50</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            XmlNode root </span><span style="color: #000000;">=</span><span style="color: #000000;"> xml.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Root</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 51</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">) </span><span style="color: #0000ff;">return</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 52</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 53</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">SystemName</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 54</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.SystemName </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">SystemName</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 55</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">CompanyName</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 56</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.CompanyName </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">CompanyName</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 57</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Address</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 58</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Address </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Address</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 59</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Postcode</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 60</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Postcode </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Postcode</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 61</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Tel</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 62</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Tel </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Tel</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 63</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Fax</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 64</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Fax </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Fax</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 65</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Mobile</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 66</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Mobile </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Mobile</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 67</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 68</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">QQ</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 69</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.QQ </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">QQ</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 70</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">MSN</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 71</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.MSN </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">MSN</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 72</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Email</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 73</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Email </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">Email</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 74</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">TitleExtension</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 75</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.TitleExtension </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">TitleExtension</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 76</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">MetaKeywords</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 77</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.MetaKeywords </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">MetaKeywords</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 78</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">MetaDescription</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 79</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.MetaDescription </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">MetaDescription</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 80</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">RegAgreement</span><span style="color: #800000;">"</span><span style="color: #000000;">) </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 81</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.RegAgreement </span><span style="color: #000000;">=</span><span style="color: #000000;"> root.SelectSingleNode(</span><span style="color: #800000;">"</span><span style="color: #800000;">RegAgreement</span><span style="color: #800000;">"</span><span style="color: #000000;">).InnerText;<br /></span><span style="color: #008080;"> 82</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 83</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 84</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 85</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 86</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> SystemName;<br /></span><span style="color: #008080;"> 87</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> CompanyName;<br /></span><span style="color: #008080;"> 88</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> Address;<br /></span><span style="color: #008080;"> 89</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> Postcode;<br /></span><span style="color: #008080;"> 90</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> Tel;<br /></span><span style="color: #008080;"> 91</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> Fax;<br /></span><span style="color: #008080;"> 92</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> Mobile;<br /></span><span style="color: #008080;"> 93</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 94</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> QQ;<br /></span><span style="color: #008080;"> 95</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> MSN;<br /></span><span style="color: #008080;"> 96</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> Email;<br /></span><span style="color: #008080;"> 97</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> TitleExtension;<br /></span><span style="color: #008080;"> 98</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> MetaKeywords;<br /></span><span style="color: #008080;"> 99</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> MetaDescription;<br /></span><span style="color: #008080;">100</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> RegAgreement;<br /></span><span style="color: #008080;">101</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">102</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">103</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">104</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> SaveConfig()<br /></span><span style="color: #008080;">105</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3673_5259_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_3673_5259_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3673_5259_Closed_Text').style.display='inline';" id="CodeHighlighter1_3673_5259_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3673_5259_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_3673_5259_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3673_5259_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_3673_5259_Closed_Image" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_3673_5259_Closed_Text">...</span><span id="CodeHighlighter1_3673_5259_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">106</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            StringBuilder sb </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> StringBuilder();<br /></span><span style="color: #008080;">107</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;?xml version=\"1.0\" encoding=\"gb2312\" ?&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">108</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;Root&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">109</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;SystemName&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.SystemName </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/SystemName&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">110</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;CompanyName&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.CompanyName </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/CompanyName&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">111</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;Address&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Address </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/Address&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">112</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;Postcode&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Postcode </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/Postcode&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">113</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;Tel&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Tel </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/Tel&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">114</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;Fax&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Fax </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/Fax&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">115</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;Mobile&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Mobile </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/Mobile&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">116</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">117</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;QQ&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.QQ </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/QQ&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">118</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;MSN&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.MSN </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/MSN&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">119</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;Email&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Email </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/Email&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">120</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;TitleExtension&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.TitleExtension </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/TitleExtension&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">121</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;MetaKeywords&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.MetaKeywords </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/MetaKeywords&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">122</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;MetaDescription&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.MetaDescription </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/MetaDescription&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">123</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;RegAgreement&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.RegAgreement </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/RegAgreement&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">124</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sb.AppendLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">&lt;/Root&gt;</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">125</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Studio.IO.FileAgent.WriteText(SysSettingPath, sb.ToString(), </span><span style="color: #0000ff;">false</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">126</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">127</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">try</span><span style="color: #000000;"><br /></span><span style="color: #008080;">128</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5007_5227_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_5007_5227_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5007_5227_Closed_Text').style.display='inline';" id="CodeHighlighter1_5007_5227_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5007_5227_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_5007_5227_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5007_5227_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_5007_5227_Closed_Image" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_5007_5227_Closed_Text">...</span><span id="CodeHighlighter1_5007_5227_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">129</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (</span><span style="color: #000000;">!</span><span style="color: #000000;">String.IsNullOrEmpty(ConfigurationManager.AppSettings[</span><span style="color: #800000;">"</span><span style="color: #800000;">NotifyUrl</span><span style="color: #800000;">"</span><span style="color: #000000;">]))<br /></span><span style="color: #008080;">130</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    Studio.Net.HttpAgent.ReadRemoteFile(ConfigurationManager.AppSettings[</span><span style="color: #800000;">"</span><span style="color: #800000;">NotifyUrl</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">?t=sys</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">131</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">132</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5246_5249_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_5246_5249_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5246_5249_Closed_Text').style.display='inline';" id="CodeHighlighter1_5246_5249_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5246_5249_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_5246_5249_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5246_5249_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_5246_5249_Closed_Image" />            </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_5246_5249_Closed_Text">...</span><span id="CodeHighlighter1_5246_5249_Open_Text"><span style="color: #000000;">{ }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">133</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">134</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">135</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> SysSettingAgent GetInstance()<br /></span><span style="color: #008080;">136</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5321_5368_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_5321_5368_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5321_5368_Closed_Text').style.display='inline';" id="CodeHighlighter1_5321_5368_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5321_5368_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_5321_5368_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5321_5368_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_5321_5368_Closed_Image" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_5321_5368_Closed_Text">...</span><span id="CodeHighlighter1_5321_5368_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">137</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> Nested.instance;<br /></span><span style="color: #008080;">138</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">139</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">140</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> Nested<br /></span><span style="color: #008080;">141</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5399_5529_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_5399_5529_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5399_5529_Closed_Text').style.display='inline';" id="CodeHighlighter1_5399_5529_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5399_5529_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_5399_5529_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5399_5529_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_5399_5529_Closed_Image" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_5399_5529_Closed_Text">...</span><span id="CodeHighlighter1_5399_5529_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">142</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5429_5432_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_5429_5432_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5429_5432_Closed_Text').style.display='inline';" id="CodeHighlighter1_5429_5432_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_5429_5432_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_5429_5432_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_5429_5432_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_5429_5432_Closed_Image" />            </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> Nested() </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_5429_5432_Closed_Text">...</span><span id="CodeHighlighter1_5429_5432_Open_Text"><span style="color: #000000;">{ }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">143</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">internal</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">readonly</span><span style="color: #000000;"> SysSettingAgent instance </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SysSettingAgent();<br /></span><span style="color: #008080;">144</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">145</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />    }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">146</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />}</span></span></div></div></div></pre>
<p style="text-indent: 2em;">这个在我的iKnow里系统配置单件，在LoadConfig读取配置文件的时候用了两个try、catch，这也是没有办法，因为我想在前后台都通用。SysSettingPath是xml配置文件路径，默认读取Web.Config内配置，如果读取失败则默认读取~/Question/SysSetting.xml，这个路径是后台存在的，所以后台Web.Config没有配置SysSettingPath也能正确读取配置文件，而前台就一定要配置SysSettingPath路径，因为前台和后台是不在同一个网站内的，要读取后台的配置文件SysSettingPath就一定要是后台~/Question/SysSetting.xml文件的绝对地址，这样才能保证前后台读取的是同一个配置文件。</p>
<p style="text-indent: 2em;">凡事有利必有弊，单件类只读取一次配置文件，如果我修改了xml配置文件，那改怎么办？上面不是有个LoadConfig方法吗，再调用一次不就重新读取了配置文件，是的，在后台可以直接修改xml配置文件，故此我还多写了个SaveConfig方法用来保存配置文件。可是我程序前后台分开，引用的根本就不是同一个dll，不同的SysSettingAgent实例，那如果后台修改了xml配置文件怎么让前台立即生效，或是通知前台重新读取xml配置文件呢？后台我只想到了一个很蠢的办法，在SaveConfig修改配置文件的时候访问前台一个页面，然后再页面cs里让SysSettingAgent重新读取一次配置文件，即是上面的Studio.Net.HttpAgent.ReadRemoteFile(ConfigurationManager.AppSettings[<span style="color: #800000;">"</span><span style="color: #800000;">NotifyUrl</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;"></span><span style="color: #000000;"></span><span style="color: #800000;">"</span><span style="color: #800000;">?t=sys</span><span style="color: #800000;">"</span><span style="color: #000000;">)</span>这一句，重新读取前台接受通知改变的页面，所以后台需要在Web.Config配置<span style="color: #800000;">NotifyUrl</span>前台接受通知的页面地址，这样后台修改xml配置文件后前台就能及时读取最新的配置，而在<span style="color: #800000;">NotifyUrl</span>页面内要做的就是LoadConfig重新读取配置文件。</p>
<pre><div class="code"><div class="codetitle"><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_633951016683906250').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " title="展开" /><span>NotifyUrl页面</span></div><div style="display: none;" id="HighlighterCode_633951016683906250" class="codemain"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;"> 1</span><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">using</span><span style="color: #000000;"> System;<br /></span><span style="color: #008080;"> 2</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Collections;<br /></span><span style="color: #008080;"> 3</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Configuration;<br /></span><span style="color: #008080;"> 4</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Data;<br /></span><span style="color: #008080;"> 5</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web;<br /></span><span style="color: #008080;"> 6</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web.Security;<br /></span><span style="color: #008080;"> 7</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web.UI;<br /></span><span style="color: #008080;"> 8</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web.UI.HtmlControls;<br /></span><span style="color: #008080;"> 9</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> System.Web.UI.WebControls;<br /></span><span style="color: #008080;">10</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /><br /></span><span style="color: #008080;">11</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> FortuneAge.Question;<br /></span><span style="color: #008080;">12</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /><br /></span><span style="color: #008080;">13</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">partial</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> Question_NotifyUrl : System.Web.UI.Page<br /></span><span style="color: #008080;">14</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_310_1073_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_310_1073_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_310_1073_Closed_Text').style.display='inline';" id="CodeHighlighter1_310_1073_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_310_1073_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_310_1073_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_310_1073_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_310_1073_Closed_Image" /></span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_310_1073_Closed_Text">...</span><span id="CodeHighlighter1_310_1073_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">15</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />    </span><span style="color: #0000ff;">protected</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> Page_Load(</span><span style="color: #0000ff;">object</span><span style="color: #000000;"> sender, EventArgs e)<br /></span><span style="color: #008080;">16</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_373_1071_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_373_1071_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_373_1071_Closed_Text').style.display='inline';" id="CodeHighlighter1_373_1071_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_373_1071_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_373_1071_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_373_1071_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_373_1071_Closed_Image" />    </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_373_1071_Closed_Text">...</span><span id="CodeHighlighter1_373_1071_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">17</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">switch</span><span style="color: #000000;"> (Request.QueryString[</span><span style="color: #800000;">"</span><span style="color: #800000;">t</span><span style="color: #800000;">"</span><span style="color: #000000;">])<br /></span><span style="color: #008080;">18</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_425_987_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_425_987_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_425_987_Closed_Text').style.display='inline';" id="CodeHighlighter1_425_987_Open_Image" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_425_987_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_425_987_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_425_987_Open_Text').style.display='inline';" style="display: none;" id="CodeHighlighter1_425_987_Closed_Image" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_425_987_Closed_Text">...</span><span id="CodeHighlighter1_425_987_Open_Text"><span style="color: #000000;">{ <br /></span><span style="color: #008080;">19</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">case</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">sys</span><span style="color: #800000;">"</span><span style="color: #000000;">:<br /></span><span style="color: #008080;">20</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                SysSettingAgent.GetInstance().LoadConfig();<br /></span><span style="color: #008080;">21</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">22</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">case</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">point</span><span style="color: #800000;">"</span><span style="color: #000000;">:<br /></span><span style="color: #008080;">23</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                PointSettingAgent.GetInstance().LoadConfig();<br /></span><span style="color: #008080;">24</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">25</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">case</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">keyword</span><span style="color: #800000;">"</span><span style="color: #000000;">:<br /></span><span style="color: #008080;">26</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                KeywordAgent.GetInstance().LoadConfig();<br /></span><span style="color: #008080;">27</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">28</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">default</span><span style="color: #000000;">:<br /></span><span style="color: #008080;">29</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                SysSettingAgent.GetInstance().LoadConfig();<br /></span><span style="color: #008080;">30</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                PointSettingAgent.GetInstance().LoadConfig();<br /></span><span style="color: #008080;">31</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                KeywordAgent.GetInstance().LoadConfig();<br /></span><span style="color: #008080;">32</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">33</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">34</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">35</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">36</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        Response.Clear();<br /></span><span style="color: #008080;">37</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        Response.Write(</span><span style="color: #800080;">1</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">38</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        Response.End();<br /></span><span style="color: #008080;">39</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />    }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">40</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />}</span></span></div></div></div></pre>
<p style="text-indent: 2em;"><strong>JavaScript弹窗</strong></p>
<p style="text-indent: 2em;">由于前台有好几个地方用了js弹窗，实际上就是页面内一个层，要实现说难不难，要说做好考虑周到着实又不容易，我又不想依赖于jQuery，更不想用它的插件，于是乎搬于出了我以前写的一个自定义模拟弹窗层功能脚本，修正了不少bug，也新增了几个功能，实现的效果如下图。</p>
<p><a target="_blank" href="/upload/jonllen/article/js-popup.jpg"><img width="500" src="/upload/jonllen/article/js-popup.jpg" alt="js弹窗效果" height="583" title="js弹窗效果" /></a></p>
<p style="text-indent: 2em;">实现的功能有：</p>
<p style="text-indent: 2em;">1.支持多个弹窗，支持弹窗中打开弹窗。</p>
<p style="text-indent: 2em;">2.支持点击遮掩层、Esc键关闭。</p>
<p style="text-indent: 2em;">3.支持拖拽、缩放大小。</p>
<p style="text-indent: 2em;">今天完成了在ie内ifame缩放功能，修正ie内拖拽缩放ifame过快鼠标到ifame区域无法停止取消，清空拖拽过程中可能会选择内容的问题，ff不存在问题，发现在Chrome竟然存在ie里ifame区域的问题，我用div层遮掩部分后ie问题解决了而Chrome却不行，看来下次有时间还得要研究下这个问题。</p>
<p style="text-indent: 2em;">Demo请见：<a href="/jonllen/article/38.aspx">摆脱JQuery&mdash;之自定义模拟弹窗层功能。</a></p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> iKnow,单件,js弹窗
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-11-23 00:29</li>
				<li>update@ 2010-01-16 14:28:43</li>
				<li>阅读(<span id="articleClick">10867</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a></li>
<li>下一篇：<a href="/jonllen/aspnet/88.aspx">asp.net(C#)常用的一些功能</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=85&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/iknow.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=85";
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