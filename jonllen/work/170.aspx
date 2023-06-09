
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>数字证书的有效性验证 - 工作 - 金龙博客</title>
<meta name="description" content="最近在做数字证书有效性验证的接口，主要是从数字证书的有效期、颁发根证书和CRL进行验证，下面我就从这几个方面来说数字证书的有效性验证。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2013-11-27' } );
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
		     > <a href="/jonllen/work/170.aspx">数字证书的有效性验证</a>
		</div>
        <div class="article">
			<div class="title"><h2>数字证书的有效性验证</h2></div>
			<div class="category">分类：<a href="/jonllen/work/">工作</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>最近在做数字证书有效性验证的接口，主要是从数字证书的有效期、颁发根证书和CRL进行验证，下面我就从这几个方面来说数字证书的有效性验证。</p>
<p><strong>一、有效期</strong></p>
<p>证书的有效期验证这个比较简单，就是使用时间在必须在证书起始和结束日期之间才有效，通过解析X.509对象很容易获取起止时间，判断证书有效期代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #808080;"><span style="color: #008000;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> 有效期验证<br />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="cert"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;&lt;/returns&gt;</span><span style="color: #808080;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">bool</span><span style="color: #000000;"> CheckDate(</span><span style="color: #0000ff;">string</span><span style="color: #000000;"> cert)<br />        {<br />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] bt </span><span style="color: #000000;">=</span><span style="color: #000000;"> Convert.FromBase64String(cert);<br />            System.Security.Cryptography.X509Certificates.X509Certificate2 x509 <br />                </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.Security.Cryptography.X509Certificates.X509Certificate2(bt);<br /><br />            <br />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> date </span><span style="color: #000000;">=</span><span style="color: #000000;"> x509.GetExpirationDateString();<br />            DateTime dtex </span><span style="color: #000000;">=</span><span style="color: #000000;"> Convert.ToDateTime(date);<br />            DateTime dtnow </span><span style="color: #000000;">=</span><span style="color: #000000;"> DateTime.Now;<br />            DateTime dteff </span><span style="color: #000000;">=</span><span style="color: #000000;"> Convert.ToDateTime(x509.GetEffectiveDateString());<br /><br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (dteff </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> dtnow </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> dtnow </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> dtex)<br />            {<br />                </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br />            }<br /><br />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />        }</span></div></div></pre>
<p><strong>二、颁发根证书</strong></p>
<p>每个数字证书都有颁发根证书的签名，验证证书就是用根证书公钥来验证证书颁发者签名。首先，必须要找到数字证书的颁发根证书，Windows本身集成一些权威的受信任的根证书颁发机构，如VeriSign等，如果不在受信任的证书列表，我们打开证书会显示&ldquo;Windows 没有足够信息，不能验证该证书&rdquo;，当然我们可以把根证书加到受信任的根证书列表，这样证书就可以显示正常。</p>
<p>一般带证书链的数字证书中会包含证书颁发机构颁发者，逐级验证到最顶级根证书，每一级都用上级颁发根证书验证证书签名，直到证书颁发者和使用者一样自己可以验证自己通过。根证书的基本约束会不一样，Subject Type=CA代表可以签发证书，而一般的用户证书为Subject Type=End Entity，为终端实体不能再签发证书。</p>
<p><strong>三、CRL验证</strong></p>
<p>CRL是经CA签名的证书作废列表，用于做证书冻结和撤销时对证书有效性状态控制。一般数字证书中都有 CRL分发点地址，提供了HTTP和LDAP方式访问。通过BouncyCastle库解析X509证书的扩展项我们可以获取到CRL地址，然后使用相应方式下载CRL进行验证。</p>
<pre><div class="code"><div class="codetitle"><img title="展开" src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_635211877085684326').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " /><span>获取数字证书CRL</span></div><div class="codemain" id="HighlighterCode_635211877085684326" style="display: none;"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;">  1</span><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_0_191_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_0_191_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_0_191_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_0_191_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_0_191_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_0_191_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_0_191_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_0_191_Open_Text').style.display='inline';" /><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_0_191_Closed_Text">/**/</span><span id="CodeHighlighter1_0_191_Open_Text"><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">  2</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> 获取X.509证书中的CRL地址<br /></span><span style="color: #008080;">  3</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">  4</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="cert"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">  5</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;">  6</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> CRL路径（先返回http格式路径，然后再是ldap）<br /></span><span style="color: #008080;">  7</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/returns&gt;</span><span style="color: #808080;">&nbsp;</span></span><br /><span style="color: #008080;">  8</span><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #000000;">        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> GetCrlPath(</span><span style="color: #0000ff;">string</span><span style="color: #000000;"> cert)<br /></span><span style="color: #008080;">  9</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_252_2332_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_252_2332_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_252_2332_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_252_2332_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_252_2332_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_252_2332_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_252_2332_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_252_2332_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_252_2332_Closed_Text">...</span><span id="CodeHighlighter1_252_2332_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 10</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> crl </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;">.Empty;<br /></span><span style="color: #008080;"> 11</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 12</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Org.BouncyCastle.X509.X509Certificate certificate </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Org.BouncyCastle.X509.X509CertificateParser().ReadCertificate(Convert.FromBase64String(cert));<br /></span><span style="color: #008080;"> 13</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 14</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Org.BouncyCastle.Asn1.Asn1OctetString crlValues </span><span style="color: #000000;">=</span><span style="color: #000000;"> certificate.GetExtensionValue(Org.BouncyCastle.Asn1.X509.X509Extensions.CrlDistributionPoints);<br /></span><span style="color: #008080;"> 15</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 16</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (crlValues </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">) </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> crl;<br /></span><span style="color: #008080;"> 17</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 18</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> ldapCRL </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;">.Empty;<br /></span><span style="color: #008080;"> 19</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] crlData </span><span style="color: #000000;">=</span><span style="color: #000000;"> crlValues.GetOctets();<br /></span><span style="color: #008080;"> 20</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 21</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Org.BouncyCastle.Asn1.Asn1InputStream ais </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Org.BouncyCastle.Asn1.Asn1InputStream(crlValues.GetOctets());<br /></span><span style="color: #008080;"> 22</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Org.BouncyCastle.Asn1.Asn1Sequence seq </span><span style="color: #000000;">=</span><span style="color: #000000;"> (Org.BouncyCastle.Asn1.Asn1Sequence)ais.ReadObject();<br /></span><span style="color: #008080;"> 23</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 24</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> dpCount </span><span style="color: #000000;">=</span><span style="color: #000000;"> seq.Count;<br /></span><span style="color: #008080;"> 25</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">for</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> i </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">; i </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> dpCount; i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br /></span><span style="color: #008080;"> 26</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1086_2259_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1086_2259_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1086_2259_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1086_2259_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1086_2259_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1086_2259_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1086_2259_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1086_2259_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1086_2259_Closed_Text">...</span><span id="CodeHighlighter1_1086_2259_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 27</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                Org.BouncyCastle.Asn1.Asn1Sequence point1 </span><span style="color: #000000;">=</span><span style="color: #000000;"> (Org.BouncyCastle.Asn1.Asn1Sequence)seq.GetObjectAt(i);<br /></span><span style="color: #008080;"> 28</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                Org.BouncyCastle.Asn1.Asn1Encodable tobj </span><span style="color: #000000;">=</span><span style="color: #000000;"> point1.GetObjectAt(</span><span style="color: #800080;">0</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 29</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">while</span><span style="color: #000000;"> (tobj.GetType().IsSubclassOf(</span><span style="color: #0000ff;">typeof</span><span style="color: #000000;">(Org.BouncyCastle.Asn1.Asn1TaggedObject)) </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> </span><span style="color: #000000;">!</span><span style="color: #000000;">((Org.BouncyCastle.Asn1.DerTaggedObject)tobj).IsEmpty())<br /></span><span style="color: #008080;"> 30</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1462_1673_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1462_1673_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1462_1673_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1462_1673_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1462_1673_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1462_1673_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1462_1673_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1462_1673_Open_Text').style.display='inline';" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1462_1673_Closed_Text">...</span><span id="CodeHighlighter1_1462_1673_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 31</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (tobj.GetType().IsSubclassOf(</span><span style="color: #0000ff;">typeof</span><span style="color: #000000;">(Org.BouncyCastle.Asn1.Asn1TaggedObject)))<br /></span><span style="color: #008080;"> 32</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                        tobj </span><span style="color: #000000;">=</span><span style="color: #000000;"> ((Org.BouncyCastle.Asn1.Asn1TaggedObject)tobj).GetObject();<br /></span><span style="color: #008080;"> 33</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 34</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 35</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (tobj </span><span style="color: #0000ff;">is</span><span style="color: #000000;"> Org.BouncyCastle.Asn1.DerSequence)<br /></span><span style="color: #008080;"> 36</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_1754_1839_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1754_1839_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_1754_1839_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1754_1839_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_1754_1839_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_1754_1839_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_1754_1839_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_1754_1839_Open_Text').style.display='inline';" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_1754_1839_Closed_Text">...</span><span id="CodeHighlighter1_1754_1839_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 37</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #008000;">//</span><span style="color: #008000;"> 跳过非URL的CRL地址</span><span style="color: #008000;"><br /></span><span style="color: #008080;"> 38</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">                    </span><span style="color: #0000ff;">continue</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 39</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 40</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 41</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #008000;">//</span><span style="color: #008000;"> 取最后一个CRL地址</span><span style="color: #008000;"><br /></span><span style="color: #008080;"> 42</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">                </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> tmpCrl </span><span style="color: #000000;">=</span><span style="color: #000000;"> Encoding.ASCII.GetString(((Org.BouncyCastle.Asn1.DerOctetString)tobj).GetOctets());<br /></span><span style="color: #008080;"> 43</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 44</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (tmpCrl.StartsWith(</span><span style="color: #800000;">"</span><span style="color: #800000;">http</span><span style="color: #800000;">"</span><span style="color: #000000;">, StringComparison.CurrentCultureIgnoreCase))<br /></span><span style="color: #008080;"> 45</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    crl </span><span style="color: #000000;">=</span><span style="color: #000000;"> tmpCrl;<br /></span><span style="color: #008080;"> 46</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (tmpCrl.StartsWith(</span><span style="color: #800000;">"</span><span style="color: #800000;">ldap</span><span style="color: #800000;">"</span><span style="color: #000000;">, StringComparison.CurrentCultureIgnoreCase))<br /></span><span style="color: #008080;"> 47</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    ldapCRL </span><span style="color: #000000;">=</span><span style="color: #000000;"> tmpCrl;<br /></span><span style="color: #008080;"> 48</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 49</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 50</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 51</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;">.IsNullOrEmpty(crl) </span><span style="color: #000000;">?</span><span style="color: #000000;"> ldapCRL : crl;<br /></span><span style="color: #008080;"> 52</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 53</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /><br /></span><span style="color: #008080;"> 54</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_2342_2472_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2342_2472_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2342_2472_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2342_2472_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_2342_2472_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2342_2472_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2342_2472_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2342_2472_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2342_2472_Closed_Text">/**/</span><span id="CodeHighlighter1_2342_2472_Open_Text"><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;"> 55</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> 即时获取CRL数据<br /></span><span style="color: #008080;"> 56</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;"> 57</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="crl"&gt;&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #008080;"> 58</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />        </span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;&lt;/returns&gt;</span><span style="color: #808080;"></span></span><br /><span style="color: #008080;"> 59</span><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #000000;">        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] GetCRLData(</span><span style="color: #0000ff;">string</span><span style="color: #000000;"> crl)<br /></span><span style="color: #008080;"> 60</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_2532_4282_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2532_4282_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2532_4282_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2532_4282_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_2532_4282_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2532_4282_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2532_4282_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2532_4282_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2532_4282_Closed_Text">...</span><span id="CodeHighlighter1_2532_4282_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 61</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[] crlData </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 62</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 63</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (crl.StartsWith(</span><span style="color: #800000;">"</span><span style="color: #800000;">http</span><span style="color: #800000;">"</span><span style="color: #000000;">, StringComparison.CurrentCultureIgnoreCase))<br /></span><span style="color: #008080;"> 64</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2665_3000_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2665_3000_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2665_3000_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2665_3000_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2665_3000_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2665_3000_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2665_3000_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2665_3000_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2665_3000_Closed_Text">...</span><span id="CodeHighlighter1_2665_3000_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 65</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">try</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 66</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2703_2883_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2703_2883_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2703_2883_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2703_2883_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2703_2883_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2703_2883_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2703_2883_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2703_2883_Open_Text').style.display='inline';" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2703_2883_Closed_Text">...</span><span id="CodeHighlighter1_2703_2883_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 67</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    System.Net.WebClient webClient </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> System.Net.WebClient();<br /></span><span style="color: #008080;"> 68</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    crlData </span><span style="color: #000000;">=</span><span style="color: #000000;"> webClient.DownloadData(crl);<br /></span><span style="color: #008080;"> 69</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    <br /></span><span style="color: #008080;"> 70</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 71</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> (Exception ex)<br /></span><span style="color: #008080;"> 72</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_2937_2986_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2937_2986_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_2937_2986_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2937_2986_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_2937_2986_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_2937_2986_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_2937_2986_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_2937_2986_Open_Text').style.display='inline';" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_2937_2986_Closed_Text">...</span><span id="CodeHighlighter1_2937_2986_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 73</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">throw</span><span style="color: #000000;"> ex;<br /></span><span style="color: #008080;"> 74</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 75</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 76</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (crl.StartsWith(</span><span style="color: #800000;">"</span><span style="color: #800000;">ldap</span><span style="color: #800000;">"</span><span style="color: #000000;">, StringComparison.CurrentCultureIgnoreCase))<br /></span><span style="color: #008080;"> 77</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_3101_4022_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3101_4022_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_3101_4022_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3101_4022_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_3101_4022_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3101_4022_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_3101_4022_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3101_4022_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_3101_4022_Closed_Text">...</span><span id="CodeHighlighter1_3101_4022_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 78</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 79</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">try</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 80</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_3140_3905_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3140_3905_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_3140_3905_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3140_3905_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_3140_3905_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3140_3905_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_3140_3905_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3140_3905_Open_Text').style.display='inline';" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_3140_3905_Closed_Text">...</span><span id="CodeHighlighter1_3140_3905_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 81</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> ldapPath </span><span style="color: #000000;">=</span><span style="color: #000000;"> crl.Replace(</span><span style="color: #800000;">"</span><span style="color: #800000;">ldap://</span><span style="color: #800000;">"</span><span style="color: #000000;">, </span><span style="color: #800000;">""</span><span style="color: #000000;">).Replace(</span><span style="color: #800000;">"</span><span style="color: #800000;">LDAP://</span><span style="color: #800000;">"</span><span style="color: #000000;">, </span><span style="color: #800000;">""</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 82</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">string</span><span style="color: #000000;">[] ldapItems </span><span style="color: #000000;">=</span><span style="color: #000000;"> ldapPath.Split(</span><span style="color: #800000;">'</span><span style="color: #800000;">/</span><span style="color: #800000;">'</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 83</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 84</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> ldapHost </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">LDAP://</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> ldapItems[</span><span style="color: #800080;">0</span><span style="color: #000000;">].Replace(</span><span style="color: #800000;">"</span><span style="color: #800000;">:389</span><span style="color: #800000;">"</span><span style="color: #000000;">,</span><span style="color: #800000;">""</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 85</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> ldapFilter </span><span style="color: #000000;">=</span><span style="color: #000000;"> ldapItems[</span><span style="color: #800080;">1</span><span style="color: #000000;">].Split(</span><span style="color: #800000;">'</span><span style="color: #800000;">?</span><span style="color: #800000;">'</span><span style="color: #000000;">)[</span><span style="color: #800080;">0</span><span style="color: #000000;">];<br /></span><span style="color: #008080;"> 86</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 87</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    DirectoryEntry de </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> DirectoryEntry();<br /></span><span style="color: #008080;"> 88</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    de.Path </span><span style="color: #000000;">=</span><span style="color: #000000;"> ldapHost </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">/</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> ldapFilter;<br /></span><span style="color: #008080;"> 89</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    de.AuthenticationType </span><span style="color: #000000;">=</span><span style="color: #000000;"> AuthenticationTypes.Signing;<br /></span><span style="color: #008080;"> 90</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    de.Username </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">""</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 91</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    de.Password </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">""</span><span style="color: #000000;">;<br /></span><span style="color: #008080;"> 92</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 93</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    DirectorySearcher a </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> DirectorySearcher(de);<br /></span><span style="color: #008080;"> 94</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;"> 95</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    crlData </span><span style="color: #000000;">=</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">byte</span><span style="color: #000000;">[])a.FindOne().Properties[</span><span style="color: #800000;">"</span><span style="color: #800000;">certificateRevocationList;binary</span><span style="color: #800000;">"</span><span style="color: #000000;">][</span><span style="color: #800080;">0</span><span style="color: #000000;">];<br /></span><span style="color: #008080;"> 96</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 97</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #0000ff;">catch</span><span style="color: #000000;"> (Exception ex)<br /></span><span style="color: #008080;"> 98</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_3959_4008_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3959_4008_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_3959_4008_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3959_4008_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_3959_4008_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_3959_4008_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_3959_4008_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_3959_4008_Open_Text').style.display='inline';" />                </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_3959_4008_Closed_Text">...</span><span id="CodeHighlighter1_3959_4008_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;"> 99</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                    </span><span style="color: #0000ff;">throw</span><span style="color: #000000;"> ex;<br /></span><span style="color: #008080;">100</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />                }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">101</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">102</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">103</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (crlData</span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> crlData.Length</span><span style="color: #000000;">&gt;</span><span style="color: #800080;">0</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> crlData[</span><span style="color: #800080;">0</span><span style="color: #000000;">] </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #800080;">0x30</span><span style="color: #000000;">)<br /></span><span style="color: #008080;">104</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_4110_4242_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_4110_4242_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_4110_4242_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_4110_4242_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_4110_4242_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_4110_4242_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_4110_4242_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_4110_4242_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_4110_4242_Closed_Text">...</span><span id="CodeHighlighter1_4110_4242_Open_Text"><span style="color: #000000;">{<br /></span><span style="color: #008080;">105</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #008000;">//</span><span style="color: #008000;"> 非Der编码格式转换</span><span style="color: #008000;"><br /></span><span style="color: #008080;">106</span><span style="color: #008000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">                crlData </span><span style="color: #000000;">=</span><span style="color: #000000;"> Convert.FromBase64String(Encoding.ASCII.GetString(crlData));<br /></span><span style="color: #008080;">107</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /></span><span style="color: #008080;">108</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">109</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> crlData;<br /></span><span style="color: #008080;">110</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /></span><span style="color: #008080;">111</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />        }</span></span></div></div></div></pre>
<p>在用LDAP方式下载CRL时，注意LDAP协议名称要大写，不然访问会出错。下载的CRL格式可能是BASE64编码的，需要判断转换成DER编码二进制格式。</p>
<p>CRL分全量CRL和增量CRL，另外还有分段CRL，即同个CA的证书分不同的CRL地址段，主要是为了分流服务器负载。CRL有生效日期和下次更新时间，一般是定时更新，所以CRL并不是即时状态的。因此还有OCSP在线证书状态协议，可以即时的查询证书状态。</p>
<p>最后，总结证书有效性验证流程设计，如下图。</p>
<div><a href="/upload/jonllen/article/CertValidate.png" target="_blank"><img title="证书有效性验证流程图" src="/upload/jonllen/article/CertValidate.png" /></a></div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/work/">工作</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2013-11-27 20:58</li>
				<li>update@ 2013-11-27 23:13:45</li>
				<li>阅读(<span id="articleClick">5124</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/work/169.aspx">基于应用网关的业务系统安全设计</a></li>
<li>下一篇：<a href="/jonllen/work/171.aspx">2013年度工作总结</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=170&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/work/170.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=170";
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