
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>门户网站的形成—CMS内容管理系统 - Asp.Net - 金龙博客</title>
<meta name="description" content="终于可以稍微停下来不用加班了，这是我进时代财富?过得最轻松的一个双休，总算是可以放下心来好好的调整一下。话说我三月份开始在时代财富公司上班，那怎一个忙字了得？别以为你是刚进公司新员工就要有一个适应环境的过程为由，工作上可以给你放宽一下，刚进公司Earth给我一个事例，是公司.Net框架的应用，因为我们公司是有自己的开发框架(Studio)，几乎所有项目都依赖此框架进行开发的，所以我进了这个公司第一件事就是了解整个框架的开发使用流程，大概花了半天时间来看，然后又花了约两天时间用此框架做一个产品及其分类的增删改查的简单例子，交工！感觉用起公司那个Studio框架还行，有自己的分页控件，用工具自动生成实体及基本增删改查类，使用反射DataTable来填充实体值并返回(泛型数组)，然后对数据库的访问是以接口的方式提供，即创建的所有ADO.Net对象都是使用接口根据Web.Config配置最终来决定实例化的子对象(SQLServer或Oracle数据访问对象),此种方式略有不同于PetShop的工厂模式，PetShop里有一层sealed类根据Web.Config配置来决定接口实例化子类(SQLServerDAL或OracleDAL),所有DAL都单独实现了接口里所有方法等，并是针对自身的差异来一一详细实现，如SQLServ" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-04-25' } );
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
		     > <a href="/jonllen/aspnet/26.aspx">门户网站的形成—CMS内容管理系统</a>
		</div>
        <div class="article">
			<div class="title"><h2>门户网站的形成—CMS内容管理系统</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 16px; line-height: 30px;">
