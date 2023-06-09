
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>发布IBOX插件之LEAVE留言置标使用说明书 - 工作 - 金龙博客</title>
<meta name="description" content="留言置标IBOX：LEAVE，IBOX产品里第一个自己写的插件，使用说明如下：
程序集assembly：IBOX.Plugins.InterActive（属于互动插件），控件命名控件namespace：FortuneAge.IBOX_UC.Plugins，控件前缀IBOX。
语法：
Code highlighting produced by Actipro CodeHighlighter (freeware)http://www.CodeHighlighter.com/-->IBOX:Leave ShowResult="0或1" ShowSubmit="0或1" TopCount="提取前记录条数" PageSize="显示条数" /IBOX:Leave

置标属性说明：




属性


描述


类型


取值


值说明




SiteID


站点ID


数字


未指定


当前站点




大于0的整数


必须跟内容管理系统的站点ID一致,为0显示所有




TypeID


留言类型编号


数字


大于0的整数


必须跟留言类型列表里编号对应一致，为0列出当前站点下所有选择




PageSize


列表每页显示数


数字


大于0的整数


默认20条




TopCount


提取每页记录前条数


数字


大于0的整数


默认0，显示每页显示PageSize条



ShowResult
是否显示留言列表结果
数字" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-09-01' } );
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
		     > <a href="/jonllen/work/62.aspx">发布IBOX插件之LEAVE留言置标使用说明书</a>
		</div>
        <div class="article">
			<div class="title"><h2>发布IBOX插件之LEAVE留言置标使用说明书</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="FONT-SIZE: 14px; LINE-HEIGHT: 22px">
