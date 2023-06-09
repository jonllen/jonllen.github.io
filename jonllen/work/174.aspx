
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SM2国密算法证书解析 - 工作 - 金龙博客</title>
<meta name="description" content="一、数字证书的组成
1）证书数据结构
数字证书使用ASN.1编码，证书文件以二进制或Base64格式存放，数据格式使用TLV（Tag Length Value）形式，T代表类型标识符，L是长度值标识符，V代表值编码。数字证书中的每一项都有个对应的类型T。一个数字证书就是一个大的TLV序列，然后V又由多个TLV组合而成。
SM2证书数据和RSA算法证书一样，包含证书版本、序列号、颁发者、使用者主体信息、使用者公钥、有效期、证书扩展项等，只不过SM2证书的公钥算法是使用ECC算法的Oid标识（1.2.840.10045.2.1），然后公钥参数使用SM2国密算法的Oid标识（1.2.156.10197.1.301）。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2014-04-01' } );
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
		     > <a href="/jonllen/work/174.aspx">SM2国密算法证书解析</a>
		</div>
        <div class="article">
			<div class="title"><h2>SM2国密算法证书解析</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p><strong>一、数字证书的组成</strong></p>
<p>1）证书数据结构</p>
<p>数字证书使用ASN.1编码，证书文件以二进制或Base64格式存放，数据格式使用TLV（Tag Length Value）形式，T代表类型标识符，L是长度值标识符，V代表值编码。数字证书中的每一项都有个对应的类型T。一个数字证书就是一个大的TLV序列，然后V又由多个TLV组合而成。</p>
<p>SM2证书数据和RSA算法证书一样，包含证书版本、序列号、颁发者、使用者主体信息、使用者公钥、有效期、证书扩展项等，只不过SM2证书的公钥算法是使用ECC算法的Oid标识（1.2.840.10045.2.1），然后公钥参数使用SM2国密算法的Oid标识（1.2.156.10197.1.301）。</p>
<p>2）签名算法</p>
<p>SM2证书配套的签名算法是基于SM3的SM2签名算法，算法Oid标识为1.2.156.10197.1.501，另外SM2国密算法还定义基于SHA_1、SHA_256的签名，以及使用SM3算法的RSA的签名，只不过签名算法Oid标识不一样。</p>
<p>3）签名数据</p>
<p>SM2的签名数据由2个BigInteger大数组成，再使用Der编码存放签名数据。证书的签名数据由根证书私钥进行签名，使用根证书公钥验证，顶级根证书使用自己的证书公钥验证。</p>
<p><strong>二、数字证书的对象标识符</strong></p>
<p>数字证书的每项都有对象标识Oid，SM2数字证书的主要区别就是公钥算法、公钥参数、签名算法标识不一样，其余的都是X509里标准项。数字证书常见得对象标识有如下：</p>
<div>
<table border="1" cellpadding="5" class="collapse">
<tr>
<th>对象标识符 </th><th>名称 </th><th>OID </th>
</tr>
<tr>
<td>rsaEncryption</td>
<td>RSA算法标识</td>
<td>1.2.840.113549.1.1.1</td>
</tr>
<tr>
<td>sha1withRSAEncryption</td>
<td>SHA1的RSA签名</td>
<td>1.2.840.113549.1.1.5</td>
</tr>
<tr>
<td>ECC</td>
<td>ECC算法标识</td>
<td>1.2.840.10045.2.1</td>
</tr>
<tr>
<td>SM2</td>
<td>SM2算法标识</td>
<td>1.2.156.10197.1.301</td>
</tr>
<tr>
<td>SM3WithSM2</td>
<td>SM3的SM2签名</td>
<td>1.2.156.10197.1.501</td>
</tr>
<tr>
<td>sha1withSM2</td>
<td>SHA1的SM2签名</td>
<td>1.2.156.10197.1.502</td>
</tr>
<tr>
<td>sha256withSM2</td>
<td>SHA256的SM2签名</td>
<td>1.2.156.10197.1.503</td>
</tr>
<tr>
<td>sm3withRSAEncryption</td>
<td>SM3的RSA签名</td>
<td>1.2.156.10197.1.504</td>
</tr>
<tr>
<td>commonName</td>
<td>主体名</td>
<td>2.5.4.3</td>
</tr>
<tr>
<td>emailAddress</td>
<td>邮箱</td>
<td>1.2.840.113549.1.9.1</td>
</tr>
<tr>
<td>cRLDistributionPoints</td>
<td>CRL分发点</td>
<td>2.5.29.31</td>
</tr>
<tr>
<td>extKeyUsage</td>
<td>扩展密钥用法</td>
<td>2.5.29.37</td>
</tr>
<tr>
<td>subjectAltName</td>
<td>使用者备用名称</td>
<td>2.5.29.17</td>
</tr>
<tr>
<td>CP</td>
<td>证书策略</td>
<td>2.5.29.32</td>
</tr>
<tr>
<td>clientAuth</td>
<td>客户端认证</td>
<td>1.3.6.1.5.5.7.3.2</td>
</tr>
</table>
</div>
<p><strong>三、数字证书的解析</strong></p>
<p>数字证书的解析主要是根据ASN.1语法和对象标识符来获取值，然后再是证书的有效期、颁发机构根证书、CRL吊销状态和使用目的等验证。RSA证书是标准算法大部分平台都可以解析，而SM2国密算法证书的解析就不是那么通用的。在Windows的一些较高版本打开SM2证书会显示&ldquo;验证信任关系时，系统层上出现了一个错误&rdquo;，这是因为Windows还不支持SM2算法证书验证，不能识别SM2签名的算法标识，因此需要自行验证SM2证书的签名数据，可基于BouncyCastle开源加密库来实现SM2验证签名，详细参见我的<a href="/jonllen/work/162.aspx" target="_blank" title="SM2国密算法证书制作">国密算法SM2证书制作</a>。</p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, loadSrc : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2014-04-01 19:57</li>
				<li>update@ 2014-04-03 22:09:00</li>
				<li>阅读(<span id="articleClick">17818</span>)</li>
				<li>评论(10)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/173.aspx">来公司2年了</a></li>
