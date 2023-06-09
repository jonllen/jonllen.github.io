
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>JS版SM2国密算法的签名验证 - JavaScript - 金龙博客</title>
<meta name="description" content="前段时间因工作需要，了解到在Github上已经有人实现了用JavaScript来写签名和验签，支持RSA、ECC、DSA等算法，还能解析X.509证书，一时觉得JavaScript是无比强大。后面就研究了下JavaScript版的ECC算法签名验证，自己再扩展实现了SM2国密算法的签名验证。

基于现有已实现的C#版SM2国密算法的签名验证，再结合原来JavaScript的ECC算法，使用JavaScript实现SM2国密算法的签名验证相对简单，只需要将C#语言翻译成JavaScript语言实现。不过中间还是遇到了些问题，主要是在JavaScript计算SM3摘要值大数的运算上还是有些不同。" />
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
	    <h4>金龙，目前就职于一家软件公司，从事金融系统开发设计。
</h4>
	</div>
</div>
<div class="auto" id="nav" >
	<ul id="navigation">
		<li><a href="/">首页</a></li>

<li><a href="/jonllen/work/"  >工作</a></li>
		<li><a class="up" href="/album/">相册</a></li>
		<li><a href="/leave/"><!--留言--></a></li>
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
			<dd>简述：金龙，目前就职于一家软件公司，从事金融系统开发设计。
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2014-06-17' } );
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
                    
		    <li><a href="http://www.thjy.org" title="天河部落教育博客" target="_blank">天河部落</a></li>
                    
		    <li><a href="http://weibo.com/zjj" title="时代财富张静君的微博" target="_blank">张静君</a></li>
                    
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
		     > <a href="/jonllen/js/">JavaScript</a>
		     > <a href="/jonllen/js/175.aspx">JS版SM2国密算法的签名验证</a>
		</div>
        <div class="article">
			<div class="title"><h2>JS版SM2国密算法的签名验证</h2></div>
			<div class="category">分类：<a href="/jonllen/js/">JavaScript</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>前段时间因工作需要，了解到在Github上已经有人实现了用JavaScript来写签名和验签，支持RSA、ECC、DSA等算法，还能解析X.509证书，一时觉得JavaScript是无比强大。后面就研究了下JavaScript版的ECC算法签名验证，自己再扩展实现了SM2国密算法的签名验证。</p>
