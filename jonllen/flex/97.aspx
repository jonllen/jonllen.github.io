
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Flex播放器同步显示歌词 - Flex - 金龙博客</title>
<meta name="description" content="在听完S.H.E的你最近还吗不下一百遍，终于搞好了播放器同步显示歌词这一功能。这是继上一篇Flex播放器(实现播放、缓冲进度条和音频曲线显示)后的一扩展功能，本例是实现对lrc文本格式的歌词进行解析显示，并把当前播放歌词一行文本进行高亮显示。
播放歌曲时要同步显示歌词，首先必须要能解析出lrc格式的歌词文本，之前我还准备直接在网上匹配下载对应歌词，打开我机器的千千静音在线匹配歌词，然后用HTTPAnalyzerStdV监视所有的http请求，发现它是请求这个ttlrcct.qianqian.com网站下载歌词，本来还是直接套用千千静音服务器下载歌词，但是它的url参数全部加密了。后来又看了下酷狗音乐，它里面下载歌词我都监视不请求，考虑到就算我能在线找到下载歌词的url地址，flash里发送远程请求也会有安全杀箱问题，所以最终放弃直接在网络上下载歌词的办法，还是全部上传到我网站上去。lrc歌词其实就是一个文本格式的文件，在Flex里面我们可以使用URLLoader去加载，代码如下..." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-01-03' } );
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
		     > <a href="/jonllen/flex/">Flex</a>
		     > <a href="/jonllen/flex/97.aspx">Flex播放器同步显示歌词</a>
		</div>
        <div class="article">
			<div class="title"><h2>Flex播放器同步显示歌词</h2></div>
			<div class="category">分类：<a href="/jonllen/flex/">Flex</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<p style="text-indent: 2em;">在听完S.H.E的你最近还吗不下一百遍，终于搞好了播放器同步显示歌词这一功能。这是继上一篇Flex播放器(实现播放、缓冲进度条和音频曲线显示)后的一扩展功能，本例是实现对lrc文本格式的歌词进行解析显示，并把当前播放歌词一行文本进行高亮显示。</p>
