
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>我的第一个NHibernate2.1.2.GA程序事例 - Asp.Net - 金龙博客</title>
<meta name="description" content="对ORM（Object/Relation Mapping）技术了解的都知道，NHibernate是基于.Net的一种数据持久化的框架。之前在Java里了解过Hibernate框架，但平时开发还是.Net用得比较多，而且目前面向对象和关系型数据库的开发应用仍然是主流，所以觉得有必要去了解学习NHibernate这个优秀的ORM框架。
一、类库 
二、配置 
三、映射 
四、延迟加载" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2011-03-26' } );
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
		     > <a href="/jonllen/aspnet/141.aspx">我的第一个NHibernate2.1.2.GA程序事例</a>
		</div>
        <div class="article">
			<div class="title"><h2>我的第一个NHibernate2.1.2.GA程序事例</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>对ORM（Object/Relation Mapping）技术了解的都知道，NHibernate是基于.Net的一种数据持久化的框架。之前在Java里了解过Hibernate框架，但平时开发还是.Net用得比较多，而且目前面向对象和关系型数据库的开发应用仍然是主流，所以觉得有必要去了解学习NHibernate这个优秀的ORM框架。</p>
<p><strong>一、类库</strong></p>
<p>在我的这个NHibernate2.1.2.GA版的程序事例中，是使用VS2005工具开发的，引用NHibernate的相关类库文件如下：</p>
<table class="collapse">
<tr>
<th>名称</th><th>功能</th>
</tr>
<tr>
<td>NHibernate.dll</td>
<td>NHibernate核心类库</td>
</tr>
<tr>
<td>Iesi.Collections.dll</td>
<td>提供集合运算功能</td>
</tr>
<tr>
<td>NHibernate.ByteCode.Castle.dll</td>
<td>使用Castle动态代理</td>
</tr>
<tr>
<td>Castle.Core.dll</td>
<td>Castle代理核心类库</td>
</tr>
<tr>
<td>Castle.DynamicProxy2.dll</td>
<td>Castle动态代理</td>
</tr>
<tr>
<td>Antlr3.Runtime.dll</td>
<td>语法分析和词法分析(未使用)</td>
</tr>
</table>
<p><strong>二、配置</strong></p>
<p>NHibernate可以有几种加载配置的方式：Web.Config/App.Config、hibernate.cfg.xml、编码指定配置文件。因为在我的这个事例是Asp.Net的NHibernate网站程序，所以在Web.Config的configSections下增加section节点来配置NHibernate。也可以独立出hibernate.cfg.xml配置文件，放在网站Bin目录下，使用如下方式实例化：</p>
<p>Configuration config = new Configuration().Configure();</p>
<p>NHibernate默认会在目录下自动查找hibernate.cfg.xml配置文件。</p>
<p>如下为我的Web.Config配置文件内容：</p>
<div class="code">
<pre>&lt;?xml version="1.0"?&gt;
&lt;configuration&gt;
  &lt;configSections&gt;
    &lt;section name="hibernate-configuration" type="NHibernate.Cfg.ConfigurationSectionHandler, NHibernate" /&gt;
    &lt;section name="log4net" type="log4net.Config.Log4NetConfigurationSectionHandler,log4net" /&gt;
  &lt;/configSections&gt;
	&lt;appSettings/&gt;
	&lt;connectionStrings/&gt;
  &lt;hibernate-configuration  xmlns="urn:nhibernate-configuration-2.2" &gt;
    &lt;session-factory name="NHibernateDemo"&gt;
      &lt;property name="connection.driver_class"&gt;NHibernate.Driver.SqlClientDriver&lt;/property&gt;
      &lt;property name="connection.connection_string"&gt;
        Data Source=.\SQL2005;Initial Catalog=Jonllen;
        Integrated Security=True;Pooling=False
      &lt;/property&gt;
      &lt;property name="adonet.batch_size"&gt;10&lt;/property&gt;
      &lt;property name="show_sql"&gt;true&lt;/property&gt;
      &lt;property name="dialect"&gt;NHibernate.Dialect.MsSql2005Dialect&lt;/property&gt;
      &lt;property name="use_outer_join"&gt;true&lt;/property&gt;
      &lt;property name="command_timeout"&gt;10&lt;/property&gt;
      &lt;property name="query.substitutions"&gt;true 1, false 0, yes 'Y', no 'N'&lt;/property&gt;
      &lt;property name="proxyfactory.factory_class"&gt;
        NHibernate.ByteCode.Castle.ProxyFactoryFactory,
        NHibernate.ByteCode.Castle
      &lt;/property&gt;
      &lt;mapping assembly="NHibernateDemo.Domain"/&gt;
    &lt;/session-factory&gt;
  &lt;/hibernate-configuration&gt;
  &lt;log4net&gt;
    &lt;appender name="ConsoleAppender" type="log4net.Appender.ConsoleAppender, log4net"&gt;
      &lt;layout type="log4net.Layout.PatternLayout, log4net"&gt;
        &lt;param name="ConversionPattern" value="%d %p %m%n" /&gt;
      &lt;/layout&gt;
    &lt;/appender&gt;
    &lt;appender name="RollingFile" type="log4net.Appender.RollingFileAppender,log4net" &gt;
      &lt;param name="File" value="log.txt" /&gt;
      &lt;param name="AppendToFile" value="true" /&gt;
      &lt;param name="DatePattern" value="yyyy.MM.dd" /&gt;
      &lt;layout type="log4net.Layout.PatternLayout,log4net"&gt;
        &lt;conversionPattern value="%d %p %m%n" /&gt;
      &lt;/layout&gt;
    &lt;/appender&gt;
    &lt;root&gt;
      &lt;priority value="DEBUG" /&gt;
      &lt;appender-ref ref="ConsoleAppender" /&gt;
    &lt;/root&gt;
    &lt;logger name="NHibernate" additivity="false"&gt;
      &lt;level value="WARN"/&gt;
      &lt;appender-ref ref="RollingFile" /&gt;
      &lt;appender-ref ref="ConsoleAppender" /&gt;
    &lt;/logger&gt;
    &lt;logger name="NHibernate.SQL" additivity="false"&gt;
      &lt;level value="ALL"/&gt;
      &lt;appender-ref ref="RollingFile" /&gt;
      &lt;appender-ref ref="ConsoleAppender" /&gt;
    &lt;/logger&gt;
  &lt;/log4net&gt;
  &lt;system.web&gt;
		&lt;compilation debug="true"&gt;
			&lt;assemblies&gt;
      &lt;/assemblies&gt;
    &lt;/compilation&gt;
		&lt;authentication mode="Forms"/&gt;
	&lt;/system.web&gt;
