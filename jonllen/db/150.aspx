
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Oracle流同步使用总结 - 数据库 - 金龙博客</title>
<meta name="description" content="因为工作关系，最近使用Oracle数据库，前段时间用了Oracle数据库自带的流同步功能，做数据库的热备，功能还是挺强大的，直接可以在登录控制台向导进行配置，下面我就来说下Oracle流同步配置和使用问题总结。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2012-12-02' } );
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
		     > <a href="/jonllen/db/">数据库</a>
		     > <a href="/jonllen/db/150.aspx">Oracle流同步使用总结</a>
		</div>
        <div class="article">
			<div class="title"><h2>Oracle流同步使用总结</h2></div>
			<div class="category">分类：<a href="/jonllen/db/">数据库</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>因为工作关系，最近使用Oracle数据库，前段时间用了Oracle数据库自带的流同步功能，做数据库的热备，功能还是挺强大的，直接可以在登录控制台向导进行配置，下面我就来说下Oracle流同步配置和使用问题总结。</p>
<p><strong>一、Oracle流同步配置</strong></p>
<p>1.设置主从数据库参数</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">sqlplus </span><span style="color: #ff0000;">/ as sysdba</span><span style="color: #000000;"><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">配置主从数据库参数</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> aq_tm_processes</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">2</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">both; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> global_names</span><span style="color: #808080;">=</span><span style="color: #000000;">true scope</span><span style="color: #808080;">=</span><span style="color: #000000;">both; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> job_queue_processes</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">both; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> parallel_max_servers</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">20</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">both; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> undo_retention</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">3600</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">both; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> nls_date_format</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">YYYY-MM-DD HH24:MI:SS</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">spfile; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> streams_pool_size</span><span style="color: #808080;">=</span><span style="color: #000000;">25M scope</span><span style="color: #808080;">=</span><span style="color: #000000;">spfile; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> utl_file_dir</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">*</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">spfile; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> open_links</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">4</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">spfile;</span></div></div></pre>
<p>2.设置归档模式</p>
<p>Oracle流同步在可以em控制台进行配置，使用system帐户登录进入源数据库实例管理主页面，再进入维护的流设置，使用全局流, 方案, 表和子集复制向导进行设置，如果数据库当前是运行在NOARCHIVELOG模式下，则会提示&ldquo;要设置流, 数据库需要运行在 ARCHIVELOG 模式下。数据库当前运行在 NOARCHIVELOG 模式下。建议您从数据库主页中修改此设置, 然后返回继续运行此向导。&rdquo;，所以先要设置数据库实例设置为运行在ARCHIVELOG模式下，设置Oracle数据库归档模式SQL语句如下。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">使用管理员帐户登录数据库</span><span style="color: #008080;"><br /></span><span style="color: #000000;">sqlplus </span><span style="color: #808080;">/</span><span style="color: #000000;"> </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> sysdba<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">设置归档路径</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> log_archive_dest_1</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">location=E:\oracle\arch</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">spfile;<br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> log_archive_start</span><span style="color: #808080;">=</span><span style="color: #000000;">TRUE scope</span><span style="color: #808080;">=</span><span style="color: #000000;">spfile; <br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> system </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> log_archive_format</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">arch%t_%s_%r.arc</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> scope</span><span style="color: #808080;">=</span><span style="color: #000000;">spfile;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">关闭数据库例程</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">shutdown</span><span style="color: #000000;"> immediate;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">装载数据库</span><span style="color: #008080;"><br /></span><span style="color: #000000;">startup mount;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">设置数据库为archivelog模式</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">database</span><span style="color: #000000;"> archivelog;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">打开数据库</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">database</span><span style="color: #000000;"> </span><span style="color: #0000ff;">open</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">查看归档</span><span style="color: #008080;"><br /></span><span style="color: #000000;">archive </span><span style="color: #ff00ff;">log</span><span style="color: #000000;"> list</span></div></div></pre>
<p>3.配置源数据库流管理员</p>
<p>设置归档模式后，继续回到流同步向导界面，创建流管理员strmadmin。创建流管理员应当是具有 SYSDBA 权限的现有管理员，随后需要需要&nbsp;SYSDBA用户名口令，在此向导完成时将创建流管理员用户。</p>
<p>4.配置目标数据库</p>
<p>目标数据库同样也要创建流管理员，输入主机名、端口、SID 或服务名、流管理员、口令，创建目标数据库的流管理员SQL语句如下，可以先在目标数据库执行。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">sqlplus </span><span style="color: #808080;">/</span><span style="color: #000000;"> </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> sysdba<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">创建表空间</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">create</span><span style="color: #000000;"> tablespace tbs_stream datafile </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">E:/Oracle/data/tbs_stream.dbf</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> size 100m autoextend </span><span style="color: #0000ff;">on</span><span style="color: #000000;"> maxsize unlimited segment </span><span style="color: #ff00ff;">space</span><span style="color: #000000;"> management auto;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">将logminer的数据字典从system表空间转移到新建的表空间，防止撑满system表空间</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> dbms_logmnr_d.set_tablespace(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">tbs_stream</span><span style="color: #ff0000;">'</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">创建流管理用户</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">create</span><span style="color: #000000;"> </span><span style="color: #ff00ff;">user</span><span style="color: #000000;"> strmadmin identified </span><span style="color: #0000ff;">by</span><span style="color: #000000;"> strmadmin </span><span style="color: #0000ff;">default</span><span style="color: #000000;"> tablespace tbs_stream </span><span style="color: #0000ff;">temporary</span><span style="color: #000000;"> tablespace </span><span style="color: #0000ff;">temp</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">授权Stream管理用户 </span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">grant</span><span style="color: #000000;"> connect,resource,dba,aq_administrator_role </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> strmadmin;<br /><br /></span><span style="color: #0000ff;">Grant</span><span style="color: #000000;"> </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> </span><span style="color: #0000ff;">on</span><span style="color: #000000;"> dbms_aqadm </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> strmadmin;<br /></span><span style="color: #0000ff;">Grant</span><span style="color: #000000;"> </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> </span><span style="color: #0000ff;">on</span><span style="color: #000000;"> dbms_capture_adm </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> strmadmin;<br /></span><span style="color: #0000ff;">Grant</span><span style="color: #000000;"> </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> </span><span style="color: #0000ff;">on</span><span style="color: #000000;"> dbms_propagation_adm </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> strmadmin;<br /></span><span style="color: #0000ff;">Grant</span><span style="color: #000000;"> </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> </span><span style="color: #0000ff;">on</span><span style="color: #000000;"> dbms_streams_adm </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> strmadmin;<br /></span><span style="color: #0000ff;">Grant</span><span style="color: #000000;"> </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> </span><span style="color: #0000ff;">on</span><span style="color: #000000;"> dbms_apply_adm </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> strmadmin;<br /></span><span style="color: #0000ff;">Grant</span><span style="color: #000000;"> </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> </span><span style="color: #0000ff;">on</span><span style="color: #000000;"> dbms_flashback </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> strmadmin;<br /><br /></span><span style="color: #0000ff;">begin</span><span style="color: #000000;"><br />dbms_streams_auth.grant_admin_privilege( <br />grantee </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">strmadmin</span><span style="color: #ff0000;">'</span><span style="color: #000000;">, <br />grant_privileges </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> true); <br /></span><span style="color: #0000ff;">end</span><span style="color: #000000;">; <br /></span><span style="color: #808080;">/</span><span style="color: #000000;"><br /><br /></span><span style="color: #0000ff;">begin</span><span style="color: #000000;"> <br />dbms_rule_adm.grant_system_privilege( <br />privilege </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> DBMS_RULE_ADM.CREATE_RULE_SET_OBJ, <br />grantee </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">strmadmin</span><span style="color: #ff0000;">'</span><span style="color: #000000;">, <br />grant_option </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> true); <br /></span><span style="color: #0000ff;">end</span><span style="color: #000000;">; <br /></span><span style="color: #808080;">/</span><span style="color: #000000;"><br /><br /></span><span style="color: #0000ff;">begin</span><span style="color: #000000;"> <br />dbms_rule_adm.grant_system_privilege( <br />privilege </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> DBMS_RULE_ADM.CREATE_RULE_SET_OBJ, <br />grantee </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">strmadmin</span><span style="color: #ff0000;">'</span><span style="color: #000000;">, <br />grant_option </span><span style="color: #808080;">=&gt;</span><span style="color: #000000;"> false); <br /></span><span style="color: #0000ff;">end</span><span style="color: #000000;">; <br /></span><span style="color: #808080;">/</span></div></div></pre>
<p>5.配置流复制规则</p>
<p>Oracle流同步可以使用全局规则（指定要排除的方案和要排除的表）、方案规则（指定要包含的方案和要排除的表）、表规则（指定要包含的表或指定 WHERE 子句以包含表的子集）三种方式，全局规则即整个数据库实例同步，如果只需要同步指定用户建议使用方案规则。同时还可以选择捕获传播DML、DDL更改，排除表。</p>
<p>6.确认配置流和启动作业</p>
<p>上面配置流完成后可以生成脚本，完成提交流设置作业，需要运行源数据库的计算机的主机用户名和口令，点击提交即进行流作业。进入作业活动可以监视在执行流作业，过会作业执行成功后，可以看到源数据库的流管理增加了STREAMS_CAPTURE的捕获记录和STREAMS_PROPAGATION的传播记录，而目标数据库的流管理会增加STREAMS_APPLY的应用记录。</p>
<p>7.测试</p>
<p>配置顺利完成后，源数据库就会自动捕获传播指定对象修改，并应用同步到目标数据库。比如我们增加一个表再往表里加条记录，然后目标数据库也会自动同步过来，实现Oracle数据库的联机热备。</p>
<p><strong>二、使用问题总结</strong></p>
<p>1.archiver error, Connect internal only, until freed.</p>
<p>在使用归档模式一段时间后，出现了上述错误，因为归档的日志空间没能释放，解决办法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">查看flash recovery area的archivelog使用情况</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> </span><span style="color: #808080;">*</span><span style="color: #000000;"> </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> V$FLASH_RECOVERY_AREA_USAGE;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">计算flash recovery area已经占用的空间</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> </span><span style="color: #ff00ff;">sum</span><span style="color: #000000;">(percent_space_used)</span><span style="color: #808080;">*</span><span style="color: #800000; font-weight: bold;">3</span><span style="color: #808080;">/</span><span style="color: #800000; font-weight: bold;">100</span><span style="color: #000000;"> </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> v$flash_recovery_area_usage;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">查看recovery目录</span><span style="color: #008080;"><br /></span><span style="color: #000000;">show parameter recover;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">进入Oracle主目录，找到对应的归档日志，删除或转移一些旧的日志</span><span style="color: #008080;"><br /></span><span style="color: #000000;">cd  ORACLE主目录</span><span style="color: #808080;">/</span><span style="color: #000000;">flash_recovery_area</span><span style="color: #808080;">/</span><span style="color: #000000;">ORCL</span><span style="color: #808080;">/</span><span style="color: #000000;">archivelog<br />del ORACLE主目录</span><span style="color: #808080;">/</span><span style="color: #000000;">flash_recovery_area</span><span style="color: #808080;">/</span><span style="color: #000000;">ORCL</span><span style="color: #808080;">/</span><span style="color: #000000;">archivelog</span><span style="color: #808080;">/</span><span style="color: #800000; font-weight: bold;">20120810</span><span style="color: #000000;"><br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">使用rman命令清理不用的归档日志，以释放空间</span><span style="color: #008080;"><br /></span><span style="color: #000000;">rman target sys</span><span style="color: #808080;">/</span><span style="color: #000000;">pass<br />crosscheck archivelog </span><span style="color: #808080;">all</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">delete</span><span style="color: #000000;"> expired archivelog </span><span style="color: #808080;">all</span><span style="color: #000000;">; <br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> </span><span style="color: #808080;">*</span><span style="color: #000000;"> </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> V$FLASH_RECOVERY_AREA_USAGE;</span></div></div></pre>
<p>2.ORA-00376: 此时无法读取文件 6<br />ORA-01110: 数据文件 6: 'D:\ORACLE\PRODUCT\10.2.0\ORADATA\JITCADB\ECCCADATA.ORA'</p>
<p>这是因为有数据库文件脱机了，解决办法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">查看数据文件状态</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> name, status </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> v$datafile;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">修改状态</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">database</span><span style="color: #000000;"> datafile </span><span style="color: #800000; font-weight: bold;">6</span><span style="color: #000000;"> online;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">重新打开数据库</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">shutdown</span><span style="color: #000000;"> immediate;<br />startup mount;<br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">database</span><span style="color: #000000;"> </span><span style="color: #0000ff;">open</span><span style="color: #000000;">;</span></div></div></pre>
<p>3.ORA-16038:日志 2序列号80无法归档<br />ORA-19809:超出了恢复文件数的限制</p>
<p>归档模式下的联机日志损坏掉了，解决办法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">查看日志组</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> </span><span style="color: #0000ff;">group</span><span style="color: #000000;">#,sequence#,archived,status </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> v$</span><span style="color: #ff00ff;">log</span><span style="color: #000000;">; <br /></span><span style="color: #008080;">--</span><span style="color: #008080;">重建该日志文件</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">database</span><span style="color: #000000;"> clear unarchived logfile </span><span style="color: #0000ff;">group</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">2</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">重新打开数据库</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">database</span><span style="color: #000000;"> </span><span style="color: #0000ff;">open</span><span style="color: #000000;">;</span></div></div></pre>
<p>Oracle流同步通过高级列对，解析归档日志挖掘DDL、DML语句，对主数据库没有增加额外太大压力，提高了数据库的可用性。当然Oracle流同步也有些需要注意的地方，比如说不能更新数据库的主键的字段，配置维护相对较为复杂。</p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/db/">数据库</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2012-12-02 14:03</li>
				<li>update@ </li>
				<li>阅读(<span id="articleClick">4155</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/db/124.aspx">SQL性能优化</a></li>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=150&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/db/150.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=150";
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