<li>下一篇：<a href="/jonllen/work/800.aspx">2015年度工作总结</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'tt')">引用</a></li>

						        </ul>
						        <a>1楼</a> tt 2014-06-18 23:16:34
					        </div><div class="cont">博主，1.2.156.10197.1.502,有这个吗？请问在哪看到的，有具体介绍吗？</div>
					        <div class="reply" ><span>回复：</span>我是参考《信息安全技术 公钥基础设施 电子认证机构标识编码规范》意见稿的OID定义，还没实际应用过。（2014-06-19 10:00:19）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'程序员')">引用</a></li>

						        </ul>
						        <a>2楼</a> 程序员 2014-12-04 11:14:51
					        </div><div class="cont">我看了你的关于sm2的文章，感觉你好牛啊，我现在也在研究这个。目的是把sm2应用到双向ssl中。可以把SM2CryptoServiceProvider的代码让我参考下吗，谢谢。邮箱504243252@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'程序员')">引用</a></li>

						        </ul>
						        <a>3楼</a> 程序员 2014-12-04 11:15:42
					        </div><div class="cont">我看了你的关于sm2的文章，感觉你好牛啊，我现在也在研究这个。目的是把sm2应用到双向ssl中。可以把SM2CryptoServiceProvider的代码让我参考下吗，谢谢。邮箱504243252@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'SM2算法')">引用</a></li>

						        </ul>
						        <a>4楼</a> SM2算法 2015-02-13 17:25:04
					        </div><div class="cont">我最近在研究java 实现SM2算法，希望借鉴你的C#源码，你能发一份给我吗？z0551@126.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'王誉晓')">引用</a></li>

						        </ul>
						        <a>5楼</a> 王誉晓 2015-05-24 10:45:30
					        </div><div class="cont">博主，膜拜您已经很久了，能加个qq号吗，有很多问题想请教您啊，qq：1261634218</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'王誉晓')">引用</a></li>

						        </ul>
						        <a>6楼</a> 王誉晓 2015-05-24 10:45:32
					        </div><div class="cont">博主，膜拜您已经很久了，能加个qq号吗，有很多问题想请教您啊，qq：1261634218</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'icu')">引用</a></li>

						        </ul>
						        <a>7楼</a> icu 2016-05-27 18:48:38
					        </div><div class="cont">非常感谢，最近弄的U盾的证书无法使用，现在终于知道了原因</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'DoubleCA')">引用</a></li>

						        </ul>
						        <a>8楼</a> DoubleCA 2018-05-11 13:54:35
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'DoubleCA')">引用</a></li>

						        </ul>
						        <a>9楼</a> DoubleCA 2018-05-11 13:56:55
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'SM2算法')">引用</a></li>

						        </ul>
						        <a>10楼</a> SM2算法 2018-05-11 14:03:16
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=174&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/174.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=174";
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
                    
		    <li><a href="/jonllen/work/158.aspx">SSL的服务器客户端双向认证</a>(2013-04-20)</li>
                    

	    </ul>
    </div>
