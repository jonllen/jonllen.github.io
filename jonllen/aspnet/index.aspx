<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	Asp.Net - 金龙博客
</title>
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'' } );
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
            
            
    
    <div id="ctl00_cphContent_palArticle" class="article">
	
		<div class="position title">
		    
		    <strong>Asp.Net</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/163.aspx">把网站搬到Linux上</a></h2>
			            <!--<div class="date"><a href="">2013-06-29</a></div>-->
			            
			            <div class="summary">
			                前段时间主机快过期了，最近又在研究SSL证书，因为原来用的虚拟主机不是独立的VPS，不支持自己到网站上配置SSL，心里就捣鼓着想换一台独立的虚拟主机，我网站原来的运行环境是Windows2003 + IIS6.0 + .Net2.0 + MS Access数据，而Windows主机都比较贵，所有后面就想着把网站搬到Linux上，移植到的Linux的运行环境是Ubuntu12 + Apache2 + mono + mysql，亲身实践使用mono在Linux运行.Net网站，于是便有出此文。
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-06-29 17:43:43.0</li>
				            <li>阅读(4363)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/163.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/155.aspx">ASP.NET分页控件</a></h2>
			            <!--<div class="date"><a href="">2013-01-23</a></div>-->
			            
			            <div class="summary">
			                分页控件是为页面数据分页导航显示的一个可重用控件。分页控件一般需要指定页码（PageIndex）、总记录数据（RecordCount）、页记录数（PageSize），可自动计算出页码数（PageCount）显示出来。如果使用客户端分页应该还要计算分页数据，下面我从如下几个方面来说分页控件。

一、GET和POST分页方式

GET和POST分页不同之处，在于传递分页参数的方式。GET分页使用URL地址附加参数方式，而POST则是在提交表单中设置分页参数，可以在页面中存放hidden控件。在ASP.NET中可以使用Postback，使用ViewState保存分页参数。一般在前台页面列表都是用GET方式分页，这样在URL中就包含了分页信息，有利于SEO搜索引擎收录，个人推荐使用GET方式在URL地址分页。

二、服务端分页和客户端分页

这里所说的服务端和客户端分页是指在设置列表数据源的方式不同来划分的。对于存在大量数据的情况下一般都会使用服务端分页，即在服务器端获取已分页的数据显示，需要显示第几页数据就从数据库中获取第几页的数据，在数据库中使用分页函数完成分页返回数据。客户端分页是指一次返回所有记录，再在服务器端中自行分页，在ASP.NET中可以使用PagedDataSource对象来分页，在指定数据源和页码后可以自动计算页数和分页。客户端分页只适应于数据量不大的情况下的分页。

三、自定义分页控件和用户控件分页
...
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-01-23 13:30:22.0</li>
				            <li>阅读(4899)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/155.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/143.aspx">使用ReportViewer的rdlc图形报表</a></h2>
			            <!--<div class="date"><a href="">2011-07-28</a></div>-->
			            
			            <div class="summary">
			                ReportViewer是.Net中集成的报表控件，有ReportViewer Web 服务器控件和ReportViewer Windows 窗体控件两种版本，支持ASP.NET和WinForm应用程序。ReportViewer可以配置为以本地处理模式或远程处理模式运行，本地处理模式即在客户端应用程序中处理报表，使用客户端报表定义rdlc文件，远程处理模式是指由Reporting Services 报表服务器处理报表。对于使用数据集和比较简单的报表，可以使用本地处理模式客户端报表，我这里主要讲述ReportViewer的LocalReport动态生成图形报表。
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-07-28 23:04:46.0</li>
				            <li>阅读(15307)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/aspnet/143.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/141.aspx">我的第一个NHibernate2.1.2.GA程序事例</a></h2>
			            <!--<div class="date"><a href="">2011-03-26</a></div>-->
			            
			            <div class="summary">
			                对ORM（Object/Relation Mapping）技术了解的都知道，NHibernate是基于.Net的一种数据持久化的框架。之前在Java里了解过Hibernate框架，但平时开发还是.Net用得比较多，而且目前面向对象和关系型数据库的开发应用仍然是主流，所以觉得有必要去了解学习NHibernate这个优秀的ORM框架。
