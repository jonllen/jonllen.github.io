
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Struts+Hibernate学习笔记 - Java - 金龙博客</title>
<meta name="description" content="目录
1.配置好Hibernate数据库连接
2.使用Hibernate映射数据库到实体类
3.创建struts应用程序
一、配置好Hibernate数据库连接
创建一个名为Hibernate的新工程，要使用Hibernate需要先创建一个数据库连接，选择Window工具栏Show View菜单中选择Other，在MyEclipse Enterprise Workbench目录下找到DB Browser数据库浏览器，先新建一个数据库连接驱动，输入正确的Connection URL数据库连接字符串和用户名密码，Add JARs选择本地的数据驱动文件，系统会自动选择驱动文件里的驱动类，完成之后在DB Browse里就多了一个数据库连接项，选择一个配置好的数据库连接项右击Open Connection连接，如果我们可以看到数据库和下面的表则证明配置数据库连接成功。右击工程项目选择MyEclipse菜单中的Add Hibernate Capabilities项，添加对Hibernate标签库的引用，选择Hibernate 3.1版，Next下一步使用hibernate.cfg.xml默认配置文件名，在连接数据库的步骤里我们选择JDBC驱动连接方式，在DB Driver下拉列表项中我们可以看到刚开始在DB Browser里配置好的数据库连接，选择一个下面的Connection URL数据库连接字符串和用户名密码自动填充，如果MyEclipse还未使用DB Browser数据库连接浏览器." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-01-06' } );
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
		     > <a href="/jonllen/java/">Java</a>
		     > <a href="/jonllen/java/100.aspx">Struts+Hibernate学习笔记</a>
		</div>
        <div class="article">
			<div class="title"><h2>Struts+Hibernate学习笔记</h2></div>
			<div class="category">分类：<a href="/jonllen/java/">Java</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<p style="text-indent: 2em;"><strong>目录</strong></p>
