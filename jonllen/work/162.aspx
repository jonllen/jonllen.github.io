
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>国密算法SM2证书制作 - 工作 - 金龙博客</title>
<meta name="description" content="前段时间将系统的RSA算法全部升级为SM2国密算法，密码机和UKey硬件设备大都同时支持RSA和SM2算法，只是应用系统的加解密签名验证需要修改，这个更改底层调用的加密动态库来，原来RSA用的对称加密算法DES（AES）和摘要MD5（SHA1）也相应改变，分别对应SM1、SM3算法，SM1算法基于硬件实现，SM2、SM3算法已公开。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2013-06-26' } );
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
		     > <a href="/jonllen/work/">工作</a>
		     > <a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a>
		</div>
        <div class="article">
			<div class="title"><h2>国密算法SM2证书制作</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>前段时间将系统的RSA算法全部升级为SM2国密算法，密码机和UKey硬件设备大都同时支持RSA和SM2算法，只是应用系统的加解密签名验证需要修改，这个更改底层调用的加密动态库来，原来RSA用的对称加密算法DES（AES）和摘要MD5（SHA1）也相应改变，分别对应SM1、SM3算法，SM1算法基于硬件实现，SM2、SM3算法已公开。</p>
<p><strong>SM2签名验证算法</strong></p>
<p>SM2签名同样也是需要先摘要原文数据，即先使用SM3密码杂凑算法计算出32byte摘要。SM3需要摘要签名方ID（默认1234567812345678）、曲线参数a,b,Gx,Gy、共钥坐标(x,y)计算出Z值，然后再杂凑原文得出摘要数据。这个地方要注意曲线参数和坐标点都是32byte，在转换为BigInteger大数计算转成字节流时要去掉空补位，否则可能会出现摘要计算不正确的问题。SM2签名实现如下：</p>
<pre><div class="code"><div class="codetitle"><img title="展开" src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_635080536111602322').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " /><span>SM2签名</span></div><div class="codemain" id="HighlighterCode_635080536111602322" style="display: none;"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> BigInteger[] Sm2Sign(</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] md, AsymmetricCipherKeyPair keypair)<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_79_1921_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_79_1921_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_79_1921_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_79_1921_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_79_1921_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_79_1921_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_79_1921_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_79_1921_Open_Text').style.display='inline';" /></span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_79_1921_Closed_Text">...</span><span id="CodeHighlighter1_79_1921_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            SM3Digest sm3 </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SM3Digest();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECPublicKeyParameters ecpub </span><span style="color: #000000;">=</span><span style="color: #000000;"> (ECPublicKeyParameters)keypair.Public;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] z </span><span style="color: #000000;">=</span><span style="color: #000000;"> SM2CryptoServiceProvider.Sm2GetZ(Encoding.Default.GetBytes(SM2CryptoServiceProvider.userId), ecpub.Q);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3.BlockUpdate(z, </span><span style="color: #800080;">0</span><span style="color: #000000;">, z.Length);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] p </span><span style="color: #000000;">=</span><span style="color: #000000;"> md;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3.BlockUpdate(p, </span><span style="color: #800080;">0</span><span style="color: #000000;">, p.Length);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] hashData </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[</span><span style="color: #800080;">32</span><span style="color: #000000;">];<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3.DoFinal(hashData, </span><span style="color: #800080;">0</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;"> e</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            BigInteger e </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(</span><span style="color: #800080;">1</span><span style="color: #000000;">, hashData);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;"> k</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            BigInteger k </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECPoint kp </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger r </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger s </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger userD </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">do</span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_822_1581_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_822_1581_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_822_1581_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_822_1581_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_822_1581_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_822_1581_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_822_1581_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_822_1581_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_822_1581_Closed_Text">...</span><span id="CodeHighlighter1_822_1581_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">do</span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_859_1195_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_859_1195_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_859_1195_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_859_1195_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_859_1195_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_859_1195_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_859_1195_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_859_1195_Open_Text').style.display='inline';" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_859_1195_Closed_Text">...</span><span id="CodeHighlighter1_859_1195_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    ECPrivateKeyParameters ecpriv </span><span style="color: #000000;">=</span><span style="color: #000000;"> (ECPrivateKeyParameters)keypair.Private;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    k </span><span style="color: #000000;">=</span><span style="color: #000000;"> ecpriv.D;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    kp </span><span style="color: #000000;">=</span><span style="color: #000000;"> ecpub.Q;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    userD </span><span style="color: #000000;">=</span><span style="color: #000000;"> ecpriv.D;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #008000;">//</span><span style="color: #008000;"> r</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">                    r </span><span style="color: #000000;">=</span><span style="color: #000000;"> e.Add(kp.X.ToBigInteger());<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    r </span><span style="color: #000000;">=</span><span style="color: #000000;"> r.Mod(ecc_n);<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">while</span><span style="color: #000000;"> (r.Equals(BigInteger.Zero) </span><span style="color: #000000;">||</span><span style="color: #000000;"> r.Add(k).Equals(ecc_n));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #008000;">//</span><span style="color: #008000;"> (1 + dA)~-1</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">                BigInteger da_1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> userD.Add(BigInteger.One);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                da_1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> da_1.ModInverse(ecc_n);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #008000;">//</span><span style="color: #008000;"> s</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">                s </span><span style="color: #000000;">=</span><span style="color: #000000;"> r.Multiply(userD);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                s </span><span style="color: #000000;">=</span><span style="color: #000000;"> k.Subtract(s).Mod(ecc_n);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                s </span><span style="color: #000000;">=</span><span style="color: #000000;"> da_1.Multiply(s).Mod(ecc_n);<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">while</span><span style="color: #000000;"> (s.Equals(BigInteger.Zero));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] btRS </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[</span><span style="color: #800080;">64</span><span style="color: #000000;">];<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] btR </span><span style="color: #000000;">=</span><span style="color: #000000;"> r.ToByteArray();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] btS </span><span style="color: #000000;">=</span><span style="color: #000000;"> s.ToByteArray();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Array.Copy(btR, btR.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">32</span><span style="color: #000000;">, btRS, </span><span style="color: #800080;">0</span><span style="color: #000000;">, </span><span style="color: #800080;">32</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Array.Copy(btS, btS.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">32</span><span style="color: #000000;">, btRS, </span><span style="color: #800080;">32</span><span style="color: #000000;">, </span><span style="color: #800080;">32</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1910_1918_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1910_1918_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1910_1918_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1910_1918_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1910_1918_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1910_1918_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1910_1918_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1910_1918_Open_Text').style.display='inline';" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger[] </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1910_1918_Closed_Text">...</span><span id="CodeHighlighter1_1910_1918_Open_Text"><span style="color: #000000;">{ r, s }</span></span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />}</span></span></div></div></div></pre>
<p>SM2算法是基于ECC算法的，签名同样返回2个大数，共64byte。由于原来RSA算法已很普遍支持，要实现RSA的签名验签都有标准库的实现，而SM2是国密算法在国际上还没有标准通用，算法Oid标识在X509标准中是没定义的。在.Net或Java中可以基于使用BouncyCastle加密库实现，开源的也比较好学习扩展。SM2算法验签可以使用软验签，即可以不需要使用硬件设备，同样使用原始数据、签名、证书(公钥)来实现对签名方验证，保证数据完整性未被篡改。验证过程同样需先摘要原文数据，公钥在证书中是以一个66byte的BitString，去掉前面标记位即64byte为共钥坐标(x,y)，中间分割截取再以Hex方式转成BigInteger大数计算，验签代码如下：</p>
<pre><div class="code"><div class="codetitle"><img title="展开" src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_635080538758506028').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " /><span>SM2验签</span></div><div class="codemain" id="HighlighterCode_635080538758506028" style="display: none;"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">bool</span><span style="color: #000000;"> Verify(</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] msg, </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] signData, </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] certData)<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_72_1905_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_72_1905_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_72_1905_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_72_1905_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_72_1905_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_72_1905_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_72_1905_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_72_1905_Open_Text').style.display='inline';" /></span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_72_1905_Closed_Text">...</span><span id="CodeHighlighter1_72_1905_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            X509Certificate2 x5092 </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> X509Certificate2(certData);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] certPK </span><span style="color: #000000;">=</span><span style="color: #000000;"> x5092.GetPublicKey();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            certPK </span><span style="color: #000000;">=</span><span style="color: #000000;"> SubByte(certPK, </span><span style="color: #800080;">1</span><span style="color: #000000;">, </span><span style="color: #800080;">64</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] certPKX </span><span style="color: #000000;">=</span><span style="color: #000000;"> SubByte(certPK, certPK.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">32</span><span style="color: #000000;"> </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">32</span><span style="color: #000000;">, </span><span style="color: #800080;">32</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] certPKY </span><span style="color: #000000;">=</span><span style="color: #000000;"> SubByte(certPK, certPK.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">32</span><span style="color: #000000;">, </span><span style="color: #800080;">32</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            System.String strcertPKX </span><span style="color: #000000;">=</span><span style="color: #000000;"> ByteToHexStr(certPKX);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            System.String strcertPKY </span><span style="color: #000000;">=</span><span style="color: #000000;"> ByteToHexStr(certPKY);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger biX </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(strcertPKX, </span><span style="color: #800080;">16</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger biY </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(strcertPKY, </span><span style="color: #800080;">16</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECFieldElement x </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FpFieldElement(ecc_p, biX);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECFieldElement y </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FpFieldElement(ecc_p, biY);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECPoint userKey </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FpPoint(ecc_curve, x, y);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            SM3Digest sm3 </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SM3Digest();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] z </span><span style="color: #000000;">=</span><span style="color: #000000;"> Sm2GetZ(Encoding.Default.GetBytes(userId), userKey);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3.BlockUpdate(z, </span><span style="color: #800080;">0</span><span style="color: #000000;">, z.Length);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] p </span><span style="color: #000000;">=</span><span style="color: #000000;"> msg;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3.BlockUpdate(p, </span><span style="color: #800080;">0</span><span style="color: #000000;">, p.Length);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] md </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[</span><span style="color: #800080;">32</span><span style="color: #000000;">];<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3.DoFinal(md, </span><span style="color: #800080;">0</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] btR </span><span style="color: #000000;">=</span><span style="color: #000000;"> SubByte(signData, </span><span style="color: #800080;">0</span><span style="color: #000000;">, </span><span style="color: #800080;">32</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] btS </span><span style="color: #000000;">=</span><span style="color: #000000;"> SubByte(signData, </span><span style="color: #800080;">32</span><span style="color: #000000;">, </span><span style="color: #800080;">32</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            System.String strR </span><span style="color: #000000;">=</span><span style="color: #000000;"> ByteToHexStr(btR);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            System.String strS </span><span style="color: #000000;">=</span><span style="color: #000000;"> ByteToHexStr(btS);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger r </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(strR, </span><span style="color: #800080;">16</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger s </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(strS, </span><span style="color: #800080;">16</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;"> e_</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            BigInteger e </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(</span><span style="color: #800080;">1</span><span style="color: #000000;">, md);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;"> t</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            BigInteger t </span><span style="color: #000000;">=</span><span style="color: #000000;"> r.Add(s).Mod(ecc_n);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (t.Equals(BigInteger.Zero))<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;"> x1y1</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            ECPoint x1y1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> ecc_point_g.Multiply(s);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            x1y1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> x1y1.Add(userKey.Multiply(t));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;"> R</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            BigInteger R </span><span style="color: #000000;">=</span><span style="color: #000000;"> e.Add(x1y1.X.ToBigInteger()).Mod(ecc_n);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> r.Equals(R);<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />}</span></span></div></div></div></pre>
<p><strong>制作SM2证书</strong></p>
<p>基于BouncyCastle开源库，可以轻松制作X509证书、CRL、pkcs10、pkcs12，支持国际通用的RSA、ECC算法。制作SM2证书可以通过扩展BouncyCastle库来实现，需加入SM2签名算法DerObjectIdentifier标识1.2.156.10197.1.501（基于SM3的SM2算法签名），密钥对的生成使用国密推荐曲线参数，然后如上所示自行实现SM2签名验证算法。X509证书由证书主体、证书签名算法标识、签名组成，和RSA证书主要不同的是SM2证书的签名算法标识和签名，及证书公钥使用ECKeyParameters。生成自签名SM2证书代码如下：</p>
<pre><div class="code"><div class="codetitle"><img title="展开" src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_635080541427981805').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " /><span>SM2证书生成</span></div><div class="codemain" id="HighlighterCode_635080541427981805" style="display: none;"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> Org.BouncyCastle.X509.X509Certificate MakeRootCert(</span><span style="color: #0000ff;">string</span><span style="color: #000000;"> filePath, IDictionary subjectNames)<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_108_1723_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_108_1723_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_108_1723_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_108_1723_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_108_1723_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_108_1723_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_108_1723_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_108_1723_Open_Text').style.display='inline';" /></span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_108_1723_Closed_Text">...</span><span id="CodeHighlighter1_108_1723_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        AsymmetricCipherKeyPair keypair </span><span style="color: #000000;">=</span><span style="color: #000000;"> SM2CryptoServiceProvider.SM2KeyPairGenerator.GenerateKeyPair();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        ECPublicKeyParameters pubKey </span><span style="color: #000000;">=</span><span style="color: #000000;"> (ECPublicKeyParameters)keypair.Public; </span><span style="color: #008000;">//</span><span style="color: #008000;">CA公钥   </span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">        ECPrivateKeyParameters priKey </span><span style="color: #000000;">=</span><span style="color: #000000;"> (ECPrivateKeyParameters)keypair.Private;    </span><span style="color: #008000;">//</span><span style="color: #008000;">CA私钥   </span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        X509Name issuerDN </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> X509Name(GetDictionaryKeys(subjectNames), subjectNames);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        X509Name subjectDN </span><span style="color: #000000;">=</span><span style="color: #000000;"> issuerDN;  </span><span style="color: #008000;">//</span><span style="color: #008000;">自签证书，两者一样</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        SM2X509V3CertificateGenerator sm2CertGen </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SM2X509V3CertificateGenerator();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #008000;">//</span><span style="color: #008000;">X509V3CertificateGenerator sm2CertGen = new X509V3CertificateGenerator();</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">        sm2CertGen.SetSerialNumber(</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(</span><span style="color: #800080;">128</span><span style="color: #000000;">, </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Random()));   </span><span style="color: #008000;">//</span><span style="color: #008000;">128位   </span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">        sm2CertGen.SetIssuerDN(issuerDN);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.SetNotBefore(DateTime.UtcNow.AddDays(</span><span style="color: #000000;">-</span><span style="color: #800080;">1</span><span style="color: #000000;">));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.SetNotAfter(DateTime.UtcNow.AddDays(</span><span style="color: #800080;">365</span><span style="color: #000000;"> </span><span style="color: #000000;">*</span><span style="color: #000000;"> </span><span style="color: #800080;">10</span><span style="color: #000000;">));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.SetSubjectDN(subjectDN);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.SetPublicKey(pubKey); </span><span style="color: #008000;">//</span><span style="color: #008000;">公钥</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.SetSignatureAlgorithm(</span><span style="color: #800000;">"</span><span style="color: #800000;">SM3WITHSM2</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.AddExtension(X509Extensions.BasicConstraints, </span><span style="color: #0000ff;">true</span><span style="color: #000000;">, </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BasicConstraints(</span><span style="color: #0000ff;">true</span><span style="color: #000000;">));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.AddExtension(X509Extensions.SubjectKeyIdentifier, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">, </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SubjectKeyIdentifierStructure(pubKey));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.AddExtension(X509Extensions.AuthorityKeyIdentifier, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">, </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> AuthorityKeyIdentifierStructure(pubKey));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2CertGen.AddExtension(X509Extensions.KeyUsage, </span><span style="color: #0000ff;">true</span><span style="color: #000000;">, </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> KeyUsage(</span><span style="color: #800080;">6</span><span style="color: #000000;">));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        Org.BouncyCastle.X509.X509Certificate sm2Cert </span><span style="color: #000000;">=</span><span style="color: #000000;"> sm2CertGen.Generate(keypair);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2Cert.CheckValidity();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        sm2Cert.Verify(pubKey);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> sm2Cert;<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />}</span></span></div></div></div></pre>
<p>X509证书使用ASN1语法进行编码，是用类型标识、长度和值序列来描述数据结构的。SM2证书在制作设置公钥时，默认会带ECKeyParameters参数，并没有SM2的公钥参数1.2.156.10197.1.301，因此需要自己写个SM2椭圆曲线密码算法标识对象，这样在生成的证书中就可以看到公钥参数字段，如下所示：</p>
<pre><div class="code"><div class="codetitle"><img title="展开" src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_635080544100785547').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " /><span>SM2证书公钥标识</span></div><div class="codemain" id="HighlighterCode_635080544100785547" style="display: none;"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">using</span><span style="color: #000000;"> System;<br /><img src="/codehighlighter/outliningIndicators/None.gif" /><br /><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> Org.BouncyCastle.Asn1.X509;<br /><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">using</span><span style="color: #000000;"> Org.BouncyCastle.Asn1;<br /><img src="/codehighlighter/outliningIndicators/None.gif" /><br /><img src="/codehighlighter/outliningIndicators/None.gif" /><br /><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">namespace</span><span style="color: #000000;"> Common.Security<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_106_1193_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_106_1193_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_106_1193_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_106_1193_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_106_1193_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_106_1193_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_106_1193_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_106_1193_Open_Text').style.display='inline';" /></span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_106_1193_Closed_Text">...</span><span id="CodeHighlighter1_106_1193_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> SM2AlgorithmIdentifier<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        : AlgorithmIdentifier<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_182_1190_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_182_1190_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_182_1190_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_182_1190_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_182_1190_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_182_1190_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_182_1190_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_182_1190_Open_Text').style.display='inline';" />    </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_182_1190_Closed_Text">...</span><span id="CodeHighlighter1_182_1190_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">readonly</span><span style="color: #000000;"> </span><span style="color: #0000ff;">bool</span><span style="color: #000000;"> parametersDefined;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> SM2AlgorithmIdentifier(<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            DerObjectIdentifier objectID):</span><span style="color: #0000ff;">base</span><span style="color: #000000;">(objectID)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_332_344_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_332_344_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_332_344_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_332_344_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_332_344_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_332_344_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_332_344_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_332_344_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_332_344_Closed_Text">...</span><span id="CodeHighlighter1_332_344_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> SM2AlgorithmIdentifier(<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            DerObjectIdentifier    objectID,<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Asn1Encodable parameters)<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            : </span><span style="color: #0000ff;">base</span><span style="color: #000000;">(objectID, parameters)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_508_562_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_508_562_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_508_562_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_508_562_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_508_562_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_508_562_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_508_562_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_508_562_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_508_562_Closed_Text">...</span><span id="CodeHighlighter1_508_562_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.parametersDefined </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_565_861_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_565_861_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_565_861_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_565_861_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_565_861_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_565_861_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_565_861_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_565_861_Open_Text').style.display='inline';" />    </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_565_861_Closed_Text">/**/</span><span id="CodeHighlighter1_565_861_Open_Text"><span style="color: #008000;">/*</span><span style="color: #008000;">*<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />         * Produce an object suitable for an Asn1OutputStream.<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />         *          *      AlgorithmIdentifier ::= Sequence {<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />         *                            algorithm OBJECT IDENTIFIER,<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />         *                            parameters ANY DEFINED BY algorithm OPTIONAL }<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />         * <br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />    </span><span style="color: #008000;">*/</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />          </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">override</span><span style="color: #000000;"> Asn1Object ToAsn1Object()<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_924_1176_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_924_1176_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_924_1176_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_924_1176_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_924_1176_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_924_1176_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_924_1176_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_924_1176_Open_Text').style.display='inline';" />          </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_924_1176_Closed_Text">...</span><span id="CodeHighlighter1_924_1176_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />             DerObjectIdentifier sm2Identifier </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> DerObjectIdentifier(</span><span style="color: #800000;">"</span><span style="color: #800000;">1.2.156.10197.1.301</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />             Asn1EncodableVector v </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Asn1EncodableVector(</span><span style="color: #0000ff;">base</span><span style="color: #000000;">.ObjectID, sm2Identifier);<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />             </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> DerSequence(v);          <br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />          }</span></span><span style="color: #000000;">     <br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />      }</span></span><span style="color: #000000;"> <br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />}</span></span></div></div></div></pre>
<p>SM2算法是国密局公布的公钥密码算法，在相当强度下密钥比RSA短，在使用智能卡有限空间存储时非常可贵。目前国内很多CA大都升级支持SM2算法证书，相信以后会慢慢地推广更多应用，也期望之后能与国际标准接轨。</p>
<p><strong>附：</strong></p>
<p>国密推荐256位曲线参数</p>
<ul style="padding-left: 2em;">
<li>p=FFFFFFFE FFFFFFFF FFFFFFFF FFFFFFFF FFFFFFFF 00000000 FFFFFFFF FFFFFFFF </li>
<li>a=FFFFFFFE FFFFFFFF FFFFFFFF FFFFFFFF FFFFFFFF 00000000 FFFFFFFF FFFFFFFC </li>
<li>b=28E9FA9E 9D9F5E34 4D5A9E4B CF6509A7 F39789F5 15AB8F92 DDBCBD41 4D940E93 </li>
<li>n=FFFFFFFE FFFFFFFF FFFFFFFF FFFFFFFF 7203DF6B 21C6052B 53BBF409 39D54123 </li>
<li>Gx=32C4AE2C 1F198119 5F990446 6A39C994 8FE30BBF F2660BE1 715A4589 334C74C7</li>
<li>Gy=BC3736A2 F4F6779C 59BDCEE3 6B692153 D0A9877C C62A4740 02DF32E5 2139F0A0</li>
</ul>
<p><a href="/Demo/SM3WithSM2.aspx" target="_blank">SM2国密算法测试示例</a></p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, loadSrc : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2013-06-26 23:03</li>
				<li>update@ 2013-06-28 22:14:58</li>
				<li>阅读(<span id="articleClick">40615</span>)</li>
				<li>评论(92)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/160.aspx">Windows 2008 IIS7 启用证书信任列表CTL</a></li>