<p style="TEXT-INDENT: 2em"><strong>留言置标IBOX：LEAVE</strong>，IBOX产品里第一个自己写的插件，使用说明如下：</p>
<p style="TEXT-INDENT: 2em">程序集assembly：IBOX.Plugins.InterActive（属于互动插件），控件命名控件namespace：FortuneAge.IBOX_UC.Plugins，控件前缀IBOX。</p>
<p style="TEXT-INDENT: 2em"><strong>语法：</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">IBOX:Leave </span><span style="color: #FF0000;">ShowResult</span><span style="color: #0000FF;">="0或1"</span><span style="color: #FF0000;"> ShowSubmit</span><span style="color: #0000FF;">="0或1"</span><span style="color: #FF0000;"> TopCount</span><span style="color: #0000FF;">="提取前记录条数"</span><span style="color: #FF0000;"> PageSize</span><span style="color: #0000FF;">="显示条数"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">IBOX:Leave</span><span style="color: #0000FF;">&gt;</span></div></div></pre>
<p>&nbsp;</p>
<p style="TEXT-INDENT: 2em"><strong>置标属性说明：</strong></p>
<p style="padding-left: 2em;font-family: 宋体; ">
<table style="border-collapse: collapse; mso-border-alt: solid black .75pt; mso-padding-alt: 0cm 0cm 0cm 0cm;border:solid 1px black" border="1" cellspacing="0" cellpadding="0" class="MsoNormalTable">
<tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes;">
<td style="padding-right: 5.4pt; padding-left: 5.4pt; background: silver; padding-bottom: 0cm; width: 84.8pt; padding-top: 0cm; mso-border-alt: solid black .5pt; border: black 1pt solid;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">属性</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: black 1pt solid; padding-left: 5.4pt; background: silver; padding-bottom: 0cm; border-left: #d4d0c8; width: 85.35pt; padding-top: 0cm; border-bottom: black 1pt solid; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">描述</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: black 1pt solid; padding-left: 5.4pt; background: silver; padding-bottom: 0cm; border-left: #d4d0c8; width: 83.95pt; padding-top: 0cm; border-bottom: black 1pt solid; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">类型</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: black 1pt solid; padding-left: 5.4pt; background: silver; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: black 1pt solid; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">取值</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: black 1pt solid; padding-left: 5.4pt; background: silver; padding-bottom: 0cm; border-left: #d4d0c8; width: 87.7pt; padding-top: 0cm; border-bottom: black 1pt solid; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">值说明</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
</tr>
<tr style="height: 24.75pt; mso-yfti-irow: 1;">
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1pt solid; width: 84.8pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 24.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top" rowspan="3">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">SiteID</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 85.35pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 24.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top" rowspan="3">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">站点</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">ID</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 83.95pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 24.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top" rowspan="3">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">数字</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">未指定</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 87.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">当前站点</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
</tr>
<tr style="height: 24.75pt; mso-yfti-irow: 2;">
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 87.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">所有站点留言</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
</tr>
<tr style="height: 21.75pt; mso-yfti-irow: 3;">
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 21.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">大于</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">的整数</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 87.7pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 21.75pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">必须跟内容管理系统的站点</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">ID</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">一致</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
</tr>
<tr style="height: 39.05pt; mso-yfti-irow: 4;">
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1pt solid; width: 84.8pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 39.05pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top" rowspan="2">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">TypeID</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 85.35pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 39.05pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top" rowspan="2">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">留言类型编号</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 83.95pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 39.05pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top" rowspan="2">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">数字</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 39.05pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span></p>
</td>
<td style="border-right: black 1pt solid; border-top: #d4d0c8; border-left: #d4d0c8; width: 87.7pt; border-bottom: windowtext 1pt solid; height: 39.05pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt; padding: 0cm;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"><span style="mso-spacerun: yes;">&nbsp;</span></span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">将列出当前站点下所有类型选择</span></p>
</td>
</tr>
<tr style="height: 39.05pt; mso-yfti-irow: 5;">
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 39.05pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">大于</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">的整数</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; border-top: #d4d0c8; border-left: #d4d0c8; width: 87.7pt; border-bottom: windowtext 1pt solid; height: 39.05pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt; padding: 0cm;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"><span style="mso-spacerun: yes;"><span style="font-family: Times New Roman;">&nbsp;</span></span></span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">必须跟留言类型列表里编号对应一致</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
</tr>
<tr style="height: 7.5pt; mso-yfti-irow: 6;">
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1pt solid; width: 84.8pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">PageSize</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 85.35pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">列表每页显示数</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 83.95pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">数字</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt; mso-border-bottom-alt: solid windowtext .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">大于</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">的整数</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 87.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.5pt; background-color: transparent; mso-border-left-alt: black; mso-border-top-alt: windowtext; mso-border-bottom-alt: windowtext; mso-border-right-alt: black; mso-border-style-alt: solid; mso-border-width-alt: .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">默认20条</span></p>
</td>
</tr>
<tr style="height: 7.5pt; mso-yfti-irow: 7;">
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1pt solid; width: 84.8pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">TopCount</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 85.35pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">提取每页记录前条数</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 83.95pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">数字</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 84.3pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 7.5pt; background-color: transparent; mso-border-alt: solid black .5pt; mso-border-left-alt: solid black .5pt; mso-border-top-alt: solid black .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">大于0的整数</span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 5.4pt; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; width: 87.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.5pt; background-color: transparent; mso-border-left-alt: black; mso-border-top-alt: windowtext; mso-border-bottom-alt: windowtext; mso-border-right-alt: black; mso-border-style-alt: solid; mso-border-width-alt: .5pt;" valign="top">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">默认0，显示每页显示PageSize条</span></p>
</td>
</tr>
<tr style="mso-yfti-irow: 8;">
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1pt solid; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">ShowResult</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">是否显示留言列表结果</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">数字</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">或1</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">不显示，1显示(默认)</span></p>
</td>
</tr>
<tr style="mso-yfti-irow: 9; mso-yfti-lastrow: yes;">
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1pt solid; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">ShowSubmit</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">是否显示提交留言</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-ascii-font-family: Calibri; mso-hansi-font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">数字</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">或1</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
<td style="border-right: black 1pt solid; padding-right: 0cm; border-top: #d4d0c8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #d4d0c8; padding-top: 0cm; border-bottom: black 1pt solid; background-color: transparent; mso-border-left-alt: solid black 1.0pt; mso-border-top-alt: solid black 1.0pt;">
<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan; mso-line-height-alt: 7.5pt;"><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">0</span><span style="font-size: 12pt; color: #414042; font-family: 宋体; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;">不显示，1显示(默认)</span><span style="font-size: 12pt; color: #414042; font-family: Calibri; mso-bidi-font-family: 宋体; mso-font-kerning: 0pt;"></span></p>
</td>
</tr>
</table>
</p>
<p style="TEXT-INDENT: 2em"><strong>应用举例：</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">留言</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="leave"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;">显示留言列表</span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">IBOX:Leave </span><span style="color: #FF0000;">ShowSubmit</span><span style="color: #0000FF;">="0"</span><span style="color: #FF0000;"> TopCount</span><span style="color: #0000FF;">="6"</span><span style="color: #FF0000;"> PageSize</span><span style="color: #0000FF;">="5"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">IBOX:Leave</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">提交留言</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="submitleave"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;">显示提交留言</span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">IBOX:Leave </span><span style="color: #FF0000;">ShowResult</span><span style="color: #0000FF;">="0"</span><span style="color: #FF0000;"> ShowSubmit</span><span style="color: #0000FF;">="1"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">IBOX:Leave</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span></div></div></pre>
<p style="TEXT-INDENT: 2em">生成静态页面后HTML结构如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">留言</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="leave"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;">显示留言列表</span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">id</span><span style="color: #0000FF;">="panResult"</span><span style="color: #FF0000;"> class</span><span style="color: #0000FF;">="result"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="item"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="divtitle"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="title"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">gfh</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="content"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                　　呵呵，你好。<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="reply"</span><span style="color: #FF0000;"> style</span><span style="color: #0000FF;">="display: "</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                回复:谢谢,^_^!!!<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                fgf<br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="time"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">2009-09-01 14:20</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="item"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="divtitle"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="title"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">3</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="content"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                fdf<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="reply"</span><span style="color: #FF0000;"> style</span><span style="color: #0000FF;">="display: none"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                回复:<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                3<br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="time"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">2009-08-31 17:29</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="item"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="divtitle"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="title"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">调查建议主题22222</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="content"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                ddddddddddd<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="reply"</span><span style="color: #FF0000;"> style</span><span style="color: #0000FF;">="display: none"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                回复:<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                Jonllen<br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="time"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">2009-08-31 17:27</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="item"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="divtitle"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="title"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">调查建议主题</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="content"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                ttttttttt<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="reply"</span><span style="color: #FF0000;"> style</span><span style="color: #0000FF;">="display: none"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                回复:<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                jonllen<br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="time"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">2009-08-31 17:21</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="item"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="divtitle"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="title"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">Re:留言</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="content"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                test内容!<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="reply"</span><span style="color: #FF0000;"> style</span><span style="color: #0000FF;">="display: none"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                回复:<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                Jonllen<br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="time"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">2009-08-31 14:40</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="item"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="divtitle"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="title"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">测试5</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="content"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                哈哈，踩踩55555<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="reply"</span><span style="color: #FF0000;"> style</span><span style="color: #0000FF;">="display: "</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                回复:gfhgfh<br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />                Jonllen Peng<br />                </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="time"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">2009-08-27 11:07</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="pager"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">id</span><span style="color: #0000FF;">="pager1"</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">='summary'</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">共20条记录,当前显示第1页,共2页</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">='pages'</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">a </span><span style="color: #FF0000;">disabled</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">首页</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">a </span><span style="color: #FF0000;">disabled</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">前一页</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">font </span><span style="color: #FF0000;">color</span><span style="color: #0000FF;">='red'</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">strong</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">1</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">strong</span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">font</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">a </span><span style="color: #FF0000;">href</span><span style="color: #0000FF;">='?r=1&amp;s=0&amp;t=6&amp;site=19&amp;type=0&amp;size=5.com.cn&amp;pid=2' </span><span style="color: #FF0000;">title</span><span style="color: #0000FF;">='转到第2页'</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">2</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">a </span><span style="color: #FF0000;">href</span><span style="color: #0000FF;">='?r=1&amp;s=0&amp;t=6&amp;site=19&amp;type=0&amp;size=5.com.cn&amp;pid=2' </span><span style="color: #FF0000;">title</span><span style="color: #0000FF;">='转到第2页'</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">后一页</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">a </span><span style="color: #FF0000;">href</span><span style="color: #0000FF;">='?r=1&amp;s=0&amp;t=6&amp;site=19&amp;type=0&amp;size=5.com.cn&amp;pid=2' </span><span style="color: #FF0000;">title</span><span style="color: #0000FF;">='转到第2页'</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">末页</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">='text' </span><span style="color: #FF0000;">value</span><span style="color: #0000FF;">='1' </span><span style="color: #FF0000;">style</span><span style="color: #0000FF;">='width:25px'</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">='button' </span><span style="color: #FF0000;">value</span><span style="color: #0000FF;">='Go' </span><span style="color: #FF0000;">onclick</span><span style="color: #0000FF;">='javascript:GoToPage("?r=1&amp;s=0&amp;t=6&amp;site=19&amp;type=0&amp;size=5.com.cn&amp;pid=_pid", </span><span style="color: #FF0000;">this.parentElement.children[0].value);'</span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">script </span><span style="color: #FF0000;">language</span><span style="color: #0000FF;">='javascript'</span><span style="color: #0000FF;">&gt;</span><span style="background-color: #F5F5F5; color: #0000FF;">function</span><span style="background-color: #F5F5F5; color: #000000;"> GoToPage(url,pid){document.location </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> url.replace(</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">_pid</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">, pid).replace(</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">_1.</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">,</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">.</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">);}</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">script</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">提交留言</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">h4</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="submitleave"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;">显示提交留言</span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">id</span><span style="color: #0000FF;">="panSubmit"</span><span style="color: #FF0000;"> class</span><span style="color: #0000FF;">="submit"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="retype"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            类别:<br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">label</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="radio"</span><span style="color: #FF0000;"> name</span><span style="color: #0000FF;">="leavetype"</span><span style="color: #FF0000;"> value</span><span style="color: #0000FF;">="1"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;</span><span style="color: #000000;">网站留言(Jonllen)</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">label</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">label</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="radio"</span><span style="color: #FF0000;"> name</span><span style="color: #0000FF;">="leavetype"</span><span style="color: #FF0000;"> value</span><span style="color: #0000FF;">="2"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;</span><span style="color: #000000;">调查建议</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">label</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="remark"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">*</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">id</span><span style="color: #0000FF;">="lblTypeName"</span><span style="color: #FF0000;"> class</span><span style="color: #0000FF;">="retypename"</span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="retitle"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            主题:</span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="text"</span><span style="color: #FF0000;"> id</span><span style="color: #0000FF;">="txtTitle"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="remark"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">*</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="reuname"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            姓名:</span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="text"</span><span style="color: #FF0000;"> id</span><span style="color: #0000FF;">="txtUserName"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="remark"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">*</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="remail"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            邮箱:</span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="text"</span><span style="color: #FF0000;"> id</span><span style="color: #0000FF;">="txtEmail"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="rephone"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            联系电话:</span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="text"</span><span style="color: #FF0000;"> id</span><span style="color: #0000FF;">="txtPhone"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="recontent"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            内容:</span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">textarea </span><span style="color: #FF0000;">id</span><span style="color: #0000FF;">="txtContent"</span><span style="color: #0000FF;">&gt;&lt;/</span><span style="color: #800000;">textarea</span><span style="color: #0000FF;">&gt;&lt;</span><span style="color: #800000;">span </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="remark"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;">*</span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">div </span><span style="color: #FF0000;">class</span><span style="color: #0000FF;">="rebtn"</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="button"</span><span style="color: #FF0000;"> value</span><span style="color: #0000FF;">="提交"</span><span style="color: #FF0000;"> onclick</span><span style="color: #0000FF;">="leaveadd()"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">input </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="button"</span><span style="color: #FF0000;"> value</span><span style="color: #0000FF;">="清空"</span><span style="color: #FF0000;"> onclick</span><span style="color: #0000FF;">="rewrite()"</span><span style="color: #FF0000;"> </span><span style="color: #0000FF;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />            <br />        </span><span style="color: #0000FF;">&lt;</span><span style="color: #800000;">script </span><span style="color: #FF0000;">type</span><span style="color: #0000FF;">="text/jscript"</span><span style="color: #0000FF;">&gt;</span><span style="background-color: #F5F5F5; color: #000000;"><br />            </span><span style="background-color: #F5F5F5; color: #0000FF;">function</span><span style="background-color: #F5F5F5; color: #000000;"> rewrite() {<br />                $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtTitle</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val(</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">);<br />                $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtUserName</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val(</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">);<br />                $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtEmail</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val(</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">);<br />                $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtPhone</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val(</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">);<br />                $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtContent</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val(</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">);<br />            }<br />            </span><span style="background-color: #F5F5F5; color: #0000FF;">function</span><span style="background-color: #F5F5F5; color: #000000;"> leaveadd() {<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> typeId </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">0</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> title </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtTitle</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val();<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> uname </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtUserName</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val();<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> email </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtEmail</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val();<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> phone </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtPhone</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val();<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> content </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">#txtContent</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val();<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> errmsg </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">''</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">( typeId</span><span style="background-color: #F5F5F5; color: #000000;">==</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">0</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;"> )<br />                {<br />                    typeId </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> $(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">input[@name=leavetype][@checked]</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">).val();<br />                    </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">(</span><span style="background-color: #F5F5F5; color: #000000;">!</span><span style="background-color: #F5F5F5; color: #000000;">typeId)<br />                    {<br />                        errmsg </span><span style="background-color: #F5F5F5; color: #000000;">+=</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">请选择留言类型！\n</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                    }<br />                }<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">(title</span><span style="background-color: #F5F5F5; color: #000000;">==</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">){<br />                    errmsg </span><span style="background-color: #F5F5F5; color: #000000;">+=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">请输入主题！\n</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                }<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">(uname</span><span style="background-color: #F5F5F5; color: #000000;">==</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">){<br />                    errmsg </span><span style="background-color: #F5F5F5; color: #000000;">+=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">请输入姓名！\n</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                }<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">(content</span><span style="background-color: #F5F5F5; color: #000000;">==</span><span style="background-color: #F5F5F5; color: #000000;">""</span><span style="background-color: #F5F5F5; color: #000000;">){<br />                    errmsg </span><span style="background-color: #F5F5F5; color: #000000;">+=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">请输入内容！\n</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                }<br />                <br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">( email</span><span style="background-color: #F5F5F5; color: #000000;">!=</span><span style="background-color: #F5F5F5; color: #000000;">''</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">&amp;&amp;</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">!</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">/</span><span style="background-color: #F5F5F5; color: #000000;">^\w+([-+.]\w+)*@\w+([-.]\\w+)*\.\w+([-.]\w+)*$</span><span style="background-color: #F5F5F5; color: #000000;">/</span><span style="background-color: #F5F5F5; color: #000000;">.test(email) )<br />                {<br />                    errmsg </span><span style="background-color: #F5F5F5; color: #000000;">+=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">邮箱地址格式不正确！\n</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                }<br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">( phone</span><span style="background-color: #F5F5F5; color: #000000;">!=</span><span style="background-color: #F5F5F5; color: #000000;">''</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">&amp;&amp;</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">!</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">/</span><span style="background-color: #F5F5F5; color: #000000;">\d{7}</span><span style="background-color: #F5F5F5; color: #000000;">/</span><span style="background-color: #F5F5F5; color: #000000;">.test(phone) )<br />                {<br />                    errmsg </span><span style="background-color: #F5F5F5; color: #000000;">+=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">联系电话输入不正确！\n</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                }<br />                <br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">( errmsg </span><span style="background-color: #F5F5F5; color: #000000;">!=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">''</span><span style="background-color: #F5F5F5; color: #000000;">)<br />                {<br />                    alert(errmsg);<br />                    </span><span style="background-color: #F5F5F5; color: #0000FF;">return</span><span style="background-color: #F5F5F5; color: #000000;">;<br />                }<br />                <br />                </span><span style="background-color: #F5F5F5; color: #0000FF;">var</span><span style="background-color: #F5F5F5; color: #000000;"> apiurl </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> </span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">http://localhost:8080/Plugin/Leave/Web/LeaveAdd.aspx</span><span style="background-color: #F5F5F5; color: #000000;">'</span><span style="background-color: #F5F5F5; color: #000000;">;                <br />                $.post(apiurl, { title: escape(title), uname: escape(uname), type :typeId, email:escape(email), phone:escape(phone), content:escape(content) },<br />                  </span><span style="background-color: #F5F5F5; color: #0000FF;">function</span><span style="background-color: #F5F5F5; color: #000000;">(data){<br />                    </span><span style="background-color: #F5F5F5; color: #0000FF;">if</span><span style="background-color: #F5F5F5; color: #000000;">(data</span><span style="background-color: #F5F5F5; color: #000000;">==</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">true</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">){<br />                        alert(</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">留言成功</span><span style="background-color: #F5F5F5; color: #000000;">"</span><span style="background-color: #F5F5F5; color: #000000;">);<br />                        window.location </span><span style="background-color: #F5F5F5; color: #000000;">=</span><span style="background-color: #F5F5F5; color: #000000;"> window.location;<br />                    }<br />                    </span><span style="background-color: #F5F5F5; color: #0000FF;">else</span><span style="background-color: #F5F5F5; color: #000000;">{<br />                        alert(data);<br />                    }<br />                  }<br />                );<br />            }<br />        </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">script</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000FF;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000FF;">&gt;</span></div></div></pre>
<p style="TEXT-INDENT: 2em">完。</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-09-01 14:34</li>
				<li>update@ 2009-09-01 16:50:11</li>
				<li>阅读(<span id="articleClick">17369</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/56.aspx">软件开发规范—模块开发卷宗(GB8567——88)</a></li>
<li>下一篇：<a href="/jonllen/work/71.aspx">时代财富技术部Java选型基础培训草稿</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=62&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/62.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=62";
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