<p>基于现有已实现的C#版SM2国密算法的签名验证，再结合原来JavaScript的ECC算法，使用JavaScript实现SM2国密算法的签名验证相对简单，只需要将C#语言翻译成JavaScript语言实现。不过中间还是遇到了些问题，主要是在JavaScript计算SM3摘要值大数的运算上还是有些不同。</p>
<p><strong>1）JS计算SM3摘要</strong></p>
<p>在做SM2签名之前，需要先计算出原始数据的SM3摘要值，需要计算出z值，这其中就用到了大量的移位运算。JavaScript本身支持移位异或运算，但在C#中数字有int、long等多种类型，而在JavaScript中都用Number类型，这些不同类型运算要分别处理。C#的long类型表示64位有符号的整数，为区分32位整数在值后面加L显示定义。而在JavaScript就要把整数转成64位长度来计算。</p>
<p>C#中默认不检查运算上溢\下溢，除开使用常量编译器会提示，或显示使用了checked关键字检查溢出。原来在C#中使用int类型运算的，并在计算后可能会超出Int32.MinValue~Int32.MaxValue范围的，在JavaScript中就需要截取超出32位长度的高位。并且要按优先顺序计算，即a+b+c必须先计算出(a+b)结果是否溢出再加c，不能直接先计算(a+b+c)总结果再计算溢出后32位的值。因此我用JavaScript写了个C#中的unchecked情况下Int32位数字溢出后转换的值。</p>
<p>而C#中原来的byte[]在JavaScript里变成了Array数组，原来C#中使用的BigInteger大数计算类也原封不动移到了JavaScript中来，还有ECC曲线的Curve、ECPoint对象等等，这样只需要注册SM3、SM2算法再实现就可以了，原来C#中SM2算法就不在此叙述了。</p>
<p><strong>2）SM2签名用的随机数</strong></p>
<p>原来在SM2测试曲线的示例中，有人提出每次签名的结果是一样的。后面发现那里签名时用的k是固定值，所以只要签名密钥和原始数据没变，每次签名后的结果都是一样的。SM2国密标准里用的k值是随机生成的，所以SM2国密算法的签名结果每次都不一样。而SM2国密算法的加密中也生成了随机数，因此每次SM2加密结果也都不一样。</p>
<p><strong>3）JS的SM2算法应用</strong></p>
<p>JavaScript实现SM2国密算法的签名和验证现在应用得比较少，一般来说签名使用的私钥都封在UKey安全设备中了，为保证安全性硬件本身提供了算法接口，很少使用软算法实现。不过JavaScript作为客户端的脚本语言，可以在提交到服务器端前对数据进行加密，这个还是非常有意义的，比如可以在客户端使用公钥加密账号信息，然后在服务器端用私钥进行解密。</p>
<p>最后，提供一个SM2国密算法的SM2证书验签功能的Demo，完整的SM2的密钥对生成、签名、验证<a href="/upload/jonllen/case/jsrsasign-master/sample-sm2.html" target="_blank">点这里</a>下载。</p>
<div><fieldset><legend>SM2签名验证</legend>
<ul>
<li><label>原始数据：<input id="txtRawData" type="text" value="jonllen" style="width: 450px;" /></label> </li>
<li><label>签名数据：<input id="txtSignData" type="text" value="64LTP1CphtWrfHnFB3OMyEuV1+ei5DpBPZY39VeQUb9V6yRYP3SbpAWivrpP1q5j0D8b4xQid4327TK9NvEbrA==" style="width: 450px;" /></label>(Base64) </li>
<li><label>证书数据：<textarea id="txtCertData" style="width: 450px; height: 40px;">MIICQDCCAeWgAwIBAgIQG2THdO0arf/KaLKoTVlCOzAMBggqgRzPVQGDdQUAMB8xEDAOBgNVBAMMB1NNMlJPT1QxCzAJBgNVBAYTAkNOMB4XDTE0MDYxODEzNTgzNVoXDTE2MDYxODEzNTgzNVowZTEiMCAGCSqGSIb3DQEJARYTam9ubGxlbkBob3RtYWlsLmNvbTEPMA0GA1UEBwwG6ZW/5rKZMQ8wDQYDVQQIDAbmuZbljZcxCzAJBgNVBAYTAkNOMRAwDgYDVQQDDAdKb25sbGVuMFkwEwYHKoZIzj0CAQYIKoEcz1UBgi0DQgAEXLAuT39XB5LJmTprFiGLPfqZl5tyGm1n9oXSVDrGRP2RfQRJOqD6cH6PEvmGhM1ydJv0iQMg2mvh6PjAlm58W6OBujCBtzAMBgNVHRMBAf8EAjAAMB0GA1UdDgQWBBQstXX3UIwlBK9k70GJYGM8mjG6gTAfBgNVHSMEGDAWgBQ/LpOmNnAJt7mAwIZpsX3cnqlkqjBCBggrBgEFBQcBAQQ2MDQwMgYIKwYBBQUHMAKGJmh0dHA6Ly9sb2NhbGhvc3QvUEtJL2NlcnRzL0RTQVJPT1QuY3J0MA4GA1UdDwEB/wQEAwIE8DATBgNVHSUEDDAKBggrBgEFBQcDAjAMBggqgRzPVQGDdQUAA0cAMEQCIBJO7K/XDt+igzKkWSkbRKZRtQKsS1i2Fmdp2Ar5EEL+AiA759mE/uINaEC7sMXOoqzTzkLCMIHGyLi80j0dG5pjow==</textarea></label>(Base64) </li>
<li><input type="button" value="验证签名" onclick="doVerify()" /> </li>
</ul>
</fieldset></div>
<script type="text/javascript">// <![CDATA[
if(/msie/.test( navigator.userAgent.toLowerCase() )){ document.write("<p><em>若IE浏览器下验证签名时提示停止运行此脚本，请选择否(N)继续运行。</em></p>");}
// ]]></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/components/googlecode/core.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/components/googlecode/sha1.js"></script>
<!-- for crypto, asn1, asn1x509 -->
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/components/yahoo/yahoo-min.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ext/jsbn.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ext/jsbn2.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ext/prng4.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ext/rng.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/asn1-1.0.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/asn1x509-1.0.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ext/base64.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/asn1hex-1.1.min.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/x509-1.1.min.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/components/sm2/crypto-1.1.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ext/ec.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ext/ec-patch.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/ecdsa-modified-1.0.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/components/sm2/sm3.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/components/sm2/sm3-sm2-1.0.js"></script>
<script language="JavaScript" type="text/javascript" src="/upload/jonllen/case/jsrsasign-master/components/sm2/ecparam-1.0.js"></script>
<script language="JavaScript" type="text/javascript">// <![CDATA[
function doVerify() {
  var pubkey = "";
  var certData = document.getElementById('txtCertData').value;
  if( certData != "") {
  	var key = X509.getPublicKeyFromCertPEM(certData);
	pubkey = key.pubKeyHex;
  }else {
  	alert("请输入证书数据!");
	return false;
  }
  
  var curve = 'sm2';
  var sigalg = 'SM3withSM2';
  var msg1 = document.getElementById('txtRawData').value;
  
  var sigval = document.getElementById('txtSignData').value;
  var sigvalHex = b64tohex(sigval);
  
  var sigvalHexR = sigvalHex.substr(0, 64);
  var sigvalHexS = sigvalHex.substr(64,64);
  var r = new BigInteger(sigvalHexR, 16);
  var s = new BigInteger(sigvalHexS, 16);
  sigval = KJUR.crypto.ECDSA.biRSSigToASN1Sig(r, s);

  var sig = new KJUR.crypto.Signature({"alg": sigalg, "prov": "cryptojs/jsrsa"});
  sig.initVerifyByPublicKey({'ecpubhex': pubkey, 'eccurvename': curve});
  sig.updateString(msg1);
  var result = sig.verify(sigval);
  if (result) {
    alert("验证签名成功！");
  } else {
    alert("验证签名失败！");
  }
}
// ]]></script>
<p>参考资料：<a href="https://github.com/kjur/jsrsasign" target="_blank">Github jsrsasign</a></p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, loadSrc : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/js/">JavaScript</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2014-06-17 20:33</li>
				<li>update@ 2014-06-19 09:34:16</li>
				<li>阅读(<span id="articleClick">14831</span>)</li>
				<li>评论(25)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/js/167.aspx">网页图片延迟加载</a></li>