<p style="text-indent: 2em;">播放歌曲时要同步显示歌词，首先必须要能解析出lrc格式的歌词文本，之前我还准备直接在网上匹配下载对应歌词，打开我机器的千千静音在线匹配歌词，然后用HTTPAnalyzerStdV监视所有的http请求，发现它是请求这个ttlrcct.qianqian.com网站下载歌词，本来还是直接套用千千静音服务器下载歌词，但是它的url参数全部加密了。后来又看了下酷狗音乐，它里面下载歌词我都监视不请求，考虑到就算我能在线找到下载歌词的url地址，flash里发送远程请求也会有安全杀箱问题，所以最终放弃直接在网络上下载歌词的办法，还是全部上传到我网站上去。lrc歌词其实就是一个文本格式的文件，在Flex里面我们可以使用URLLoader去加载，代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">/</span><span style="color: #000000;">加载歌词<br />var lrcUrl : </span><span style="color: #0000ff;">String</span><span style="color: #000000;"> </span><span style="color: #000000;">=</span><span style="color: #000000;"> xml.item[currIndex].lrc;<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( lrcUrl!</span><span style="color: #000000;">=</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> lrcUrl!</span><span style="color: #000000;">=</span><span style="color: #800000;">""</span><span style="color: #000000;">)<br />{<br />    var lrc:URLLoader </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> URLLoader();<br />    </span><span style="color: #000000;">//</span><span style="color: #000000;">lrc.dataFormat </span><span style="color: #000000;">=</span><span style="color: #000000;"> URLLoaderDataFormat.VARIABLES;<br />    lrc.load(</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> URLRequest(lrcUrl));<br />    lrc.addEventListener(Event.COMPLETE,LRC_Complete);<br />    lrc.addEventListener(IOErrorEvent.IO_ERROR,LRC_IOError);<br />}<br />lrcArr </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br />outPutLRCString </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">""</span><span style="color: #000000;">;<br />startIndexOf </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br />txtLrc.text </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">""</span><span style="color: #000000;">;</span></div></div></pre>
<p style="text-indent: 2em;">然后在加载完成的事件里，我们能得到lrc文本字符串，这时候我们需要对字符串进行处理，把它转换成一个Array数组，函数方法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> getLRCArray(lrc:</span><span style="color: #0000ff;">String</span><span style="color: #000000;">):</span><span style="color: #0000ff;">Array</span><span style="color: #000000;"> {<br />    var lrcArr:</span><span style="color: #0000ff;">Array</span><span style="color: #000000;">=</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> </span><span style="color: #0000ff;">Array</span><span style="color: #000000;">;            <br />                <br />    lrc </span><span style="color: #000000;">+=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">\r</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br />    <br />    </span><span style="color: #0000ff;">for</span><span style="color: #000000;"> (var i:</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">; i </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> lrc.length; i</span><span style="color: #000000;">++</span><span style="color: #000000;">) {<br />        var </span><span style="color: #0000ff;">time</span><span style="color: #000000;">:Number </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (lrc.charAt(i) </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">:</span><span style="color: #800000;">"</span><span style="color: #000000;">) {<br />            </span><span style="color: #0000ff;">time</span><span style="color: #000000;"> </span><span style="color: #000000;">=</span><span style="color: #000000;"> Number(lrc.slice(i </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">2</span><span style="color: #000000;">, i)) </span><span style="color: #000000;">*</span><span style="color: #000000;"> </span><span style="color: #800080;">60</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> Number(lrc.slice(i </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">, i </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800080;">3</span><span style="color: #000000;">));<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">String</span><span style="color: #000000;">(</span><span style="color: #0000ff;">time</span><span style="color: #000000;">) !</span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">NaN</span><span style="color: #800000;">"</span><span style="color: #000000;">) {<br />                var j:uint </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br />                var startIndex:uint </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br />                var endIndex:uint </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br />                </span><span style="color: #0000ff;">do</span><span style="color: #000000;"> {<br />                    j</span><span style="color: #000000;">++</span><span style="color: #000000;">;<br />                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (lrc.charAt(i </span><span style="color: #000000;">+</span><span style="color: #000000;"> j) </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">]</span><span style="color: #800000;">"</span><span style="color: #000000;">) {<br />                        startIndex </span><span style="color: #000000;">=</span><span style="color: #000000;"> i </span><span style="color: #000000;">+</span><span style="color: #000000;"> j </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">;<br />                    }<br />                }</span><span style="color: #0000ff;">while</span><span style="color: #000000;"> (i </span><span style="color: #000000;">+</span><span style="color: #000000;"> j </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> lrc.indexOf(</span><span style="color: #800000;">"</span><span style="color: #800000;">\r</span><span style="color: #800000;">"</span><span style="color: #000000;">, i))<br />                <br />                endIndex </span><span style="color: #000000;">=</span><span style="color: #000000;"> lrc.indexOf(</span><span style="color: #800000;">"</span><span style="color: #800000;">\r</span><span style="color: #800000;">"</span><span style="color: #000000;">, i);<br />                <br />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(startIndex!</span><span style="color: #000000;">=</span><span style="color: #800080;">0</span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;">endIndex!</span><span style="color: #000000;">=</span><span style="color: #800080;">0</span><span style="color: #000000;">){<br />                    lrcArr.push([</span><span style="color: #0000ff;">time</span><span style="color: #000000;">,lrc.slice(startIndex, endIndex)]);<br />                }<br />            }<br />        }<br />    }<br />    <br />    return lrcArr;<br />}</span></div></div></pre>
<p style="text-indent: 2em;">解析歌词返回的Array数组为多围数组，数组里的每一项是为一个二围数组，item[0]为当前秒数，item[1]为该秒显示的歌词(句)，比如item[0]=歌曲名：你最近还好吗、item[5]=演唱：S.H.E，就是代表第0秒显示歌曲名：你最近还好吗，而从第5秒起则显示演唱：S.H.E，这样通过getLRCArray方法就能得到歌曲所有的时间段显示的歌词拉。本例中把所有歌词放在一个editable="false"不可修改的mx:TextArea文本域内。</p>
<p style="text-indent: 2em;"><b>歌词同步显示的问题</b></p>
<p style="text-indent: 2em;">歌词能全部加载显示了，问题是怎么随着歌曲的播放而高亮显示当前行歌词呢？不过还好Flex提供一个TextRange能对TextArea内文本进行选择性的处理，你只需要设置beginIndex和endIndex就能自动匹配到TextArea中间区域的文本，我这里只是简单的改变了一下颜色，不过我们从TextArea中找某一个句歌词索引的时候需要注意歌词有很多是重复的，所以我们需要用一个变量保存当前歌词播放位置索引startIndexOf，以确保我们高亮选择到的歌词是正确的。同时将TextArea滚动条设置到对应的高度，主要的代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">//</span><span style="color: #000000;">同步显示歌词<br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;">( lrcArr!</span><span style="color: #000000;">=</span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> lrcArr.length </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />{<br />    var sec:Number</span><span style="color: #000000;">=</span><span style="color: #0000ff;">int</span><span style="color: #000000;">(channel.position</span><span style="color: #000000;">/</span><span style="color: #800080;">1000</span><span style="color: #000000;">);<br />    </span><span style="color: #0000ff;">for</span><span style="color: #000000;">(var j:</span><span style="color: #0000ff;">int</span><span style="color: #000000;">=</span><span style="color: #800080;">0</span><span style="color: #000000;">;j</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">lrcArr.length;j</span><span style="color: #000000;">++</span><span style="color: #000000;">){<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(lrcArr[j][</span><span style="color: #800080;">0</span><span style="color: #000000;">]</span><span style="color: #000000;">==</span><span style="color: #000000;">sec){<br />            var currentLrc : </span><span style="color: #0000ff;">String</span><span style="color: #000000;"> </span><span style="color: #000000;">=</span><span style="color: #000000;"> lrcArr[j][</span><span style="color: #800080;">1</span><span style="color: #000000;">];<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( currentLrc !</span><span style="color: #000000;">=</span><span style="color: #000000;"> this.currLrc.text)<br />            {<br />                currLrc.text </span><span style="color: #000000;">=</span><span style="color: #000000;"> currentLrc;<br />                </span><span style="color: #000000;">//</span><span style="color: #000000;">高亮显示，先清空之前高亮部分<br />                var tr : TextRange </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> TextRange(txtLrc);<br />                tr.color </span><span style="color: #000000;">=</span><span style="color: #000000;"> this.getStyle(</span><span style="color: #800000;">"</span><span style="color: #800000;">color</span><span style="color: #800000;">"</span><span style="color: #000000;">);<br />                <br />                var beginIndex : </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> </span><span style="color: #000000;">=</span><span style="color: #000000;"> this.outPutLRCString.indexOf(currentLrc,startIndexOf);<br />                startIndexOf </span><span style="color: #000000;">+=</span><span style="color: #000000;"> currentLrc.length;<br />                var endIndex : </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> </span><span style="color: #000000;">=</span><span style="color: #000000;"> beginIndex </span><span style="color: #000000;">+</span><span style="color: #000000;"> currentLrc.length;<br />                tr.beginIndex </span><span style="color: #000000;">=</span><span style="color: #000000;"> beginIndex;<br />                tr.endIndex </span><span style="color: #000000;">=</span><span style="color: #000000;"> endIndex;<br />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( tr.text !</span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">""</span><span style="color: #000000;"> )<br />                {<br />                    tr.color </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">yellow</span><span style="color: #800000;">"</span><span style="color: #000000;">;                                        <br />                }<br />                </span><span style="color: #000000;">//</span><span style="color: #000000;">设置滚动条位置<br />                this.txtLrc.verticalScrollPosition</span><span style="color: #000000;">=</span><span style="color: #000000;">j</span><span style="color: #000000;">*</span><span style="color: #000000;">this.txtLrc.maxVerticalScrollPosition</span><span style="color: #000000;">/</span><span style="color: #000000;">lrcArr.length;<br />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( lrcArr.length </span><span style="color: #000000;">-</span><span style="color: #000000;"> j </span><span style="color: #000000;">&lt;=</span><span style="color: #000000;"> </span><span style="color: #800080;">5</span><span style="color: #000000;"> ) this.txtLrc.verticalScrollPosition </span><span style="color: #000000;">=</span><span style="color: #000000;"> this.txtLrc.maxVerticalScrollPosition;<br />            }<br />            break;<br />        }<br />    }<br />    <br />}</span></div></div></pre>
<p style="text-indent: 2em;">上面sec是当前歌曲播放的时间秒数，然后循环换数组判断rcArr[j][0]跟当前sec比较，秒数一致才显示对应歌词，一段歌词可能在好几秒内都不会变的，同时根据当前歌词的数组索引位置设置TextArea滚动条位置，让当前正在播放的歌词在中间显示。</p>
<p style="text-indent: 2em;">效果请到移步我的Flex博客网页：<a target="_blank" title="Flex博客" href="/Flex/bin-debug/Index.html">/Flex/bin-debug/Index.html</a></p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/flex/">Flex</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2010-01-03 23:17</li>
				<li>update@ 2010-01-04 00:26:38</li>
				<li>阅读(<span id="articleClick">12191</span>)</li>
				<li>评论(8)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/flex/sound.aspx">Flex播放器(实现播放、缓冲进度条和音频曲线显示)</a></li>
<li>下一篇：<a href=""></a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'小杰')">引用</a></li>

						        </ul>
						        <a>1楼</a> 小杰 2010-01-04 01:39:39
					        </div><div class="cont">Flex牛人，厉害厉害贩</div>
					        <div class="reply" ><span>回复：</span>我也是刚入门学习Flex,很多flash基本的动画都不会做...
