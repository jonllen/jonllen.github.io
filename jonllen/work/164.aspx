
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SM2非对称算法加解密 - 工作 - 金龙博客</title>
<meta name="description" content="在前面文章我们已经可以制作SM2证书了，主要应用了SM2签名验证算法和SM3摘要算法，在本文中主要介绍SM2公钥加密算法。这里我们使用SM2数字证书来做SM2非对称加密，然后使用硬件加密设备做解密，比如加密文件只能由指定的智能密码钥匙UKey才能解开。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2013-07-28' } );
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
		     > <a href="/jonllen/work/164.aspx">SM2非对称算法加解密</a>
		</div>
        <div class="article">
			<div class="title"><h2>SM2非对称算法加解密</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>在前面文章我们已经可以制作SM2证书了，主要应用了SM2签名验证算法和SM3摘要算法，在本文中主要介绍SM2公钥加密算法。这里我们使用SM2数字证书来做SM2非对称加密，然后使用硬件加密设备做解密，比如加密文件只能由指定的智能密码钥匙UKey才能解开。</p>
<p><strong>SM2加密算法</strong></p>
<p>SM2加密同样使用接收方公钥加密，公钥由一个曲线坐标点组成，在X.509证书中的共钥表示为04标记开始的2个32byte的BigInteger，即曲线点P（x,y）。SM2公钥加密算法比RSA相对复杂，加密结果由3个部分组成，SM2加密过程中使用了随机数，因此同样的明文数据每一次加密结果都不一样。SM2加密算法流程如下图所示。</p>
<div><a href="/upload/jonllen/article/AsymEncipherment.png" target="_blank" title="SM2加密算法流程"><img src="/upload/jonllen/article/AsymEncipherment.png" /></a></div>
<p>根据国密推荐的SM2椭圆曲线公钥密码算法，首先产生随机数计算出曲线点C1，2个32byte的BigInteger大数，即为SM2加密结果的第1部分。第2部分则是真正的密文，是对明文的加密结果，长度和明文一样。第3部分是杂凑值，用来效验数据。按国密推荐的256位椭圆曲线，明文加密结果比原长度会大96byte。</p>
<p>SM2加密算法同样也可以基于使用BouncyCastle库实现。一般使用数字证书来标识身份，同时使用证书中公钥加密数据。如下SM2Cipher类是C#下SM2软算法实现。</p>
<pre><div class="code"><div class="codetitle"><img title="展开" src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_635106466579506058').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " /><span>SM2Cipher.cs</span></div><div class="codemain" id="HighlighterCode_635106466579506058" style="display: none;"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">  1</span><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> SM2Cipher<br /></span><span style="color: #008080;">  2</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_23_5379_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_23_5379_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_23_5379_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_23_5379_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_23_5379_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_23_5379_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_23_5379_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_23_5379_Open_Text').style.display='inline';" /></span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_23_5379_Closed_Text">...</span><span id="CodeHighlighter1_23_5379_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">  3</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> ct </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">  4</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">  5</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> ECPoint p2;<br /></span><span style="color: #008080;">  6</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> SM3Digest sm3keybase;<br /></span><span style="color: #008080;">  7</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> SM3Digest sm3c3;<br /></span><span style="color: #008080;">  8</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">  9</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] key </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[</span><span style="color: #800080;">32</span><span style="color: #000000;">];<br /></span><span style="color: #008080;"> 10</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;"> keyOff </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 11</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 12</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_258_261_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_258_261_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_258_261_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_258_261_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_258_261_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_258_261_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_258_261_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_258_261_Open_Text').style.display='inline';" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> SM2Cipher() </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_258_261_Closed_Text">...</span><span id="CodeHighlighter1_258_261_Open_Text"><span style="color: #000000;">{ }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 13</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 14</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 15</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 16</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> Reset()<br /></span><span style="color: #008080;"> 17</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_302_730_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_302_730_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_302_730_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_302_730_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_302_730_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_302_730_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_302_730_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_302_730_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_302_730_Closed_Text">...</span><span id="CodeHighlighter1_302_730_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 18</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keybase </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SM3Digest();<br /></span><span style="color: #008080;"> 19</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3c3 </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SM3Digest();<br /></span><span style="color: #008080;"> 20</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 21</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] p;<br /></span><span style="color: #008080;"> 22</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 23</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            p </span><span style="color: #000000;">=</span><span style="color: #000000;"> p2.X.ToBigInteger().ToByteArrayUnsigned();<br /></span><span style="color: #008080;"> 24</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keybase.BlockUpdate(p, </span><span style="color: #800080;">0</span><span style="color: #000000;">, p.Length);<br /></span><span style="color: #008080;"> 25</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3c3.BlockUpdate(p, </span><span style="color: #800080;">0</span><span style="color: #000000;">, p.Length);<br /></span><span style="color: #008080;"> 26</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 27</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            p </span><span style="color: #000000;">=</span><span style="color: #000000;"> p2.Y.ToBigInteger().ToByteArrayUnsigned();<br /></span><span style="color: #008080;"> 28</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keybase.BlockUpdate(p, </span><span style="color: #800080;">0</span><span style="color: #000000;">, p.Length);<br /></span><span style="color: #008080;"> 29</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 30</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ct </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 31</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            NextKey();<br /></span><span style="color: #008080;"> 32</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 33</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 34</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> NextKey()<br /></span><span style="color: #008080;"> 35</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_771_1145_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_771_1145_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_771_1145_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_771_1145_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_771_1145_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_771_1145_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_771_1145_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_771_1145_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_771_1145_Closed_Text">...</span><span id="CodeHighlighter1_771_1145_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 36</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            SM3Digest sm3keycur </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> SM3Digest(sm3keybase);<br /></span><span style="color: #008080;"> 37</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keycur.Update((</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">)(ct </span><span style="color: #000000;">&gt;&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">24</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800080;">0x00ff</span><span style="color: #000000;">));<br /></span><span style="color: #008080;"> 38</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keycur.Update((</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">)(ct </span><span style="color: #000000;">&gt;&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">16</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800080;">0x00ff</span><span style="color: #000000;">));<br /></span><span style="color: #008080;"> 39</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keycur.Update((</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">)(ct </span><span style="color: #000000;">&gt;&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">8</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800080;">0x00ff</span><span style="color: #000000;">));<br /></span><span style="color: #008080;"> 40</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keycur.Update((</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">)(ct </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800080;">0x00ff</span><span style="color: #000000;">));<br /></span><span style="color: #008080;"> 41</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3keycur.DoFinal(key, </span><span style="color: #800080;">0</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 42</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            keyOff </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 43</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ct</span><span style="color: #000000;">++</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 44</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 45</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 46</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">virtual</span><span style="color: #000000;"> ECPoint InitEncipher(ECPoint userKey)<br /></span><span style="color: #008080;"> 47</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1216_1764_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1216_1764_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1216_1764_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1216_1764_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1216_1764_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1216_1764_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1216_1764_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1216_1764_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1216_1764_Closed_Text">...</span><span id="CodeHighlighter1_1216_1764_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 48</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger k </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 49</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECPoint c1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 50</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 51</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (</span><span style="color: #800080;">1</span><span style="color: #000000;">==</span><span style="color: #800080;">1</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 52</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1317_1669_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1317_1669_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1317_1669_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1317_1669_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1317_1669_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1317_1669_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1317_1669_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1317_1669_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1317_1669_Closed_Text">...</span><span id="CodeHighlighter1_1317_1669_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 53</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                AsymmetricCipherKeyPair key </span><span style="color: #000000;">=</span><span style="color: #000000;"> SM2CryptoServiceProvider.SM2KeyPairGenerator.GenerateKeyPair();<br /></span><span style="color: #008080;"> 54</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                ECPrivateKeyParameters ecpriv </span><span style="color: #000000;">=</span><span style="color: #000000;"> (ECPrivateKeyParameters)key.Private;<br /></span><span style="color: #008080;"> 55</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                ECPublicKeyParameters ecpub </span><span style="color: #000000;">=</span><span style="color: #000000;"> (ECPublicKeyParameters)key.Public;<br /></span><span style="color: #008080;"> 56</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 57</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                k </span><span style="color: #000000;">=</span><span style="color: #000000;"> ecpriv.D;<br /></span><span style="color: #008080;"> 58</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                c1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> ecpub.Q;<br /></span><span style="color: #008080;"> 59</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 60</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 61</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            p2 </span><span style="color: #000000;">=</span><span style="color: #000000;"> userKey.Multiply(k);<br /></span><span style="color: #008080;"> 62</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Reset();<br /></span><span style="color: #008080;"> 63</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 64</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> c1;<br /></span><span style="color: #008080;"> 65</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 66</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 67</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 68</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">virtual</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> Encrypt(</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] data)<br /></span><span style="color: #008080;"> 69</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1823_2081_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1823_2081_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1823_2081_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1823_2081_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1823_2081_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1823_2081_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1823_2081_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1823_2081_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1823_2081_Closed_Text">...</span><span id="CodeHighlighter1_1823_2081_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 70</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3c3.BlockUpdate(data, </span><span style="color: #800080;">0</span><span style="color: #000000;">, data.Length);<br /></span><span style="color: #008080;"> 71</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">for</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> i </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">; i </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> data.Length; i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 72</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1940_2071_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1940_2071_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1940_2071_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1940_2071_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1940_2071_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1940_2071_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1940_2071_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1940_2071_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1940_2071_Closed_Text">...</span><span id="CodeHighlighter1_1940_2071_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 73</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (keyOff </span><span style="color: #000000;">==</span><span style="color: #000000;"> key.Length)<br /></span><span style="color: #008080;"> 74</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    NextKey();<br /></span><span style="color: #008080;"> 75</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 76</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                data[i] </span><span style="color: #000000;">^=</span><span style="color: #000000;"> key[keyOff</span><span style="color: #000000;">++</span><span style="color: #000000;">];<br /></span><span style="color: #008080;"> 77</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 78</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 79</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 80</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">virtual</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> InitDecipher(BigInteger userD, ECPoint c1)<br /></span><span style="color: #008080;"> 81</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2162_2231_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2162_2231_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2162_2231_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2162_2231_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2162_2231_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2162_2231_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2162_2231_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2162_2231_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2162_2231_Closed_Text">...</span><span id="CodeHighlighter1_2162_2231_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 82</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            p2 </span><span style="color: #000000;">=</span><span style="color: #000000;"> c1.Multiply(userD);<br /></span><span style="color: #008080;"> 83</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Reset();<br /></span><span style="color: #008080;"> 84</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 85</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 86</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">virtual</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> Decrypt(</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] data)<br /></span><span style="color: #008080;"> 87</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2290_2548_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2290_2548_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2290_2548_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2290_2548_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2290_2548_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2290_2548_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2290_2548_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2290_2548_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2290_2548_Closed_Text">...</span><span id="CodeHighlighter1_2290_2548_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 88</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">for</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> i </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">; i </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> data.Length; i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 89</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2354_2485_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2354_2485_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2354_2485_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2354_2485_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2354_2485_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2354_2485_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2354_2485_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2354_2485_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2354_2485_Closed_Text">...</span><span id="CodeHighlighter1_2354_2485_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 90</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (keyOff </span><span style="color: #000000;">==</span><span style="color: #000000;"> key.Length)<br /></span><span style="color: #008080;"> 91</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    NextKey();<br /></span><span style="color: #008080;"> 92</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 93</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                data[i] </span><span style="color: #000000;">^=</span><span style="color: #000000;"> key[keyOff</span><span style="color: #000000;">++</span><span style="color: #000000;">];<br /></span><span style="color: #008080;"> 94</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 95</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3c3.BlockUpdate(data, </span><span style="color: #800080;">0</span><span style="color: #000000;">, data.Length);<br /></span><span style="color: #008080;"> 96</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 97</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 98</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">virtual</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> Dofinal(</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] c3)<br /></span><span style="color: #008080;"> 99</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2605_2784_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2605_2784_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2605_2784_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2605_2784_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2605_2784_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2605_2784_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2605_2784_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2605_2784_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2605_2784_Closed_Text">...</span><span id="CodeHighlighter1_2605_2784_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">100</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] p </span><span style="color: #000000;">=</span><span style="color: #000000;"> p2.Y.ToBigInteger().ToByteArrayUnsigned();<br /></span><span style="color: #008080;">101</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3c3.BlockUpdate(p, </span><span style="color: #800080;">0</span><span style="color: #000000;">, p.Length);<br /></span><span style="color: #008080;">102</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            sm3c3.DoFinal(c3, </span><span style="color: #800080;">0</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">103</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Reset();<br /></span><span style="color: #008080;">104</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">105</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">106</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">107</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2795_2975_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2795_2975_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2795_2975_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2795_2975_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2795_2975_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2795_2975_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2795_2975_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2795_2975_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2795_2975_Closed_Text">/**/</span><span id="CodeHighlighter1_2795_2975_Open_Text"><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">108</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> 使用SM2公钥加密数据<br /></span><span style="color: #008080;">109</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">110</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="pubKey"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">111</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="plaintext"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">112</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;&lt;/returns&gt;</span><span style="color: #808080;"></span></span><br /><span style="color: #008080;">113</span><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><span style="color: #000000;">        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> Encrypt(ECPoint pubKey, </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] plaintext)<br /></span><span style="color: #008080;">114</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_3047_3594_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3047_3594_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_3047_3594_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3047_3594_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_3047_3594_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3047_3594_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_3047_3594_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3047_3594_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_3047_3594_Closed_Text">...</span><span id="CodeHighlighter1_3047_3594_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">115</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">116</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] data </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[plaintext.Length];<br /></span><span style="color: #008080;">117</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Array.Copy(plaintext, data, plaintext.Length);<br /></span><span style="color: #008080;">118</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">119</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECPoint c1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> InitEncipher(pubKey);<br /></span><span style="color: #008080;">120</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Encrypt(data);<br /></span><span style="color: #008080;">121</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">122</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] c3 </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[</span><span style="color: #800080;">32</span><span style="color: #000000;">];<br /></span><span style="color: #008080;">123</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Dofinal(c3);<br /></span><span style="color: #008080;">124</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">125</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> hexString </span><span style="color: #000000;">=</span><span style="color: #000000;"> c1.X.ToBigInteger().ToString(</span><span style="color: #800080;">16</span><span style="color: #000000;">) </span><span style="color: #000000;">+</span><span style="color: #000000;"> c1.Y.ToBigInteger().ToString(</span><span style="color: #800080;">16</span><span style="color: #000000;">)<br /></span><span style="color: #008080;">126</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #000000;">+</span><span style="color: #000000;"> Org.BouncyCastle.Utilities.Encoders.Hex.ToHexString(data)<br /></span><span style="color: #008080;">127</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #000000;">+</span><span style="color: #000000;"> Org.BouncyCastle.Utilities.Encoders.Hex.ToHexString(c3);<br /></span><span style="color: #008080;">128</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">129</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> hexString;<br /></span><span style="color: #008080;">130</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">131</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">132</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">133</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_3604_3787_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3604_3787_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_3604_3787_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3604_3787_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_3604_3787_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3604_3787_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_3604_3787_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3604_3787_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_3604_3787_Closed_Text">/**/</span><span id="CodeHighlighter1_3604_3787_Open_Text"><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">134</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> 使用SM2解密数据<br /></span><span style="color: #008080;">135</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">136</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="privateKey"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">137</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="ciphertext"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">138</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;&lt;/returns&gt;</span><span style="color: #808080;"></span></span><br /><span style="color: #008080;">139</span><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><span style="color: #000000;">        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] Decrypt(BigInteger privateKey, </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> ciphertext)<br /></span><span style="color: #008080;">140</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_3867_4728_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3867_4728_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_3867_4728_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3867_4728_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_3867_4728_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3867_4728_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_3867_4728_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3867_4728_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_3867_4728_Closed_Text">...</span><span id="CodeHighlighter1_3867_4728_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">141</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">142</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> hexString </span><span style="color: #000000;">=</span><span style="color: #000000;"> ciphertext;<br /></span><span style="color: #008080;">143</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> c1X </span><span style="color: #000000;">=</span><span style="color: #000000;"> hexString.Substring(</span><span style="color: #800080;">0</span><span style="color: #000000;">, </span><span style="color: #800080;">64</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">144</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> c1Y </span><span style="color: #000000;">=</span><span style="color: #000000;"> hexString.Substring(</span><span style="color: #800080;">0</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> c1X.Length, </span><span style="color: #800080;">64</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">145</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> encrypData </span><span style="color: #000000;">=</span><span style="color: #000000;"> hexString.Substring(c1X.Length </span><span style="color: #000000;">+</span><span style="color: #000000;"> c1Y.Length, hexString.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> c1X.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> c1Y.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">64</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">146</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> c3 </span><span style="color: #000000;">=</span><span style="color: #000000;"> hexString.Substring(hexString.Length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">64</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">147</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">148</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] data </span><span style="color: #000000;">=</span><span style="color: #000000;"> SM2CryptoServiceProvider.StrToToHexByte(encrypData);<br /></span><span style="color: #008080;">149</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">150</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECPoint c1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> CreatePoint(c1X, c1Y);<br /></span><span style="color: #008080;">151</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            <br /></span><span style="color: #008080;">152</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            InitDecipher(privateKey, c1);<br /></span><span style="color: #008080;">153</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Decrypt(data);<br /></span><span style="color: #008080;">154</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">155</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] c3_ </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[</span><span style="color: #800080;">32</span><span style="color: #000000;">];<br /></span><span style="color: #008080;">156</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Dofinal(c3_);<br /></span><span style="color: #008080;">157</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">158</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> decryptData </span><span style="color: #000000;">=</span><span style="color: #000000;"> Encoding.Default.GetString(data);<br /></span><span style="color: #008080;">159</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">bool</span><span style="color: #000000;"> isDecrypt </span><span style="color: #000000;">=</span><span style="color: #000000;"> Org.BouncyCastle.Utilities.Encoders.Hex.ToHexString(c3_) </span><span style="color: #000000;">==</span><span style="color: #000000;"> c3;<br /></span><span style="color: #008080;">160</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">161</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> (isDecrypt </span><span style="color: #000000;">?</span><span style="color: #000000;"> data : </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[</span><span style="color: #800080;">0</span><span style="color: #000000;">]);<br /></span><span style="color: #008080;">162</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">163</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">164</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">165</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_4739_4900_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_4739_4900_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_4739_4900_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_4739_4900_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_4739_4900_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_4739_4900_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_4739_4900_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_4739_4900_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_4739_4900_Closed_Text">/**/</span><span id="CodeHighlighter1_4739_4900_Open_Text"><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">166</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> 创建坐标点<br /></span><span style="color: #008080;">167</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">168</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="x"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">169</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="y"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">170</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;&lt;/returns&gt;</span><span style="color: #808080;"></span></span><br /><span style="color: #008080;">171</span><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><span style="color: #000000;">        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> ECPoint CreatePoint(</span><span style="color: #0000ff;">string</span><span style="color: #000000;"> x, </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> y)<br /></span><span style="color: #008080;">172</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_4970_5374_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_4970_5374_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_4970_5374_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_4970_5374_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_4970_5374_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_4970_5374_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_4970_5374_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_4970_5374_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_4970_5374_Closed_Text">...</span><span id="CodeHighlighter1_4970_5374_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">173</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">174</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger biX </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(x, </span><span style="color: #800080;">16</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">175</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            BigInteger biY </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> BigInteger(y, </span><span style="color: #800080;">16</span><span style="color: #000000;">);<br /></span><span style="color: #008080;">176</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECFieldElement fx </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FpFieldElement(SM2CryptoServiceProvider.ecc_p, biX);<br /></span><span style="color: #008080;">177</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECFieldElement fy </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FpFieldElement(SM2CryptoServiceProvider.ecc_p, biY);<br /></span><span style="color: #008080;">178</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            ECPoint point </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> FpPoint(SM2CryptoServiceProvider.ecc_curve, fx,fy);<br /></span><span style="color: #008080;">179</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> point;<br /></span><span style="color: #008080;">180</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">181</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">182</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">183</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">184</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />}</span></span></div></div></div></pre>
<p><strong>SM2解密算法</strong></p>
<p>SM2解密算法是加密逆运算。首先需要从密文中取出加密结果的3部分值，然后通过私钥计算出 M'明文值，最后效验数据。SM2解密算法流程如下图所示。&nbsp;</p>
<div><a href="/upload/jonllen/article/AsymDecipherment.png" target="_blank" title="SM2解密算法流程"><img src="/upload/jonllen/article/AsymDecipherment.png" /></a></div>
<p>&nbsp;SM2解密同样也可以使用软算法实现。但因为涉及到私钥运算，为保护私钥安全，建议在硬件设备中运行，例如UKey等存储介质这样可以更好的保护密钥安全。拿文件加密来说，首先拿UKey里面的加密证书加密，这部分可在应用系统内完成。解密的话则需要加密证书对应UKey才能做解密，由应用系统调用UKey解密接口，在物理硬件内完成数据解密，同时可以受设备Ping码保护。</p>
<p>附：<a href="/Demo/SM2.aspx" target="_blank" title="SM2算法加解密在线测试工具">SM2算法加解密在线测试工具</a></p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, loadSrc : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2013-07-28 23:20</li>
				<li>update@ 0001-01-01 00:00:00</li>
				<li>阅读(<span id="articleClick">17782</span>)</li>
				<li>评论(20)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a></li>