<li>下一篇：<a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'mrfk')">引用</a></li>

						        </ul>
						        <a>1楼</a> mrfk 2014-08-07 15:12:53
					        </div><div class="cont">朋友，你好，请教个问题，我这里写了一个java版本的SM2验签方法，自己内部是可以实现签名和验签的，但是拿底层模块加密的数据却无法验签，可能是哪些地方出问题呢</div>
					        <div class="reply" ><span>回复：</span>你的用户id是不是都用的一样的，用公钥计算出来的Z值是一样吗？（2014-08-11 17:35:12）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'mrfk')">引用</a></li>

						        </ul>
						        <a>2楼</a> mrfk 2014-08-11 17:39:39
					        </div><div class="cont">你好，我这边已经大概查出是什么问题了，是计算z值出的问题，算法都是标准的算法，没有问题的</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'111')">引用</a></li>

						        </ul>
						        <a>3楼</a> 111 2014-10-11 09:47:04
					        </div><div class="cont">你是大哥.牛得不行.简直膜拜得五体投地.感谢.....</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'111')">引用</a></li>

						        </ul>
						        <a>4楼</a> 111 2014-10-11 09:47:11
					        </div><div class="cont">你是大哥.牛得不行.简直膜拜得五体投地.感谢.....</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'天啊')">引用</a></li>

						        </ul>
						        <a>5楼</a> 天啊 2014-10-30 16:33:22
					        </div><div class="cont">非常感谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'cstomcat')">引用</a></li>

						        </ul>
						        <a>6楼</a> cstomcat 2015-08-11 16:28:58
					        </div><div class="cont">您好，请问用js可以实现sm3算法吗？改造的难度大吗？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'cstomcat')">引用</a></li>

						        </ul>
						        <a>7楼</a> cstomcat 2015-08-11 16:29:01
					        </div><div class="cont">您好，请问用js可以实现sm3算法吗？改造的难度大吗？</div>
					        <div class="reply" ><span>回复：</span>可以实现的.（2015-08-16 11:31:48）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'fxk')">引用</a></li>

						        </ul>
						        <a>8楼</a> fxk 2016-03-09 14:44:14
					        </div><div class="cont">我点击验签的时候为什么有时候会出现无效签名？？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'xiaofeng')">引用</a></li>

						        </ul>
						        <a>9楼</a> xiaofeng 2016-04-27 15:52:27
					        </div><div class="cont">