&lt;/configuration&gt;
</pre>
</div>
<p><strong>三、映射</strong></p>
<p>NHibernate提供了几种方式的实体关系映射，比较灵活的是使用xml文件进行映射，将实体类与数据表的关系描述配置。使用这种方式要指定NHibernate配置session-factory中mapping的assembly实体程序集，*.hbm.xml实体映射文件属性的生成操作都要设置为嵌入的资源，因为NHibernate是通过查找程序集中的资源文件映射实体的。</p>
<p>如下为我的User.hbm.xml映射文件内容：</p>
<div class="code">
<pre>&lt;?xml version="1.0" encoding="utf-8" ?&gt;
&lt;hibernate-mapping xmlns="urn:nhibernate-mapping-2.2" assembly="NHibernateDemo.Domain"
   namespace="NHibernateDemo.Domain.Entities"&gt;

  &lt;class name ="User" table="bl_user" &gt;
    &lt;id name="UserId" column ="userId"&gt;
      &lt;generator class ="native"/&gt;
    &lt;/id&gt;
    &lt;property name ="Username"/&gt;
    &lt;property name ="Password"/&gt;
    &lt;property name ="LoginTimes"/&gt;
    &lt;property name ="RegisterDate"/&gt;
    &lt;property name ="UserStatus"/&gt;
    &lt;property name ="TemplateDisplay"/&gt;
  &lt;/class&gt;
  
&lt;/hibernate-mapping&gt;
</pre>
</div>
<p>NHibernate也提供在编码时自定义映射方式，如使用Fluent在创建ISessionFactory时动态添加要映射的程序集。另外，我曾经在Hibernate中可以使用注解方式，即直接在实体类上添加注释来映射，我想在.Net中NHibernate应该也可以使用元数据进行实体映射。</p>
<p><strong>四、延迟加载</strong></p>
<p>NHibernate2.1版本提供三种3种框架动态代理，分别为Castle框架、LinFu框架、Spring.Net框架，以实现延迟加载功能。在我的这个NHibernate事例中是使用的Castle框架，它要求持久化类不是sealed密封类，且其公共方法、属性和事件声明必须为virtual，否则将出现如下错误：</p>
<p>The following types may not be used as proxies:NHibernateDemo.Domain.Entities.User: method get_UserId should be 'public/protected virtual' or 'protected internal virtual'</p>
<p>如果非得每个实体属性都要为virtual好象有点强人所难，于是我把User.hbm.xml中class的lazy="false"，改为默认不使用延迟加载就没问题了。如果能正常使用延迟加载功能固然是好，但一般取数据实体里的属性一般都会是确定的，实在不行也可以在业务逻辑层里再手动填充实体属性，所以也不一定就要使用延迟加载。</p>
<p>目前.Net实现动态代理功能似乎都对现有的有侵入性，不是要求继承类就是有其它的实现条件。而之所以要有virtual这个条件是因为创建代理对象需要override实体类型的方法属性，以实现对方法属性的拦截处理，植入执行前和执行后的逻辑，以实现延迟加载的功能。而在Java中则专门提供了InvocationHandler代理接口，并且所有方法默认都可以Override，因此实现Aop动态代理就很简单。</p>
<p>本事例VS2005工程源代码下载：<a href="/upload/jonllen/case/NHibernateDemo.rar" target="_blank" title="下载NHibernate程序事例源代码">NHibernateDemo</a></p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> ORM框架
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2011-03-26 23:19</li>
				<li>update@ </li>
				<li>阅读(<span id="articleClick">9402</span>)</li>
				<li>评论(2)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/134.aspx">网站开发常用优化</a></li>
<li>下一篇：<a href="/jonllen/aspnet/143.aspx">使用ReportViewer的rdlc图形报表</a></li></ul>
		</div>
		

<div class="correlative">
	
		    <h4>相关文章</h4>
			<ul>


                    	<li><a href='/jonllen/aspnet/123.aspx' title='' target="_blank">我的ORM（一）——重复造轮子</a></li>
                    
                    	<li><a href='/jonllen/aspnet/125.aspx' title='' target="_blank">我的ORM（二）——兼容不同的数据库</a></li>
                    
                    	<li><a href='/jonllen/work/130.aspx' title='' target="_blank">大杂烩&培训</a></li>
                    

			</ul>
		
</div>

		
		<div class="comment">
			<div class="title">评论</div>
			<div class="commentlist" id="commentContent">
				



				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'青岛红酒')">引用</a></li>

						        </ul>
						        <a>1楼</a> 青岛红酒 2011-06-01 10:18:00
					        </div><div class="cont">来转转啦~~~</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'金顺道物流')">引用</a></li>

						        </ul>
						        <a>2楼</a> 金顺道物流 2011-06-01 10:18:27
					        </div><div class="cont">来看看滴</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=141&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/141.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=141";
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