<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	工作 - 金龙博客
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
			
			        <li>
			            
			            <a href="/jonllen/travel/" >
			                旅游<!-- (0)-->
			            </a>
			        </li>
			
		</ul>
	</div>
</div>
 
<!--<div id="mod28" class="mod links">
	<div class="head"><strong class="ico">友情链接</strong></div>
	<div class="cont">
		<ul>
                    
		</ul>
	</div>
</div>-->
 
</div>

	<div class="siderMiddle">
	    <div class="content column column2">
            
            
    
    <div id="ctl00_cphContent_palArticle" class="article">
	
		<div class="position title">
		    
		    <strong>工作</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

<div class="item">
			            
			            <h2><a href="/jonllen/work/800.aspx">2015年度工作总结</a></h2>
			            <!--<div class="date"><a href="">2015-12-31</a></div>-->
			            
			            <div class="summary">
			                今天是2015年的最后一天，时间过得真快，2016年马上向我们跑来。
换工作
2015年三月份，我离开了待了三年的南方城墙 。在离职的前一些时间，我领导提议我担任项目组长，后面担任开发主管，但主要还是会做一些开发任务，同时兼顾一些任务分配和部分管理工作。有一些同事还是说我做得好好的怎么会选择离职？的确在南方城墙我的领导对我特别的好，刚开始进入公司学到了不少的信息安全应用知识，在那里的三年里...
			            </div>
			            <div class="tags">标签：工作 年度总结
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2015-12-31 22:27:03.0</li>
				            <li>阅读(20)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/800.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/174.aspx">SM2国密算法证书解析</a></h2>
			            <!--<div class="date"><a href="">2014-04-01</a></div>-->
			            
			            <div class="summary">
			                一、数字证书的组成
1）证书数据结构
数字证书使用ASN.1编码，证书文件以二进制或Base64格式存放，数据格式使用TLV（Tag Length Value）形式，T代表类型标识符，L是长度值标识符，V代表值编码。数字证书中的每一项都有个对应的类型T。一个数字证书就是一个大的TLV序列，然后V又由多个TLV组合而成。
SM2证书数据和RSA算法证书一样，包含证书版本、序列号、颁发者、使用者主体信息、使用者公钥、有效期、证书扩展项等，只不过SM2证书的公钥算法是使用ECC算法的Oid标识（1.2.840.10045.2.1），然后公钥参数使用SM2国密算法的Oid标识（1.2.156.10197.1.301）。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2014-04-01 19:57:04.0</li>
				            <li>阅读(9164)</li>
				            <li><a class="comment" title="共6条评论" href="/jonllen/work/174.aspx#comment">评论(6)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/173.aspx">来公司2年了</a></h2>
			            <!--<div class="date"><a href="">2014-03-26</a></div>-->
			            
			            <div class="summary">
			                今天，来公司2年了。时间过得真快，回来到这里一下子已经2年了，2年来身边来来往往的很多，只剩下原来那么几个熟悉的，我依然还在这。我一直感觉在这里和之前成长有点慢，我不知道这里有着什么魔力，吸引着我还停留在这里，或许是感性战胜了理性。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2014-03-26 22:36:29.0</li>
				            <li>阅读(1870)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/work/173.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/171.aspx">2013年度工作总结</a></h2>
			            <!--<div class="date"><a href="">2013-12-31</a></div>-->
			            
			            <div class="summary">
			                2013年转眼就快过完了，回首这一年走过来，好像做了很多，但还是停留在以前一些项目上，翻来覆去的很多还是重复的修改工作，感觉成效不明显。对于数字认证这块，还是新学到了些东西，自己也可以慢慢独立开发CA系统，对证书制作应用的了解更加深入了。从中国教育CA到新诚信CA，从华凯到社保CA证书应用，今年大部分的工作还是在CA数字证书应用上。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-12-31 22:40:43.0</li>
				            <li>阅读(1911)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/171.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/170.aspx">数字证书的有效性验证</a></h2>
			            <!--<div class="date"><a href="">2013-11-27</a></div>-->
			            
			            <div class="summary">
			                最近在做数字证书有效性验证的接口，主要是从数字证书的有效期、颁发根证书和CRL进行验证，下面我就从这几个方面来说数字证书的有效性验证。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-11-27 20:58:09.0</li>
				            <li>阅读(5467)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/170.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/169.aspx">基于应用网关的业务系统安全设计</a></h2>
			            <!--<div class="date"><a href="">2013-10-27</a></div>-->
			            
			            <div class="summary">
			                目前，业务系统的安全已越来越重要，并有标准的安全协议，例如安全套接层（Secure Sockets Layer）协议，基于数字证书来认证服务器端，防钓鱼网站，保护客户端向服务器端的安全通信，不被窃取篡改。而在客户端，通常也相应的数字证书完成双向认证，如UKey个人证书。