金龙，有没有研究过JS的SM4实现？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'xiaofeng')">引用</a></li>

						        </ul>
						        <a>10楼</a> xiaofeng 2016-04-27 15:52:29
					        </div><div class="cont">
金龙，有没有研究过JS的SM4实现？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'xiaofeng')">引用</a></li>

						        </ul>
						        <a>11楼</a> xiaofeng 2016-04-27 15:53:26
					        </div><div class="cont">哥们。有没有研究过SM4用JS实现？</div>
					        <div class="reply" ><span>回复：</span>没有，那个不是开放代码的软算法吗（2016-05-07 08:54:21）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'aiziji911')">引用</a></li>

						        </ul>
						        <a>12楼</a> aiziji911 2017-01-04 10:48:37
					        </div><div class="cont">大神，为啥签名出来的长度不是128位呢？ 按说不应该是128位吗</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'zxk')">引用</a></li>

						        </ul>
						        <a>13楼</a> zxk 2017-07-24 15:03:19
					        </div><div class="cont">你好，我想问下，js端用sm2加密，java后端解密，解密失败，不知道是不是前后端实现不一样，你那边有java实现的sm2解密么？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'zxk')">引用</a></li>

						        </ul>
						        <a>14楼</a> zxk 2017-07-24 18:45:07
					        </div><div class="cont">你好，我现在有一个问题，我现在在前台加解密正常，在后台加解密也正常，但是前台加密后的值到后台解密不成功，
公钥和私钥用的都是一样的，js版的sm2和java版的sm2实现是不一样的吗？求教</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'小帅丶')">引用</a></li>

						        </ul>
						        <a>15楼</a> 小帅丶 2017-08-03 09:00:33
					        </div><div class="cont">[quote]mrfk：朋友，你好，请教个问题，我这里写了一个java版本的SM2验签方法，自己内部是可以实现签名和验签的，但是拿底层模块加密的数据却无法验签，可能是哪些地方出问题呢[/quote]
Java生成SM2证书有成功吗？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'anjaiwook')">引用</a></li>

						        </ul>
						        <a>16楼</a> anjaiwook 2018-03-20 16:45:20
					        </div><div class="cont">[quote]zxk：你好，我现在有一个问题，我现在在前台加解密正常，在后台加解密也正常，但是前台加密后的值到后台解密不成功，