<li>下一篇：<a href="/jonllen/work/169.aspx">基于应用网关的业务系统安全设计</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'zhiyonggong')">引用</a></li>

						        </ul>
						        <a>1楼</a> zhiyonggong 2014-02-14 15:16:09
					        </div><div class="cont">你的这篇文章，给我的工作提供了很大帮助。特别是测试Demo.谢谢。</div>
					        <div class="reply" ><span>回复：</span>：）（2014-02-16 22:13:14）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'121212121')">引用</a></li>

						        </ul>
						        <a>2楼</a> 121212121 2014-02-24 11:11:36
					        </div><div class="cont"><em>评论内容需要审核才能显示。</em></div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'121212121')">引用</a></li>

						        </ul>
						        <a>3楼</a> 121212121 2014-02-24 11:12:35
					        </div><div class="cont">您好！我看了您SM2加解密测试的文章，非常感谢您提供的在线测试工具！但我有个问题想问下，如果我要测试别人的SM2算法正确与否，我怎样才能找到这样的测试数据呢，因为算法里面有随机数，每次都在变化。标准里只是给了一组数据，随机数也是给定的，那这样的数据比较有局限性，应该怎样测试呢？</div>
					        <div class="reply" ><span>回复：</span>SM2加密结果中C1是随机数，可以用私钥解密看SM2公私钥是否匹配。（2014-03-03 21:22:59）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'121212121')">引用</a></li>

						        </ul>
						        <a>4楼</a> 121212121 2014-03-06 17:31:37
					        </div><div class="cont">您好！谢谢您的解答！您的意思是调用加密接口得到密文，然后再用解密接口解密吗？那这样没有中间结果比对，会不会存在自己解密自己解密接口本身有问题呢？比如说，现在新标准的加密结果是C1‖C3‖C2，而老标准是C1‖C2‖C3，如果自己验自己的接口，就不会有问题。有没有第三方的接口，或是别的测试数据可以借鉴呢？或是通过别的方法来验证SM2加解密算法的正确性？</div>
					        <div class="reply" ><span>回复：</span>一般不会别人加密接口有问题，自己的接口也有问题，还能解密成功吧？一般都是连密码设备作加解密的，用的是C1C2C3还是C1C3C2标准这个可以知道的。（2014-03-09 21:25:55）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'121212121')">引用</a></li>

						        </ul>
						        <a>5楼</a> 121212121 2014-03-10 15:53:28
					        </div><div class="cont">您好！我现在遇到的问题是没有别人的接口，所以测起来比较头疼！您的加解密接口我颠倒下数据就可以用，谢谢！不知道您有没有前面验签的测试工具呀，如果方便的话能否给我发一份呢！</div>
					        <div class="reply" ><span>回复：</span>这个一般连密码设备做的，密码机和UKey里都会提供这些函数的。（2014-03-10 21:28:23）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'yupeng_wu')">引用</a></li>

						        </ul>
						        <a>6楼</a> yupeng_wu 2014-04-14 09:07:29
					        </div><div class="cont">您好 我用了东方新诚信的USBKey 支持国密 想实现安全文件加密传输 他们技术支持回复说要安装国密标准一步步  那边又不提供资料 我想问下您通常的解决方案是什么呀 编写控件应该注意什么呢</div>
					        <div class="reply" ><span>回复：</span>使用SM2非对称密钥加密会话密钥，再用对称密钥加密文件。解密先用私钥解开会话密钥再解密密文。（2014-04-15 13:01:50）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'泉')">引用</a></li>

						        </ul>
						        <a>7楼</a> 泉 2014-05-26 11:39:22
					        </div><div class="cont">在线签名很明显不正确，每次点击“签名”按钮其结果都一样，应该每次点击“签名”后，签名结果不同</div>
					        <div class="reply" ><span>回复：</span>谢谢提醒，我之前测试SM2曲线是使用的固定变量k值签名，应该是要生成随机变量k进行签名的。（2014-06-17 10:00:46）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'过客')">引用</a></li>

						        </ul>
						        <a>8楼</a> 过客 2014-09-05 14:44:05
					        </div><div class="cont">您好，刚接触加解密算法，很多问题不是很懂，能发给我一份SM2加解密的源码吗？谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'oracle_cs')">引用</a></li>

						        </ul>
						        <a>9楼</a> oracle_cs 2015-08-27 14:34:42
					        </div><div class="cont">您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？ 1607418266@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'oracle_cs')">引用</a></li>

						        </ul>
						        <a>10楼</a> oracle_cs 2015-08-27 14:34:44
					        </div><div class="cont">您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？ 1607418266@qq.com</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'郭青山')">引用</a></li>

						        </ul>
						        <a>11楼</a> 郭青山 2016-03-07 17:11:22
					        </div><div class="cont">您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？704299375@qq.com
谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lyvslu')">引用</a></li>

						        </ul>
						        <a>12楼</a> lyvslu 2016-04-08 20:11:31
					        </div><div class="cont">您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？823106498@qq.com谢谢！</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'刘宇莹')">引用</a></li>

						        </ul>
						        <a>13楼</a> 刘宇莹 2016-04-21 08:31:17
					        </div><div class="cont">[quote]oracle_cs：您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？ 975071049@qq.com[/quote]
</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lhb')">引用</a></li>

						        </ul>
						        <a>14楼</a> lhb 2016-04-24 21:25:15
					        </div><div class="cont">您好！请问知道了公钥，怎么求公钥的坐标呢。EC_POINT_hex2point这个函数我不会使用，有例子吗？
</div>
					        <div class="reply" ><span>回复：</span>用SM2曲线参数和公钥的XY值,就可以获取坐标点对象（2016-04-24 21:53:33）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lhb')">引用</a></li>

						        </ul>
						        <a>15楼</a> lhb 2016-04-24 22:09:49
					        </div><div class="cont">很高兴你能够回复，我现在项目需要到这个算法。我就是知道公钥啊，公钥是"16E532957F1F107F794C1F8157CC768A72BD425B6F425B3C67153DB9082B7F45"，然后我怎么获取公钥的坐标。你说的是已经知道坐标的情况了啊。。。</div>
					        <div class="reply" ><span>回复：</span>SM2证书结构中的获取的公钥数据是04开头的，后面64字节中间截取后就是公钥XY值呀（2016-04-24 22:20:03）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lhb')">引用</a></li>

						        </ul>
						        <a>16楼</a> lhb 2016-04-24 22:23:29
					        </div><div class="cont">我的客户银行就说公钥是