一、类库 
二、配置 
三、映射 
四、延迟加载
			            </div>
			            <div class="tags">标签：Asp.Net ORM框架
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-03-26 23:19:11.0</li>
				            <li>阅读(9402)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/aspnet/141.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/134.aspx">网站开发常用优化</a></h2>
			            <!--<div class="date"><a href="">2010-12-26</a></div>-->
			            
			            <div class="summary">
			                网站优化有很多种，养成良好的编码习惯，平时注意知识点和经验的积累，是提升个人技术乃至网站技术含量的重要途径之一。
1.代码规范
2.编程思想
3.层次结构
4.框架技术
5.SQL优化
1）表结构优化
2）减少返回列
3）关联表优化
4）排序字段调整
5）分页查询优化
6）服务器调优
6.发布网站
			            </div>
			            <div class="tags">标签：Asp.Net SQL优化
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-12-26 12:22:54.0</li>
				            <li>阅读(8319)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/134.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/125.aspx">我的ORM（二）——兼容不同的数据库</a></h2>
			            <!--<div class="date"><a href="">2010-07-06</a></div>-->
			            
			            <div class="summary">
			                今天，我自己的第一个ORM框架终于上线了，既感自豪，又深之很知其不完善，还有很多地方需要改进，只能日后慢慢修正。
