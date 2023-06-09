
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>linux下常用管理命令 - 工作 - 金龙博客</title>
<meta name="description" content="创建新用户
useradd命令（也可以使用adduser）用来创建新的用户帐号，其命令格式如下：
-d 设置新用户的登陆目录
-e 设置新用户的停止日期，日期格式为MM/DD/YY
-f 帐户过期几日后永久停权。当值为0时帐号则立刻被停权。而当值为-1时则关闭此功能。预设值为-1
-g 使新用户加入群组
-G 使新用户加入一个新组。每个群组使用逗号，隔开，不可以夹杂空白字
-s 指定新用户的登陆Shell
-u 设定新用户的ID值
成功创建一个新用户以后，在/etc/passwd文件中就会增加一行该用户的信息，其格式为：〔用户名〕：〔密码〕：〔UID〕：〔GID〕：〔身份描述〕：〔主目录〕：〔登陆Shell〕，其中个字段被冒号：分成7各部分，由于小于500的UID和GID一般都是系统自己保留，不用做普通用户和组的标志，所以新增加的用户和组一般都是UID和GID大于500的。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-12-29' } );
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
		     > <a href="/jonllen/work/94.aspx">linux下常用管理命令</a>
		</div>
        <div class="article">
			<div class="title"><h2>linux下常用管理命令</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="line-height: 18px;">