<li>下一篇：<a href="/jonllen/work/164.aspx">SM2非对称算法加解密</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'wahely')">引用</a></li>

						        </ul>
						        <a>1楼</a> wahely 2013-10-09 10:11:55
					        </div><div class="cont">SM2CryptoServiceProvider是在哪里实现的，能给一份吗？谢谢。wahel30615571@126.com</div>
					        <div class="reply" ><span>回复：</span>我这里是依赖BouncyCastle库实现的，我只是封装了下计算Z值和生成SM2密钥对的方法。（2013-10-09 11:19:43）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'wahely')">引用</a></li>

						        </ul>
						        <a>2楼</a> wahely 2013-10-10 15:01:27
					        </div><div class="cont">我需要的就是这两个方法，如方便的话能否发到我的邮箱，十分感谢。</div>
					        <div class="reply" ><span>回复：</span>SM2CryptoServiceProvider类中取Z值主要是计算用户ID和公钥摘要;<br />SM3Digest类中主要是SM3杂凑摘要算法;<br />已发送至你邮箱了。（2013-10-11 22:43:13）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'grace')">引用</a></li>

						        </ul>
						        <a>3楼</a> grace 2013-11-18 15:43:23
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'grace')">引用</a></li>

						        </ul>
						        <a>4楼</a> grace 2013-11-18 15:43:25
					        </div><div class="cont">请问楼主，BC有sm3摘要计算和SM3_WITH_SM2签名的API吗？谢谢楼主</div>
					        <div class="reply" ><span>回复：</span>BouncyCastle库只有标准的RSA和ECC算法实现，没有SM3、SM2国密算法Oid项的。（2013-11-19 19:40:16）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'xiaop')">引用</a></li>

						        </ul>
						        <a>5楼</a> xiaop 2014-03-05 17:12:27
					        </div><div class="cont">请教楼主一下，修改了bouncycastle的Java版源码怎么打成可用的jar通过JCE调用呢，好像Sun要求jar是通过他们签名的才行，个人修改过的BC只能调一般的API不能作为JCE Provider提供出来，有没有办法绕过，谢谢</div>
					        <div class="reply" ><span>回复：</span>bouncycastle的版源码可以不直接修改,自己在项目中来引用BC库然后再自己写类这样比较好.（2014-03-09 21:20:11）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'xiaop')">引用</a></li>

						        </ul>
						        <a>6楼</a> xiaop 2014-03-12 14:04:06
					        </div><div class="cont"><fieldset><legend>引用</legend>xiaop：请教楼主一下，修改了bouncycastle的Java版源码怎么打成可用的jar通过JCE调用呢，好像Sun要求jar是通过他们签名的才行，个人修改过的BC只能调一般的API不能作为JCE Provider提供出来，有没有办法绕过，谢谢</fieldset><br />感谢博主</div>
					        <div class="reply" ><span>回复：</span>：)（2014-03-12 21:55:34）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'etta')">引用</a></li>

						        </ul>
						        <a>7楼</a> etta 2014-03-25 11:04:13
					        </div><div class="cont">您好，最近正在学习这方面的知识，请问您能发一份给我吗~?谢谢</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'etta')">引用</a></li>

						        </ul>
						        <a>8楼</a> etta 2014-03-28 09:26:42
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'wstxdyjk')">引用</a></li>

						        </ul>
						        <a>9楼</a> wstxdyjk 2014-03-31 16:12:16
					        </div><div class="cont">SM2国密算法测试示例中，推荐曲线签名时怎么没有私钥输入？验证签名时签名数据框里的数据应该填写什么数据？</div>
					        <div class="reply" ><span>回复：</span>我在SM2国密算法推荐曲线签名测试示例中是自签名的，主要是为了生成密钥对进行验证签名。（2014-04-01 12:56:57）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'TKljx')">引用</a></li>

						        </ul>
						        <a>10楼</a> TKljx 2014-07-02 13:56:58
					        </div><div class="cont">你好啊，请问SM2CryptoServiceProvider类的实现方便给我一份吗，感谢<br />279622644@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'TKljx')">引用</a></li>

						        </ul>
						        <a>11楼</a> TKljx 2014-07-02 13:57:01
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'TKljx')">引用</a></li>

						        </ul>
						        <a>12楼</a> TKljx 2014-07-02 13:57:02
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'treasure')">引用</a></li>

						        </ul>
						        <a>13楼</a> treasure 2014-07-05 17:16:26
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'wuwei')">引用</a></li>

						        </ul>
						        <a>14楼</a> wuwei 2014-08-07 10:27:45
					        </div><div class="cont">你好啊，请问SM2CryptoServiceProvider类的实现方便给我一份吗，感谢<br /><br />53514512@qq.com[/quote]</div>
					        <div class="reply" ><span>回复：</span>：》（2020-09-09 22:07:47）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'zzh')">引用</a></li>

						        </ul>
						        <a>15楼</a> zzh 2014-08-07 10:29:26
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'fenggaowei')">引用</a></li>

						        </ul>
						        <a>16楼</a> fenggaowei 2014-09-03 16:54:58
					        </div><div class="cont">请问你这个地址做的sm2签名验签名，userid用的是多少？<br />http://www.jonllen.com/Demo/SM3WithSM2.aspx</div>
					        <div class="reply" ><span>回复：</span>SM2推荐曲线签名验证是用的2个12345678。（2014-09-03 21:00:58）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'liyh')">引用</a></li>

						        </ul>
						        <a>17楼</a> liyh 2014-09-16 16:21:08
					        </div><div class="cont">楼主能否讲一下：SM2国密算法测试示例 的每一项具体是什么，怎么用</div>
					        <div class="reply" ><span>回复：</span>建议参考国家密码管理局的SM2椭圆曲线公钥密码算法和SM3密码杂凑算法资料，算法目前已经公开了的。（2014-09-16 22:17:52）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'yyhakusu')">引用</a></li>

						        </ul>
						        <a>18楼</a> yyhakusu 2014-10-21 10:07:33
					        </div><div class="cont">楼主你好，我用你的代码验签验不过，公钥是在证书里取到的。另外你在http://www.eccsdk.com/bbs/read.php?tid=5408<br />这个论坛上发的这个问题应该和我遇到的是一样的，怎么解决的呢？谢谢</div>
					        <div class="reply" ><span>回复：</span>那个是Byte转BigInteger问题，你用16进制方式转BigInteger大数了。（2014-10-21 23:09:38）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'yyhakusu')">引用</a></li>

						        </ul>
						        <a>19楼</a> yyhakusu 2014-10-22 08:40:37
					        </div><div class="cont">我用这篇文章的代码验也验不过，SM2getz这个函数跟那个帖子中的是一样吗？签名值是der编码过的吗？在.net里转biginteger用这里的代码就可以吗？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'yyhakusu')">引用</a></li>

						        </ul>
						        <a>20楼</a> yyhakusu 2014-10-23 09:56:59
					        </div><div class="cont">你用的BC是哪个版本啊？自己改过吗</div>
					        <div class="reply" ><span>回复：</span>用的bcprov-jdk15on-151这个版本。（2014-11-20 20:51:27）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'kevin')">引用</a></li>

						        </ul>
						        <a>21楼</a> kevin 2014-10-27 08:51:39
					        </div><div class="cont">麻烦楼主把计算Z值和sm3算法的方法发我一份好吗？zhangvhao@163.com<br />谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'spacetime123')">引用</a></li>

						        </ul>
						        <a>22楼</a> spacetime123 2014-11-18 12:05:17
					        </div><div class="cont"><fieldset><legend>引用</legend>kevin：麻烦楼主把计算Z值和sm3算法的方法发我一份好吗？zhangvhao@163.com<br />谢谢！</fieldset><br /><br />可以发我一份吗?sm2算法实现（签名+加解密+协商实现）<br />另外请问由自己实现的Provider吗？经过sun签名吗？</div>
					        <div class="reply" ><span>回复：</span>没有经过sun签名，只是引用了bouncycastle库。（2014-11-20 20:48:44）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'spacetime123')">引用</a></li>

						        </ul>
						        <a>23楼</a> spacetime123 2014-11-18 13:00:57
					        </div><div class="cont">好像前面回复都失败了？点提交没反应，我不确定成功没。<br />我的邮箱spacetime123@126.com<br />谢谢</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'spacetime123')">引用</a></li>

						        </ul>
						        <a>24楼</a> spacetime123 2014-11-19 14:27:14
					        </div><div class="cont">我也遇到了，很困惑，那些参数包括ID及其长度、公钥坐标到底该用什么格式储存和调用？</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'operamasks')">引用</a></li>

						        </ul>
						        <a>25楼</a> operamasks 2014-12-25 16:32:46
					        </div><div class="cont">楼主能否将SM2CryptoServiceProvider发一份给我？谢谢！18682133817@163.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'demonboa')">引用</a></li>

						        </ul>
						        <a>26楼</a> demonboa 2015-03-17 16:59:43
					        </div><div class="cont">楼主，您好，方便的话，能否发SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现到我邮箱184536519@qq.com，谢谢!!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'Stephen')">引用</a></li>

						        </ul>
						        <a>27楼</a> Stephen 2015-05-07 15:03:23
					        </div><div class="cont">1</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'Stephen')">引用</a></li>

						        </ul>
						        <a>28楼</a> Stephen 2015-05-07 15:03:57
					        </div><div class="cont">SM2CryptoServiceProvider是在哪里实现的，能给一份吗？谢谢。<br />743574255@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'justin')">引用</a></li>

						        </ul>
						        <a>29楼</a> justin 2016-01-26 14:48:24
					        </div><div class="cont">你好，代码能给我发一份吗，学习用，谢谢了！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'明明')">引用</a></li>

						        </ul>
						        <a>30楼</a> 明明 2016-03-20 21:48:47
					        </div><div class="cont">楼主，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱1029222560@qq.com，谢谢!!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'明明')">引用</a></li>

						        </ul>
						        <a>31楼</a> 明明 2016-03-20 21:48:49
					        </div><div class="cont">楼主，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱1029222560@qq.com，谢谢!!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'openssl')">引用</a></li>

						        </ul>
						        <a>32楼</a> openssl 2016-04-01 14:34:03
					        </div><div class="cont">你好，我在实现计算椭圆曲线点的时候的问题：（x0’，y0’）=[s’]G 
