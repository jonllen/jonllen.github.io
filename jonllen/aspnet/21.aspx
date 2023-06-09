
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>.Net版(C#)的CMP模式(存储过程ORM) - Asp.Net - 金龙博客</title>
<meta name="description" content="商城上线快2、3个月了，一直都懒得写点东西，在加上杂七杂八的事情也比较忙，所以都没有把这个系统当时做的整个架构思绪整理清，昨天才从深圳完了两天回来，怎感觉是要做的事来着.刚开始接触CMP模式的时候也是看了它几天,到谷歌百度里面一搜,我们博客园里面就有蛙蛙池塘的提高软件开发效率三板斧之二利用CMP模式一文里有它的详细介绍,在这里我自己也对这个用CMP模式拿来真正上项目时候的问题来做个总结.


项目描述:项目实现了商品的浏览筛选(主要是公司做的IT产品)、会员商品收藏、订购(订单)、发邮件推荐给朋友、会员积分、收货地址薄、DIY自主装机等,业务逻辑全部在本项目中用.NET(CMP)实现,而展示就不一定都是用.net的aspx页面来做,如DIY装机就是用Flex生成flash来实现的,但是它们都是同步的(同登陆同注销,包括会员产品收藏等).还有一个最重要的就是后台管理也是用Flex调用.net来实现的,由于要提供Flex调用的接口,所有还提供了几个WebService的页面(关与身份验证请见:在WebService中使用Session或Cookie---实现WebService身份验证(客户端是Flex) ),另外在用JQuery发送Ajax请求的时候页面传输数据时候还有用到Json数据(Flex好象有几个地方也用到了).
项目解决方案截" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2008-12-30' } );
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
		     > <a href="/jonllen/aspnet/21.aspx">.Net版(C#)的CMP模式(存储过程ORM)</a>
		</div>
        <div class="article">
			<div class="title"><h2>.Net版(C#)的CMP模式(存储过程ORM)</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<div style="padding-left: 20px; font-size: 14px; margin: 0px; font-family: Arial, Helvetica, sans-serif;">
<p style="text-indent: 2em;">商城上线快2、3个月了，一直都懒得写点东西，在加上杂七杂八的事情也比较忙，所以都没有把这个系统当时做的整个架构思绪整理清，昨天才从深圳完了两天回来，怎感觉是要做的事来着.刚开始接触CMP模式的时候也是看了它几天,到谷歌百度里面一搜,我们博客园里面就有<a href="http://www.cnblogs.com/onlytiancai/" target="_blank">蛙蛙池塘</a>的<a href="http://www.cnblogs.com/onlytiancai/archive/2005/07/06/187111.html" target="_blank">提高软件开发效率三板斧之二利用CMP模式</a>一文里有它的详细介绍,在这里我自己也对这个用CMP模式拿来真正上项目时候的问题来做个总结.</p>
</div>
<div style="font-size: 12px; margin: 0px; font-family: Arial, Helvetica, sans-serif;">
<ul>
<li>&nbsp;　项目描述:项目实现了商品的浏览筛选(主要是公司做的IT产品)、会员商品收藏、订购(订单)、发邮件推荐给朋友、会员积分、收货地址薄、DIY自主装机等,业务逻辑全部在本项目中用.NET(CMP)实现,而展示就不一定都是用.net的aspx页面来做,如<a href="http://www.huihaimall.com/Diy.html" target="_blank">DIY装机</a>就是用Flex生成flash来实现的,但是它们都是同步的(同登陆同注销,包括会员产品收藏等).还有一个最重要的就是<a href="http://www.huihaimall.com/admin/main.htm" target="_blank">后台管理</a>也是用Flex调用.net来实现的,由于要提供Flex调用的接口,所有还提供了几个WebService的页面(关与身份验证请见:<a href="http://www.cnblogs.com/Jonllen/archive/2008/06/02/1211989.html" target="_blank">在WebService中使用Session或Cookie---实现WebService身份验证(客户端是Flex)</a> ),另外在用JQuery发送Ajax请求的时候页面传输数据时候还有用到Json数据(Flex好象有几个地方也用到了). </li>
<li>　项目解决方案截图如下:<br /><a href="/upload/jonllen/article/o_CMPServices.jpg" target="_blank" title="点击查看项目解决方案大图"><img title="CMPServices" src="/upload/jonllen/article/o_CMPServices.jpg" alt="CMPServices" width="318" height="214" style="border-style: none;" /></a><br />下面,我对上图所示以我的了解进行简要的介绍: </li>
</ul>
</div>
<div><ol>
<li>CMPServices 它里面主要是一些CMP配置和服务的基类,他们对应的名称和功能内如下所:<br />
<table style="border-collapse: collapse; border: #ccc 1px solid;" border="1">
<tr>
<td style="text-align: center;">名称</td>
<td style="text-align: center;">功能描述</td>
<td></td>
</tr>
<tr>
<td>CMPConfigurationHandler</td>
<td>继承自IConfigurationSectionHandler,用来读取在Web.Config文件内的自定义CMP配置.</td>
</tr>
<tr>
<td>CommandMapping</td>
<td>命令映射类,用于某一个业务的容器,一般为对应Insert、Delete、Update、Select里某一个存储过程名为CommandName,里面可能包含多个CommandParameter.</td>
<td></td>
</tr>
<tr>
<td>CommandParameter</td>
<td>存储过程参数类,里面有ParameterName、Size、DbTypeHint等属性,还有一个ClassMember的属性,表示对应实体模型的属性,一般ParameterName为@Name而ClassMember值就为Name(预先配置好的),因为一般存储过程的参数名就对应数据库实体模型的列字段.</td>
<td></td>
</tr>
<tr>
<td>ContainerMapping</td>
<td>容器映射类,一般为一个业务实体,比如用户,它里面就有Insert、Delete、Update、Select这4个CommandMapping,而且它有个key在CMP里面的映射ID叫ContainerMappingId和ContainedClass对应为实体对象模型名.</td>
<td></td>
</tr>
<tr>
<td>ContainerMappingSet</td>
<td>多个ContainerMapping容器映射集合类,里面的Hashtable可根据ContainerMappingId映射ID的key来匹配ContainerMapping.</td>
<td></td>
</tr>
<tr>
<td>PersistableObject</td>
<td>持久对象基类,实体类继承它能实现对数据的保存(一般为Insert、Delete、Update命令操作).</td>
<td></td>
</tr>
<tr>
<td>PersistableObjectSet</td>
<td>继承自PersistableObject,实现数据持久化保存结果(一般为Select命令操作).</td>
<td></td>
</tr>
<tr>
<td>SqlPersistenceContainer</td>
<td>业务的容器基类,构造函数需ContainerMapping,包含Insert、Delete、Update、Select四个虚方法.</td>
<td></td>
</tr>
<tr>
<td>StdPersistenceContainer</td>
<td>业务的容器,构造函数ContainerMapping调用父类构造函数,根据ContainerMapping对Insert、Delete、Update、Select四个方法进行具体的实现.</td>
<td></td>
</tr>
</table>
</li>
<li>ConfigurationServices 里面就一个类SiteProfile,它里面主要是一些静态成员,如有DefaultDataSource是数据源连接字符串,还有一个Hashtable的DbTypeHints,作用是用来配置一些存储过程的参数对应的ADO.Net里面的SQL数据类型. </li>
<li>http://localhost/WebSite/ 这层就不用说了,就是我们的网页表示层. </li>
<li>MallMemberDAL 这个是商城里面的一个模块,为商城会员业务逻辑层分开为一个项目,里面主要为会员的一些操作,是为CMP的具体应用了,类的命名如下图所示:<br /><a href="/upload/jonllen/article/o_MallMemberDAL.jpg" target="_blank" title="点击查看项目类大图"><img title="MallMemberDAL" src="/upload/jonllen/article/o_MallMemberDAL.jpg" alt="MallMemberDAL" width="297" height="161" style="border-style: none;" /></a><br />上图是对会员收货地址和优惠卷的实例,其中Item结尾的继承自PersistableObject的实体类,Manager为所有操作方法的集合类(以静态方式提供),Set继承自PersistableObjectSet为数据集合的容器类,其实最初CMP里实体的命名不是这样的,好象是加Entity后缀,这个就看你怎么决定了,但是整个项目一定要统一. </li>
<li>MonitorServices 为CMP的监控服务项目,主要是跟踪当前执行的方法、异常信息等,这里就不祥说了. </li>
<li>MonitorServicesLogging 监控服务日志项目,用来处理异常错误信息,可以保存到数据库内,如果保存到数据库失败则写到本地日志文件里,不过我在项目里面并没有用到它的,一刚开始因为还没有整个摸透它,好象还要在Web.Config文件内设置GWTrace的跟踪等级,刚开始做的时候老是报错,但是没有把错误写到日志里面,而是CMP老是抛出那同一个错误,感觉很是麻烦搞的满头包就没去理它了,直到后来发布网站上线的时候也把这个错误日志的功能忘记加了. </li>
<li>Newtonsoft.Json 它是一个完全开源可以免费使用的数据格式,应用领域.Net、Javascript、Flex至少我知道有这么多,它能一个.Net实体对象通过它的格式化字符串传输到另一端又能转换成原对象,比如我能在使用了Json的javascript里面使用实体名.属性设置或获取值再在.Net里能轻易得到,同理Flex里面也有Json的对象格式,它使得我们能使用字符串轻易的传输实体对象,在本项目里面就有使用Flex通过Json数据与.Net通讯,JavaScript使用Ajax来Post传递Json数据.虽然它还存在一些的Bug,不过基本上所有的软件都会存在一些Bug的,在本项目应用中,好象Json就有一个数据类型转换的Bug,不过还好,Json是开源的,直接在它的源代码上修改解决了这个Bug.&nbsp; </li>
<li>最后还有2个模块:PopedomDAL和ProductDAL分别是权限和产品模块,实质是和MallMemberDAL差不多,也就不多说了. </li>
</ol></div>
<ul style="list-style-type: none;">
<li>下面来说一下Web.Config文件的相关配置 </li>
<li>在configuration下的configSections的第一个子节点,配置CMP读取的自定义节点<br />
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">section </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="GWConfig"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="Huihai.Mall.CMPServices.CMPConfigurationHandler, Huihai.Mall.CMPServices"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span></div>
</div>
</li>
<li>再在configSections下增加CMP跟踪监视等级及数据库连接字符串,默认本地日志文件路径等配置(以下为我项目里面的一些CMP配置,最下面的为商城的一些配置)<br />
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">system.diagnostics</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">switches</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="GWTrace"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="4"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">switches</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">system.diagnostics</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">appSettings</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="ErrorViewUrlPrefix"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="/Wawacrm/ErrorLog/"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="ErrorLogBaseDir"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="E:\me\bak\oa\WAWACRM\Errors\"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="DefaultDataSource"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="server=127.0.0.1;database=HH_System;uid=sa;pwd=123"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="picurl"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="Upload/product/"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="score"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="1"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="isShowRunTime"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;"> 产品评论 </span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="CommentIsAudit"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="Y"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;"> 产品评论回复 </span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="ReCommentIsAudit"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="Y"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;"> 产品咨询 </span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="ConsultIsAudit"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="N"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;"> 商城咨询反馈 </span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="FeedbackIsAudit"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="Y"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;"> 后台管理员的使用的邮箱名后缀 </span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">add </span><span style="color: #ff0000;">key</span><span style="color: #0000ff;">="EmailPostfix"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="@coreoa.cn"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">appSettings</span><span style="color: #0000ff;">&gt;</span></div>
</div>
</li>
<li>接下来最重要的也是最复杂的就是GWConfig自定义CMP元数据配置的节点了, 它里面主要是配置每一个存储过程,对应容易实体类,及该业务实体的Insert、Update、Delete、Select四个方法的参数的详细描述,已上面MallMemberDAL项目的Address和Coupon为例,它的配置为如下:<br />
<div id="codehighlightermain_633659354966406250" style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">GWConfig</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ContainerMappingSet</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ContainerMapping</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ContainerMappingId</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Address</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ContainerMappingId</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ContainedClass</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">AddressItem</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ContainedClass</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Insert</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">CommandName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">MO_Address_Insert</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">CommandName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Member_inner_code</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@member_inner_code</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Int</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">4</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Province</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@province</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">20</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">City</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@city</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">20</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">County</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@county</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">20</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Zip</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@zip</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">6</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Address</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@address</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">100</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Name</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@name</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">50</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Mobile</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@mobile</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">15</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Tel</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@tel</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">50</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">IsDefault</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@isDefault</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Char</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">1</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Insert</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ContainerMapping</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ContainerMapping</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ContainerMappingId</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Coupon</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ContainerMappingId</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ContainedClass</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">CouponItem</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ContainedClass</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Select</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">CommandName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">MO_Coupon_Select</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">CommandName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Sn</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@sn</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">10</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Password</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ClassMember</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">@password</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParameterName</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Varchar</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">DbTypeHint</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">Input</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ParamDirection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">10</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Parameter</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">Select</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ContainerMapping</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">ContainerMappingSet</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">GWConfig</span><span style="color: #0000ff;">&gt;</span></div>
</div>
</li>
<li>以上配置中,为简便示例Address只有配置Insert的方法,它调用名为MO_Address_Insert的存储过程,Insert节点下第一个子节点CommandName即为存储过程名,而同级别的还有Parameter节点,每一个都代表存储过程的一个参数,下面有ClassMember、ParamDirection等子节点即是对它的描述,其他Update、Delete、Select依此类推也可以按这种格式来配置;而Coupon只有配置一个Select的节点(其他的也能按照上述增加配置,没有配置的方法将不能调用),Coupon是为ContainerMappingId容器业务实体唯一Key,它对应名为CouponItem的业务实体模型类,而参数下面的ClassMember为实体下的成员名,一般就是实体类的属性,因为它将根据这个名字反射获得实体的属性值.以上这么多配置但是却只实现了2个业务的方法,是不是有点太麻烦了?没得办法,最开始的CMP模式就是这样一个个把存储过程配置好的!但是你的项目里面要用到的存储过程肯定不只与2个,姑且就不说CMP模式这样配置也只能用存储过程的,但是存储过程一多了就会很麻烦了,每一个存储过程配置都要手写添家进去!要是存储过程上十来个参数又有增删改查的方法岂不要配置很多东西?的确要配置的东西不少,但是我们可以自己写的小程序对CMP的配置执行操作,而不需要我们去打开Web.Config文件一个个去手改,下图为我自己写的一个对CMP的配置进行操作的截图: </li>
<li><a href="/upload/jonllen/article/o_editConfig.jpg" target="_blank" title="点击查看CMP配置操作大图"><img title="CMP配置操作" src="/upload/jonllen/article/o_editConfig.jpg" alt="CMP配置操作" width="500" height="402" style="border-style: none;" /></a> </li>
<li>上面主要是通过XPath表达试对Web.Config进行筛选读取CMP的配置节点并在GridView里面显示出来,并能直接对其进行修改等操作.如果假如我们要增加一个的时候,我们可以点浏览用sysobjects把数据库里面所有的存储过程名字等信息读出来,选择要配置的那个存储过程后再用sp_sproc_columns把它所有的参数信息读出来,如ParameterName、Size、ParamDirection等,注意ClassMember(实体模型的属性名)读出来默认是ParameterName,因为在我的项目里面ParameterName名就跟实体的属性名一样,你也可以改成其他的,但是你要根据你实体命名的约定好,因为它要用反射实体里找这个属性,如果找不到就不好了. </li>
<li>是不是用上面那个小工具爽多了?你不需要打开Web.Config手写一个配置,在数据库里面写一个存储过程就到这里配置一下直接在增加一个CMP的配置节点到Web.Config文件内.,我这个商城的项目下来把所有业务的存储过程配置完Web.Config文件总大小有140KB,把Web.Config文件撑得这么大对性能会不会有影响呢?我想应该不会有多大影响的,从CMP框架的运行来看,它只是在Application_Start的时候读取一次配置文件到内存,以后就像读AppSettings一样直接在内存里面取,很方便的.Application_Start运行的代码如下: </li>
<li>
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #008000;">//</span><span style="color: #008000;"> 在应用程序启动时运行</span><span style="color: #008000;"><br /></span><span style="color: #000000;">System.Configuration.ConfigurationManager.GetSection(</span><span style="color: #800000;">"</span><span style="color: #800000;">GWConfig</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /><br />SiteProfile.DefaultDataSource </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Configuration.ConfigurationManager.AppSettings[</span><span style="color: #800000;">"</span><span style="color: #800000;">DefaultDataSource</span><span style="color: #800000;">"</span><span style="color: #000000;">];<br /><br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Varchar</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.VarChar;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Nvarchar</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.NVarChar;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Int</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.Int;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Date</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.DateTime;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Text</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.Text;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Bit</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.Bit;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Money</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.Money;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Datetime</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.DateTime;<br /></span><span style="color: #008000;">//</span><span style="color: #008000;">后新添加2种对应类型</span><span style="color: #008000;"><br /></span><span style="color: #000000;">SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Char</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.Char;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Numeric</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.Decimal;<br />SiteProfile.DbTypeHints[</span><span style="color: #800000;">"</span><span style="color: #800000;">Smalldatetime</span><span style="color: #800000;">"</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Data.SqlDbType.SmallDateTime;<br /><br /></span><span style="color: #008000;">//</span><span style="color: #008000;">监听配置文件的改变</span><span style="color: #008000;"><br /></span><span style="color: #000000;">System.IO.FileSystemWatcher fsw </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.IO.FileSystemWatcher(Server.MapPath(</span><span style="color: #800000;">"</span><span style="color: #800000;">~/Upload/special</span><span style="color: #800000;">"</span><span style="color: #000000;">));<br />fsw.Filter </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">XMLFile.xml</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br />fsw.NotifyFilter </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.IO.NotifyFilters.LastWrite;<br />fsw.Changed </span><span style="color: #000000;">+=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.IO.FileSystemEventHandler(ReadAdConfig);<br />fsw.EnableRaisingEvents </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br /><br />ReadAdConfig(</span><span style="color: #0000ff;">null</span><span style="color: #000000;">, </span><span style="color: #0000ff;">null</span><span style="color: #000000;">);</span></div>
</div>
</li>
<li>上面代码主要是在程序启动的时候Web.Config的CMP配置的元数据读到CMP的一个静态类里面,初始化数据连接,设置存储过程参数对应的SQL数据类型,后面监听和ReadAdConfig方法是我项目另外的东西,这里就不叉开话题说了. 配置搞清楚了,下面我们就来研究一下CMP这个架构到底是如何运行的呢? 还是以上面的那个例子为准,比如我要在Address里增加一个会员收货地址.我就在AddressManager里面提供一个AddressInsert的静态方法供调用. </li>
<li>
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> AddressInsert(AddressItem item)<br />{<br />SqlPersistenceContainer spc </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlPersistenceContainer(CMPConfigurationHandler.ContainerMaps[</span><span style="color: #800000;">"</span><span style="color: #800000;">Address</span><span style="color: #800000;">"</span><span style="color: #000000;">]);<br />spc.Insert(item);<br />}</span></div>
</div>
</li>
<li>上面所示为CMP一个调用业务的过程,它实现的全过程大概为: </li>
<li><strong><span style="color: #ff0000;">①第一步:</span></strong> 在Application_Start把CMP的所有配置读取到CMPConfigurationHandler下面的ContainerMaps集合里面,它是一个Hashtable对象 </li>
<li><strong><span style="color: #ff0000;">②第二步:</span></strong> 根据Address这个ContainerMappingId的key在CMPConfigurationHandler.ContainerMaps匹配到Address这个业务对象的ContainerMapping映射容器对象 </li>
<li><strong><span style="color: #ff0000;">③第三步:</span></strong> 实例化SqlPersistenceContainer托管容器对象,ContainerMapping作为构造函数穿入,并使用: base(initCurrentMap)调用StdPersistenceContainer父类构造函数 </li>
<li><strong><span style="color: #ff0000;">④第四步:</span></strong> 执行具体方法(这里为Insert操作),而参数为继承了PersistableObject类型的实体模型对象,为了更好的说明我也把Insert方法的代码给帖出来 </li>
<li>
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> <br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="insertObject"&gt;&lt;/param&gt;</span><span style="color: #808080;"><br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">override</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> Insert(PersistableObject insertObject)<br />{<br />GWTrace.EnteringMethod(MethodBase.GetCurrentMethod());<br /></span><span style="color: #0000ff;">try</span><span style="color: #000000;"><br />{<br />CommandMapping cmdMap </span><span style="color: #000000;">=</span><span style="color: #000000;"> currentMap.InsertCommand;<br />SqlCommand insertCommand </span><span style="color: #000000;">=</span><span style="color: #000000;"> BuildCommandFromMapping(cmdMap);<br />AssignValuesToParameters(cmdMap, </span><span style="color: #0000ff;">ref</span><span style="color: #000000;"> insertCommand, insertObject);<br />insertCommand.Connection.Open();<br /><br />insertCommand.ExecuteNonQuery();<br />insertCommand.Connection.Close();<br />AssignOutputValuesToInstance(cmdMap, insertCommand, </span><span style="color: #0000ff;">ref</span><span style="color: #000000;"> insertObject);<br />insertCommand.Dispose();<br />}<br /></span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> (Exception dbException)<br />{<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> s </span><span style="color: #000000;">=</span><span style="color: #000000;"> insertObject.ToXmlString();<br />s</span><span style="color: #000000;">+=</span><span style="color: #000000;">currentMap.InsertCommand.CommandName;<br /></span><span style="color: #0000ff;">throw</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Exception(</span><span style="color: #800000;">"</span><span style="color: #800000;">Persistance (Insert) Failed for PersistableObject</span><span style="color: #800000;">"</span><span style="color: #000000;">, dbException);<br />}<br />}</span></div>
</div>
</li>
<li>由于受空间限制没能把全部代码贴出来比较难看一点,大概原理是根据PersistableObject 对象(实际为保存在XML内的CMP的配置映射到的容器)和要执行的方法创建SqlCommand对象,设置它要执行的存储过程名称.再循环Parameter创建并添加参数,再在PersistableObject 根据反射ClassMember获得实体里面的属性值设置Parameter参数值.然后在执行存储过程,并跟踪记录当前错误方法,处理异常信息,这样便完成了CMP一个业务处理的全过程. </li>
<li>是不是感觉这样调用有点'妙'呢?你要修改那个业务对象你只需要指定对应的实体模型的属性值它就能作为参数Insert(Update或Delete)数据库表里面对应的列,如果存储过程参数对应的实体属性值没有指定的话将传递的为默认值,如String类型的将为NULL.这里在反射的时候还要注意一个问题,就是列为时间类型的时候,C#里面的DataTime为空的时候为初始值为0001-1-1 0:00:00,而当你使用反射的时候把这个时间更新到数据库会报错,提示什么数据溢出,因为SQL里时间类型是有一个时间段,所以在CMP调用AssignValuesToParameters方法使用发射赋值的时候要加上一个判断,这样修改时间类型字段指定为空就没有问题了. </li>
<li>
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">object</span><span style="color: #000000;"> o </span><span style="color: #000000;">=</span><span style="color: #000000;"> PropertyInfo.GetValue(persistObject, </span><span style="color: #0000ff;">null</span><span style="color: #000000;">);<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (o </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br />o </span><span style="color: #000000;">=</span><span style="color: #000000;"> DBNull.Value;<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (o.GetType().Equals(</span><span style="color: #0000ff;">typeof</span><span style="color: #000000;">(System.DateTime)))<br />{<br /></span><span style="color: #008000;">//</span><span style="color: #008000;">时间默认值(即未给时间赋值),则为空</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (o.ToString() </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">0001-1-1 0:00:00</span><span style="color: #800000;">"</span><span style="color: #000000;">)<br />o </span><span style="color: #000000;">=</span><span style="color: #000000;"> DBNull.Value;<br />}<br /></span></div>
</div>
</li>
<li>而Select查询操作略有一点不同, 因为它要返回结果解,这个时候就应该要用AddressSet类了,所有要实现查询操作的类都必须继承自PersistableObjectSet,因为它能有返回DataSet数据集的实现,可以把它看成一个特殊的PersistableObject对象,因为它除开有Insert、Delete、Update还有Select.AddressSet类其实也是一个实体类,但它跟AddressItem类不同的是它只管查询,而查询的存储过程往往没有增、删、改的那么多的参数,因此它的里面只需要几个查询条件字段的属性.调用起来跟增、删、改的操作都差不多,也是根据反射它里面的属性值在赋个对应的参数在执行,CMP默认返回的一个DataSet,我的觉得既然用到的实体,为什么不用它来代替DataSet呢?所以我在原来的基础上新加一个用反射把DataSet转换成实体的数组,方便再次操作,代码如下: </li>
<li>
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> 根据引用传来的Object实体对象使用反射给它的属性赋值<br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="obj"&gt;</span><span style="color: #008000;">实体对象</span><span style="color: #808080;">&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;</span><span style="color: #008000;">是否给表里面的记录值填充实体里属性成功,如何找不到实体属性或记录集为空返回false</span><span style="color: #808080;">&lt;/returns&gt;</span><span style="color: #808080;"><br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">bool</span><span style="color: #000000;"> ResultSingleObject(</span><span style="color: #0000ff;">ref</span><span style="color: #000000;"> Object obj)<br />{<br /></span><span style="color: #008000;">//</span><span style="color: #008000;">internalData是本类里返回的DataSet集合</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (internalData.Tables.Count </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br /></span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />DataTable tab </span><span style="color: #000000;">=</span><span style="color: #000000;"> internalData.Tables[</span><span style="color: #800080;">0</span><span style="color: #000000;">];<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (tab.Rows.Count </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br /></span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />Type type </span><span style="color: #000000;">=</span><span style="color: #000000;"> obj.GetType();<br /></span><span style="color: #0000ff;">foreach</span><span style="color: #000000;"> (DataColumn column </span><span style="color: #0000ff;">in</span><span style="color: #000000;"> tab.Columns)<br />{<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> columnName </span><span style="color: #000000;">=</span><span style="color: #000000;"> column.ColumnName;<br /></span><span style="color: #0000ff;">object</span><span style="color: #000000;"> t </span><span style="color: #000000;">=</span><span style="color: #000000;"> tab.Rows[</span><span style="color: #800080;">0</span><span style="color: #000000;">][columnName];<br />PropertyInfo property </span><span style="color: #000000;">=</span><span style="color: #000000;"> type.GetProperty(columnName);<br /><br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (property </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br />property </span><span style="color: #000000;">=</span><span style="color: #000000;"> type.GetProperty(columnName.Substring(</span><span style="color: #800080;">0</span><span style="color: #000000;">, </span><span style="color: #800080;">1</span><span style="color: #000000;">).ToUpper() </span><span style="color: #000000;">+</span><span style="color: #000000;"> columnName.Substring(</span><span style="color: #800080;">1</span><span style="color: #000000;">, columnName.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">));<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (property </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br />property </span><span style="color: #000000;">=</span><span style="color: #000000;"> type.GetProperty(columnName.ToUpper());<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (property </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br />{<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (t.GetType().FullName </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">System.DBNull</span><span style="color: #800000;">"</span><span style="color: #000000;">)</span><span style="color: #008000;">//</span><span style="color: #008000;">如果数据库返回的值不等于NULL的情况下才给找到了实体的字段属性赋值</span><span style="color: #008000;"><br /></span><span style="color: #000000;">property.SetValue(obj, t, </span><span style="color: #0000ff;">null</span><span style="color: #000000;">);<br />}<br /></span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">throw</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Exception(</span><span style="color: #800000;">"</span><span style="color: #800000;">表的列名为</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> columnName </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">不能与实体名为</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> type.Name </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">的属性名一致,请修改过程的返回的列名称或实体属性名</span><span style="color: #800000;">"</span><span style="color: #000000;">);<span style="color: #008000;">//</span><span style="color: #008000;">便与调试</span><br />}<br /></span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br />}</span></div>
</div>
</li>
<li>通过如上代码for循环一下就能把DataSet转换成AddressItem数组或是List&lt;AddressItem&gt;泛型. </li>
<li>CMP模式差不多就这么多些吧,总结其中一些美中不足的地方: </li>
<li>Insert、Delete、Update、Select这个四个方法还不能满足需求,增删改查这个四个方法是CMP的核心,但一个业务实体的操作只有这个4个方法往往是不够的.因为这四个方法只能分别对应一个储存过程,而查询的存储过程一般一个难得搞定,比如用户表我除开根据用户ID去查询,还要根据用户名和密码,还有可能要根据用户类型返回用户列表等等,实际的需求是复杂的.用CMP的话那我还需要另外单独配置2个业务实体来分别放根据用户名和密码和根据用户类型的操作的存储过程,而它们里面的Select都只有一个且对应的实体也是同一个,是不是感觉有点浪费?感觉Insert、Delete、Update、Select这个四个方法不够用,后来想到增加一个List的方法,基本上每一个表都有一个根据ID去查询记录的时候,Select就对应这个操作,而新加的List就对应根据其他条件可能会返回多条记录的操作,这样就不需要当一个业务有2个查询操作的时候而再去新建一个了,但是新增一个List查询的方法Web.Config内CMP配置文件也要加List节点的配置,而且CMP的基类里面也要增加一个List方法并要解析对应的List配置节点,由于当时项目做得快差不多了,这人一懒呢就没有去完成了.-_-!!! </li>
<li>连续写了几个晚上终于快要完了,之所以我要写这些,是感觉自己最近好象都没做什么东西一样,白天在慢悠悠的上一天班,晚上就什么也不想动了,一坐到电脑前就是看玩传奇世界或是看电视连续剧斗牛要不要、篮球火等啊,呵呵,等来得急看时间的时候已经凌晨过后了...第二天起来到公司上班,晚上又继续,我心是想我不要每天就这样过去了,但是这样持续了好久一段时间...我有时候也自责自己到最后还是一事无成!既然来到了这行,就一定要做好这个职业的本职工作,IT行业这个技术每天都在不断更新演变的领域你每天不去学习怎么能行呢?所以我不要再那么在'堕落'下去了,呵呵^_^,便决定写点东西,至少别自己做过的项目都不记得去了. </li>
<li>源代码就不要问了,放在公司的SVN服务器里面了,这里提供一个我原来的参考的CMP架构的源代码下载, 好象还是蛙蛙池塘2005年写的. </li>
<li><a href="http://files.cnblogs.com/Jonllen/WawaCRM(CMP模式).rar" target="_blank"><strong><span style="font-size: small;"><span style="font-size: x-small;">CMP模式参考源代码下载</span></span></strong></a><span style="font-size: small;"><span style="font-size: x-small;"> </span></span></li>
</ul>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2008-12-30 00:11</li>
				<li>update@ 2010-02-11 17:06:10</li>
				<li>阅读(<span id="articleClick">14021</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/28.aspx">在WebService中使用Session或Cookie(实现Flex客户端身份验证)</a></li>
<li>下一篇：<a href="/jonllen/aspnet/26.aspx">门户网站的形成—CMS内容管理系统</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=21&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/21.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=21";
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