<p style="text-indent: 2em;"><strong>创建新用户</strong></p>
<p style="text-indent: 2em;">useradd命令（也可以使用adduser）用来创建新的用户帐号，其命令格式如下：</p>
<p style="text-indent: 2em;">-d 设置新用户的登陆目录</p>
<p style="text-indent: 2em;">-e 设置新用户的停止日期，日期格式为MM/DD/YY</p>
<p style="text-indent: 2em;">-f 帐户过期几日后永久停权。当值为0时帐号则立刻被停权。而当值为-1时则关闭此功能。预设值为-1</p>
<p style="text-indent: 2em;">-g 使新用户加入群组</p>
<p style="text-indent: 2em;">-G 使新用户加入一个新组。每个群组使用逗号&ldquo;，&rdquo;隔开，不可以夹杂空白字</p>
<p style="text-indent: 2em;">-s 指定新用户的登陆Shell</p>
<p style="text-indent: 2em;">-u 设定新用户的ID值</p>
<p style="text-indent: 2em;">&nbsp;成功创建一个新用户以后，在/etc/passwd文件中就会增加一行该用户的信息，其格式为：〔用户名〕：〔密码〕：〔UID〕：〔GID〕：〔身份描述〕：〔主目录〕：〔登陆Shell〕，其中个字段被冒号&ldquo;：&rdquo;分成7各部分，由于小于500的UID和GID一般都是系统自己保留，不用做普通用户和组的标志，所以新增加的用户和组一般都是UID和GID大于500的。</p>
<p style="text-indent: 2em;">例如使用如下命令：</p>
<p style="text-indent: 2em;">useradd jonllen</p>
<p style="text-indent: 2em;">将会创建一个名为jonllen的用户</p>
<p style="text-indent: 2em;"><strong>设置和修改用户口令passwd</strong></p>
<p style="text-indent: 2em;">passwd命令用来设置和修改用户命令，只有超级用户和用户自己可以修改密码，其他的普通用户没有修改其他用户密码的权利。其命令为：passwd (用户名)。为避免输入密码是被人注意到有多少位，Linux并不采用类似Windows的密码回显〔显示为*号〕，所以，输入的这些字符是看不见的。例如，为新建的jonllen用户设置密码可使用如下命令：</p>
<p style="text-indent: 2em;">passwd jonllen</p>
<p style="text-indent: 2em;">根据系统的提示信息输入两次密码，系统会显示passwd ：:all authentication tokens updated successfully。表示修改密码成功了。新建用户的工作只有在该用户设置了口令后才算完成，否则无法使用该用户名登陆。</p>
<p style="text-indent: 2em;"><strong>修改用户信息usermod</strong></p>
<p style="text-indent: 2em;">usermod命令用来修改用户信息，其命令格式为：usermod〔选项〕〔用户名)，常用命令选项如下：</p>
<p style="text-indent: 2em;">-d 更新使用者新的登陆目录</p>
<p style="text-indent: 2em;">-e 设置新用户的停止日期，日期格式为MM/DD/YY</p>
<p style="text-indent: 2em;">-f 帐户过期几日后永久停权。当值为0时帐号则立刻被停权。而当值为-1时则关闭此功能。预设值为-1</p>
<p style="text-indent: 2em;">-g 更新使用者新用户加入群组</p>
<p style="text-indent: 2em;">-G 定义使用者为一堆groups的成员。每个群组使用&ldquo;？？&rdquo;隔开，不可以夹杂空白字</p>
<p style="text-indent: 2em;">-l 变更用户登陆时的名称，同时使用者目录名也会跟着更动成新的名称</p>
<p style="text-indent: 2em;">-s 指定新用户Shell</p>
<p style="text-indent: 2em;">-u 用户ID值，必须为唯一的ID值。用户目录树下所用的文档目录其userID会自动变更，放在拥护目录外的文档则要自行手动更动</p>
<p style="text-indent: 2em;">例如，下面的命令修改用户信息：</p>
<p style="text-indent: 2em;">usermod &ndash;d/home &ndash;s/bin/bash jonllen</p>
<p style="text-indent: 2em;">将用户名jonllen的主目录路径设置在/home,登陆的Shell设置为/bin/bash。一般情况下usermod命令会参照命令指令的部分修改用户帐号信息。但usermod不允许改变正在线上的使用者帐号名称，因此，当用usermod来改变用户帐号信息时，必须确认这名没在电脑上执行任何程序。</p>
<p style="text-indent: 2em;"><strong>删除用户userdel</strong></p>
<p style="text-indent: 2em;">userdel命令用来删除已经存在的用户及相关的文档，其命令格式为：userdel 〔选项〕用户名，userdel命令的常用选项：</p>
<p style="text-indent: 2em;">-r 将用户目录下的文档一并删除。在其他位置上的文档也将一一找出并删除。</p>
<p style="text-indent: 2em;">Userdel不允许移除正在线上的用户帐号，因此，如果想删除这类用户帐号，必须先杀掉用户在系统上运行的程序才能进行帐号删除。</p>
<p style="text-indent: 2em;"><strong>用户间切换su</strong></p>
<p style="text-indent: 2em;">su 命令常用于不同用户间切换。其命令格式为：su〔用户名〕。su命令的常见用法是变成跟用户或超级用户，如果发出不带用户名的su命令，则系统提示输入根口令，输入之后则可换为根用户。如果登陆为根用户，则可以用su命令成为系统上任何用户而不需要口令。例如，如果登陆为jonllen，要切换为root，只要用如下命令：</p>
<p style="text-indent: 2em;">su root</p>
<p style="text-indent: 2em;">然后系统提示输入root口令，输入正确的口令之后就可以切换到root。完成之后就可以用exit命令返回到jonllen。</p>
<p style="text-indent: 2em;"><strong>查看当前在线用户who</strong></p>
<p style="text-indent: 2em;">who命令主要用于查看当前在线上的用户情况。这个命令非常有用。如果用户想和其他用户建立即使通讯，比如使用talk命令，那么首先要确定的就是该用户确实在线上，不然talk进程就无法建立起来。又如，系统管理员希望监视每个登陆的用户此时此刻的所作所为，也要使用who命令。Who命令的常用命令格式和常用选项如下：</p>
<p style="text-indent: 2em;">who (选项)</p>
<p style="text-indent: 2em;">-a 显示所有用户的所有信息</p>
<p style="text-indent: 2em;">-m 显示运行该程序的用户名，和&ldquo;who am I&rdquo;的作用一样</p>
<p style="text-indent: 2em;">-q 只显示用户的登陆帐号和登陆用户的数量，该选项优先级高于其他任何选项</p>
<p style="text-indent: 2em;">-u 在登陆用户后面显示该用户最后一次对系统进行操作距今的时间</p>
<p style="text-indent: 2em;">-H 显示列标题</p>
<p style="text-indent: 2em;">所有的选项是可选的，例如，使用命令：</p>
<p style="text-indent: 2em;">who -aH</p>
<p style="text-indent: 2em;">查看所有用户的所有信息及标题。</p>
<p style="text-indent: 2em;"><strong>新建组群groupadd</strong></p>
<p style="text-indent: 2em;">groupadd命令用来建立新的用户组，其命令格式为：groupadd〔选项〕〔用户名称〕，常用选项有：</p>
<p style="text-indent: 2em;">-g GID值。除非使用-o参数不然该值必须是唯一，不可相同，数值不可为负，GID值预设为最小不得小于500而逐次增加。0&mdash;499传统上是保留系统帐号使用。</p>
<p style="text-indent: 2em;">-f 新增的一个已经存在的群组帐号，系统会出现错误讯息然后结束groupadd</p>
<p style="text-indent: 2em;">如果是这样的情况，不会新增这个群组（如果是这个情况，系统不会在新增一次）。也可同时加上-g选项，当你加上一个GID时，此时GID就不用是唯一值，可不加-o参数,建好的群组会显示建立后的结果（adding a group as neither &ndash;g or &ndash;o options were specified）,这是Red Hat Linux额外增设的选项。</p>
<p style="text-indent: 2em;"><strong>删除群组groupdel</strong></p>
<p style="text-indent: 2em;">groupdel命令用来删除已经存在的用户组，其命令格式为：groupdel (组名)。同userdel类似，如果有任何一个组内的用户在上线，就不能移除该用户组，因此，如果组内有用户在线的话，最好先移出该用户，然后在删除该用户。</p>
<p style="text-indent: 2em;"><strong>vi编辑器基本语法</strong></p>
<p style="text-indent: 2em;">vi是Linux里最基本的编辑器，可分为三种操作状态，分别是命令模式（Command mode）、插入模式（Insert mode）和底线命令模式（Last line mode），各模式的功能区分如下：</p>
<p style="text-indent: 2em;">１.Comand mode：控制屏幕光标的移动，字符或光标的删除，移动复制某区段及进入Insert mode下，或者到Last line mode。</p>
<p style="text-indent: 2em;">２.Insert mode：唯有在Insert mode下，才可做文字数据输入，按Esc等可回到Comand mode。</p>
<p style="text-indent: 2em;">３.Last line mode：将储存文件或离开编辑器，也可设置编辑环境，如寻找字符串、列出行号等。不过可以把vi简化成两个模式，即是将Last line mode也算入Command mode,把vi分成Command 和Insert mode。</p>
<p style="text-indent: 2em;">［vi的基本操作］</p>
<p style="text-indent: 2em;">在系统提示符号输入vi及文件名称后，即可进入vi全屏幕编辑画面：vi (文件名)。有一点要特别注意，就是进入vi之后是默认是处于&ldquo;Command mode&rdquo;命令模式，需要要切换到Insert mode才能输入文字。</p>
<p style="text-indent: 2em;">１.切换至Insert mode编辑文件</p>
<p style="text-indent: 2em;">在Command mode下按&lsquo;i&rsquo;、&lsquo;a&rsquo;或&lsquo;o&rsquo;三键就可进入Insert mode。这时候就可以开始输入文字了。</p>
<p style="text-indent: 2em;">i 插入，从目前光标所在之处插入所输入的文字。</p>
<p style="text-indent: 2em;">a 增加，目前光标所在的下一个字开始输入文字。</p>
<p style="text-indent: 2em;">o 插入新的一行，从行首开始输入文字。</p>
<p style="text-indent: 2em;">２.Insert的切换&rarr;Command mode，按Esc键</p>
<p style="text-indent: 2em;">３.离开vi及保存文件</p>
<p style="text-indent: 2em;">在Command mode下，可按冒号&ldquo;：&rdquo;键入入Last line mode，例如：</p>
<p style="text-indent: 2em;">:w filename (输入&ldquo;w filename&rdquo;，将文章存入指定的文件名filename)</p>
<p style="text-indent: 2em;">:wq (输入&ldquo;wq&rdquo;，因为进入之时已经指定文件名testfile，所以会写入testfile并离开vi)</p>
<p style="text-indent: 2em;">:q! (输入&ldquo;q!&rdquo;，强制离开并放弃编辑的文件)</p>
<p style="text-indent: 2em;">［Command mode常用功能键命令］</p>
<p style="text-indent: 2em;">１.移动光标</p>
<p style="text-indent: 2em;">vi可以直接用键盘上的光标键来上下左右移动，但正规的vi是用小写英文字母</p>
<p style="text-indent: 2em;">h、j、k、l，分别控制光标左、下、上、右移一格。</p>
<p style="text-indent: 2em;">按Ctrl+B：屏幕往后移动一页。[常用]</p>
<p style="text-indent: 2em;">按Ctrl+F：屏幕往前移动一页。[常用]</p>
<p style="text-indent: 2em;">按Ctrl+U：屏幕往后移动半页。</p>
<p style="text-indent: 2em;">按Ctrl+D：屏幕往前移动半页。</p>
<p style="text-indent: 2em;">按 0 （数字零）：移动文章的开头。[常用]</p>
<p style="text-indent: 2em;">按 G：移动到文章的最后。[常用]</p>
<p style="text-indent: 2em;">按 w：光标跳到下个word的开头。[常用]</p>
<p style="text-indent: 2em;">按 e：光标跳到下个word的字尾。</p>
<p style="text-indent: 2em;">按 b：光标回到上个word的开头。</p>
<p style="text-indent: 2em;">按 $：移到光标所在行的行尾。[常用]</p>
<p style="text-indent: 2em;">按 ^：移到该行第一个非空白的字符。</p>
<p style="text-indent: 2em;">按 0：移到该行的开头位置。[常用]</p>
<p style="text-indent: 2em;">按 #：移到该行的第#个位置，例：51、121。[常用]</p>
<p style="text-indent: 2em;">２.删除文字</p>
<p style="text-indent: 2em;">x：每按一次删除光标所在位置的后面一个字符。[超常用]</p>
<p style="text-indent: 2em;">#x：例如，6x 表删除光标所在位置的后面6个字符。[常用]</p>
<p style="text-indent: 2em;">X：大写的X，每按一次删除光标所在位置的前面一个字符。</p>
<p style="text-indent: 2em;">#X：例如，20X 表删除光标所在位置的前面20个字符。</p>
<p style="text-indent: 2em;">dd：删除光标所在行。[超常用]</p>
<p style="text-indent: 2em;">#dd：例如，6dd表删除从光标所在的该行往下数6行之文字。[常用]</p>
<p style="text-indent: 2em;">３.复制</p>
<p style="text-indent: 2em;">yw：将光标所在处到字尾的字符复制到缓冲区中（和#x、#X的功能相反）。</p>
<p style="text-indent: 2em;">p：将缓冲区内的字符粘贴到光标所在位置（指令&lsquo;yw&rsquo;与&lsquo;p必须搭配使用）。</p>
<p style="text-indent: 2em;">yy：复制光标所在行。[超常用]</p>
<p style="text-indent: 2em;">p：复制单行到您想粘贴之处。（指令&lsquo;yy&rsquo;与&lsquo;p&rsquo;必须搭配使用）</p>
<p style="text-indent: 2em;">#yy：如：6yy表示拷贝从光标所在的该行往下数6行之文字。[常用]</p>
<p style="text-indent: 2em;">p:复制多行到您想粘贴之处。（指令&lsquo;#yy&rsquo;与&lsquo;p&rsquo;必须搭配使用）</p>
<p style="text-indent: 2em;">&ldquo;ayy：将复制行放入buffer a, vi提供buffer功能，可将常用的数据存在buffer</p>
<p style="text-indent: 2em;">&ldquo;ap：将放在buffer a的数据粘贴。</p>
<p style="text-indent: 2em;">&ldquo;b3yy：将三行数据存入buffer b。</p>
<p style="text-indent: 2em;">&ldquo;b3p：将存在buffer b的资料粘贴</p>
<p style="text-indent: 2em;">４.取代</p>
<p style="text-indent: 2em;">r: 取代光标所在处的字符：[常用]</p>
<p style="text-indent: 2em;">R：取代字符直到按Esc为止。</p>
<p style="text-indent: 2em;">５.复原（undo）上一个指令</p>
<p style="text-indent: 2em;">u：假如您误操作一个指令，可以马上按u，回复到上一个操作。[超常用]</p>
<p style="text-indent: 2em;">.: .可以重复执行上一次的指令。</p>
<p style="text-indent: 2em;">６.更改</p>
<p style="text-indent: 2em;">cw：更改光标所在处的字到字尾$处。</p>
<p style="text-indent: 2em;">c#w：例如，c3w代表更改3个字。</p>
<p style="text-indent: 2em;">７.跳至指定行</p>
<p style="text-indent: 2em;">Ctrl+G：列出光标所在行的行号。</p>
<p style="text-indent: 2em;">#G：例如，15G，表示移动光标至文章的第15行行首。[常用]</p>
<p style="text-indent: 2em;">［Last line mode常用功能键命令］</p>
<p style="text-indent: 2em;">要进入Last line mode，先按Esc键确定您已经处于Command mode下后，再按冒号&ldquo;：&rdquo;或&ldquo;/&rdquo;或&ldquo;？&rdquo;三键的其中一键进入Last line mode。</p>
<p style="text-indent: 2em;">１.列出行号</p>
<p style="text-indent: 2em;">set nu：输入&ldquo;set nu&rdquo;后，会在文章的每一行前面列出行号。</p>
<p style="text-indent: 2em;">２.跳到文章的某一行</p>
<p style="text-indent: 2em;">#：井号代表一个数字，在Last line mode提示符号&ldquo;：&rdquo;前输入数字，再按Enter就会跳到该行了，如：15[Enter]就会跳到文章的第15行。[常用]</p>
<p style="text-indent: 2em;">３.寻找字符串</p>
<p style="text-indent: 2em;">/关键字：先按/，再输入您想寻找的字，如果第一次找的关键字不是您相尽可能的，可以一直按n会往下寻找到您要的关键字为止。</p>
<p style="text-indent: 2em;">？关键字：先按？，再输入您想寻找的字，如果第一次找的关键字不是您想要的，可以按n会往前寻找到您要的关键字为止。</p>
<p style="text-indent: 2em;">４.取代字符串</p>
<p style="text-indent: 2em;">1，$s/string/replae/g：在last line mode输入&ldquo;1，$s/string/replace/g&rdquo;会将全文的string字符串取代为replace字符串，其中1,$s就是指搜寻区间为文章从头至尾的意思，g则是表示全部取代不必确认。%s/string/replace/c：同样会将全文的string字符串取代为replace字符串，和上面指令不同的地方是，%s和1,$s是相同的功能，c则是表示要替代之前必须再次确认是否取代。</p>
<p style="text-indent: 2em;">1,20s/string/replace/g：将1至20行间的string替代为relpace字符串。</p>
<p style="text-indent: 2em;">５.存文件</p>
<p style="text-indent: 2em;">w：在last line mode提示符号&ldquo;：&rdquo;前按w即可将文件存起来。[超常用]</p>
<p style="text-indent: 2em;">#，# w filename：如果您想摘取文章的某一段，存成另一个文件，可用这个指令#代表行号，例如30,50 w nice，将您正在编辑文章的第30~50行存成nice这个文件。</p>
<p style="text-indent: 2em;">６.离开</p>
<p style="text-indent: 2em;">q：按q就离开，有时如果无法离开vi，可搭配&ldquo;！：强置离开vi，如&ldquo;q！&rdquo;</p>
<p style="text-indent: 2em;">qw：一般建议离开时，搭配w一起使用，如此离开时还可存文件。[常用]</p>
<p style="text-indent: 2em;"><strong>smb文件共享</strong></p>
<p style="text-indent: 2em;">１.启动samba服务</p>
<p style="text-indent: 2em;">/etc/init.d/samba start</p>
<p style="text-indent: 2em;">２.访问Windows共享目录</p>
<p style="text-indent: 2em;">smbclient -U Jonllen&nbsp;-L 192.168.0.77（之后根据提示输入用户Jonllen的密码）</p>
<p style="text-indent: 2em;">３.将共享目录mount挂接到本地机上</p>
<p style="text-indent: 2em;">mount -t smbfs -o username=Jonllen //home/windows</p>
<p style="text-indent: 2em;">也可以把 passwd 直接作为参数传递</p>
<p style="text-indent: 2em;">mount -t smbfs -o username=Jonllen,passwd=xxx //home/windows</p>
<p style="text-indent: 2em;">直接把 IP 地址作为参数</p>
<p style="text-indent: 2em;">mount -t smbfs -o username=Jonllen,passwd=xxxx,ip=xxx.xxx.xxx.xxx //home/windows</p>
<p style="text-indent: 2em;">mount -t cifs //192.168.0.77/share /home/mnt -o username=jonllen,password=xxx,iocharset=utf8</p>
<p style="text-indent: 2em;">４.创建一个允许读写的共享目录</p>
<p style="text-indent: 2em;">vi /etc/samba/smb.conf</p>
<p style="text-indent: 2em;">［修改配置文件］</p>
<p style="text-indent: 2em;">[global]</p>
<p style="text-indent: 2em;">workgroup = fortuneage</p>
<p style="text-indent: 2em;">netbios name = Linux249</p>
<p style="text-indent: 2em;">server string = Linux Samba Server</p>
<p style="text-indent: 2em;">security = share</p>
<p style="text-indent: 2em;">[home]</p>
<p style="text-indent: 2em;">&nbsp; path = /opt/share</p>
<p style="text-indent: 2em;">&nbsp; writeable = yes</p>
<p style="text-indent: 2em;">&nbsp; browseable = yes</p>
<p style="text-indent: 2em;">&nbsp; guest ok = yes</p>
<p style="text-indent: 2em;">[global]这段是全局配置，是必段写的。workgroup 就是Windows中显示的工作组；在这里我设置的是fortuneage；netbios name 就是在Windows中显示出来的计算机名；server string 就是Samba服务器说明，可以自己来定义；这个不是什么重要的；security 这是验证和登录方式，这里我们用了share ；验证方式有好多种，这是其中一种；另外一种常用的是user的验证方式；如果用share呢，就是不用设置用户和密码了。</p>
<p style="text-indent: 2em;">[home]这个在Windows中显示出来是共享的目录；path = 可以设置要共享的目录放在哪里；writeable 是否可写，这里我设置为可写；browseable 是否可以浏览，可以；可以浏览意味着，我们在工作组下能看到共享文件夹。如果您不想显示出来，那就设置为 browseable=no；guest ok 匿名用户以guest身份是登录。</p>
<p style="text-indent: 2em;">［建立相应目录并授权］</p>
<p style="text-indent: 2em;">mkdir -p /opt/share</p>
<p style="text-indent: 2em;">id nobody</p>
<p style="text-indent: 2em;">chown -R nobody:nobody /opt/share</p>
<p style="text-indent: 2em;">关于授权nobody，我们先用id命令查看了nobody用户的信息，发现他的用户组也是nobody，我们要以这个为准。有些系统nobody用户组并非是nobody。</p>
<p style="text-indent: 2em;"><strong>Linux应用软件安装</strong></p>
<p style="text-indent: 2em;">１.rpm包</p>
<p style="text-indent: 2em;">这种软件包就像windows的EXE安装文件一样，各种文件已经编译好，并打了包，哪个文件该放到哪个文件夹，都指定好了，安装非常方便，在图形界面里你只需要双击就能自动安装，在shell命令行下如下安装：</p>
<p style="text-indent: 2em;">rpm -i oracle-xe-10.2.0.1-1.0.i386.rpm（--force --nodeps选项忽略所有依赖关系和文件问题）</p>
<p style="text-indent: 2em;">［卸载方法］</p>
<p style="text-indent: 2em;">因为Linux下的软件名都包括版本号，所以卸载前最好先确定这个软件的完整名称。查找RPM包软件：rpm -qa xxx*，注意：xxx指软件名称开头的几个字母，不要求写全，但别错，*就是通配符号&ldquo;*&rdquo;，即星号，如你想查找机子里安装的REALPLAYER软件，可以输入：rpm -qa realplay*。找到软件后，显示出来的是软件完整名称，如firefox-1.0.1-1.3.2，执行卸载命令：rpm -e firefox-1.0.1-1.3.2。查看安装目录：执行命令rpm -ql firefox-1.0.1-1.3.2。</p>
<p style="text-indent: 2em;">２.tar.gz（bz或bz2等）结尾的源代码包，这种软件包里面都是源程序，没有编译过，需要编译后才能安装</p>
<p style="text-indent: 2em;">用CD 命令进入源代码压缩包所在的目录，根据压缩包类型解压缩文件(*代表压缩包名称)</p>
<p style="text-indent: 2em;">tar -zxvf ****.tar.gz</p>
<p style="text-indent: 2em;">tar -jxvf ****.tar.bz(或bz2)</p>
<p style="text-indent: 2em;">用CD命令进入解压缩后的目录，输入编译文件命令：./configure（有的压缩包已经编译过，这一步可以省去），然后是命令：make，再是安装文件命令：make install，安装完毕。</p>
<p style="text-indent: 2em;">［卸载方法］</p>
<p style="text-indent: 2em;">用CD 命令进入编译后的软件目录，即安装时的目录，执行反安装命令：make uninstall，注意make install命令过程中的安装目录，或者阅读安装目录里面的readme文件，当然最好的办法是在安装的过程中指定安装目录，即在./configure命令后面加参数--prefix=/**，如：./configure --prefix=/usr/local/aaaa，即把软件装在/usr/local/路径的aaaa这个目录里。一般的软件的默认安装目录在/usr/local或者/opt里，可以到那里去找找。</p>
<p style="text-indent: 2em;">３.以bin结尾的安装包，这种包类似于RPM包，安装也比较简单</p>
<p style="text-indent: 2em;">用CD 命令进入源代码压缩包所在的目录，给文件加上可执行属性：chmod +x ***.bin（中间是字母x，小写），执行命令：./******.bin(realplayer for Linux就是这样的安装包)</p>
<p style="text-indent: 2em;">［卸载方法］</p>
<p style="text-indent: 2em;">把安装时中选择的安装目录删除就OK。</p>
<p style="text-indent: 2em;">［安装完软件后如何执行］</p>
<p style="text-indent: 2em;">有些软件安装后会自动在应用程序列表里加上快捷键，和windows一样，到那里找就行了；</p>
<p style="text-indent: 2em;">如果在应用程序列表里找不到的话，可以直接在/开始/运行命令里输入命令：启动命令一般就是软件名，如firefox，realplay，xmms等；</p>
<p style="text-indent: 2em;">也可以打开一个shell终端，输入软件名，和在&ldquo;运行命令&rdquo;里一样。如果不知道命令全程的话，可以输入开头的字母，然后按tab键查找，系统会自动显示以输入字母开头的所有命令/；</p>
<p style="text-indent: 2em;">你也可以直接到安装目录下运行启动文件，Linux下的可执行图标和shell终端图标很像；</p>
<p style="text-indent: 2em;">到/usr/bin目录里找安装的软件启动文件执行命令。Linux系统把所有可执行的文件命令在/usr/bin目录里都作了启动连接，你可以去那个目录寻找你安装的文件的启动命令，双击启动；</p>
<p style="text-indent: 2em;"><strong>Linux后台服务</strong></p>
<p style="text-indent: 2em;">１.查看所有后台服务命令</p>
<p style="text-indent: 2em;">service --status-all</p>
<p style="text-indent: 2em;">启动服务：service&nbsp;smb start</p>
<p style="text-indent: 2em;">停止服务：service&nbsp;smb stop</p>
<p style="text-indent: 2em;">重新启动：service&nbsp;smb restart</p>
<p style="text-indent: 2em;">２.注册后台服务</p>
<p style="text-indent: 2em;">cp /usr/local/mysql5/share/mysql/mysql.server /etc/init.d/mysqld</p>
<p style="text-indent: 2em;">chkconfig --add mysqld</p>
<p style="text-indent: 2em;">chkconfig --level 2345 mysqld on</p>
<p style="text-indent: 2em;">chown mysql:mysql -R /usr/local/mysql5/</p>
<p style="text-indent: 2em;">service mysqld start</p>
<p style="text-indent: 2em;"><strong>对比Windows注册后台服务的cmd命令</strong></p>
<p style="text-indent: 2em;">sc create mysql binPath= "C:\Program Files\MySQL\MySQL Server 5.0\bin\mysqld-nt.exe" DisplayName= "MySql" depend= Tcpip start= auto</p>
<p style="text-indent: 2em;">sc delete mysql</p>
<p style="text-indent: 2em;"><strong>Xshell设置显示语言</strong></p>
<p style="text-indent: 2em;">export LANG=en_US</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-12-29 23:29</li>
				<li>update@ 2009-12-30 16:55:08</li>
				<li>阅读(<span id="articleClick">8007</span>)</li>
				<li>评论(1)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/71.aspx">时代财富技术部Java选型基础培训草稿</a></li>
<li>下一篇：<a href="/jonllen/work/96.aspx">今天回公司处理问题</a></li></ul>
		</div>
		

<div class="correlative">
	
		    <h4>相关文章</h4>
			<ul>



			</ul>
		
</div>

		
		<div class="comment">
			<div class="title">评论</div>
			<div class="commentlist" id="commentContent">
				



				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'文夕')">引用</a></li>

						        </ul>
						        <a>1楼</a> 文夕 2010-01-01 17:49:22
					        </div><div class="cont">新年快乐~用过一段时间linux，不能玩游戏，有点受不了。<br />顺便说下，你的链接已经加上了~</div>
					        <div class="reply" ><span>回复：</span>呵呵，谢谢~~`
到时候向你请教。（2010-01-01 19:08:20）</div>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=94&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/94.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=94";
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