s 是签名的后半部分
G 是 基点
[s’]G ：是如何计算？s*G或 s*Gx，s*Gy 还是其他计算。使用的是openssl 库，谢谢</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'小李')">引用</a></li>

						        </ul>
						        <a>33楼</a> 小李 2016-04-05 00:51:26
					        </div><div class="cont">楼主，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱475168571@qq.com，谢谢!!
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lhb')">引用</a></li>

						        </ul>
						        <a>34楼</a> lhb 2016-04-25 20:07:17
					        </div><div class="cont">我找的例子用私钥算出公钥的结果和你这里相同，但加密后的密文在你这里却接不出来。这是什么原因呢？还有按照国家文档的例子，加密后的密文长度比明文多了不止96字节。。。</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'小白')">引用</a></li>

						        </ul>
						        <a>35楼</a> 小白 2016-05-09 16:28:06
					        </div><div class="cont">楼主，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱19174163@qq.com，谢谢!!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'xiaonan')">引用</a></li>

						        </ul>
						        <a>36楼</a> xiaonan 2016-05-16 17:18:39
					        </div><div class="cont">楼主，方便帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱983937055@qq.com，谢谢！！！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'筱楠')">引用</a></li>

						        </ul>
						        <a>37楼</a> 筱楠 2016-05-17 18:03:17
					        </div><div class="cont">楼主，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱983937055@qq.com，谢谢！！！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'黑色的云')">引用</a></li>

						        </ul>
						        <a>38楼</a> 黑色的云 2016-05-20 16:34:31
					        </div><div class="cont">楼主方便的话，发送一下SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个实现类的源码发送一下到我的邮箱：361482674@qq.com;