公钥和私钥用的都是一样的，js版的sm2和java版的sm2实现是不一样的吗？求教[/quote]
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'曹帅')">引用</a></li>

						        </ul>
						        <a>17楼</a> 曹帅 2018-04-10 15:08:38
					        </div><div class="cont">我怎么没看到你的uid呢</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'曹帅')">引用</a></li>

						        </ul>
						        <a>18楼</a> 曹帅 2018-04-10 15:08:59
					        </div><div class="cont">我怎么没看到你的uid</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'haomn')">引用</a></li>

						        </ul>
						        <a>19楼</a> haomn 2018-05-08 11:31:03
					        </div><div class="cont">你好，我现在前台用js加密，后台用C#解密，但是解不成功。</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'wmy')">引用</a></li>

						        </ul>
						        <a>20楼</a> wmy 2018-05-15 16:13:43
					        </div><div class="cont">您好，为什么我使用您的demo验证 alert invalid？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'wmy')">引用</a></li>

						        </ul>
						        <a>21楼</a> wmy 2018-05-15 16:16:25
					        </div><div class="cont">我错了错了，老眼昏花，又运行出来valid</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'349989153')">引用</a></li>

						        </ul>
						        <a>22楼</a> 349989153 2018-06-23 13:40:31
					        </div><div class="cont">验证了一下，作者的代码是可用的，不知道有没有github地址能快速用一下。

楼上的，你们后端代码的用户ID（又叫IDa）是'1234567812345678'吗？hash算法是sm3吗？检查一下这2个应该就好了。

另外实在有不懂的地方，直接去看sm2的官方文档，写得还是挺清楚的。</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'JS版本的SM签名算法')">引用</a></li>

						        </ul>
						        <a>23楼</a> JS版本的SM签名算法 2019-12-24 18:08:32
					        </div><div class="cont">最近刚刚接触SM2算法，签名与验签过程一直很蒙，看到你的例子，想深入学习一下，可以提供一下源码么？万分感谢。289039219@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'感谢大哥')">引用</a></li>

						        </ul>
						        <a>24楼</a> 感谢大哥 2020-02-07 07:36:29
					        </div><div class="cont">我还在纠结 微信小程序的那个版本，没想到你早都有了</div>
					        <div class="reply" ><span>回复：</span>-_-)))（2020-07-14 20:47:36）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'私钥计算公钥')">引用</a></li>

						        </ul>
						        <a>25楼</a> 私钥计算公钥 2020-02-07 07:39:55
					        </div><div class="cont">如果有个私钥计算公钥，那就完美了，就前端完整的走通了，客户本地存个私钥即可</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=175&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/js/175.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=175";
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
                    
		    <li><a href="/jonllen/js/107.aspx">博客个性化定制(2)-实现类似iGoogle首页功能</a>(2010-03-21)</li>
                    

	    </ul>
    </div>
</div>
<div id="mod30" class="mod comment">
    <h4 class="head">最新评论</h4>
    <div class="cont">
	    <ul>
		    

<li><a href="/jonllen/work/162.aspx#comment"><b>hjc</b>：楼主能否发一份源码参考一下 感谢！邮箱地址18234105447@163.com</a></li>

<li><a href="/jonllen/work/162.aspx#comment"><b>hjc</b>：楼主能否发一份源码参考一下 感谢！</a></li>

<li><a href="/jonllen/js/175.aspx#comment"><b>私钥计算公钥</b>：如果有个私钥计算公钥，那就完美了，就前端完整的走通了，客户本地存个私钥即可</a></li>

<li><a href="/jonllen/js/175.aspx#comment"><b>感谢大哥</b>：我还在纠结 微信小程序的那个版本，没想到你早都有了</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>JS版本的SM签名算法</b>：最近刚刚接触SM2算法，签名与验签过程一直很蒙，看到你的例子，想深入学习一下，可以提供一下源码么？万分感谢。289039219@qq.com</a></li>

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
                    
		    <li><a href="/jonllen/breast/177.aspx">2014年国庆</a>(2014-10-04)</li>
                    
		    <li><a href="/jonllen/breast/176.aspx">面对&逃避</a>(2014-08-04)</li>
                    
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
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(32996)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(26995)</li>
                    
		    <li><a href="/jonllen/work/174.aspx">SM2国密算法证书解析</a>(26163)</li>
                    
		    <li><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a>(24451)</li>
                    
		    <li><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a>(22753)</li>
                    
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