</div>
<div id="mod30" class="mod comment">
    <h4 class="head">最新评论</h4>
    <div class="cont">
	    <ul>
		    

<li><a href="/jonllen/js/175.aspx#comment"><b>haomn</b>：你好，我现在前台用js加密，后台用C#解密，但是解不成功。</a></li>

<li><a href="/jonllen/work/162.aspx#comment"><b>陈楠</b>：博主你好，我是刚开始学习研究国密这块的小白，希望您可以发一份国密算法SM2证书制作的实现代码到我的邮箱1024229865@qq.com，万分感谢！</a></li>

<li><a href="/jonllen/work/162.aspx#comment"><b>陈楠</b>：博主你好，我是刚开始学习研究国密这块的小白，希望您可以发一份国密算法SM2证书制作的java实现代码到我的邮箱1024229865@qq.com，万分感谢！</a></li>

<li><a href="/jonllen/work/162.aspx#comment"><b>陈楠</b>：博主你好，我是刚开始学习研究国密这块的小白，希望您可以发一份国密算法SM2证书制作的java实现代码到我的邮箱1024229865@qq.com，万分感谢！</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>fd</b>：s</a></li>

	    </ul>
    </div>
</div>
 
<div id="mod31" class="mod recent">
    <h4 class="head">最近发表</h4>
    <div class="cont">
	    <ul>

                    
		    <li><a href="/jonllen/work/800.aspx">2015年度工作总结</a>(2015-12-31)</li>
                    
		    <li><a href="/jonllen/travel/801.aspx">靖港古镇游</a>(2015-11-29)</li>
                    
		    <li><a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a>(2015-06-05)</li>
                    
		    <li><a href="/jonllen/js/178.aspx">JavaScript实现SM2算法加解密</a>(2014-10-28)</li>
                    
		    <li><a href="/jonllen/breast/177.aspx">2014年国庆</a>(2014-10-04)</li>
                    
	    </ul>
    </div>
</div>
 
<div id="mod36" class="mod search">
	<h4 class="head">搜索</h4>
	<div class="cont">
		<form action="/search/" method="get">
	        <input type="text" name="key" class="text" value="" placeholder="输入搜索内容" />
	        <input type="submit" class="btn" value="搜索" />
	    </form>
	</div>
</div>
 
<div id="mod32" class="mod click">
    <h4 class="head">关注最多</h4>
    <div class="cont">
	    <ul>
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(32721)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(26697)</li>
                    
		    <li><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a>(24208)</li>
                    
		    <li><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a>(22394)</li>
                    
		    <li><a href="/jonllen/java/struts.aspx">Struts增删改查实例及源代码下载</a>(20993)</li>
                    
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