只会拖一些Flex的mx组件用~（2010-01-04 09:09:24）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'苏扬')">引用</a></li>

						        </ul>
						        <a>2楼</a> 苏扬 2010-01-04 09:50:51
					        </div><div class="cont">我想弄一个PJ得插件,那才实在 嘿嘿</div>
					        <div class="reply" ><span>回复：</span>:)弱弱的问题,PJ什么插件?（2010-01-04 12:40:47）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'漠然')">引用</a></li>

						        </ul>
						        <a>3楼</a> 漠然 2010-01-04 10:33:46
					        </div><div class="cont">对于认识16个英文字母的漠然来说，无论写任何代码的，都是高高手！</div>
					        <div class="reply" ><span>回复：</span>西西~`（2010-01-04 12:38:45）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'低调VS飞翔')">引用</a></li>

						        </ul>
						        <a>4楼</a> 低调VS飞翔 2010-01-04 18:16:24
					        </div><div class="cont">代码真的要这么写吗？<br />可以不可以写密集点。</div>
					        <div class="reply" ><span>回复：</span>写密集点？？？（2010-01-04 20:49:08）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'老七')">引用</a></li>

						        </ul>
						        <a>5楼</a> 老七 2010-01-05 16:44:58
					        </div><div class="cont">联盟审核通过。。</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'flex爱好者')">引用</a></li>

						        </ul>
						        <a>6楼</a> flex爱好者 2010-04-06 20:45:19
					        </div><div class="cont">你好！又是我啊，非常感谢你发给我的song.xml，现在已经加载成功了。但是还是不是很明白如何同步歌词？txt可以按照播放同步？可以发一份最终的源码给我吗？谢啦~~hongyizung@vip.qq.com</div>
					        <div class="reply" ><span>回复：</span>我歌词里的内容就是LRC歌词文件的格式,之所以用txt文件后缀名是因为我的空间请求访问不了lrc结尾的后缀文件,我在文章里已经写得很清楚了，通过getLRCArray方法把歌词文本转化为了一句句的歌词数组。（2010-04-07 10:02:04）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'cugfjm')">引用</a></li>

						        </ul>
						        <a>7楼</a> cugfjm 2010-08-31 04:03:01
					        </div><div class="cont">做得太好了，能发一份源码吗</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'cugfjm')">引用</a></li>

						        </ul>
						        <a>8楼</a> cugfjm 2010-08-31 04:04:11
					        </div><div class="cont">奥，我的邮箱为475127495@qq.com</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=97&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/flex/97.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=97";
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