非常感谢</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'feng')">引用</a></li>

						        </ul>
						        <a>39楼</a> feng 2016-05-22 15:48:41
					        </div><div class="cont">楼主，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱13101716280@163.com，谢谢!!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'安迪')">引用</a></li>

						        </ul>
						        <a>40楼</a> 安迪 2016-05-22 15:51:11
					        </div><div class="cont">大哥，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱13101716280@163.com，谢谢!!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'安迪')">引用</a></li>

						        </ul>
						        <a>41楼</a> 安迪 2016-05-22 15:51:14
					        </div><div class="cont">大哥，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱13101716280@163.com，谢谢!!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'小张')">引用</a></li>

						        </ul>
						        <a>42楼</a> 小张 2016-05-23 15:54:43
					        </div><div class="cont">楼主，目前我也在研究用sm2算法生成证书和签名，还请麻烦你把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱284255234@qq.com，提供给我以学习和研究，麻烦了~</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'天津')">引用</a></li>

						        </ul>
						        <a>43楼</a> 天津 2016-05-25 20:37:55
					        </div><div class="cont">楼主，您好，有时间方便的话，能否发SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现到我邮箱310168722@qq.com，谢谢了，好人一生平安。</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'qianlicao1046')">引用</a></li>

						        </ul>
						        <a>44楼</a> qianlicao1046 2016-06-06 15:41:19
					        </div><div class="cont">博主，能否把SM2CryptoServiceProvider、SM2X509V3CertificateGenerator和GetDictionaryKeys的实现发到我邮箱：1046162769@qq.com麻烦啦，谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'qianlicao1046')">引用</a></li>

						        </ul>
						        <a>45楼</a> qianlicao1046 2016-06-06 15:41:20
					        </div><div class="cont">博主，能否把SM2CryptoServiceProvider、SM2X509V3CertificateGenerator和GetDictionaryKeys的实现发到我邮箱：1046162769@qq.com麻烦啦，谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'qianlicao1046')">引用</a></li>

						        </ul>
						        <a>46楼</a> qianlicao1046 2016-06-06 15:44:05
					        </div><div class="cont">博主，能否把SM2CryptoServiceProvider、SM2X509V3CertificateGenerator和GetDictionaryKeys的实现发我一份，邮箱：1046162769@qq.com，麻烦啦，谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'qianlicao1046')">引用</a></li>

						        </ul>
						        <a>47楼</a> qianlicao1046 2016-06-08 15:27:49
					        </div><div class="cont">博主，能否发SM2CryptoServiceProvider、GetDictionaryKeys和SM2X509V3CertificateGenerator这三个的实现到我邮箱1046162769@qq.com，麻烦啦，谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'千里草')">引用</a></li>

						        </ul>
						        <a>48楼</a> 千里草 2016-06-08 15:34:10
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys
和SM2X509V3CertificateGenerator这三个的实现放到我邮箱1046162769@qq.com，麻烦啦，谢谢!
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'john')">引用</a></li>

						        </ul>
						        <a>49楼</a> john 2016-07-26 14:38:17
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱1046162769@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'terryliu')">引用</a></li>

						        </ul>
						        <a>50楼</a> terryliu 2016-09-03 11:51:46
					        </div><div class="cont">博主，方便提供一个java证书制作源码吗，封装了部分？邮箱地址：305983773@qq.com,感谢。</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'terry')">引用</a></li>

						        </ul>
						        <a>51楼</a> terry 2016-09-03 17:05:01
					        </div><div class="cont">[quote]wahely：我需要的就是这两个方法，如方便的话能否发到我的邮箱305983773@qq.com，十分感谢。[/quote]
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'terry')">引用</a></li>

						        </ul>
						        <a>52楼</a> terry 2016-09-03 17:06:23
					        </div><div class="cont">麻烦楼主把计算Z值和sm3算法的方法发我一份好吗？305983773@qq.com
