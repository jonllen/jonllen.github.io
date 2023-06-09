
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>一个Windows后台服务(.Net的C#版) - 定时访问数据库循环发送手机短信 - Asp.Net - 金龙博客</title>
<meta name="description" content="所谓Windows后台服务,即后台自动运行的程序,一般随操作系统启动而启动,在我的电脑 服务后应用程序 服务里面能看到当前电脑的服务.一般而言,程序上用VC、C++写Windows服务,但是我对这些语言不是很熟,一般编程用C#较多,所以就用C#语言写了一个Windows服务.
其实需求是这样的,做那个报价系统的时候加入了发短信的功能,订单处理完即将发货的时候要发送短信都客户手机上,公司内部员工处理订单超时要自动发短信,群发产品促销信息到客户手机上等,还有定时发送短信的需求,所以最后面决定把发短信的模块独立出来,以后还有什么功能方便一起调用,而最终选择了采用Windows后台服务.
其实Windows服务并不好做到通用,它并不能在用户的界面显示一些什么信息等,它只是在后台默默的处理一些事情,起着辅助的作用.那如何实现发送段信通用调用的接口呢?它们之间的信息又是如何来交互呢?数据库!对,就是它存储数据信息的.而数据库都能很方便的访问操作.把发送短信的后台服务定时去访问一个数据库,而另外任何要发送短信的地方也访问数据库,并插入一条要发送的短信到表里面,稍后Windows后台服务访问该表将此短信发送出去.这可能是一个比较蠢的方法,但实现起来较简单的." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-01-05' } );
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
		     > <a href="/jonllen/aspnet/22.aspx">一个Windows后台服务(.Net的C#版) - 定时访问数据库循环发送手机短信</a>
		</div>
        <div class="article">
			<div class="title"><h2>一个Windows后台服务(.Net的C#版) - 定时访问数据库循环发送手机短信</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; margin: 0px; font-family: Arial, Helvetica, sans-serif; line-height: 30px;">
<p style="text-indent: 2em;">所谓Windows后台服务,即后台自动运行的程序,一般随操作系统启动而启动,在我的电脑 服务后应用程序 服务里面能看到当前电脑的服务.一般而言,程序上用VC、C++写Windows服务,但是我对这些语言不是很熟,一般编程用C#较多,所以就用C#语言写了一个Windows服务.</p>
<p style="text-indent: 2em;">其实需求是这样的,做那个报价系统的时候加入了发短信的功能,订单处理完即将发货的时候要发送短信都客户手机上,公司内部员工处理订单超时要自动发短信,群发产品促销信息到客户手机上等,还有定时发送短信的需求,所以最后面决定把发短信的模块独立出来,以后还有什么功能方便一起调用,而最终选择了采用Windows后台服务.</p>
<p style="text-indent: 2em;">其实Windows服务并不好做到通用,它并不能在用户的界面显示一些什么信息等,它只是在后台默默的处理一些事情,起着辅助的作用.那如何实现发送段信通用调用的接口呢?它们之间的信息又是如何来交互呢?数据库!对,就是它存储数据信息的.而数据库都能很方便的访问操作.把发送短信的后台服务定时去访问一个数据库,而另外任何要发送短信的地方也访问数据库,并插入一条要发送的短信到表里面,稍后Windows后台服务访问该表将此短信发送出去.这可能是一个比较蠢的方法,但实现起来较简单.</p>
<p style="text-indent: 2em;">首先,由于它是要安装的,所以它运行的时候就需要一个安装类Installer将服务安装到计算机,新建一个后台服务安装类继承自Installer,安装初始化的时候是以容器进行安装的,所以还要建立ServiceProcessInstaller和ServiceInstaller服务信息组件添加到容器安装,在Installer类增加如下代码:</p>
<div style="padding-left: 2em;">
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">private</span><span style="color: #000000;"> System.ComponentModel.IContainer components </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">private</span><span style="color: #000000;"> System.ServiceProcess.ServiceProcessInstaller spInstaller;<br /></span><span style="color: #0000ff;">private</span><span style="color: #000000;"> System.ServiceProcess.ServiceInstaller sInstaller;<br /></span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> InitializeComponent()<br />{<br />components </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.ComponentModel.Container();<br /><br /></span><span style="color: #008000;">//</span><span style="color: #008000;"> 创建ServiceProcessInstaller对象和ServiceInstaller对象</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.spInstaller </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.ServiceProcess.ServiceProcessInstaller();<br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.sInstaller </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.ServiceProcess.ServiceInstaller();<br /><br /></span><span style="color: #008000;">//</span><span style="color: #008000;"> 设定ServiceProcessInstaller对象的帐号、用户名和密码等信息</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.spInstaller.Account </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.ServiceProcess.ServiceAccount.LocalSystem;<br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.spInstaller.Username </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.spInstaller.Password </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /><br /></span><span style="color: #008000;">//</span><span style="color: #008000;"> 设定服务名称</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.sInstaller.ServiceName </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">SendMessage</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br />sInstaller.DisplayName </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">发送短信服务</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br />sInstaller.Description </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">一个定时发送短信的服务</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br /><br /></span><span style="color: #008000;">//</span><span style="color: #008000;"> 设定服务的启动方式</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.sInstaller.StartType </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.ServiceProcess.ServiceStartMode.Automatic;<br /><br /></span><span style="color: #0000ff;">this</span><span style="color: #000000;">.Installers.AddRange(</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.Configuration.Install.Installer[] { </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.spInstaller, </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.sInstaller });<br />}</span></div>
</div>
</div>
<p style="text-indent: 2em;">再添加一个服务类继承自ServiceBase,我们可以重写基类的OnStart、OnPause、OnStop、OnContinue等方法来实现我们需要的功能并设置指定一些属性.由于是定事发送短信的服务,自然少不了Windows记时器,在OnStart事件里我们写入服务日志,并初始化记时器.</p>
<div style="padding-left: 2em;">
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">private</span><span style="color: #000000;"> System.Timers.Timer time;<br /></span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">readonly</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> CurrentPath </span><span style="color: #000000;">=</span><span style="color: #000000;"> Application.StartupPath </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">\\</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">protected</span><span style="color: #000000;"> </span><span style="color: #0000ff;">override</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> OnStart(</span><span style="color: #0000ff;">string</span><span style="color: #000000;">[] args)<br />{<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> path </span><span style="color: #000000;">=</span><span style="color: #000000;"> CurrentPath </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">Log\\start-stop.log</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br />FileStream fs </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FileStream(path, FileMode.Append, FileAccess.Write);<br />StreamWriter sw </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> StreamWriter(fs);<br />sw.WriteLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">The Service is Starting On </span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> DateTime.Now.ToString());<br />sw.Flush();<br />sw.Close();<br />fs.Close();<br /><br />time </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.Timers.Timer(</span><span style="color: #800080;">1000</span><span style="color: #000000;"> </span><span style="color: #000000;">*</span><span style="color: #000000;"> Convert.ToInt32(GetSettings(</span><span style="color: #800000;">"</span><span style="color: #800000;">TimeSpan</span><span style="color: #800000;">"</span><span style="color: #000000;">)));<br />time.Enabled </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br />time.Elapsed </span><span style="color: #000000;">+=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.TimeOut;<br />time.Start();<br />}</span></div>
</div>
</div>
<p style="text-indent: 2em;">实例化记时器类启动后,将在指定时间间隔触发Elapsed指定事件,如上GetSettings为读取我App.config文件里一个配置节点(值为30)的方法,所以上面将会每隔30秒调用TimeOut方法.而改方法就是我们发短信的具体操作.代码如下:</p>
<div style="padding-left: 2em;">
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> TimeOut(</span><span style="color: #0000ff;">object</span><span style="color: #000000;"> sender, EventArgs e)<br />{<br /></span><span style="color: #0000ff;">try</span><span style="color: #000000;"><br />{<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (GetSettings(</span><span style="color: #800000;">"</span><span style="color: #800000;">Enabled</span><span style="color: #800000;">"</span><span style="color: #000000;">).ToLower() </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">true</span><span style="color: #800000;">"</span><span style="color: #000000;">)<br />{<br />SqlConnection con </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlConnection(GetSettings(</span><span style="color: #800000;">"</span><span style="color: #800000;">ConnString</span><span style="color: #800000;">"</span><span style="color: #000000;">));<br />SqlCommand cmd </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlCommand(</span><span style="color: #800000;">"</span><span style="color: #800000;">select [sysid],[admin_inner_code],[user_inner_code],[phone],[message],[sendtime] from [tbl_note_outbox]</span><span style="color: #800000;">"</span><span style="color: #000000;">, con);<br />con.Open();<br />SqlDataReader rdr </span><span style="color: #000000;">=</span><span style="color: #000000;"> cmd.ExecuteReader();<br /></span><span style="color: #0000ff;">while</span><span style="color: #000000;"> (rdr.Read())<br />{<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> phone </span><span style="color: #000000;">=</span><span style="color: #000000;"> rdr[</span><span style="color: #800000;">"</span><span style="color: #800000;">phone</span><span style="color: #800000;">"</span><span style="color: #000000;">].ToString();<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> message </span><span style="color: #000000;">=</span><span style="color: #000000;"> rdr[</span><span style="color: #800000;">"</span><span style="color: #800000;">message</span><span style="color: #800000;">"</span><span style="color: #000000;">].ToString();<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> sendtime </span><span style="color: #000000;">=</span><span style="color: #000000;"> rdr[</span><span style="color: #800000;">"</span><span style="color: #800000;">sendtime</span><span style="color: #800000;">"</span><span style="color: #000000;">].ToString();<br />System.Text.Encoding encoder </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Text.Encoding.GetEncoding(</span><span style="color: #800000;">"</span><span style="color: #800000;">GB2312</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> url </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;">.Format(</span><span style="color: #800000;">"</span><span style="color: #800000;">http://211.155.23.205/isapi.dll?SendSms&amp;AgentID={0}&amp;PassWord={1}&amp;phone={2}&amp;msg={3}&amp;sendtime={4}</span><span style="color: #800000;">"</span><span style="color: #000000;">, GetSettings(</span><span style="color: #800000;">"</span><span style="color: #800000;">AgentID</span><span style="color: #800000;">"</span><span style="color: #000000;">), GetSettings(</span><span style="color: #800000;">"</span><span style="color: #800000;">PassWord</span><span style="color: #800000;">"</span><span style="color: #000000;">), phone,System.Web.HttpUtility.UrlEncode( message,encoder), sendtime);<br />System.Net.WebClient wClient </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.Net.WebClient();<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> msg </span><span style="color: #000000;">=</span><span style="color: #000000;"> System.Text.Encoding.Default.GetString(wClient.DownloadData(url));<br />wClient.Dispose();<br /><br /></span><span style="color: #008000;">//</span><span style="color: #008000;">删除已经发送成功的，并保存发送记录</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (msg </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">发送成功</span><span style="color: #800000;">"</span><span style="color: #000000;">)<br />{<br />DateTime dtsend </span><span style="color: #000000;">=</span><span style="color: #000000;"> sendtime </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">0</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">?</span><span style="color: #000000;"> DateTime.Now : DateTime.ParseExact(sendtime, </span><span style="color: #800000;">"</span><span style="color: #800000;">yyyyMMddHHmmss</span><span style="color: #800000;">"</span><span style="color: #000000;">, </span><span style="color: #0000ff;">null</span><span style="color: #000000;">);<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> sql </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;">.Format(</span><span style="color: #800000;">"</span><span style="color: #800000;">delete from [tbl_note_outbox] where [sysid]={0} INSERT INTO [tbl_note_log] ([admin_inner_code],[user_inner_code],[status],[phone],[message],[sendtime]) VALUES('{1}','{2}','{3}','{4}','{5}','{6}')</span><span style="color: #800000;">"</span><span style="color: #000000;">, rdr[</span><span style="color: #800000;">"</span><span style="color: #800000;">sysid</span><span style="color: #800000;">"</span><span style="color: #000000;">], rdr[</span><span style="color: #800000;">"</span><span style="color: #800000;">admin_inner_code</span><span style="color: #800000;">"</span><span style="color: #000000;">], rdr[</span><span style="color: #800000;">"</span><span style="color: #800000;">user_inner_code</span><span style="color: #800000;">"</span><span style="color: #000000;">], msg, phone, message, dtsend);<br />SqlConnection conn </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlConnection(GetSettings(</span><span style="color: #800000;">"</span><span style="color: #800000;">ConnString</span><span style="color: #800000;">"</span><span style="color: #000000;">));<br />SqlCommand delete </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SqlCommand(sql, conn);<br />conn.Open();<br />delete.ExecuteNonQuery();<br />conn.Close();<br />delete.Dispose();<br />}<br /><br />}<br />rdr.Close();<br />con.Close();<br />cmd.Dispose();<br />}<br />}<br /></span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> (Exception ex)<br />{<br /></span><span style="color: #0000ff;">string</span><span style="color: #000000;"> errorPath </span><span style="color: #000000;">=</span><span style="color: #000000;"> CurrentPath </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">Log\\error.log</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (</span><span style="color: #000000;">!</span><span style="color: #000000;">File.Exists(errorPath))<br />{<br />FileStream create </span><span style="color: #000000;">=</span><span style="color: #000000;"> File.Create(errorPath);<br />create.Close();<br />}<br />FileStream fs </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FileStream(errorPath, FileMode.Append, FileAccess.Write);<br />StreamWriter sw </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> StreamWriter(fs);<br />sw.WriteLine(</span><span style="color: #800000;">"</span><span style="color: #800000;">Exception： </span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;">ex.Message</span><span style="color: #000000;">+</span><span style="color: #800000;">"</span><span style="color: #800000;"> --</span><span style="color: #800000;">"</span><span style="color: #000000;">+</span><span style="color: #000000;"> DateTime.Now.ToString());<br />sw.Flush();<br />sw.Close();<br />fs.Close();<br />}<br /><br />}</span></div>
</div>
</div>
<p style="text-indent: 2em;">上面我们使用try、catch访问数据库,并记录错误异常信息. 发送短信是使用发送一个Web请求发送出去的,要注意请求url字符串的编码类型,要与请求页面编码一致,不然会出现乱码.上面我们请求的是智网通集团短信(网址:<a href="http://www.09168.net/" target="_blank">http://www.09168.net/</a>)的Web接口,通过访问他的网站来实现发短信,当然还要传递一些用户名、密码、手机号码和要发送的短信息等参数.他的收费平均大概为7分/条的样子,其实我原本不想用发送Web请求的这样方式来发送短信的,它本身提供了调用它发送短信的DLL,而且还有vc、delphi调用的Demo,但是没有用C#调用的例子,我刚开始试着用非托管动态链接库他提供的DLL,不知方法调用那里出错了一直都没能成功发送出短信,所以后来就用了他的Web方式接口了.他页面直接返回发送短信的状态信息.返回发送成功则短信发送成功,成功后我再将此条信息从要发送短信表里删除并保存在发送记录表里面,以备日后方便查询.其实登陆他的官网进入后台也能方便的查询,如下图.</p>
<div style="padding-left: 2em;"><a href="/upload/jonllen/article/o_msgsite.jpg" target="_blank"><img title="智网动力集团短信操作后台" src="/upload/jonllen/article/o_msgsite.jpg" alt="智网动力集团短信操作后台" width="500" height="386" /></a></div>
<p style="text-indent: 2em;">发送短信服务的代码基本上搞定了,就看怎么在服务器上安装部署了.C#写的Windows后台服务不能直接安装,需要借助.NET Framework里面的InstallUtil.exe安装工具安装,我们可以做成一个执行CMD命令的文件BAT文件来安装启动它,命令如下:</p>
<div style="padding-left: 2em;">
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #000000;">%windir%\Microsoft.NET\Framework\v2.0.50727\InstallUtil.exe %CD%\SendMessage.exe<br />net start SendMessage</span></div>
</div>
</div>
<div style="padding-left: 2em;"><a href="/upload/jonllen/article/o_msginstall.jpg" target="_blank"><img title=".Net正在安装" src="/upload/jonllen/article/o_msginstall.jpg" alt=".Net正在安装" width="500" height="322" /></a></div>
<p style="text-indent: 2em;">安装完成以后,我们可以在我的电脑管理服务里面看到才安装上的后台服务.</p>
<div style="padding-left: 2em;"><img title=".Net后台服务" src="/upload/jonllen/article/o_msgservice.jpg" alt=".Net后台服务" width="485" height="45" /></div>
<p style="text-indent: 2em;">经测试,采用定时访问数据库发送短信的服务并不是很耗资源,刚启动的时候只占用内存为7、8M左右,经过在服务器上连续运行几天不关闭占用的内存也只升到15M左右,运行比较稳定,这里提供一个短信二次开发接口说明,有兴趣的朋友可以去下载看下.</p>
<p style="padding-left: 2em;"><a href="http://files.cnblogs.com/Jonllen/短信接口.rar" target="_blank">智网动力集团短信二次开发说明文档示例</a></p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-01-05 00:54</li>
				<li>update@ 2010-02-11 17:42:03</li>
				<li>阅读(<span id="articleClick">13738</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href=""></a></li>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=22&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/22.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=22";
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