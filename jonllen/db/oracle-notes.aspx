
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>oracle学习小记 - 数据库 - 金龙博客</title>
<meta name="description" content="最近忙完iKnow，难得忙里偷闲，打开N久没有打开过的NetBeans工程，继续开始Java的学习，之前已经有用Struts访问mysql、mssqlserver、derby数据库的实现，前几天正好把oracle数据库装好了，正好把jdbc连oracle数据库的功能实现一下。昨日感恩节，收到两位同学的祝福短信，心怀着感恩的心，我也感谢大家一路有你们，晚上听着欧阳菲菲感恩的心好几遍。
段今日一大早，终于解决了java读取Oracle数据库timestamp类型的问题，至此，oracle数据库的创建程序读取告一段段落，让我来记录每一步遇到的一些问题。
oracle数据库基本语法--创建表空间dbTestCREATE TABLESPACE dbTest    LOGGING     DATAFILE 'D:\J2ee\NetBeansProjects\JavaWeb\PowerDesigner\sql\dbTest.ora' SIZE 2M EXTENT    MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;--创建用户blogadmin,默认表空间dbTest；CREATE USER blogadmin IDENTIFIED BY blogadmin DEFAULT TABLESPACE dbTest;--授予其三个权限:DBA,CONNECT,RESOURCEGRANT DBA, CONNECT, RESOURCE TO blogadmin;--查看用户角色..." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-11-27' } );
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
		     > <a href="/jonllen/db/oracle-notes.aspx">oracle学习小记</a>
		</div>
        <div class="article">
			<div class="title"><h2>oracle学习小记</h2></div>
			<div class="category">分类：<a href="/jonllen/db/">数据库</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>最近忙完iKnow，难得忙里偷闲，打开N久没有打开过的NetBeans工程，继续开始Java的学习，之前已经有用Struts访问mysql、mssqlserver、derby数据库的实现，前几天正好把oracle数据库装好了，正好把jdbc连oracle数据库的功能实现一下。昨日感恩节，收到两位同学的祝福短信，心怀着感恩的心，我也感谢大家一路有你们，晚上听着欧阳菲菲感恩的心好几遍。</p>