谢谢！
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'Sophia')">引用</a></li>

						        </ul>
						        <a>53楼</a> Sophia 2016-09-26 21:27:46
					        </div><div class="cont">博主，可以把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现发到我邮箱2415052104@qq.com么，万分感激！
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'epc')">引用</a></li>

						        </ul>
						        <a>54楼</a> epc 2016-10-15 21:15:23
					        </div><div class="cont">博主，能否把SM2CryptoServiceProvider、SM2X509V3CertificateGenerator和GetDictionaryKeys的实现发到我邮箱：epcdiy@qq.com麻烦啦，谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'wenQX')">引用</a></li>

						        </ul>
						        <a>55楼</a> wenQX 2016-10-19 19:28:37
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱1091611099@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'  ')">引用</a></li>

						        </ul>
						        <a>56楼</a>    2016-10-27 12:57:39
					        </div><div class="cont">博主，正研究SM2硬加密的问题，能否把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现发我邮箱87392930@qq.com，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'87392930')">引用</a></li>

						        </ul>
						        <a>57楼</a> 87392930 2016-10-28 08:16:44
					        </div><div class="cont">博主，能否把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱87392930@qq.com，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'hy')">引用</a></li>

						        </ul>
						        <a>58楼</a> hy 2016-11-12 00:05:47
					        </div><div class="cont">楼主，SM2CryptoServiceProvider类能提供以下吗，1723117797@qq.com,谢谢</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'TanXF')">引用</a></li>

						        </ul>
						        <a>59楼</a> TanXF 2016-12-06 09:47:31
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱108586558@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'TanXF')">引用</a></li>

						        </ul>
						        <a>60楼</a> TanXF 2016-12-06 09:47:32
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱108586558@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'TanXF')">引用</a></li>

						        </ul>
						        <a>61楼</a> TanXF 2016-12-10 09:26:26
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱108586558@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'1123')">引用</a></li>

						        </ul>
						        <a>62楼</a> 1123 2017-01-18 12:23:57
					        </div><div class="cont">博主，方便的话帮忙把SM2X509V3CertificateGenerator的实现放到我邮箱18680843729@163.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'1206679965')">引用</a></li>

						        </ul>
						        <a>63楼</a> 1206679965 2017-01-20 16:35:58
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱1206679965@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'你好')">引用</a></li>

						        </ul>
						        <a>64楼</a> 你好 2017-01-24 11:13:19
					        </div><div class="cont">博主,能问下ECPublicKeyParameters 怎么转为publicKey么</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'你好')">引用</a></li>

						        </ul>
						        <a>65楼</a> 你好 2017-01-24 11:15:53
					        </div><div class="cont">博主,能问下ECPublicKeyParameters 怎么转为publicKey么</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'宁')">引用</a></li>

						        </ul>
						        <a>66楼</a> 宁 2017-06-19 12:00:15
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱 619186710@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'john1')">引用</a></li>

						        </ul>
						        <a>67楼</a> john1 2017-07-25 17:16:06
					        </div><div class="cont">你好，16进制字符串SM2公钥信息如何转换为PublicKey对象，请教一下</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'zhuzhu')">引用</a></li>

						        </ul>
						        <a>68楼</a> zhuzhu 2017-08-23 16:48:31
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱zhu_yong_fu@163.com 麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'zhuzhu')">引用</a></li>

						        </ul>
						        <a>69楼</a> zhuzhu 2017-08-23 16:50:26
					        </div><div class="cont">最近在研究使用mbed TLs 实现sm2证书的生成，楼主的java版本给我借鉴参考下！方便的话发个完整包给我！邮箱：zhu_yong_fu@163.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'or111')">引用</a></li>

						        </ul>
						        <a>70楼</a> or111 2017-09-12 21:59:18
					        </div><div class="cont">不错，学习了</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'baby')">引用</a></li>

						        </ul>
						        <a>71楼</a> baby 2017-10-20 15:05:59
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱30437971@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'ghost_520')">引用</a></li>

						        </ul>
						        <a>72楼</a> ghost_520 2018-01-08 16:50:47
					        </div><div class="cont">博主，最近项目急需使用国密算法升级，能否发给demo 给我，谢谢
