
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>在WebService中使用Session或Cookie(实现Flex客户端身份验证) - Asp.Net - 金龙博客</title>
<meta name="description" content=" 现在我们开发一个项目，业务逻辑层全部用WebService,客户端有Flex和Asp.Net,Flex和Asp.Net的所有业务逻辑数据库的访问全部调用WebService中的方法(好象Flex也不能直接对数据库进行访问,所以也只能用WebService),现在就出现问题了，就是WebService中的权限问题了，比如:我在WebService中有一个Login的方法,还有一个ChangePwd修改用户密码的方法，可之，如果我要调用ChangePwd方法前我一定要判断用户是否Login了,所以一般的情况就是在Login方法里面当用户成功登陆后就Sesssion用户ID或者是用Cookie来保存以唯一标识用户，然后我再在ChangePwd方法里面先判断访问的用户是否存在Session或是有Cookie标识,如果有的话我再允许修改修改他自己当前登陆的密码，但是这些当做为 WebService方法的提供的时候就出现了问题,我在访问用户成功Login后Session当前用户的ID之后,当用户再去调用 ChangePwd方法的时候Session却丢失了，原因是我并不是直接打开IE访问WebService页面,然后在点调用那一个 WebService方法，那样我能成功验证。但我现在要是在我的项目中添加WebService引用,引用成功后.net便会自动生成一个App_WebReferences文件夹来保存引用的WebService的WSDL等信息，我们在调用的时" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2008-06-02' } );
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
		     > <a href="/jonllen/aspnet/28.aspx">在WebService中使用Session或Cookie(实现Flex客户端身份验证)</a>
		</div>
        <div class="article">
			<div class="title"><h2>在WebService中使用Session或Cookie(实现Flex客户端身份验证)</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 28px;">