<p style="text-indent: 2em;">终于可以稍微停下来不用加班了，这是我进<a href="http://www.fortuneage.com/" target="_blank">时代财富</a>过得最轻松的一个双休，总算是可以放下心来好好的调整一下。话说我三月份开始在时代财富公司上班，那怎一个忙字了得？别以为你是刚进公司新员工就要有一个适应环境的过程为由，工作上可以给你放宽一下，刚进公司Earth给我一个事例，是公司.Net框架的应用，因为我们公司是有自己的开发框架(Studio)，几乎所有项目都依赖此框架进行开发的，所以我进了这个公司第一件事就是了解整个框架的开发使用流程，大概花了半天时间来看，然后又花了约两天时间用此框架做一个产品及其分类的增删改查的简单例子，交工！感觉用起公司那个Studio框架还行，有自己的分页控件，用工具自动生成实体及基本增删改查类，使用反射DataTable来填充实体值并返回(泛型数组)，然后对数据库的访问是以接口的方式提供，即创建的所有ADO.Net对象都是使用接口根据Web.Config配置最终来决定实例化的子对象(SQLServer或Oracle数据访问对象),此种方式略有不同于PetShop的工厂模式，PetShop里有一层sealed类根据Web.Config配置来决定接口实例化子类(SQLServerDAL或OracleDAL),所有DAL都单独实现了接口里所有方法等，并是针对自身的差异来一一详细实现，如SQLServer和Oracle的TSQL语法可能会不一样，譬如Oracle没有自增编号只能用序列，或传递参数使用":="等，这样来根据数据库的不同而分别进行实现确保万无一失！但是这样你会比较麻烦，比如你写个订单的处理的DAL,你在SQLServerDAL里必须完成订单的增删改查的方法，你在OracleDAL里也必须完成订单的增删改查的方法，而我们在实际项目中应该也是二选其一吧，要么SQLServer要么Oracle数据库，仅当数据库相互移植的时候才会觉得写了有用，但当客户移植数据库的时候我想就不单只在Web.Config文件内改一下配置那么简单了吧？所以我觉得PetShop这种模式大家在实际应用的还是比较少的。那么使用接口来创建ADO.Net对象具体又是如何来实现根据Web.Config文件内配置访问不同的数据库呢？请看如下代码：</p>
<pre><div id="codehighlightermain_633744416393437500" style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #008080;">1</span> <span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">2</span> <span style="color: #808080;">///</span><span style="color: #008000;"> DataBase Type<br /></span><span style="color: #008080;">3</span> <span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #808080;"><br /></span><span style="color: #008080;">4</span> <span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">enum</span><span style="color: #000000;"> DatabaseType : </span><span style="color: #0000ff;">int</span><span style="color: #000000;"><br /></span><span style="color: #008080;">5</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">6</span> <span style="color: #000000;">SqlServer </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">, <br /></span><span style="color: #008080;">7</span> <span style="color: #000000;">Oracle </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">2</span><span style="color: #000000;">,<br /></span><span style="color: #008080;">8</span> <span style="color: #000000;">Access </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">3</span><span style="color: #000000;">,<br /></span><span style="color: #008080;">9</span> <span style="color: #000000;">OleDb </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">4</span><span style="color: #000000;"><br /></span><span style="color: #008080;">10</span> <span style="color: #000000;">}<br /></span><span style="color: #008080;">11</span> <span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">12</span> <span style="color: #808080;">///</span><span style="color: #008000;"> 创建一个数据库连接<br /></span><span style="color: #008080;">13</span> <span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #808080;"><br /></span><span style="color: #008080;">14</span> <span style="color: #0000ff;">protected</span><span style="color: #000000;"> IDbConnection NewConnection()<br /></span><span style="color: #008080;">15</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">16</span> <span style="color: #0000ff;">switch</span><span style="color: #000000;">(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.DBType)<br /></span><span style="color: #008080;">17</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">18</span> <span style="color: #0000ff;">case</span><span style="color: #000000;"> DatabaseType.SqlServer:<br /></span><span style="color: #008080;">19</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">20</span> <span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlConnection(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.ConnectionString);<br /></span><span style="color: #008080;">21</span> <span style="color: #000000;">}<br /></span><span style="color: #008080;">22</span> <span style="color: #0000ff;">case</span><span style="color: #000000;"> DatabaseType.Oracle:<br /></span><span style="color: #008080;">23</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">24</span> <span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OracleConnection(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.ConnectionString);<br /></span><span style="color: #008080;">25</span> <span style="color: #000000;">}<br /></span><span style="color: #008080;">26</span> <span style="color: #0000ff;">case</span><span style="color: #000000;"> DatabaseType.Access:<br /></span><span style="color: #008080;">27</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">28</span> <span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OleDbConnection(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.ConnectionString);<br /></span><span style="color: #008080;">29</span> <span style="color: #000000;">}<br /></span><span style="color: #008080;">30</span> <span style="color: #0000ff;">case</span><span style="color: #000000;"> DatabaseType.OleDb:<br /></span><span style="color: #008080;">31</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">32</span> <span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OleDbConnection(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.ConnectionString);<br /></span><span style="color: #008080;">33</span> <span style="color: #000000;">}<br /></span><span style="color: #008080;">34</span> <span style="color: #0000ff;">default</span><span style="color: #000000;">:<br /></span><span style="color: #008080;">35</span> <span style="color: #000000;">{<br /></span><span style="color: #008080;">36</span> <span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlConnection(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.ConnectionString);<br /></span><span style="color: #008080;">37</span> <span style="color: #000000;">}<br /></span><span style="color: #008080;">38</span> <span style="color: #000000;">}<br /></span><span style="color: #008080;">39</span> <span style="color: #000000;">}</span></div>
</div>
</pre>
<p style="text-indent: 2em;">上述所示代码是根据不同DatabaseType数据库类型枚举值来创建数据库连接对象，当然这个DatabaseType也可以从Web.Config配置文件内读取，根据不同DatabaseType我们还可以创建IDbDataParameter、IDataReader、IDbCommand等对象，返回的为接口实例，而我们在使用的时候便是用接口代替平常SQLServer或Oracle的ADO.Net对象。一个较完整的数据库查询如下：</p>
<div style="background-color: #efefef;">
<div id="codehighlightermain_633744437732968750" style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> 根据数据库类型枚举值、SQL语句、连接数据库接口实例返回DataSet集合<br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="dbtype"&gt;</span><span style="color: #008000;">数据库类型枚举值</span><span style="color: #808080;">&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="query"&gt;</span><span style="color: #008000;">SQL语句</span><span style="color: #808080;">&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="con"&gt;</span><span style="color: #008000;">已创建好的连接数据库接口实例</span><span style="color: #808080;">&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;</span><span style="color: #008000;">DataSet数据集</span><span style="color: #808080;">&lt;/returns&gt;</span><span style="color: #808080;"><br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> DataSet GetDataSet(DataBaseType dbtype, </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> query, IDbConnection con)<br />{<br />IDbDataAdapter da;<br /></span><span style="color: #0000ff;">switch</span><span style="color: #000000;"> (dbtype)<br />{<br /></span><span style="color: #0000ff;">case</span><span style="color: #000000;"> DataBaseType.Access:<br />da </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OleDbDataAdapter(query, (OleDbConnection)con);<br /></span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">case</span><span style="color: #000000;"> DataBaseType.Oracle:<br />da </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OracleDataAdapter(query, (OracleConnection)con);<br /></span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">default</span><span style="color: #000000;">:<br />da </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlDataAdapter(query, (SqlConnection)con);<br /></span><span style="color: #0000ff;">break</span><span style="color: #000000;">;<br />}<br />DataSet ds </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> DataSet();<br />da.Fill(ds);<br /></span><span style="color: #0000ff;">return</span><span style="color: #000000;"> ds;<br />}</span></div>
</div>
</div>
<p style="text-indent: 2em;">如此一来，我们便可以根据不同DataBaseType来执行查询，以此类推我们可以使用传递接口的方法来实现增删改等，DataBaseType枚举值决定它执行实例化的子对象，我是觉得这样来执行不同数据库的操作很是方便，不知大家对我的这种方式是否认可？公司里面的Studio里实现不同数据库访问跟我上面写的又有写区别，它里面有个IDbExecutor接口类，注释为数据存取器(执行者)接口，里面规范约束了所有增删改查的方法也都是返回接口类型，它有三个实现类OleDbExecutor、OracleDbExecutor、SqlDbExecutor，是针对不同数据库访问的具体实现，相当于SQLHelper的功能，这个时候每个实现类已明确了各自访问数据库的类型，但是它们一些方法的参数接受的仍然是接口类型，因为只有这样在调用的时候对不同数据库的访问的才能做到通用性，只传递公共的参数类型，那便是接口。所以总体来说是大同小异！</p>
<p style="text-indent: 2em;">那么，是不是这样去实现对数据库访问层就真的会通用了？不完全是！我们似乎还忘记了一个最重要的东西，那就是每种数据库会有些不同的TSQL语法。就如上面所提到Oracle没有自动增加编号只能用序列，对于这点我们公司好象数据库有个表来存其他表的当前编号，有个存储过程专用来取某个表的当前编号，相信为了是实现兼容Oracle的序列吧，但是我打开那个存储过程一看，发现有一个非常严重的问题：那就是没有处理并发！因为我以前也是用这种方法，就是直接取当前表的编号，然后修改编号为+1，以前和同事做过一个测试，就是我们两个人同时调用取表当前编号的那个存储过程，然后复制在查询分析器同时执行上千次，2个人一起按F5执行，结果发现2个人里有取了相同的编号！所以说使用这种方式做没一些处理是不行的，应该取时加上事物锁。</p>
<div style="background-color: #efefef;">
<div id="codehighlightermain_633744477112187500" style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">begin</span><span style="color: #000000;"> </span><span style="color: #0000ff;">tran</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">SELECT</span><span style="color: #000000;"> </span><span style="color: #008000;">@nextSequence</span><span style="color: #000000;"> </span><span style="color: #808080;">=</span><span style="color: #000000;"> nextSequence </span><span style="color: #0000ff;">FROM</span><span style="color: #000000;"> PU_Sequence ROWLOCK </span><span style="color: #0000ff;">WHERE</span><span style="color: #000000;"> tableName </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #008000;">@tableName</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">UPDATE</span><span style="color: #000000;"> PU_Sequence </span><span style="color: #0000ff;">SET</span><span style="color: #000000;"> nextSequence </span><span style="color: #808080;">=</span><span style="color: #000000;"> nextSequence </span><span style="color: #808080;">+</span><span style="color: #000000;"> </span><span style="font-weight: bold; color: #800000;">1</span><span style="color: #000000;"> </span><span style="color: #0000ff;">WHERE</span><span style="color: #000000;"> tableName </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #008000;">@tableName</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">commit</span></div>
</div>
</div>
<p style="text-indent: 2em;">加上以上事物处理后，经反复测试未取到相同的编号了。我们还使用同样的方法测试取@@identity，及对同一个表进行插入数据后取当前的自动增长编号,同样强度下使用@@identity未发现取到相同的自动增长编号，所以说使用@@identity并不会出现并发现象，SQLServer是经过处理的，所以没什么其他特殊的要求就使用@@identity自动增长编号吧，在这值得一提还有uniqueidentifier类型，SQL里面使用newid()来产生，程序里也可使用GUID来生成，几乎也不会出现相同情况，而且可以在SQL或在程序里方便获取，导数据也方便，听说比int类型主键做索引不会慢！</p>
<p style="text-indent: 2em;">好象说得又有点走题了，继续回到不同数据库的主键产生的话题上！SQLServer插入记录的时候自增编号列不需要指定，使用@@identity返回，而mqsql则需要指定自增编号为default，我们在SQLServer的条件判断可以轻松的使用case when [field] = 值 then 1 else 0 end，而Access的语法应为iif([field] = 值,1,0)；Access取当前时间为now()，SQLServer为getdate()，Oracle则为SYSDATE，而mqsql则为CURDATE()。所以，我们在切换访问不同数据库时候就不单只改变Web.Config配置文件那么简单了，我们得注意一下我们执行的TSQL语句了，因为每种数据库的SQL语法可能会略有差异，但是绝大部分的数据库的DML语句都通用，所以我们就得尽量取同求异了，比如时间我不在SQL语句里用函数获取，而在程序里面获取当前时间作为参数传入进去，这样使每种类型的数据库都能通用，如此一来我们在切换到另外一种数据库去执行该SQL语句也没问题了。</p>
<p style="text-indent: 2em;">又说了大堆废话回到主题，刚进公司约三、四天后，就忙得个昏天黑地的加班，我新进员工也未能幸免。一般是每晚都要加到10点左右，但是后来一天比一天加得晚，我记得我最晚打卡的一次是过了凌晨，每天没完没了的加，连周六整天也要加，就一个字累啊。让我们忙的焦头贴儿的是最近才中标的一个门户网站项目&mdash;<a href="http://www.citygf.com/" target="_blank">广佛都市网&trade;</a>，它是<a href="http://www.fsonline.com.cn/fscm/" target="_blank">佛山传媒集团,Inc.</a>下佛山新闻中心、佛山日报社、佛山电台搞的一个网站，算是佛山市政府的门户网站，金额达二百多万元人民币，是我们公司目前接的最大的一个网站项目，并且这个项目来得很急，给的时间也很短，只给一个月的时间，对，就一个月的时间必须出来一个门户网站，我们公司做技术的合起来大概也只有上十来个人，做设计的应该也只有寥寥可数的几人，在这短短的时间内完成一个这么大的门户网站几乎不可能，但我们却完成了这个不可能艰巨任务！</p>
<table style="width: 100%;" border="0">
<tr>
<td style="width: 332px; text-indent: 2em;" valign="top"><img src="/upload/jonllen/article/qq.jpg" width="332" height="368" /></td>
<td valign="top">
<p style="text-indent: 2em;">呵呵，来插一张我的同事们做完这个项目后QQ个个性签名的截图吧，看看，可想而知这个项目对我们的影响，甚至是对我们公司的影响是多么的大。对于我来说这次最大的收获是项目经验，能有机会参与这种门户网站的开发，并且学到了不少东西，体能相信也锻炼提升了不少！^_^!!!为什么这么说呢？因为这次我还被公司派到佛山传媒集团客户那边工作，哎，甭讲了，你别以为出差就是住酒店享福了，到那边工作可是番苦差啊。出差佛山工作一个星期，除开一天晚上没有加班，其余每天晚上基本到凌晨过后才走，还有一天晚上是通宵达旦，第二天继续工作...</p>
<p style="text-indent: 2em;">从来没有如此煎熬的工作过的我，那几天昏迷得不知是如何度过来的，还好去客户那边工作还不算特累，客户那边工作环境也很不错，吃的也不愁，就是要加班工作时间太长了，本来在那边就准备写篇博文的，后来发现真的难写完，现在那篇还空在那里待续呢！</p>
</td>
</tr>
</table>
<h4><strong>佛山新闻中心</strong></h4>
<p style="text-indent: 2em;"><img src="/upload/jonllen/article/fs.jpg" width="500" height="667" /></p>
<h4><strong>门户网站的形成&mdash;CMS内容管理系统</strong></h4>
<p style="text-indent: 2em;">这么大一个门户网站，N多个栏目,每个栏目下又有N多个频道难道都是靠我们技术一行行代码来实现动态输出的？答案是当然不会是！首先，项目的给你的时间不允许，如果说你每个页面都需要编码的话，那么你几百个页面不可能在一个月内完成的，这些页面的大小可不只就几KB的内容，而是每个页面都是几十KB，项目在那个时候也不能冒此风险。再着，作为门户网站内容多而访问速度要快，如果采用编码来实现又将需要考虑诸多网站性能运行效率问题。</p>
<p style="text-indent: 2em;">完成并非偶然，最终的解决方案为采用CMS内容管理系统。作为一个传媒、新闻、政府信息发布的网站，用得最多的就是类似一条新闻信息的录入后在进行发布，如果你的网站完成了这些信息前台的查询显示，那么你的网站已完成了70%，CMS内容管理系统便充当这些信息的进行有条不紊管理的工具。好象在中标时佛山客户那边已经决定要求使用CMS内容管理系统，我们采用的是<a href="http://www.trs.com.cn/" target="_blank">TRS&reg;</a>(2008 北京拓尔思信息技术股份有限公司)的WCM内容协作平台。这个TRS可不是省油的灯，除了有些功能实现不了外，要的钱也不少！好象我们做这个网站买它那个系统就要二十来万，不过的它的有些功能确实强大接近完美，且已经很成熟人性化，值得我们借鉴学习。</p>
<p style="text-indent: 2px;"><img src="/upload/jonllen/article/wcm.jpg" width="500" height="258" /></p>
<p style="text-indent: 2em;">对于一个CMS内容管理系统，信息的发布及展示是至关重要的一个核心环节，TRS采用模板技术，将所有频道、栏目、信息内容页页面根据所套用模板发布为静态页面。静态页面的生成完全根据模板的定义，所以我们工作就转嫁为写模板。它的模板里用于动态生成有它自己的一套标签，称之为TRS置标，它的写法也很简单，跟HTML标签的写法差不多，有属性可以进行嵌套，实现的功能类似于.Net里那些Repeater数据绑定控件，但它读取的数据大部分都是根据指定的ID，而ID则是频道或栏目的唯一编号，一个简单的例子：</p>
<div style="background-color: #e6e6e6; border: #cdcdcd 1px solid;">
<div id="codehighlightermain_633744845457031250" style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 98%; word-break: break-all; padding-top: 4px;">
<div><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">trs_documents </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="佛山产经"</span><span style="color: #ff0000;"> num</span><span style="color: #0000ff;">="10"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">h2 </span><span style="color: #ff0000;">class</span><span style="color: #0000ff;">="title"</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">trs_document </span><span style="color: #ff0000;">field</span><span style="color: #0000ff;">="docpeople"</span><span style="color: #ff0000;"> target</span><span style="color: #0000ff;">="_blank"</span><span style="color: #ff0000;"> autolink</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;&lt;/</span><span style="color: #800000;">h2</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p </span><span style="color: #ff0000;">class</span><span style="color: #0000ff;">="Abstract"</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">trs_document </span><span style="color: #ff0000;">field</span><span style="color: #0000ff;">="doccontent"</span><span style="color: #ff0000;"> num</span><span style="color: #0000ff;">="240"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">trs_documents</span><span style="color: #0000ff;">&gt;</span></div>
</div>
</div>
<p style="text-indent: 2em;">上述所示代码完成的是循环输出10条佛山产经的文档，怎么样？是不是用起来很方便！它那些置标还有很多的可选属性，如<span style="color: #ff0000;">field</span><span style="color: #0000ff;">="doccontent"</span>当前数据库输出显示字段，<span style="color: #ff0000;">autolink</span><span style="color: #0000ff;">="true"</span>是不是自动产生文档链接，<span style="color: #ff0000;">num</span><span style="color: #0000ff;">="240"</span>设置输出显示的文字长度等，如果是文档列表&lt;trs_documents&gt;还有where和order等属性，是直接能根据数据库表字段加条件或排序。</p>
<p style="text-indent: 2em;">对于栏目和频道，也有对应的&lt;trs_channels&gt;置标来输出，那它还提供一个当前位置&lt;trs_curpage&gt;的置标，你写在不同频道模板里能显示的当前所处的位置，相当于一个站点地图的功能。另外，它还提供文档附件(图片等)、滚动新闻(某个时间段)、相关新闻(自动配置到改文档的相关文档)、简单的条件判断输出等置标，方便实用。模板内动态输出的内容就用这些置标代替就有了，基本上能解决大部分页面内容的输出显示。</p>
<p style="text-indent: 2em;">模板：TRS把模板分为三类概览、细览和嵌套。所谓概览模板顾名思意，是页面整个概览所需套用的一种模板类型，如每个频道栏目的首页，大部分文章新闻都只显示一个标题，然后点链接进去才是看到具体文章的内容，此时这个页面应用的便是细览模板。针对某一个栏目或频道而言，它一般应需制作三个模板，首页、内页列表页、栏目或频道下文章的细览页，有些栏目或频道可能没有专门的首页就由列表页代替。列表页其实就是显示当前栏目或频道的所有子栏目频道，并各自显示头几条文章，并且都有more+链接以显示更多，链接跳转的就是到该子栏目频道的首页，如果无首页则一般应用显示列表页，依此循环递归，采用这种方式我们可以根据more+链接将看到一层层深入到子频道，很好的衔接而没有出现过一个死链接，不管你的栏目或频道有几层！而嵌套模板则是类似与.Net里面的用户控件，它是为了做到代码的重用性，比如我们网站的头部就可以做成一个嵌套模板，然后我们能分别在概览和细览模板里引用。</p>
<p style="text-indent: 2em;">栏目或频道一般需要套用首页和细览模板，其子栏目频道如无特别制作的主页则全部分别继承引用内页列表页和细览模板，文章应该是隶属于某个栏目频道，它无需单独每篇套用模板，而是应由所属栏目频道决定。那么我们在发布某一篇文章的时候则是根据所套用的细览模板重新生成改文章的内容页静态文件，而我们一般发布某个栏目或频道则是指套用概览模板生成该首页，TRS还提供增量发布、计划任务定时发布等。</p>
<p style="text-indent: 2em;">TRS将各种不同类型的文档单独分开来，有文字库(下面为网站&gt;&gt;栏目频道&gt;&gt;文档)，是最主要的部分、文章所存放的位置；还有图片库专门用来保存图片，并自动产生几种常用的规格大小的图片；以及视频库、资源库等，各司其职，并且相互能很好的调用。这样，各部分有序的组合起来，将栏目或频道及文章统一发布，并自动根据设置的存放位置进行发布静态文件记录保存其URL链接地址，一个门户网站的便这样生成了。</p>
<p style="text-indent: 2em;">我是没有用过其它的CMS内容管理系统，听说网上还有一些免费开源的，不知其它实现得是怎样的？不过我是感觉TRS的这个系统是不错，它把所有的页面根据模板全部生成静态页面访问速度那自然是没得话说，但殊不知这样做造成服务器上的文件太多而会产生一些影响，这个还得待网站录入上千万条以上数据后来考验了。</p>
<p style="font-size: 12px; text-indent: 2em;">注：以上<a href="http://www.fortuneage.com/" target="_blank">时代财富&copy;</a>、<a href="http://www.citygf.com/" target="_blank">广佛都市网&trade;</a>、<a href="http://www.fsonline.com.cn/fscm/" target="_blank">佛山传媒集团,Inc.</a>、<a href="http://www.trs.com.cn/" target="_blank">TRS&reg;</a>等微标版权属于原公司持有!!!</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-04-25 16:03</li>
				<li>update@ 2010-02-11 16:57:19</li>
				<li>阅读(<span id="articleClick">9817</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/21.aspx">.Net版(C#)的CMP模式(存储过程ORM)</a></li>
<li>下一篇：<a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=26&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/26.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=26";
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