基于安全协议的业务系统设计，是在最底层通信的安全设计，粗细粒度无法针对某一具体业务，在做定制化的用户认证加解密需求上，仍需要一个能与客户端相对应能完成自定义的安全设计接口，于是便有了应用网关。应用网关基于安全设备和业务系统层中间，业务系统无需要再直接跟安全设备打交道，使业务系统可以和客户端搭建一座安全桥梁。应用网关提供了相关加解密接口，此外应用网关还可以提供数据证书业务的接口。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-10-27 13:49:35.0</li>
				            <li>阅读(2022)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/169.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/164.aspx">SM2非对称算法加解密</a></h2>
			            <!--<div class="date"><a href="">2013-07-28</a></div>-->
			            
			            <div class="summary">
			                在前面文章我们已经可以制作SM2证书了，主要应用了SM2签名验证算法和SM3摘要算法，在本文中主要介绍SM2公钥加密算法。这里我们使用SM2数字证书来做SM2非对称加密，然后使用硬件加密设备做解密，比如加密文件只能由指定的智能密码钥匙UKey才能解开。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-07-28 23:20:41.0</li>
				            <li>阅读(14746)</li>
				            <li><a class="comment" title="共12条评论" href="/jonllen/work/164.aspx#comment">评论(12)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a></h2>
			            <!--<div class="date"><a href="">2013-06-26</a></div>-->
			            
			            <div class="summary">
			                前段时间将系统的RSA算法全部升级为SM2国密算法，密码机和UKey硬件设备大都同时支持RSA和SM2算法，只是应用系统的加解密签名验证需要修改，这个更改底层调用的加密动态库来，原来RSA用的对称加密算法DES（AES）和摘要MD5（SHA1）也相应改变，分别对应SM1、SM3算法，SM1算法基于硬件实现，SM2、SM3算法已公开。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-06-26 23:03:53.0</li>
				            <li>阅读(16957)</li>
				            <li><a class="comment" title="共33条评论" href="/jonllen/work/162.aspx#comment">评论(33)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/160.aspx">Windows 2008 IIS7 启用证书信任列表CTL</a></h2>
			            <!--<div class="date"><a href="">2013-06-07</a></div>-->
			            
			            <div class="summary">
			                在Windows Server 2008的IIS7中，没有直接提供像IIS6中客户端证书的CTL证书信任列表配置，需要安装CTL热修复补丁程序，然后再使用netsh命令配置网站SSL证书和CTL证书信任列表。本文介绍如何在Windows 2008 IIS7 启用证书信任列表CTL。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-06-07 14:22:06.0</li>
				            <li>阅读(7149)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/160.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/159.aspx">关于提高工作效率和加强量化管理的建议</a></h2>
			            <!--<div class="date"><a href="">2013-05-01</a></div>-->
			            
			            <div class="summary">
			                来公司一年多了，有时候偶尔会需要加班，但大部分时间还是过的很安逸。总感觉有些工作做得还不妥，为什么工作的效率和质量感觉不高，工作的积极性和责任心不强。一直都没有正视去发现问题，并提出解决办法。去年公司年会提出了要提高效率执行力的口号，最近又在做加强量化管理的工作，在此我根据以前工作的一些经验，总结下提高工作效率和加强量化管理的建议。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-05-01 14:54:41.0</li>
				            <li>阅读(4777)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/159.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/158.aspx">SSL的服务器客户端双向认证</a></h2>
			            <!--<div class="date"><a href="">2013-04-20</a></div>-->
			            
			            <div class="summary">
			                在一些安全性比较高的网站，我们有时候会需要使用https（加密的HTTP）访问，这就是SSL最常见的应用，安全套接层（Secure Sockets Layer）协议，为网络通信提供安全及数据完整性保护。SSL双向认证即是对服务器和客户端两边同时进行认证。