“16E532957F1F107F794C1F8157CC768A72BD425B6F425B3C67153DB9082B7F45"，难道他给的不全？
说明：获取素数域上椭圆曲线上某个点的x和y的几何坐标；
 int EC_POINT_get_affine_coordinates_GFp(const EC_GROUP *group, const EC_POINT *point,BIGNUM *x, BIGNUM *y, BN_CTX *ctx)
网上这个函数我怎么使用都提示到段错误</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lhb')">引用</a></li>

						        </ul>
						        <a>17楼</a> lhb 2016-04-24 22:28:47
					        </div><div class="cont">将buf中表示的十六进制数据转化为椭圆曲线上的点；
EC_POINT *EC_POINT_hex2point(const EC_GROUP *group,const char *buf,EC_POINT *point,BN_CTX *ctx)</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lhb')">引用</a></li>

						        </ul>
						        <a>18楼</a> lhb 2016-04-24 22:33:51
					        </div><div class="cont">我的没有那么复杂，就直接给公钥了。但还是很难的。。谢谢啦</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'lhb')">引用</a></li>

						        </ul>
						        <a>19楼</a> lhb 2016-04-25 20:36:08
					        </div><div class="cont">我找到的一个例子用私钥生成公钥和你这里一样，但是密文不同，难道是我哪里错啦，还有用国家文档的例子放你这里好像密文也不一样</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'naohailongwang')">引用</a></li>

						        </ul>
						        <a>20楼</a> naohailongwang 2016-05-23 16:38:59
					        </div><div class="cont">大神你好，这个SM2CryptoServiceProvider有什么功能？能发源代码学习一下吗？(不好意思，做了伸手党)谢谢!253713735@qq.com</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=164&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/164.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=164";
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
		    