<p>段今日一大早，终于解决了java读取Oracle数据库timestamp类型的问题，至此，oracle数据库的创建程序读取告一段段落，让我来记录每一步遇到的一些问题。</p>
<p><strong>oracle数据库基本语法</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">创建表空间dbTest</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">CREATE</span><span style="color: #000000;"> TABLESPACE dbTest<br />    LOGGING <br />    DATAFILE </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">D:\J2ee\NetBeansProjects\JavaWeb\PowerDesigner\sql\dbTest.ora</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> SIZE 2M <br />EXTENT    MANAGEMENT LOCAL SEGMENT </span><span style="color: #ff00ff;">SPACE</span><span style="color: #000000;"> MANAGEMENT AUTO;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">创建用户blogadmin,默认表空间dbTest；</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">CREATE</span><span style="color: #000000;"> </span><span style="color: #ff00ff;">USER</span><span style="color: #000000;"> blogadmin IDENTIFIED </span><span style="color: #0000ff;">BY</span><span style="color: #000000;"> blogadmin <br /></span><span style="color: #0000ff;">DEFAULT</span><span style="color: #000000;"> TABLESPACE dbTest;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">授予其三个权限:DBA,CONNECT,RESOURCE</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">GRANT</span><span style="color: #000000;"> DBA, CONNECT, RESOURCE </span><span style="color: #0000ff;">TO</span><span style="color: #000000;"> blogadmin;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">查看用户角色</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">SELECT</span><span style="color: #000000;"> </span><span style="color: #808080;">*</span><span style="color: #000000;"> </span><span style="color: #0000ff;">FROM</span><span style="color: #000000;"> DBA_ROLE_PRIVS </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> grantee </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">blogadmin</span><span style="color: #ff0000;">'</span><span style="color: #000000;">;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">提交</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">commit</span><span style="color: #000000;">;</span></div></div></pre>
<p><strong>查看当前用户角色和表</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">使用blogadmin登陆</span><span style="color: #008080;"><br /></span><span style="color: #000000;">connect blogadmin</span><span style="color: #808080;">/</span><span style="color: #000000;">blogadmin<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">查看当前用户角色</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">SELECT</span><span style="color: #000000;"> </span><span style="color: #808080;">*</span><span style="color: #000000;"> </span><span style="color: #0000ff;">FROM</span><span style="color: #000000;"> USER_ROLE_PRIVS;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">查看当前用户的表</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;">   table_name,TABLESPACE_NAME   </span><span style="color: #0000ff;">from</span><span style="color: #000000;">   user_tables;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">查看所有表</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;">   table_name   </span><span style="color: #0000ff;">from</span><span style="color: #000000;">   dba_tables </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> TABLESPACE_NAME </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">DBTEST</span><span style="color: #ff0000;">'</span><span style="color: #000000;">;</span></div><div><span style="color: #000000;"><span style="color: #008080;">--</span><span style="color: #008080;">查看表空间</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">SELECT  </span><span style="color: #000000;">TABLESPACE_NAME  <span style="color: #0000ff;">FROM</span><span style="color: #000000;">&nbsp; </span><span style="color: #0000ff;">DBA_DATA_FILES</span>;</span></span></div><span style="color: #000000;"><span style="color: #008080;">--</span><span style="color: #008080;">清除删除表</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">PURGE</span><span style="color: #000000;"> </span><span style="color: #0000ff;">TABLE</span><span style="color: #000000;"> USER_TABLE;</span></span></div></pre>
<p><strong>创建和修改表</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">创建FA_User表</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">create</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User  (<br />   fdUserID           </span><span style="color: #0000ff;">int</span><span style="color: #000000;">                    </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,<br />   fdUserName         </span><span style="color: #0000ff;">VARCHAR2</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">50</span><span style="color: #000000;">)                    </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,<br />   fdUserEmail        </span><span style="color: #0000ff;">VARCHAR2</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">50</span><span style="color: #000000;">)                    </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,<br />   fdUserSex          </span><span style="color: #0000ff;">int</span><span style="color: #000000;">,<br />   fdUserCity         </span><span style="color: #0000ff;">VARCHAR2</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">50</span><span style="color: #000000;">),<br />   fdUserTime         </span><span style="color: #0000ff;">TIMESTAMP</span><span style="color: #000000;">,<br />   </span><span style="color: #0000ff;">constraint</span><span style="color: #000000;"> PK_FA_USER </span><span style="color: #0000ff;">primary</span><span style="color: #000000;"> </span><span style="color: #0000ff;">key</span><span style="color: #000000;"> (fdUserID)<br />);<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">修改表名</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User rename </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> tmp_FA_User;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">修改字段类型</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User rename </span><span style="color: #0000ff;">column</span><span style="color: #000000;"> fdUserID </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> tmp_fdUserID;<br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User modify tmp_fdUserID </span><span style="color: #0000ff;">number</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;">,</span><span style="color: #800000; font-weight: bold;">0</span><span style="color: #000000;">) </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User modify tmp_fdUserID </span><span style="color: #0000ff;">number</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">4</span><span style="color: #000000;">,</span><span style="color: #800000; font-weight: bold;">0</span><span style="color: #000000;">);<br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User </span><span style="color: #0000ff;">add</span><span style="color: #000000;"> fdUserID </span><span style="color: #0000ff;">number</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;">,</span><span style="color: #800000; font-weight: bold;">0</span><span style="color: #000000;">);<br /></span><span style="color: #0000ff;">update</span><span style="color: #000000;"> FA_User </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> fdUserID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff00ff;">cast</span><span style="color: #000000;">(fdUserID_temp </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> </span><span style="color: #0000ff;">number</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;">,</span><span style="color: #800000; font-weight: bold;">0</span><span style="color: #000000;">) );<br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User </span><span style="color: #0000ff;">drop</span><span style="color: #000000;"> </span><span style="color: #0000ff;">column</span><span style="color: #000000;"> fdUserID;<br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> talbe FA_User rename </span><span style="color: #0000ff;">column</span><span style="color: #000000;"> fdUserID_temp </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> fdUserID;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">添加字段</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">alter</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User </span><span style="color: #0000ff;">add</span><span style="color: #000000;"> fdUserTime </span><span style="color: #0000ff;">TimeStamp</span><span style="color: #000000;">;</span></div></div></pre>
<p style="text-indent: 2em;"><strong>序列时间使用</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">创建序列</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">create</span><span style="color: #000000;"> sequence FA_User_Sequence<br />increment </span><span style="color: #0000ff;">by</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;"> start </span><span style="color: #0000ff;">with</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;">;<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">插入记录</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">insert</span><span style="color: #000000;"> </span><span style="color: #0000ff;">into</span><span style="color: #000000;"> FA_User </span><span style="color: #0000ff;">values</span><span style="color: #000000;"> (FA_User_Sequence.NextVal,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">Jonllen</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">jonllen@hotmail.com</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">广州</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff00ff;">current_timestamp</span><span style="color: #000000;">);<br /><br /></span><span style="color: #008080;">--</span><span style="color: #008080;">当前时间</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> to_char(sysdate,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">YYYY-MM-DD HH24-MI-SS</span><span style="color: #ff0000;">'</span><span style="color: #000000;">) </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> dual;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">获取当前序列号</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> FA_User_Sequence.CurrVal </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> dual;</span></div></div></pre>
<p><strong>备份数据库脚本</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">备份数据库bat文件脚本</span><span style="color: #008080;"><br /></span><span style="color: #008000;">@echo</span><span style="color: #000000;"> </span><span style="color: #0000ff;">off</span><span style="color: #000000;"><br />echo 开始备份数据库.....<br /></span><span style="color: #0000ff;">set</span><span style="color: #000000;"> dir</span><span style="color: #808080;">=</span><span style="color: #000000;">D:\J2ee\NetBeansProjects\JavaWeb\PowerDesigner\sql\bak<br /></span><span style="color: #ff00ff;">exp</span><span style="color: #000000;"> system</span><span style="color: #808080;">/</span><span style="color: #000000;">dddddd</span><span style="color: #008000;">@orcl</span><span style="color: #000000;"> owner</span><span style="color: #808080;">=</span><span style="color: #000000;">blogadmin </span><span style="color: #0000ff;">file</span><span style="color: #808080;">=%</span><span style="color: #000000;">dir</span><span style="color: #808080;">%</span><span style="color: #000000;">\bak.dmp </span><span style="color: #ff00ff;">log</span><span style="color: #808080;">=%</span><span style="color: #000000;">dir</span><span style="color: #808080;">%</span><span style="color: #000000;">\bak.</span><span style="color: #ff00ff;">log</span><span style="color: #000000;"> buffer</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">409600000</span><span style="color: #000000;"> feedback</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">100000</span><span style="color: #000000;"> direct</span><span style="color: #808080;">=</span><span style="color: #000000;">y consistent</span><span style="color: #808080;">=</span><span style="color: #000000;">n compress</span><span style="color: #808080;">=</span><span style="color: #000000;">n;<br />echo 备份结束</span></div></div></pre>
<p><strong>删除表空间</strong></p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">删除表空间</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">drop</span><span style="color: #000000;"> tablespace dbTest including contents;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">删除序列</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">drop</span><span style="color: #000000;"> Sequence FA_User_Sequence;<br /></span><span style="color: #008080;">--</span><span style="color: #008080;">创建新的表空间</span><span style="color: #008080;"><br /></span><span style="color: #0000ff;">CREATE</span><span style="color: #000000;"> TABLESPACE dbTest<br />    LOGGING <br />    DATAFILE </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">D:\J2ee\NetBeansProjects\JavaWeb\PowerDesigner\sql\dbTest.ora</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> SIZE 2M REUSE <br />EXTENT    MANAGEMENT LOCAL SEGMENT </span><span style="color: #ff00ff;">SPACE</span><span style="color: #000000;"> MANAGEMENT AUTO;</span></div></div></pre>
<p><strong>导入数据库bat脚本</strong>&nbsp;</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">--</span><span style="color: #008080;">导入还原</span><span style="color: #008080;"><br /></span><span style="color: #008000;">@echo</span><span style="color: #000000;"> </span><span style="color: #0000ff;">off</span><span style="color: #000000;"><br />echo 开始导入数据库.....<br /></span><span style="color: #0000ff;">set</span><span style="color: #000000;"> dir</span><span style="color: #808080;">=</span><span style="color: #000000;">D:\J2ee\NetBeansProjects\JavaWeb\PowerDesigner\sql\bak<br />imp system</span><span style="color: #808080;">/</span><span style="color: #000000;">dddddd</span><span style="color: #008000;">@orcl</span><span style="color: #000000;"> </span><span style="color: #0000ff;">file</span><span style="color: #808080;">=%</span><span style="color: #000000;">dir</span><span style="color: #808080;">%</span><span style="color: #000000;">\bak.dmp </span><span style="color: #ff00ff;">log</span><span style="color: #808080;">=%</span><span style="color: #000000;">dir</span><span style="color: #808080;">%</span><span style="color: #000000;">\bak.</span><span style="color: #ff00ff;">log</span><span style="color: #000000;"> </span><span style="color: #0000ff;">full</span><span style="color: #808080;">=</span><span style="color: #000000;">y ignore</span><span style="color: #808080;">=</span><span style="color: #000000;">y<br />echo 导入完成</span></div></div></pre>
<p style="text-indent: 2em;">后来使用Java读取Oracle数据库的遇到的问题较多，由于我之前使用了反射，通用不同的数据库，不需要单独判断某个数据库列字段的类型再赋值，之前已经也使用它反射过mysql、sqlserver、derby数据库，而放在oracle数据库却有问题，最终只能对oracle数据库一些字段做特殊的判断，修改后的反射ResultSet到JavaBean的方法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008000;">/*</span><span style="color: #008000;"><br /> * Bean实体抽象基类<br /> </span><span style="color: #008000;">*/</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">package</span><span style="color: #000000;"> db;<br /><br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> java.lang.reflect.</span><span style="color: #000000;">*</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> java.sql.ResultSet;<br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> java.sql.ResultSetMetaData;<br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> java.util.List;<br /><br /><br /></span><span style="color: #008000;">/**</span><span style="color: #008000;"><br /> * </span><span style="color: #808080;">@author</span><span style="color: #008000;"> Jonllen<br /> * @create 2009-05-24 15:13:58<br /> * @update 2009-11-27 14:11:12<br /> </span><span style="color: #008000;">*/</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">abstract</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> BeanBase {<br /><br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> ReflectBean( ResultSet rs)<br />    {<br />        System.out.println();<br />        </span><span style="color: #0000ff;">try</span><span style="color: #000000;"> {<br />            ResultSetMetaData columns </span><span style="color: #000000;">=</span><span style="color: #000000;"> rs.getMetaData();<br />            Field[] fields </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.getClass().getDeclaredFields();<br />            </span><span style="color: #0000ff;">for</span><span style="color: #000000;">(</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> i</span><span style="color: #000000;">=</span><span style="color: #000000;">1</span><span style="color: #000000;">;i</span><span style="color: #000000;">&lt;=</span><span style="color: #000000;">columns.getColumnCount();i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />            {<br />                String filedName </span><span style="color: #000000;">=</span><span style="color: #000000;"> columns.getColumnName(i);<br /><br />                </span><span style="color: #0000ff;">for</span><span style="color: #000000;">(</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> j</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;j</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">fields.length;j</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />                {<br />                    </span><span style="color: #008000;">//</span><span style="color: #008000;">System.out.println("filedName:"+filedName+"，类字段："+fields[j].getName());</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(filedName.equalsIgnoreCase((fields[j].getName())) </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> rs.getObject(filedName)</span><span style="color: #000000;">!=</span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br />                    {<br />                        Field field </span><span style="color: #000000;">=</span><span style="color: #000000;"> fields[j];<br />                        field.setAccessible(</span><span style="color: #0000ff;">true</span><span style="color: #000000;">);<br /><br />                        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (java.math.BigDecimal.</span><span style="color: #0000ff;">class</span><span style="color: #000000;">.getName().equalsIgnoreCase(rs.getObject(filedName).getClass().getName()))<br />                        {<br />                            </span><span style="color: #008000;">//</span><span style="color: #008000;">oracle number类型特殊处理</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                            field.set(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">, ((java.math.BigDecimal)rs.getObject(filedName)).intValue());<br />                        }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( rs.getObject(filedName).getClass().getName().equalsIgnoreCase(</span><span style="color: #000000;">"</span><span style="color: #000000;">oracle.sql.TIMESTAMP1</span><span style="color: #000000;">"</span><span style="color: #000000;">) )<br />                        {<br />                            </span><span style="color: #008000;">//</span><span style="color: #008000;">oracle timestamp类型特殊处理</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                            Class clz </span><span style="color: #000000;">=</span><span style="color: #000000;"> rs.getObject(filedName).getClass();<br />                            Method m </span><span style="color: #000000;">=</span><span style="color: #000000;"> clz.getMethod(</span><span style="color: #000000;">"</span><span style="color: #000000;">timestampValue</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />                            java.sql.Timestamp t </span><span style="color: #000000;">=</span><span style="color: #000000;"> (java.sql.Timestamp) m.invoke(rs.getObject(filedName));<br />                            field.set(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">,t);<br />                        }<br />                        </span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />                        {<br />                            field.set(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">, rs.getObject(filedName));<br />                        }<br /><br />                        String msg </span><span style="color: #000000;">=</span><span style="color: #000000;"> java.text.MessageFormat.format(</span><span style="color: #000000;">"</span><span style="color: #000000;">第{0}行第{1}列 {2}：{3}</span><span style="color: #000000;">"</span><span style="color: #000000;">, rs.getRow(), i, filedName, rs.getObject(filedName));<br />                        System.out.println( msg );<br />                        </span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br />                    }<br />                }<br />            }<br />        } </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> (Exception e) {<br />            e.printStackTrace();<br />        }<br />    }<br />    <br /><br />}</span></div></div></pre>
<p>错误一：<strong>java.lang.IllegalArgumentException: Can not set java.util.Date field bean.User.fdUserTime to oracle.sql.TIMESTAMP</strong></p>
<p style="text-indent: 2em;">这是在反射的时候从oracle的timestamp日期类型转换到java日期类型出错，所以我不得不在反射的时候加上if( rs.getObject(filedName).getClass().getName().equalsIgnoreCase("oracle.sql.TIMESTAMP") )的特殊判断，如果是oracle.sql.TIMESTAMP数据类型的列，则使用反射调用它的timestampValue，这样才能强制转换成java.sql.Timestamp，再反射转换成它的基类java.util.Date，直接转换出错。另外还有oracle的number类型我也做了特殊判断，它返回的类型是java.math.BigDecimal，没办法直接强制转换成int或Integer，而只能用((java.math.BigDecimal)rs.getObject(filedName)).intValue()获取它的int类型值，因为oracle的number是数值的一种通用类型，是可能包含小数位的。</p>
<p style="text-indent: 2em;">错误二：<strong>can bind a LONG value only for insert into a LONG column</strong></p>
<p>这是一个oracle数据库驱动版本兼容问题，错误原因是程序使用的classes12驱动文件和访问的oracle数据库版本不对应，在服务器段oracle安装目录的product\10.2.0\db_1\jdbc\lib\也有一个classes12.jar驱动文件，拷贝使用此驱动文件覆盖到项目内即可解决问题。</p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/db/">数据库</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-11-27 11:08</li>
				<li>update@ 2010-10-15 22:25:52</li>
				<li>阅读(<span id="articleClick">12335</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/db/75.aspx">Asp.Net访问Access数据库注意事项</a></li>
<li>下一篇：<a href="/jonllen/db/124.aspx">SQL性能优化</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=86&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/db/oracle-notes.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=86";
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