<p>&nbsp;&nbsp;&nbsp;&nbsp; 现在我们开发一个项目，业务逻辑层全部用WebService,客户端有Flex和Asp.Net,Flex和Asp.Net的所有业务逻辑数据库的访问全部调用WebService中的方法(好象Flex也不能直接对数据库进行访问,所以也只能用WebService),现在就出现问题了，就是WebService中的权限问题了，比如:我在WebService中有一个Login的方法,还有一个ChangePwd修改用户密码的方法，可之，如果我要调用ChangePwd方法前我一定要判断用户是否Login了,所以一般的情况就是在Login方法里面当用户成功登陆后就Sesssion用户ID或者是用Cookie来保存以唯一标识用户，然后我再在ChangePwd方法里面先判断访问的用户是否存在Session或是有Cookie标识,如果有的话我再允许修改修改他自己当前登陆的密码，但是这些当做为 WebService方法的提供的时候就出现了问题,我在访问用户成功Login后Session当前用户的ID之后,当用户再去调用 ChangePwd方法的时候Session却丢失了，原因是我并不是直接打开IE访问WebService页面,然后在点调用那一个 WebService方法，那样我能成功验证。但我现在要是在我的项目中添加WebService引用,引用成功后.net便会自动生成一个App_WebReferences文件夹来保存引用的WebService的WSDL等信息，我们在调用的时候将WebService实例化后就直接调用Login或ChangePwd方法了，但是我是这样调用的话当我成功Login后能Session一个用户ID，但是当我在调用 ChangePwd后却不能成功,因为我在ChangePwd是判断了Session是否存在,结果Session不存在了,我明明在成功Login后 Session了用户ID但是却在第二次调用ChangePwd的时候不存在了，郁闷&hellip;我用Coookie亦如此,也丢失了,测试可知,我打开页面直接访问WebService中调用他的方法能成功,能植入Cookie,但我添加WebService引用到项目在调用Login方法时候根本就没法值入Cookie,没有报错,但是我在网页临时文件夹和Cookie的文件夹内都找不到Cookie,第二次在调用 ChangePwd时我在判断身份时候当然也是个Cookie不存在。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp; 在网上看了很多Cookie和Session的东西,在WebService中能应用的没几个，有人说要在客户端写个 CookieContainer的Cookie容器来保存WebService传回来的一些Cookie那样便不会丢失,但是有一个非常严重的问题就是我的客户端还必须是Flex，如果只是在.Net中调用那当然没事，我在.net中就直接判断Session或Cookie很方便的,也不存在丢失的问题,就根本不需要的在WebService里面去判断权限了,但是我WebService的客户端还必须是Flex,Flex它好象不能做权限处理的，数据库也不能直接访问,所以便要调用WebService,所有我便想把权限处理放在WebService里面, 客户端不用管的,所以我就不希望还在客户端去写类似:System.Net.CookieContainer cookieContainer = new System.Net.CookieContainer(); 然后在MyService.WebService service = new MyService.WebService(); &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; service.CookieContainer = cookieContainer;为我的客户端不只是.net,还有Flex,甚至其他的,那它能有那个对象吗? 所以我就希望能就直接调用,我在WebService里面验证,验证通过就执行，验证不通过则不执行,但是当我想当然就这样做的时候,就出现了以上述的问题,我自认是菜鸟一个,想不到其他办法,现在又真的很急,所以请大家都帮帮忙,给我出出注意,请原谅我占了主页。<br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 补充一下:基本上我可以确认业务逻辑一定要写成WebService,因为我们经理说不止Flex下次我们的OA系统可能也要用WebServce,WebService能通用,所以就只能在WebService中写验证即用Session或Cookie验证了,整个解决办法如下：</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在WebService服务器端:</p>
<pre><div class="code">
public HeaderContainer header;//申明一个SoapHeader <br />//登陆,成功之后暂返回用户实体里面的用户ID，然后在发送到客户端以标识用户,MemberItem为用户Model <br />[WebMethod(Description = "根据用户名密码返回用户详细信息,返回NULL则登陆失败!",EnableSession=true)] <br />[System.Xml.Serialization.XmlInclude(typeof(MemberItem))] <br />[SoapHeader("header", Direction = SoapHeaderDirection.Out)] <br />public MemberItem MemberLogin(string username, string password) <br />{ <br />if (username.Equals(string.Empty) || password.Equals(string.Empty)) <br />return null; <br />MemberItem item = MemberManager.MemberLogin(username, password); <br /><br />header = new HeaderContainer(); <br />if (item != null) <br />header.SessionID = item.Member_inner_code; <br />return item; <br />} <br />//修改密码,需要有才登陆后的唯一标识 <br />[WebMethod(Description = "修改指定用户的密码,且要修改的用户为当前登陆的标识的用户.",EnableSession=true)] <br />[SoapHeader("header", Direction = SoapHeaderDirection.In)] <br />public bool MemberChangePwd(int memberID, string password) <br />{ <br />if (password.Equals(string.Empty)) <br />return false; <br /><br />if (header != null) <br />{ <br />if (header.SessionID == memberID) <br />{ <br />MemberManager.MemberChangePwd(memberID, password); <br />return true; <br />} <br />else return false; <br />} <br />return false; <br />} 
</div></pre>
<p style="text-indent: 2em;">在.Net的客户端的调用：</p>
<pre><div class="code">MallMember m = new MallMember();//申明页面级全局WebService <br />//登陆 <br />MemberItem item = m.MemberLogin("123", "123"); <br />if (item != null) <br />{ <br />Session["Member"] = m.HeaderContainerValue;//登陆成功在保存从服务器端发送过来的标识 <br />} <br />else Response.Write("失败！"); <br />//修改密码 <br />MallMember.HeaderContainer header = (MallMember.HeaderContainer)Session["Member"]; <br />m.HeaderContainerValue =header;//给SoapHead(里面包含有SessionID)赋值一起发送到服务器端去,服务器能接受并处理。 <br />Response.Write(m.MemberChangePwd(123,"123")); <br /><br />//Flex客户端调用 <br />private var m:MallMember=new MallMember();//申明全局WebService <br />var h:HeaderContainer;//申明一个SoapHeader头 <br />public function login():void{ m.addmemberLoginEventListener(loginHandler); <br />m.memberLogin('allen','aaaaaa'); <br />} <br />//登陆判断,注意headers[0].content as HeaderContainer,因为他返回的数组,因为可能有多个SoapHeader,而我们就只用到一个而已 <br />public function loginHandler(event:MemberLoginResultEvent):void{ <br />if(event.result!=null){ <br />h=event.headers[0].content as HeaderContainer; <br />Alert.show("登陆成功"); <br />} <br />} <br />//为什么要传的是HeaderContainer0,而在去指定HeaderContainer,可能是因为它代理类的原因,添加WebService引用后自动生成的, <br />public function update():void{ <br />if(h!=null){ <br />var h0:HeaderContainer0=new HeaderContainer0(); <br />h0.HeaderContainer=h; <br />m.addmemberChangePwdEventListener(updateHandler); <br />m.addmemberChangePwd_header(h0); <br />m.memberChangePwd(1,"mima"); <br />} <br />} <br />更新事件 <br />public function updateHandler(event:MemberChangePwdResultEvent):void{ <br />if(event.result!=null){ <br />Alert.show("更新成功"); } <br />} <br />//异常处理 <br />public function fault(event:FaultEvent):void{ Alert.show("出现异常!"+event.fault.faultString); <br />}
</div></pre>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2008-06-02 11:10</li>
				<li>update@ 2010-02-11 17:13:25</li>
				<li>阅读(<span id="articleClick">14788</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a></li>
<li>下一篇：<a href="/jonllen/aspnet/21.aspx">.Net版(C#)的CMP模式(存储过程ORM)</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=28&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/28.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=28";
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