我博客是使用类似PetShop框架开发，但于之不同的是采用了ORM框架，简化底层的数据访问，并实现跨数据库的访问。PetShop是提供了业务逻辑接口，并针对SQL Server和Oracle各自单独实现，但其实大部分都是那些DML操作，且不同的数据库的SQL语法大都相同，因此可利用它们的相同之处重用，即使用ORM来兼容各种数据库的访问，或是说ORM底层自动判断数据库类型再使用不同语法特性来实现，这便是ORM框架最重要的作用之一。
基于ADO.Net，各种主流数据库的访问得以支持实现，Access可使用OleDb，SQL Server使用SqlClient，Oracle使用OracleClient，而MySql使用MySql.Data开源库，且ADO框架提供了良好的接口，如要提供对其他数据库的支持只需实现ADO接口。当然，在我的ORM里为了更好的封装，我也定义了一些接口...
			            </div>
			            <div class="tags">标签：Asp.Net ORM框架
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-07-06 22:27:02.0</li>
				            <li>阅读(9319)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/125.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/123.aspx">我的ORM（一）——重复造轮子</a></h2>
			            <!--<div class="date"><a href="">2010-07-01</a></div>-->
			            
			            <div class="summary">
			                ORM在我们平时项目里是必不可少的，也是最重要的系统架构之一，它提供对数据访问的底层实现，比较出名的有Java里的Hibernate、.Net里的NHibernate和Linq，这些都是很成熟的ORM框架，今天我要说的是我的ORM，这当然不能和前面说的那些ORM比，这里仅当自己造轮子学习。
			            </div>
			            <div class="tags">标签：Asp.Net ORM框架
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-07-01 23:36:21.0</li>
				            <li>阅读(9638)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/123.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/106.aspx">博客个性化定制功能</a></h2>
			            <!--<div class="date"><a href="">2010-03-16</a></div>-->
			            
			            <div class="summary">
			                最近在忙几个事，工作上做天河部落的升级改版，绕有兴致的做博客的个性化功能，以前我的博客也有几个样式模板，但是模块没有定制，昨天顺便就把我博客的个性化定制功能实现了，对于Asp.Net的博客个性化定制功能的方法总结如下：1.简单的切换css样式文件；2.切换博客的MasterPage.master母版页；3.动态加载ascx控件模块；4.使用微软的WebParts个性化部件。
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-03-16 23:24:43.0</li>
				            <li>阅读(12467)</li>
				            <li><a class="comment" title="共4条评论" href="/jonllen/aspnet/106.aspx#comment">评论(4)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/88.aspx">asp.net(C#)常用的一些功能</a></h2>
			            <!--<div class="date"><a href="">2009-12-04</a></div>-->
			            
			            <div class="summary">
			                asp.net(C#)常用的一些功能:发送邮件、直接读取上传文件内容(不经保存)、使用匿名委托筛选泛型列表和排序、导出csv报表文件。
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-04 11:50:25.0</li>
				            <li>阅读(8040)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/88.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/iknow.aspx">我的iKnow</a></h2>
			            <!--<div class="date"><a href="">2009-11-23</a></div>-->
			            
			            <div class="summary">
			                最进忙于做一个问答系统，类似与百度知道，值得一题的时这次是全权由我来负责的，包括需求分析、数据库设计、程序前后台架构的搭建，项目进度的跟进。第一次让我把项目从头做到尾，发现有些地方还是心有余而力不足，比如系统开发进度控制等，有些都没事先的安排好，当然还会遇到一些大大小小的技术问题，不过到今天系统算是开发得差不多了，还剩下2个页面制作未完成的功能，比预期的时间提前一个星期。整个系统分为前后台2个工程，前台是一个独立网站项目，而后台则在我们公司的产品IBOX系统的插件内，其实整个iKonw也将是作为IBOX系统的插件存在，客户在买我们的产品时候可以选择是否需要此插件，在进行安装的时候就只部署选择的项目，由于前后台是独立在2个不同的项目里面，唯一相同的就是访问的同一个数据库，但是有一些系统配置我是直接用XML文件来保存的，我又不想用虚拟目录，所以给前后台通讯造成了一点麻烦。单例类所谓单例，就是说在全局里只存在一个实例，这个实例会在被频频使用，比如说系统的一些配置参数信息，或是一些过滤的关键字，访问这些信息的如果每次都要去读取配置文件的话就太麻烦了，这些内容我只希望读取一次配置，这个时候就可以考虑使用单件...
			            </div>
			            <div class="tags">标签：Asp.Net iKnow,单件,js弹窗
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-23 00:29:52.0</li>
				            <li>阅读(10867)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/iknow.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a></h2>
			            <!--<div class="date"><a href="">2009-09-11</a></div>-->
			            
			            <div class="summary">
			                玩了tiny_mce在线编辑器好几个星期，今天终于差不多把所有的功能都给完成了，确切的说是把编辑器的插件功能完美的整合在我的博客里面，解决一些小的bug，这还得意于它本身是开源免费的，这里我实现的功能主要有：修改图片和多媒体文件上传和浏览功能；增加signature个性签名(关联博客)和insertcode插入代码(整合CodeHighlighter代码高亮显示)功能插件；修改编辑器内按下Ctrl S键save保存插件功能，使之支持Postback到服务器端并触发OnSave事件。修正编辑器内字体过小、设置编辑器不会自动移除div元素节点的等问题。起初我引用tiny_mce编辑器都是直接嵌入的脚本的，摸索了一番待完善所有功能后，当然就要把它做成.net的自定义控件了，方便每一个页面调用，下面我就结合在做自定义控件的时候说一下Tinymce编辑器。，可在线试试我的TinyMCE在线编辑器，先上自定义控件源代码...
			            </div>
			            <div class="tags">标签：Asp.Net TinyMce
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-11 23:32:22.0</li>
				            <li>阅读(31679)</li>
				            <li><a class="comment" title="共8条评论" href="/jonllen/aspnet/tinymce.aspx#comment">评论(8)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/59.aspx">IIS虚拟目录调用主网站Bin内类库方法</a></h2>
			            <!--<div class="date"><a href="">2009-08-26</a></div>-->
			            
			            <div class="summary">
			                最近全力投入IBOX的开发，先是做了一个留言的Plugins互动插件，不过发现在插件内调用主站很是麻烦，但是可用.net的反射调用IBOX的主站类库的方法：
IBOX插件是一个独立网站作为IBOX主站的Plugin虚拟目录存在，调用主站Bin内类方法非常不方便，有时候不好和主站交互，如在插件内删除留言的操作我要在IBOX的主站内记录日志，但我又不想把dao、bean重新拷贝一份到插件内来，但发现使用反射可以完美的调用IBOX的主站内任一类库方法，具体实现是通过动态加载IBOX的主站类库程序，动态创建dao、bean类实例，动态调用其方法并可获得返回值，所以IBOX插件网站也能调用IBOX的主站IBOX_DB.dll、IBOX_DL.dll内任一方法，希望下次能用到。

			            </div>
			            <div class="tags">标签：Asp.Net 反射,IBOX
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-26 14:45:55.0</li>
				            <li>阅读(10678)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/59.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a></h2>
			            <!--<div class="date"><a href="">2009-07-11</a></div>-->
			            
			            <div class="summary">
			                PowerDesigner是一种著名的CASE建摸工具，最开始为数据库建模设计，即物理模型(Physical Data Model)用于生成数据库表结构，还有面向对象模型(Object Oriented Model)，用于建立UML模型的结构，可以直接生成CS代码，还有其他的模型等等，不同的模型之间可以相互的转化。我最中意的就是它的物理模型直接设计生成数据库，给我们对数据库的生成升级维护带来极大的方便，下面主要来讲一下它的物理模型设计。
1.使用PowerDesigner物理模型生成数据库
打开PowerDesigner在File里New选择Physical Data Model(物理模型)，可在DBMS选项里面选择数据库的类型，新建立模型后PowerDesigner自动创建一个工作空间(Workspace)放在里面，然后模型下面默认会创建一个名PhysicalDiagram_1的物理图表区，这个其实就是用来区分数据库内某一模块的单元区域，我一般是把数据库内有关系的表放在同一块里面，如会员模块就叫MemberDiagrm里面放会员及其相关的表，其他模块就另外新建一个另外放在一起。浮在IDE右上方的Palette就是PowerDesigner里一些常见操作的工具面板，点击选择在图表区新建一个FA_Member会员表，双击表在General里面修改表名描述，这里的Name最好是用中文，然后Code就是数据库的
			            </div>
			            <div class="tags">标签：Asp.Net PowerDesigner
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-11 22:52:51.0</li>
				            <li>阅读(23039)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/pd.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/26.aspx">门户网站的形成—CMS内容管理系统</a></h2>
			            <!--<div class="date"><a href="">2009-04-25</a></div>-->
			            
			            <div class="summary">
			                终于可以稍微停下来不用加班了，这是我进时代财富?过得最轻松的一个双休，总算是可以放下心来好好的调整一下。话说我三月份开始在时代财富公司上班，那怎一个忙字了得？别以为你是刚进公司新员工就要有一个适应环境的过程为由，工作上可以给你放宽一下，刚进公司Earth给我一个事例，是公司.Net框架的应用，因为我们公司是有自己的开发框架(Studio)，几乎所有项目都依赖此框架进行开发的，所以我进了这个公司第一件事就是了解整个框架的开发使用流程，大概花了半天时间来看，然后又花了约两天时间用此框架做一个产品及其分类的增删改查的简单例子，交工！感觉用起公司那个Studio框架还行，有自己的分页控件，用工具自动生成实体及基本增删改查类，使用反射DataTable来填充实体值并返回(泛型数组)，然后对数据库的访问是以接口的方式提供，即创建的所有ADO.Net对象都是使用接口根据Web.Config配置最终来决定实例化的子对象(SQLServer或Oracle数据访问对象),此种方式略有不同于PetShop的工厂模式，PetShop里有一层sealed类根据Web.Config配置来决定接口实例化子类(SQLServerDAL或OracleDAL),所有DAL都单独实现了接口里所有方法等，并是针对自身的差异来一一详细实现，如SQLServ
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-04-25 16:03:10.0</li>
				            <li>阅读(9817)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/26.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/21.aspx">.Net版(C#)的CMP模式(存储过程ORM)</a></h2>
			            <!--<div class="date"><a href="">2008-12-30</a></div>-->
			            
			            <div class="summary">
			                商城上线快2、3个月了，一直都懒得写点东西，在加上杂七杂八的事情也比较忙，所以都没有把这个系统当时做的整个架构思绪整理清，昨天才从深圳完了两天回来，怎感觉是要做的事来着.刚开始接触CMP模式的时候也是看了它几天,到谷歌百度里面一搜,我们博客园里面就有蛙蛙池塘的提高软件开发效率三板斧之二利用CMP模式一文里有它的详细介绍,在这里我自己也对这个用CMP模式拿来真正上项目时候的问题来做个总结.


项目描述:项目实现了商品的浏览筛选(主要是公司做的IT产品)、会员商品收藏、订购(订单)、发邮件推荐给朋友、会员积分、收货地址薄、DIY自主装机等,业务逻辑全部在本项目中用.NET(CMP)实现,而展示就不一定都是用.net的aspx页面来做,如DIY装机就是用Flex生成flash来实现的,但是它们都是同步的(同登陆同注销,包括会员产品收藏等).还有一个最重要的就是后台管理也是用Flex调用.net来实现的,由于要提供Flex调用的接口,所有还提供了几个WebService的页面(关与身份验证请见:在WebService中使用Session或Cookie---实现WebService身份验证(客户端是Flex) ),另外在用JQuery发送Ajax请求的时候页面传输数据时候还有用到Json数据(Flex好象有几个地方也用到了).
项目解决方案截
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2008-12-30 00:11:10.0</li>
				            <li>阅读(14021)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/21.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/28.aspx">在WebService中使用Session或Cookie(实现Flex客户端身份验证)</a></h2>
			            <!--<div class="date"><a href="">2008-06-02</a></div>-->
			            
			            <div class="summary">
			                 现在我们开发一个项目，业务逻辑层全部用WebService,客户端有Flex和Asp.Net,Flex和Asp.Net的所有业务逻辑数据库的访问全部调用WebService中的方法(好象Flex也不能直接对数据库进行访问,所以也只能用WebService),现在就出现问题了，就是WebService中的权限问题了，比如:我在WebService中有一个Login的方法,还有一个ChangePwd修改用户密码的方法，可之，如果我要调用ChangePwd方法前我一定要判断用户是否Login了,所以一般的情况就是在Login方法里面当用户成功登陆后就Sesssion用户ID或者是用Cookie来保存以唯一标识用户，然后我再在ChangePwd方法里面先判断访问的用户是否存在Session或是有Cookie标识,如果有的话我再允许修改修改他自己当前登陆的密码，但是这些当做为 WebService方法的提供的时候就出现了问题,我在访问用户成功Login后Session当前用户的ID之后,当用户再去调用 ChangePwd方法的时候Session却丢失了，原因是我并不是直接打开IE访问WebService页面,然后在点调用那一个 WebService方法，那样我能成功验证。但我现在要是在我的项目中添加WebService引用,引用成功后.net便会自动生成一个App_WebReferences文件夹来保存引用的WebService的WSDL等信息，我们在调用的时
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2008-06-02 11:10:10.0</li>
				            <li>阅读(14788)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/28.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a></h2>
			            <!--<div class="date"><a href="">2009-01-07</a></div>-->
			            
			            <div class="summary">
			                WinWebMail,是一个比较轻量级的邮件服务器系统,适用于中小型企业的邮件系统,功能也比较齐全,关于它的详细介绍可参见官网地址:http://www.winwebmail.com/.从网上去下载一个安装到机器上,我们公司服务器上安装的是WinWebMail 3.7.6.1 企业版,安装的时候它回自动生成网站文件目录,全部都是ASP的页面,在IIS里面创建一个虚拟目录指向该Web文件夹,按照他的一些说明配置好权限等,这样我们就在网页使用它的邮件服务了.
它的Web客户端比较简洁,不过该有的功能还是都有.第一次用admin进去添加一个域,再添加到一个用户进去,我们就拥有该域名的邮箱.注意,如果你这台机器并没有独立网络IP地址或者域名没有解析到你这里你也能添加域,比如我添加一个microsoft.com的域,再到里面添加一个用户jonllen,那我登陆jonllen@microsoft.com用户,我也能以它的用户名发送出邮件,呵呵,不过对方看到的应该是在垃圾邮件里面,因为现在一般邮件服务器都会判断邮件域名和发送的来源是不是同一个地方,不是同一个地方就认为是伪造的垃圾邮件,而且对方回复你也不能收到,因为microsoft.com不是解析到你那里,先来看一张WinWebMail登陆后的截图.

发送邮件就只能在Web页面里面操作是往往不够的.比如系统自动发
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-01-07 01:08:10.0</li>
				            <li>阅读(20062)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/24.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/23.aspx">asp项目 — 报价订购系统</a></h2>
			            <!--<div class="date"><a href="">2009-01-03</a></div>-->
			            
			            <div class="summary">
			                其实我以前在学校里面并没有学过asp的,以前在学校里面学的java的东西最多,其次是.net的课程,不过我一直对.net很感兴趣,好象不只是因为java比较难.net比较人性化些,就感觉它好易用.用.net也做过几个项目了,但是还没有用asp做过,对它还是有点想法.
好象听别人说,asp是asp.net的前身哦,全称为Active Server Page动态页面,服务器端解析也是用IIS,但是它不需要有Microsoft .NET Framework就能直接运行的,在这里我先列举asp和.net的一些不同之处.asp部署简单,没有进行预编译,上传网站即是源代码,这样就有一个安全隐患,网站源文件容易被盗,好象asp页面代码也能加密的,但是比较弱能轻易的就被破解到的.而asp.net网站的话可以把网站预编译,上传为dll文件,这样就安全多了.asp代码不是很严谨,变量可以不申明直接使用,属与弱变量类型.而.net的话是非常面向对象的,如类的继承、多态、重写等.asp写代码调试都比较麻烦,只有少量的智能提示输入,而.net有一个强大的IDE编程环境(VS),达到了很人性化的设置.
上这个asp项目的时候其实心里没底,因为这个项目是原来已经做好成型的,不知道以前别人做得怎么样的,也没有接触过,后来发现它确实是个烂摊子,数据库表结构设计得不合理,代码写得很混乱.没
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-01-03 00:28:10.0</li>
				            <li>阅读(10755)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/23.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/22.aspx">一个Windows后台服务(.Net的C#版) - 定时访问数据库循环发送手机短信</a></h2>
			            <!--<div class="date"><a href="">2009-01-05</a></div>-->
			            
			            <div class="summary">
			                所谓Windows后台服务,即后台自动运行的程序,一般随操作系统启动而启动,在我的电脑 服务后应用程序 服务里面能看到当前电脑的服务.一般而言,程序上用VC、C++写Windows服务,但是我对这些语言不是很熟,一般编程用C#较多,所以就用C#语言写了一个Windows服务.
其实需求是这样的,做那个报价系统的时候加入了发短信的功能,订单处理完即将发货的时候要发送短信都客户手机上,公司内部员工处理订单超时要自动发短信,群发产品促销信息到客户手机上等,还有定时发送短信的需求,所以最后面决定把发短信的模块独立出来,以后还有什么功能方便一起调用,而最终选择了采用Windows后台服务.
其实Windows服务并不好做到通用,它并不能在用户的界面显示一些什么信息等,它只是在后台默默的处理一些事情,起着辅助的作用.那如何实现发送段信通用调用的接口呢?它们之间的信息又是如何来交互呢?数据库!对,就是它存储数据信息的.而数据库都能很方便的访问操作.把发送短信的后台服务定时去访问一个数据库,而另外任何要发送短信的地方也访问数据库,并插入一条要发送的短信到表里面,稍后Windows后台服务访问该表将此短信发送出去.这可能是一个比较蠢的方法,但实现起来较简单的.
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-01-05 00:54:10.0</li>
				            <li>阅读(13738)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/22.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "/jonllen/aspnet/index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
	</div>
	
</div>
 
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