<p style="text-indent: 2em;"><a href="#t1">1.配置好Hibernate数据库连接</a></p>
<p style="text-indent: 2em;"><a href="#t2">2.使用Hibernate映射数据库到实体类</a></p>
<p style="text-indent: 2em;"><a href="#t3">3.创建struts应用程序</a></p>
<p style="text-indent: 2em;"><a href="#t4">4.使用DispatchAction类执行不同方法</a></p>
<p style="text-indent: 2em;"><a href="#t5">5.部署到Linux的Webligic应用服务器</a></p>
<p style="text-indent: 2em;"><strong id="t1">一、配置好Hibernate数据库连接</strong></p>
<p style="text-indent: 2em;">创建一个名为Hibernate的新工程，要使用Hibernate需要先创建一个数据库连接，选择Window工具栏Show View菜单中选择Other，在MyEclipse Enterprise Workbench目录下找到DB Browser数据库浏览器，先新建一个数据库连接驱动，输入正确的Connection URL数据库连接字符串和用户名密码，Add JARs选择本地的数据驱动文件，系统会自动选择驱动文件里的驱动类，完成之后在DB Browse里就多了一个数据库连接项，选择一个配置好的数据库连接项右击Open Connection连接，如果我们可以看到数据库和下面的表则证明配置数据库连接成功。右击工程项目选择MyEclipse菜单中的Add Hibernate Capabilities项，添加对Hibernate标签库的引用，选择Hibernate 3.1版，Next下一步使用hibernate.cfg.xml默认配置文件名，在连接数据库的步骤里我们选择JDBC驱动连接方式，在DB Driver下拉列表项中我们可以看到刚开始在DB Browser里配置好的数据库连接，选择一个下面的Connection URL数据库连接字符串和用户名密码自动填充，如果MyEclipse还未使用DB Browser数据库连接浏览器，我们可以先新建一个DB Browser数据库连接或直接在这一步骤手动输入数据库连接信息(建议先在DB Browser里配置一个数据库连接，因为后面实体映射也将要用到DB Browser)，在Next下一步里选择创建一个SessionFactory类，输入Java package包名，如果没有预先创建好可以选择后面New新建一个，Finish完成之后项目就会添加Hibernate3.1 Core Libraries核心标签库，以及HibernateSessionFactory类和hibernate.cfg.xml数据库连接配置文件。</p>
<p style="text-indent: 2em;"><strong id="t2">二、使用Hibernate映射数据库到实体类</strong></p>
<p style="text-indent: 2em;">配置好Hibernate的连接之后，我们需要对数据库表进行与实体映射，打开DB Browser数据库浏览器，找到要映射的表右击Hibernate Reverse Engineering，Hibernate会根据数据库表反向生成实体类，这里我们预先在数据库里创建一个FA_User表，SQL语句如下：</p>
<pre><div class="code"><div><span style="color: #0000ff;">create</span><span style="color: #000000;"> </span><span style="color: #0000ff;">table</span><span style="color: #000000;"> FA_User(<br />    userid </span><span style="color: #0000ff;">number</span><span style="color: #000000;"> </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,<br />    username </span><span style="color: #0000ff;">varchar2</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">20</span><span style="color: #000000;">) </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,<br />    password </span><span style="color: #0000ff;">varchar</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">32</span><span style="color: #000000;">) </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,<br />    usernike </span><span style="color: #0000ff;">varchar2</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">20</span><span style="color: #000000;">),<br />    regtime date </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,<br />    </span><span style="color: #0000ff;">constraint</span><span style="color: #000000;"> PK_FA_User </span><span style="color: #0000ff;">primary</span><span style="color: #000000;"> </span><span style="color: #0000ff;">key</span><span style="color: #000000;">(userid)<br />);</span></div></div></pre>
<p style="text-indent: 2em;">&nbsp;在Hibernate Reverse Engineering映射选项里，先选择Java src folder添加到的包文件夹，勾选Hibernate mapping file(*.hbm.xml) for each database table，将产生一个实体映射到对应表的xml配置文件；勾选Java Data Object (POJO &lt;&gt; DB Table)，将根据数据库表结构反向产生一个Java实体类，取消Create abstract class选项将不创建为抽象类，默认为implements实现java.io.Serializable可序列化的实体类，当然可为实体类指定Base persistent class基类；勾选Java Data Access Object (DAO)，会创建实体类的数据访问类(DAO)，这里我们勾选选择产生，Next下一步类可配置映射的一些选项，如在Customized Type Mappings里我们可以自定义数据库类型映射到实体的类型，这里我们按默认就好，Next下一步，选择表后在右边输入映射的Class name类和ID Generator主键生成类型，类名注意是要包括包的全名，主键类型则应该根据连接的数据库类定，如mysql为auto_increment自动增加主键类型应该选increment，sqlserver数据库自增则选择identity，这么我们使用oracle序列则选择sequence，大家也可以去研究其他类型的用法。下面Include referenced tables (A-&gt;B)和Include referenced tables (A&lt;-B)可以包含A引用表和被引用表，在实体里面将创建各引用表的对应关系。完成之后工程将新加如下文件：</p>
<div style="font-size: 14px; line-height: 30px;">
<table border="1" cellpadding="2" style="border-collapse: collapse; border: #ccc 1px solid;">
<tbody>
<tr style="background-color: #e9e9e9;">
<td style="text-align: center;"><strong>名称</strong></td>
<td style="text-align: center;"><strong>描述</strong></td>
</tr>
<tr>
<td>IBaseHibernateDAO</td>
<td>数据库访问会话接口</td>
</tr>
<tr>
<td>BaseHibernateDAO</td>
<td>IBaseHibernateDAO接口实现类，数据访问基类</td>
</tr>
<tr>
<td>HibernateSessionFactory</td>
<td>会话工厂实现类</td>
</tr>
<tr>
<td>UserDAO</td>
<td>User表数据访问类</td>
</tr>
<tr>
<td>User</td>
<td>User实体类</td>
</tr>
<tr>
<td>User.hbm.xml</td>
<td>User表映射对应关系配置文件</td>
</tr>
</tbody>
</table>
</div>
<p style="text-indent: 2em;"><strong id="t3">三、创建struts应用程序</strong></p>
<p style="text-indent: 2em;">上面配置好Hibernate数据访问框架后，我们来创建一个Struts简单应用程序使用Hibernate访问数据库，首先需要在工程里添加对Struts的引用，右击项目工程在菜单中选择MyEclipse项中的Add Struts Capabilities，选择Struts 1.2版本，修改Base package for new classes默认创建的action包名，点击完成添加对Struts标签库的使用。下面我们先完成一个简单的添加用户功能，先新建useradd.jsp页面，然后依次新建Struts From(UserFrom)和Struts Action(UserAction)。为了更好的配合Hibernate，在Struts From里直接使用Hebernate生成的实体类做为表单元素，同时便于维护，避免创建多个结构相同的表单，UserFrom代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">package</span><span style="color: #000000;"> struts.form;<br /><br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> java.util.List;<br /><br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> javax.servlet.http.HttpServletRequest;<br /><br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> org.apache.struts.action.ActionErrors;<br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> org.apache.struts.action.ActionForm;<br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> org.apache.struts.action.ActionMapping;<br /><br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> UserForm </span><span style="color: #0000ff;">extends</span><span style="color: #000000;"> ActionForm {<br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> hb.User user = <span style="color: #0000ff;">new</span> hb.User();
<br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> List list;<br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> List getList() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> list;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setList(List list) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list </span><span style="color: #000000;">=</span><span style="color: #000000;"> list;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> hb.User getUser() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> user;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setUser(hb.User user) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.user </span><span style="color: #000000;">=</span><span style="color: #000000;"> user;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> ActionErrors validate(ActionMapping mapping,<br />            HttpServletRequest request) {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;"> TODO Auto-generated method stub</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> reset(ActionMapping mapping, HttpServletRequest request) {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;"> TODO Auto-generated method stub</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    }<br />}</span></div></div></pre>
<p style="text-indent: 2em;">要注意上面的Struts Form使用的是user对象里面的字段，所以一定要默认初始化，不然将会出错。同时修改对应的useradd.jsp页面：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">pre </span><span style="color: #ff0000;">style</span><span style="color: #0000ff;">="color:red"</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">html:errors </span><span style="color: #0000ff;">/&gt;&lt;/</span><span style="color: #800000;">pre</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:form </span><span style="color: #ff0000;">action</span><span style="color: #0000ff;">="/user.do"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />      用户名：<br />      </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:text </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="user.username"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:text</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />      密　码：<br />      </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:password </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="user.password"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:password</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />      昵　称：<br />      </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:text </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="user.usernike"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:text</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />      </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:submit </span><span style="color: #ff0000;">value</span><span style="color: #0000ff;">="提交"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:submit</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">html:form</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<p style="text-indent: 2em;">注意上面property与实体属性的对应关系，在提交表单的时候，表单的值将填充到对应的property属性，在Struts Action里我们对输入的值进行一个简单的效验，execute方法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">UserForm userForm </span><span style="color: #000000;">=</span><span style="color: #000000;"> (UserForm) form;<br />ActionMessages errors </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessages();<br />hb.UserDAO dao </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> hb.UserDAO();<br />String username </span><span style="color: #000000;">=</span><span style="color: #000000;"> userForm.getUser().getUsername(),password </span><span style="color: #000000;">=</span><span style="color: #000000;"> userForm.getUser().getPassword();<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;">( username</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">||</span><span style="color: #000000;"> username.trim().length()</span><span style="color: #000000;">==</span><span style="color: #000000;">0</span><span style="color: #000000;">)<br />{<br />    errors.add(</span><span style="color: #000000;">"</span><span style="color: #000000;">username</span><span style="color: #000000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">用户名不能为空\n</span><span style="color: #000000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />}<br /></span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( dao.findByUsername(username).size() </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">)<br />{<br />    errors.add(</span><span style="color: #000000;">"</span><span style="color: #000000;">username</span><span style="color: #000000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">用户名已经存在\n</span><span style="color: #000000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />}<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;">( password</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">||</span><span style="color: #000000;"> password.length() </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">)<br />{<br />    errors.add(</span><span style="color: #000000;">"</span><span style="color: #000000;">password</span><span style="color: #000000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">密码不能为空\n</span><span style="color: #000000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />}<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;">( errors.size() </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;"> )<br />{<br />    </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.saveErrors(request,errors);<br />    </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> mapping.getInputForward();<br />}<br />userForm.getUser().setRegtime(</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> java.util.Date());<br />dao.merge(userForm.getUser());<br /></span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionRedirect(</span><span style="color: #000000;">"</span><span style="color: #000000;">/index.jsp?msg=success</span><span style="color: #000000;">"</span><span style="color: #000000;">);</span></div></div></pre>
<p style="text-indent: 2em;">编译重新运行，跳转提示保存成功，我们在来看下数据库，唉，数据库里没有记录，没有插入成功？这是因为Hibernate的默认merge方法里没有提交事务的原因，修改merge方法如下以进行提交。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">public</span><span style="color: #000000;"> User merge(User user) {<br />    Session session </span><span style="color: #000000;">=</span><span style="color: #000000;"> getSession();<br />    Transaction tr </span><span style="color: #000000;">=</span><span style="color: #000000;"> session.beginTransaction();<br />    </span><span style="color: #0000ff;">try</span><span style="color: #000000;"> {<br />        tr.begin();<br />        User result </span><span style="color: #000000;">=</span><span style="color: #000000;"> (User) session.merge(user);<br />        tr.commit();<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> result;<br />    } </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> (RuntimeException re) {<br />        tr.rollback();<br />        </span><span style="color: #0000ff;">throw</span><span style="color: #000000;"> re;<br />    }<br />}</span></div></div></pre>
<p style="text-indent: 2em;">当然我们也可以在hibernate.cfg.xml配置文件里进行全局设置，在session-factory节点下增加&lt;property name="connection.autocommit"&gt;true&lt;/property&gt;设置Hibernate默认提交事物，另外我们还需要注意Hibernate对象有三种状态，各种保存方法存在很大的区别，Eclipse自动生成的方法如下：</p>
<table border="1" cellpadding="2" style="border-collapse: collapse; border: #ccc 1px solid;">
<tbody>
<tr style="background-color: #e9e9e9;">
<td style="text-align: center;"><strong>方法名</strong></td>
<td style="text-align: center;"><strong>备注</strong></td>
</tr>
<tr>
<td>save</td>
<td>把一个新的对象保存</td>
</tr>
<tr>
<td>delete</td>
<td>删除，持久化实例调用变成脱管状态</td>
</tr>
<tr>
<td>findById</td>
<td>按ID查询数据</td>
</tr>
<tr>
<td>findByExample</td>
<td>按传入实体对象所有字段值条件查询</td>
</tr>
<tr>
<td>findByProperty</td>
<td>按某一字段属性值查</td>
</tr>
<tr>
<td>findAll</td>
<td>返回所有</td>
</tr>
<tr>
<td>merge</td>
<td>想当于save or update，并把一个游离态状态的对象转换为一个持久态对象，且返回这个对象</td>
</tr>
<tr>
<td>attachDirty</td>
<td>将传入的对象持久化并保存</td>
</tr>
<tr>
<td>attachClean</td>
<td>
<p>将传入的对象状态设置为Transient瞬态或者自由态</p>
</td>
</tr>
</tbody>
</table>
<p style="text-indent: 2em;">更多Hibernate对象状态和方法的详细介绍：<a target="_blank" href="http://www.blogjava.net/dreamstone/archive/2007/07/29/133071.html" title="hibernate的各种保存方式的区别 (save,persist,update,saveOrUpdte,merge,flush,lock)">http://www.blogjava.net/dreamstone/archive/2007/07/29/133071.html</a></p>
<p style="text-indent: 2em;">更多Hibernate查询化语言HQL：<a target="_blank" href="http://blog.csdn.net/wllyy189/archive/2007/08/19/1750240.aspx" title="Hibernate Query Language ">http://blog.csdn.net/wllyy189/archive/2007/08/19/1750240.aspx</a></p>
<p style="text-indent: 2em;"><strong id="t4">四、使用DispatchAction类执行不同方法</strong></p>
<p style="text-indent: 2em;">DispatchAction是继承自org.struts.action.Action的抽象类，它会根据request中的parameter来执行相应的方法，通个这个Action类可以将不同的Action集中到一个Action文件中来。还是以上面User为例，之前在UserAction的execute方法中实现了useradd添加用户功能，那我们现在继续在UserAction实现login用户登陆功能。首先需要修改struts-config.xml配置文件的Action的parameter为"action"，那么在UserAction里将根据参数action执行方法，注意不要在UserAction里重写execute方法，不然不会执行对应的方法，unspecified是默认执行方法，另外所有执行方法的参数和返回类型必须和execute方法相同，UserAction代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> UserAction extends org.apache.struts.actions.DispatchAction {<br />    <br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">默认执行方法</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> ActionForward unspecified(ActionMapping mapping, ActionForm form,<br />            HttpServletRequest request, HttpServletResponse response) {<br />        </span><span style="color: #0000ff;">try</span><span style="color: #000000;"> {<br />            response.getOutputStream().print(</span><span style="color: #800000;">"</span><span style="color: #800000;">unspecified default method</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br />        } </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> (IOException e) {<br />            </span><span style="color: #008000;">//</span><span style="color: #008000;"> TODO Auto-generated catch block</span><span style="color: #008000;"><br /></span><span style="color: #000000;">            e.printStackTrace();<br />        }<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br />    }<br />    <br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">添加用户</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> ActionForward add(ActionMapping mapping, ActionForm form,<br />            HttpServletRequest request, HttpServletResponse response) {<br />        UserForm userForm </span><span style="color: #000000;">=</span><span style="color: #000000;"> (UserForm) form;<br />        ActionMessages errors </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessages();<br />        hb.UserDAO dao </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> hb.UserDAO();<br />        String username </span><span style="color: #000000;">=</span><span style="color: #000000;"> userForm.getUser().getUsername(),password </span><span style="color: #000000;">=</span><span style="color: #000000;"> userForm.getUser().getPassword();<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( username</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">||</span><span style="color: #000000;"> username.trim().length()</span><span style="color: #000000;">==</span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />        {<br />            errors.add(</span><span style="color: #800000;">"</span><span style="color: #800000;">username</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #800000;">"</span><span style="color: #800000;">用户名不能为空\n</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( dao.findByUsername(username).size() </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />        {<br />            errors.add(</span><span style="color: #800000;">"</span><span style="color: #800000;">username</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #800000;">"</span><span style="color: #800000;">用户名已经存在\n</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( password</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">||</span><span style="color: #000000;"> password.length() </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />        {<br />            errors.add(</span><span style="color: #800000;">"</span><span style="color: #800000;">password</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #800000;">"</span><span style="color: #800000;">密码不能为空\n</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( errors.size() </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;"> )<br />        {<br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.saveErrors(request,errors);<br />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionForward(</span><span style="color: #800000;">"</span><span style="color: #800000;">/useradd.jsp</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br />        }<br />        userForm.getUser().setRegtime(</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> java.util.Date());<br />        dao.merge(userForm.getUser());<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionRedirect(</span><span style="color: #800000;">"</span><span style="color: #800000;">/index.jsp?msg=success</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br />    }<br />    <br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">登陆</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> ActionForward login(ActionMapping mapping, ActionForm form,<br />            HttpServletRequest request, HttpServletResponse response) {<br />        UserForm userForm </span><span style="color: #000000;">=</span><span style="color: #000000;"> (UserForm) form;<br />        ActionMessages errors </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessages();<br />        hb.UserDAO dao </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> hb.UserDAO();<br />        String username </span><span style="color: #000000;">=</span><span style="color: #000000;"> userForm.getUser().getUsername(),password </span><span style="color: #000000;">=</span><span style="color: #000000;"> userForm.getUser().getPassword();<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( username</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">||</span><span style="color: #000000;"> username.trim().length()</span><span style="color: #000000;">==</span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />        {<br />            errors.add(</span><span style="color: #800000;">"</span><span style="color: #800000;">username</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #800000;">"</span><span style="color: #800000;">用户名不能为空\n</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( password</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">||</span><span style="color: #000000;"> password.length() </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />        {<br />            errors.add(</span><span style="color: #800000;">"</span><span style="color: #800000;">password</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #800000;">"</span><span style="color: #800000;">密码不能为空\n</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( dao.login(username, password)</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br />        {<br />            errors.add(</span><span style="color: #800000;">"</span><span style="color: #800000;">username</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #800000;">"</span><span style="color: #800000;">用户名或密码错误\n</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( errors.size() </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;"> )<br />        {<br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.saveErrors(request,errors);<br />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionForward(</span><span style="color: #800000;">"</span><span style="color: #800000;">/login.jsp</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br />        }<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionRedirect(</span><span style="color: #800000;">"</span><span style="color: #800000;">/index.jsp?msg=success</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br />    }<br />    <br />}</span></div></div></pre>
<p style="text-indent: 2em;">那jsp页面action的提交地址也要相应的改变，通过/user.do?method=add传递parameter中参数调用相应的方法，struts-config.xml配置文件内容如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;?</span><span style="color: #ff00ff;">xml version="1.0" encoding="UTF-8"</span><span style="color: #0000ff;">?&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;!</span><span style="color: #ff00ff;">DOCTYPE struts-config PUBLIC "-//Apache Software Foundation//DTD Struts Configuration 1.2//EN" "http://struts.apache.org/dtds/struts-config_1_2.dtd"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">struts-config</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">data-sources </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">form-beans </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">form-bean </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="userForm"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.form.UserForm"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">form-beans</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">global-exceptions </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">global-forwards </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />      </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">forward </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="userlist"</span><span style="color: #ff0000;"> path</span><span style="color: #0000ff;">="/index.jsp"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">forward</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">global-forwards</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action-mappings </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action<br />      </span><span style="color: #ff0000;">parameter</span><span style="color: #0000ff;">="action"</span><span style="color: #ff0000;"><br />      name</span><span style="color: #0000ff;">="userForm"</span><span style="color: #ff0000;"><br />      path</span><span style="color: #0000ff;">="/user"</span><span style="color: #ff0000;"><br />      scope</span><span style="color: #0000ff;">="request"</span><span style="color: #ff0000;"><br />      type</span><span style="color: #0000ff;">="struts.action.UserAction"</span><span style="color: #ff0000;"><br />      validate</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">action-mappings</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">message-resources </span><span style="color: #ff0000;">parameter</span><span style="color: #0000ff;">="ApplicationResources"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">struts-config</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<p style="text-indent: 2em;">Struts除此之外还有LookupDispatchAction、MappingDispatchAction两种类型的Action，这里简单的介绍下：LookupDispatchAction继承自DispatchAction，它的相应方法的执行由 ActionMapping中parameter属性决定。它适合在一个form中有很多按钮，按不同的按钮则执行不同的操作，同时在Action中必须实现getKeyMethodMap方法返回HashMap按钮和调用方法的键值对。MappingDispatchAction同样继承自DispatchAction，它的相应方法的执行由 ActionMapping中parameter名决定，注意这里和LookupDispatchAction不同，它是通过struts-config.xml将多个action-mapping映射到同一个Action类的不同方法上，也就是说在struts-config.xml配置多个Action指向同一个Action类但不同方法上。上面add和login这个方法的配置就应该为：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action </span><span style="color: #ff0000;">path</span><span style="color: #0000ff;">="/user/add"</span><span style="color: #ff0000;"> parameter</span><span style="color: #0000ff;">="add"</span><span style="color: #ff0000;"><br />     name</span><span style="color: #0000ff;">="userForm"</span><span style="color: #ff0000;"> scope</span><span style="color: #0000ff;">="request"</span><span style="color: #ff0000;"> <br />     type</span><span style="color: #0000ff;">="struts.action.UserAction"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action </span><span style="color: #ff0000;">path</span><span style="color: #0000ff;">="/user/login"</span><span style="color: #ff0000;"> parameter</span><span style="color: #0000ff;">="login"</span><span style="color: #ff0000;"><br />     name</span><span style="color: #0000ff;">="userForm"</span><span style="color: #ff0000;"> scope</span><span style="color: #0000ff;">="request"</span><span style="color: #ff0000;"> <br />     type</span><span style="color: #0000ff;">="struts.action.UserAction"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span></div></div></pre>
<p style="text-indent: 2em;"><strong id="t5">五、部署到Linux的Webligic应用服务器</strong></p>
<p style="text-indent: 2em;">以我公司的Redhat Linux AS4服务器为例，首先需要下载一个Weblogic安装程序，由于bea被oracle收购了，所以去oracle网站<a href="http://download.oracle.com/otn/linux/middleware/11g/wls/oepe11_ccjk_wls1031_linux32.bin">http://download.oracle.com/otn/linux/middleware/11g/wls/oepe11_ccjk_wls1031_linux32.bin</a>下载一个linux版安装包，这里提醒大家不要去下载在线安装的，我因为用在线安装出错而重新安装了好几次，安装会默认装好JDK，这样我们创建一个weblogic的虚拟目录就能用了，weblogic安装完成后有一个<a target="_blank" href="http://localhost:7001/console">http://localhost:7001/console</a>的Web控制台，如果安装没有创建一个domain的话我们可以进那里创建一个。我的默认安装主目录是/root/Oracle/Middleware/，默认域网站目录为/root/Oracle/Middleware/user_projects/domains/base_domain/autodeploy，只要我们把打包好的网站上传到该目录即可，启动服务执行/root/Oracle/Middleware/user_projects/domains/base_domain/startWebLogic.sh。</p>
<p style="text-indent: 2em;">由于使用的是Linux服务器，而开发我们是使用Windows系统，上传发布网站文件共享可使用Samba服务，Linux默认是关闭Samba服务的，使用service smb start命令可开启服务，下面在Linux下简单配置一个匿名用户可读可写的权限，vi /etc/samba/smb.conf修改smb配置文件内容如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">[</span><span style="color: #0000ff;">global</span><span style="color: #000000;">]<br />workgroup </span><span style="color: #000000;">=</span><span style="color: #000000;"> FA<br />netbios name </span><span style="color: #000000;">=</span><span style="color: #000000;"> Linux<br />server </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> </span><span style="color: #000000;">=</span><span style="color: #000000;"> Linux Samba Server<br />security </span><span style="color: #000000;">=</span><span style="color: #000000;"> share<br /><br />[weblogic]<br />        path </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">/</span><span style="color: #000000;">root</span><span style="color: #000000;">/</span><span style="color: #000000;">Oracle</span><span style="color: #000000;">/</span><span style="color: #000000;">Middleware<br />        writeable </span><span style="color: #000000;">=</span><span style="color: #000000;"> yes<br />        browseable </span><span style="color: #000000;">=</span><span style="color: #000000;"> yes<br />        guest ok </span><span style="color: #000000;">=</span><span style="color: #000000;"> yes</span></div></div></pre>
<p style="text-indent: 2em;">第二步，建立相应目录并授权，使用命令chown -R nobody:nobody /root/Oracle/Middleware为匿名用户和匿名用户组授权/root/Oracle/Middleware目录，service smb restart重起smb服务，windows下使用\\Linux就能访问到共享的Middleware目录，将部署好的Java工程项目拷贝到/root/Oracle/Middleware/user_projects/domains/base_domain/autodeploy目录下，使用http://192.168.0.249:7001/context就能访问到对应网站。这里要注意在weblogic中的路径问题，使用class.getClassLoader().getResource("").getPath()获取资源文件路径得到的不是WEB-INF/classes目录，而是webloic的lib主目录/root/Oracle/Middleware/wlserver_10.3/common/lib，而tomcat里正常。另外在weblogic里部署网站时候一些hibernate类文件也提示没有加载，后来在网站WEB-INF目录下增加weblogic.xml配置文件修改类的加载路径后解决。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;?</span><span style="color: #ff00ff;">xml version="1.0" encoding="UTF-8"</span><span style="color: #0000ff;">?&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">weblogic-web-app </span><span style="color: #ff0000;">xmlns</span><span style="color: #0000ff;">="http://www.bea.com/ns/weblogic/90"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">charset-params</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">input-charset</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />          </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">resource-path</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">/*</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">resource-path</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />          </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">java-charset-name</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">UTF-8</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">java-charset-name</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">input-charset</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">charset-params</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">context-root</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Hibernate</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">context-root</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">container-descriptor</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">  <br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">prefer-web-inf-classes</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">true</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">prefer-web-inf-classes</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">  <br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">container-descriptor</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">weblogic-web-app</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/java/">Java</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2010-01-06 19:59</li>
				<li>update@ 2010-01-08 20:00:26</li>
				<li>阅读(<span id="articleClick">12093</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/java/78.aspx">Java工厂模式切换数据库</a></li>
<li>下一篇：<a href="/jonllen/java/102.aspx">Java和.Net三层架构和MVC</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=100&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/java/100.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=100";
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