290781681@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'ckxf@qq.com')">引用</a></li>

						        </ul>
						        <a>73楼</a> ckxf@qq.com 2018-01-27 16:48:43
					        </div><div class="cont">[quote]wahely：SM2CryptoServiceProvider是在哪里实现的，能给一份吗？谢谢。wahel30615571@126.com[/quote]
能给我也发一份 生成 SM2 的秘钥对的方法吗？
ckxf@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'ckxf@qq.com')">引用</a></li>

						        </ul>
						        <a>74楼</a> ckxf@qq.com 2018-01-27 18:33:23
					        </div><div class="cont">博主，方便的话帮忙把SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱ckxf@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'陈楠')">引用</a></li>

						        </ul>
						        <a>75楼</a> 陈楠 2018-04-20 10:00:20
					        </div><div class="cont">博主你好，我是刚开始学习研究国密这块的小白，希望您可以发一份国密算法SM2证书制作的java实现代码到我的邮箱1024229865@qq.com，万分感谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'陈楠')">引用</a></li>

						        </ul>
						        <a>76楼</a> 陈楠 2018-04-20 10:00:22
					        </div><div class="cont">博主你好，我是刚开始学习研究国密这块的小白，希望您可以发一份国密算法SM2证书制作的java实现代码到我的邮箱1024229865@qq.com，万分感谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'陈楠')">引用</a></li>

						        </ul>
						        <a>77楼</a> 陈楠 2018-04-20 10:02:51
					        </div><div class="cont">博主你好，我是刚开始学习研究国密这块的小白，希望您可以发一份国密算法SM2证书制作的实现代码到我的邮箱1024229865@qq.com，万分感谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'是深V')">引用</a></li>

						        </ul>
						        <a>78楼</a> 是深V 2018-06-04 09:49:01
					        </div><div class="cont">[quote]operamasks：楼主能否将SM2CryptoServiceProvider发一份给我？谢谢！314788519@qq.com[/quote]
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'是深V')">引用</a></li>

						        </ul>
						        <a>79楼</a> 是深V 2018-06-04 09:49:01
					        </div><div class="cont">[quote]operamasks：楼主能否将SM2CryptoServiceProvider发一份给我？谢谢！314788519@qq.com[/quote]
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'是深V')">引用</a></li>

						        </ul>
						        <a>80楼</a> 是深V 2018-06-04 09:49:03
					        </div><div class="cont">[quote]operamasks：楼主能否将SM2CryptoServiceProvider发一份给我？谢谢！314788519@qq.com[/quote]
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'是深V')">引用</a></li>

						        </ul>
						        <a>81楼</a> 是深V 2018-06-04 09:56:33
					        </div><div class="cont">SM2CryptoServiceProvider、GetDictionaryKeys 和SM2X509V3CertificateGenerator这三个的实现放到我邮箱314788519@qq.com，麻烦啦，谢谢!</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'黄安琪')">引用</a></li>

						        </ul>
						        <a>82楼</a> 黄安琪 2018-07-04 20:52:28
					        </div><div class="cont">博主，能否把SM2CryptoServiceProvider、SM2X509V3CertificateGenerator和GetDictionaryKeys的实现发到我邮箱：269625413@qq.com麻烦啦，谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'huang')">引用</a></li>

						        </ul>
						        <a>83楼</a> huang 2018-07-06 11:22:13
					        </div><div class="cont">博主，代码能给我发一份吗，学习用，谢谢了！ 757915502@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'huang')">引用</a></li>

						        </ul>
						        <a>84楼</a> huang 2018-07-06 11:23:46
					        </div><div class="cont">楼主，您好，有时间方便的话能发一份给我吗~?谢谢 757915502@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'我就是我')">引用</a></li>

						        </ul>
						        <a>85楼</a> 我就是我 2018-08-05 22:18:11
					        </div><div class="cont">博主，方便的话把源码发我下呗，谢谢了！536528395@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'pkk')">引用</a></li>

						        </ul>
						        <a>86楼</a> pkk 2018-09-05 10:55:52
					        </div><div class="cont">pengkui201208@163.com 能麻烦您给我一份吗？最新在研究国密算法，谢谢了！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'pkk')">引用</a></li>

						        </ul>
						        <a>87楼</a> pkk 2018-09-05 10:55:52
					        </div><div class="cont">pengkui201208@163.com 能麻烦您给我一份吗？最新在研究国密算法，谢谢了！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'pkk')">引用</a></li>

						        </ul>
						        <a>88楼</a> pkk 2018-09-05 10:55:56
					        </div><div class="cont">pengkui201208@163.com 能麻烦您给我一份吗？最新在研究国密算法，谢谢了！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'hjc')">引用</a></li>

						        </ul>
						        <a>89楼</a> hjc 2020-04-16 14:56:27
					        </div><div class="cont">楼主能否发一份源码参考一下 感谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'hjc')">引用</a></li>

						        </ul>
						        <a>90楼</a> hjc 2020-04-16 14:57:07
					        </div><div class="cont">楼主能否发一份源码参考一下 感谢！邮箱地址18234105447@163.com</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=162&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/162.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=162";
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
		    

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

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
                    
		    <li><a href="/jonllen/work/164.aspx">SM2非对称算法加解密</a>(47354)</li>
                    
		    <li><a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a>(40615)</li>
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(33064)</li>
                    
		    <li><a href="/jonllen/work/174.aspx">SM2国密算法证书解析</a>(28317)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(27067)</li>
                    
	    </ul>
    </div>
</div>
 
</div>
</div>

<div class="auto" id="foot">
    <div class="wrapper">
	Powered By ：Jonllen  <a href="https://beian.miit.gov.cn" target="_blank">粤ICP备10049366号</a>
	</div>
</div>
 
<script type="text/javascript" src="/styles/index/scripts/Drag.js"></script>
<script type="text/javascript" src="/styles/index/scripts/Tooltip.js" ></script>
<div style="display:none"> 
    <script type="text/javascript" src="/styles/index/scripts/statistics.js"></script>
</div>
</body>
</html>