目前，SSL 安全协议被广泛应用，例如安全电子邮件保护电子邮件消息、使用SSL 协议进行认证和数据加密的SSL VPN等。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-04-20 23:06:27.0</li>
				            <li>阅读(8409)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/158.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/154.aspx">2012年度工作总结</a></h2>
			            <!--<div class="date"><a href="">2013-01-07</a></div>-->
			            
			            <div class="summary">
			                2012年因为我换了工作，我的工作重心从Web互联网转移到信息安全应用系统开发上来。涉及到内容有CA、数字证书、数子签名认证加解密应用，主要项目有中国教育CA和东方新诚信数字认证中心。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-01-07 23:38:10.0</li>
				            <li>阅读(4612)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/154.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/152.aspx">C#下Hessian接口使用</a></h2>
			            <!--<div class="date"><a href="">2012-12-24</a></div>-->
			            
			            <div class="summary">
			                Hessian是个轻量级的数据接口通讯框架，跟WebService、Json类似，不过它是以二进制格式传送，使用非常简单，支持.Net和Java多种开发语言，这里我以.NET(C#)为例来说它的服务接口定义和客户端的调用。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2012-12-24 14:23:56.0</li>
				            <li>阅读(7016)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/152.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/151.aspx">持续集成工具TeamCity配置使用</a></h2>
			            <!--<div class="date"><a href="">2012-12-09</a></div>-->
			            
			            <div class="summary">
			                持续集成CI（Continuous Integration）主要包括自动化的编译、发布和测试集成，对于我们信息系统项目开发非常有用。一般开发人员机器上会搭建自己的开发环境，整个项目在服务器上会搭建测试环境，持续集成工具就可以完成整个项目集成部署的自动化，这里主要讲持续集成工具TeamCity7.1.2配置使用。持续集成工具对我们每次的提交的成果进行集成验证，有利于缺陷的检查，同时减少了每天的一些重复过程，对推进项目开发的起了重要作用。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2012-12-09 15:42:25.0</li>
				            <li>阅读(14057)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/151.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/149.aspx">基于UKey数字证书实现身份认证</a></h2>
			            <!--<div class="date"><a href="">2012-11-26</a></div>-->
			            
			            <div class="summary">
			                随着电子商务在线交易的流行，一些网上银行也推出了系列措施保证在线交易的安全，有使用软证书的，也有使用UKey硬证书的，这都是数字证书的身份认证的应用。下面我就说下从数字证书生成到身份认证实现的过程。
			            </div>
			            <div class="tags">标签：工作 安全
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2012-11-26 13:18:57.0</li>
				            <li>阅读(8765)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/149.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/148.aspx">论构建信息系统安全策略</a></h2>
			            <!--<div class="date"><a href="">2012-11-25</a></div>-->
			            
			            <div class="summary">
			                随着计算机信息技术的快速发展和普及，信息系统已融入到我们日常生活中来，成为我们不可或缺的一部份，信息系统安全也越来越重要。自己作为从事构建信息系统工作的一员，系统安全策略是我们需要考虑的重要问题。信息安全问题主要是从技术与管理的维度，来确保信息的：保密性、完整性、可用性、不可抵赖性。信息系统的安全管理需要多方位进行，包括：物理安全管理、人员安全管理、应用系统安全管理等方面都需要构建切实可行的安全策略。
			            </div>
			            <div class="tags">标签：工作 安全
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2012-11-25 15:40:42.0</li>
				            <li>阅读(4607)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/148.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/145.aspx">2011年度工作总结</a></h2>
			            <!--<div class="date"><a href="">2012-02-18</a></div>-->
			            
			            <div class="summary">
			                博客有近半年没有更新了，2011年已过了一个多月，也是时候要总结了。

一、工作生活

2011年工作还是那么忙，以至于占据了我大部分的生活，加班和带回家都做不完。虽然兢兢业业，但效果不明显，笼罩在工作压力中有点透不过气来。有时候想哭，但告诉自己要坚强！虽然过的很辛苦，但成绩还是有，自己学到了一些东西，个人能力有所成长，也增长了岁数经验。

二、工作感悟

公司周例会有分享工作感悟的环节，于是找了以前写的一些工作感悟，也算是些工作总结吧。

每个项目都不简单，每个项目都要细心呵护；
项目实施是在效率中求质量，产品研发是在质量中求效率；
周密的计划可以使工作有条有理；
做好每一天的事情，明天会更轻松；
把业务需求转变为技术实现，让技术改变世界；
时刻谨记自己的目标承诺，为没有兑现而鞭策；
三、2012计划
			            </div>
			            <div class="tags">标签：工作 总结
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2012-02-18 10:55:30.0</li>
				            <li>阅读(5255)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/145.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/136.aspx">项目管理中的那些纠结事儿</a></h2>
			            <!--<div class="date"><a href="">2011-01-15</a></div>-->
			            
			            <div class="summary">
			                在我看来，项目经理除开做策划方案一些本身的工作外，其他的大部分时间都是在进行协调沟通和管理上。然而在他们光鲜的背后，其实是有着一些鲜为人知的纠结事儿。
1.魅力
2.需求
3.资源
4.责任
5.信任
6.辛酸
7.僵局
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-01-15 23:42:56.0</li>
				            <li>阅读(7999)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/136.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/135.aspx">2010年度工作总结</a></h2>
			            <!--<div class="date"><a href="">2011-01-01</a></div>-->
			            
			            <div class="summary">
			                今天已经是2011年的第1天，回过头看走过的2010年，虽然感觉过程辛苦坎坷，但在我的人生道理上却是前进了一大步，技术知识的累积，项目实践的经验，使我从原来一个稚嫩的小屁孩逐渐成长为稳重的大男孩，从以前的轻浮和莽撞到现在逐渐多了一份理性和荡然。今年大部分的时候是投入在项目实施上，另外还有公司产品的开发，此外还有写相关技术文档。
一、天河部落 类　　型：教育博客
二、IBOX 类　　型：富媒体内容管理平台
三、政协社情民意信息报送系统 类　　型：政务
四、缘中锈 类　　型：命理
五、梓元岗皮具网 类　　型：B2C
通过2010年的洗礼，相信我又坚强了很多，成长了很多。但在接下来的2011年里，我仍不能松懈，必须持之以恒的坚持下去。2010，我想说我今年并没有白干；2011，我期望新的一年里会更精彩。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-01-01 22:47:43.0</li>
				            <li>阅读(8601)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/work/135.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/133.aspx">项目中的A、B、C、D、E角色</a></h2>
			            <!--<div class="date"><a href="">2010-11-27</a></div>-->
			            
			            <div class="summary">
			                今天是12.27广州亚运会的闭幕，广州又度过了一场激情盛会，身在广州我能够感受得到这座城市的美好，为之无私奉献的亚运志愿而感动，为之在赛场拼搏的运动键儿而鼓舞。今晚，在璀璨的烟火中，结束了这场盛会，广州亚运注定将在脑海里留下另人难忘的记忆。
昨天本是亚运会闭幕要放假一天，后来公司临时出个紧急通知规定正常上班，年假再多放一天补回来，好多人都说计划泡汤了，不过我能理解，首先又不是不放，而且年底到了很多项目要收尾，拿我手头上的工作来说可能加班都做不完。
昨天下午张总给我们做培训，其实是做一个游戏，一个关于项目团队沟通协作的游戏，蛮有意思的。我们分成几个小组，每个小组中分别有A、B、C、D、E这几中角色的人，他们的沟通规则如图所示。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-11-27 23:20:06.0</li>
				            <li>阅读(8912)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/work/133.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "/jonllen/work/index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
                            <!--共38条记录-->
                            <a disabled>首页</a>
                            
                            <font color='red'><strong>1</strong></font><a href='javascript:goToPage0(2)' title='转到第2页'>2</a>
                            <a href='javascript:goToPage0(2)' title='转到第2页'>下一页</a>
                            <a href='javascript:goToPage0(2)' title='转到第2页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='1' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/work/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

	</div>
	
</div>
 
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

                    
		    <li><a href="/jonllen/work/800.aspx">2015年度工作总结</a>(2015-12-31)</li>
                    
		    <li><a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a>(2015-06-05)</li>
                    
		    <li><a href="/jonllen/js/178.aspx">JavaScript实现SM2算法加解密</a>(2014-10-28)</li>
                    
		    <li><a href="/jonllen/breast/177.aspx">2014年国庆</a>(2014-10-04)</li>
                    
		    <li><a href="/jonllen/breast/176.aspx">面对&逃避</a>(2014-08-04)</li>
                    
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
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(31802)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(25939)</li>
                    
		    <li><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a>(23144)</li>
                    
		    <li><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a>(20296)</li>
                    
		    <li><a href="/jonllen/java/struts.aspx">Struts增删改查实例及源代码下载</a>(19853)</li>
                    
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