<li><a href="/jonllen/work/162.aspx#comment"><b>天津</b>：楼主，您好，有时间方便的话，能否发SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现到我邮箱310168722@qq.com，谢谢了，好人一生平安。</a></li>

<li><a href="/jonllen/work/164.aspx#comment"><b>naohailongwang</b>：大神你好，这个SM2CryptoServiceProvider有什么功能？能发源代码学习一下吗？(不好意思，做了伸手党)谢谢!253713735@qq.com</a></li>

<li><a href="/jonllen/work/162.aspx#comment"><b>小张</b>：楼主，目前我也在研究用sm2算法生成证书和签名，还请麻烦你把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱284255234@qq.com，提供给我以学习和研究，麻烦了~</a></li>

<li><a href="/jonllen/work/162.aspx#comment"><b>安迪</b>：大哥，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱13101716280@163.com，谢谢!!</a></li>

<li><a href="/jonllen/work/162.aspx#comment"><b>安迪</b>：大哥，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱13101716280@163.com，谢谢!!</a></li>

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
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(32057)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(26076)</li>
                    
		    <li><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a>(23331)</li>
                    
		    <li><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a>(20577)</li>
                    
		    <li><a href="/jonllen/java/struts.aspx">Struts增删改查实例及源代码下载</a>(20110)</li>
                    
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