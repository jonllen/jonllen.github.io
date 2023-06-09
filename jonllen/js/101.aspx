
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>使用Google地图API搜索功能 - JavaScript - 金龙博客</title>
<meta name="description" content="由于工作关系，最近这两天研究了下Google地图API，要实现地图位置搜索功能，显示搜索结果并能在地图上标记下来，刚开始还考虑使用51ditu，出于搜索关键字分词等方面考虑，最后还是决定使用Google地图，一直也都是那么的崇拜谷歌的大神，这次就来体验一翻~" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-01-24' } );
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
		     > <a href="/jonllen/js/">JavaScript</a>
		     > <a href="/jonllen/js/101.aspx">使用Google地图API搜索功能</a>
		</div>
        <div class="article">
			<div class="title"><h2>使用Google地图API搜索功能</h2></div>
			<div class="category">分类：<a href="/jonllen/js/">JavaScript</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<script type="text/javascript">// <![CDATA[
		document.charset = "UTF-8";
// ]]></script>
<p style="text-indent: 2em;">由于工作关系，最近这两天研究了下<a href="http://code.google.com/intl/zh-CN/apis/maps/documentation/reference.html" target="_blank">Google地图API</a>，要实现地图位置搜索功能，显示搜索结果并能在地图上标记下来，刚开始还考虑使用51ditu，出于搜索关键字分词等方面考虑，最后还是决定使用Google地图，一直也都是那么的崇拜谷歌的大神，这次就来体验一翻~</p>
<p style="text-indent: 2em;"><strong>在Google地图标记定位到一点</strong></p>
<p style="text-indent: 2em;">刚开始是实现在Google地图上定位一点的功能，API接口里GMap2类有一个setCenter(center:GLatLng, zoom?:Number, type?:GMapType)方法可以设置地图中心，GLatLng参数以经度和纬度表示的地理坐标点，zoom和type分别为缩放级别和地图类型的可选参数，GLatLng经纬度坐标点可以通过GClientGeocoder类的getLatLng方法获得，getLatLng方法传入地址关键字参数，在回调函数里传递找到的第一个经纬度坐标点，如果没有找到定位点则为null，这样我们就能根据GLatLng经纬度坐标点创建一个GMarker标记并在地图上显示出来。</p>
<p style="text-indent: 2em;"><strong>搜索定位到多个点</strong></p>
<p style="text-indent: 2em;">根据关键字定位到会存在一个问题，假如搜索关键字在地图上有多个点的话，那么返回的第一个经纬度坐标点不一定就是你所要找的地址，这个时候就有必要返回多个搜索结果点，然后再能让用户选择。刚开始我还以为Google地图API里没有提供返回多个搜索结果的接口，让老萍各一强银说就跑到了<a href="http://www.google.com/uds/solutions/localsearch/reference.html" target="_blank">Google AJAX Search API</a>，不过<a href="http://www.google.com/uds/solutions/localsearch/default.html" target="_blank">那里</a>确实有实现搜索返回多个结果的示例。今天仔细看了下Google地图API，发现它里面本身是提供搜索功能的，我想<a href="http://www.google.com/uds/solutions/mapsearch/index.html" target="_blank">AJAX Map Search Solution</a>只是自定义实现封装好了类。其实，在创建GMap2实例时可指定GMapOptions参数，里面的GGoogleBarOptions属性即为搜索控件的选项，然后再调用enableGoogleBar()方法就会为地图启用集成搜索控件，GGoogleBarOptions 类属性如下：</p>
<table style="border: solid 1px #ccc; border-collapse: collapse;" border="1" cellspacing="0" cellpadding="0">
<tr style="background-color: #eaeaea;">
<th>属性</th><th>类型</th><th>说明</th>
</tr>
<tr>
<td>showOnLoad</td>
<td>Boolean</td>
<td>当设置为 true 时，该属性显示 GoogleBar 中的搜索框（如果启用了控件并加载了地图）。默认情况下，控件中的搜索框是隐藏的，只有当点击该控件的放大镜时才会展开。
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>linkTarget</td>
<td>GGoogleBarLinkTarget</td>
<td>该属性允许指定嵌入 GoogleBar 的搜索结果中的链接目标。默认值为 G_GOOGLEBAR_LINK_TARGET_BLANK，该默认值指定这些链接将在新窗口中打开。
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>resultList</td>
<td>GGoogleBarResultList or Element</td>
<td>该属性可让您指定 GoogleBar 的搜索结果列表的样式，该样式可能为以下样式的一种：G_GOOGLEBAR_RESULT_LIST_INLINE（默认样式）将结果列表放入搜索框上的表中；G_GOOGLEBAR_RESULT_LIST_SUPPRESS 使用&ldquo;下一个&rdquo;/&ldquo;上一个&rdquo;按钮替换该列表；传递块级别的 DOM 的 Element 将列表放入您选择的容器（通常为 &lt;div&gt; 元素）中。
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>suppressInitialResultSelection</td>
<td>Boolean</td>
<td>系统完成 GoogleBar 中的搜索后就会在其信息窗口中显示第一个结果（这是默认行为），该属性抑制这种行为。
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>suppressZoomToBounds</td>
<td>Boolean</td>
<td>该属性还抑制完成 GoogleBar 中的搜索后自动平移和缩放以适合结果集的操作。（该属性抑制默认行为。）
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>onIdleCallback</td>
<td>Function</td>
<td>该属性指定 GoogleBar 完成搜索且搜索结果关闭时要调用的回调函数。
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>onSearchCompleteCallback</td>
<td>Function</td>
<td>该属性指定 GoogleBar 完成搜索且搜索结果完全显示时要调用的回调函数向该函数传递与搜索控件相关的 GlocalSearch 对象。在结果放到地图上或结果列表中之前调用该回调函数。
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>onGenerateMarkerHtmlCallback</td>
<td>Function</td>
<td>此属性可让您指定打开搜索结果标记的信息窗口时要调用的回调函数。应该向该函数先后传递 GMarker、生成的 HTML 字符串和 GlocalSearchResult，并且该函数必须返回要显示在信息窗口中的已修改 HTML 字符串。
<p>（自 2.95 开始）</p>
</td>
</tr>
<tr>
<td>onMarkersSetCallback</td>
<td>Function</td>
<td>该属性可让您指定 GGoogleBar 完成创建标记并将标记放到地图上时要调用的回调函数。必须向该函数传递一个表格对象数组 {result: GlocalSearch, marker: GMarker}。
<p>（自 2.95 开始）</p>
</td>
</tr>
</table>
<p style="text-indent: 2em;"><strong>点击搜索结果点信息窗口"错位"问题</strong></p>
<p style="text-indent: 2em;">问题是这样的，点击返回搜索结果列表时地图会定位到当前点，并且会用信息窗口标注这一点，但不知道Google是为了打开的信息窗口完全可见还是做了什么特殊判断，会使得当前标注这一点不能地图里居中，致使标注点偏移信息窗口显示不完全。由于搜索结果是直接指定resultList元素容器来接收存放的，所以我并不知道在点击事件里对Google地图做了什么样的操作，可能查看<a href="http://www.google.com/uds/solutions/localsearch/gmlocalsearch.js" target="_blank">gmlocalsearch.js</a>源码会了解一些详情。回到问题的原委来，我只需要获取点击的经纬度坐标点就能把地图位置居中，还好搜索有个onSearchCompleteCallback完成时的回调函数，并传递搜索结果参数过来，那么我就在每次搜索完成把结果保存在一个数组变量里，然后在点击搜索结果列表时获取点击元素的id索引号，于是就能获取当前点击的经纬度坐标了，再调用setCenter就能根据坐标点居中地图，由于有信息窗口，坐标点居中不一定能让信息窗口完全可见，而应该是中偏下一些，调用map.panBy(new GSize(-40,100))方法以动画方式平移指定的距离(左：40px,下：100px)，需要注意Google地图API里很多方法都是以动画方式，它内部可能是通过setTimeout来延迟执行实现的，所以我这边有时也要用setTimeout来延迟执行，不然我设置的一些值会被Google的setTimeout延迟执行的给覆盖掉。</p>
<p style="text-indent: 2em;"><strong>示例源代码：</strong></p>
<pre><div class="code"><div><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">div </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="googleSearch"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">div </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="googleResult"</span><span style="color: #ff0000;"> style</span><span style="color: #0000ff;">="width:490px; margin:4px 0;"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">div </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="googleMap"</span><span style="color: #ff0000;"> style</span><span style="color: #0000ff;">="width:490px; height:300px; border:solid 1px #ccc"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">loading...</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">link </span><span style="color: #ff0000;">href</span><span style="color: #0000ff;">="http://www.google.com/uds/css/gsearch.css"</span><span style="color: #ff0000;"> rel</span><span style="color: #0000ff;">="stylesheet"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="text/css"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">link </span><span style="color: #ff0000;">href</span><span style="color: #0000ff;">="http://www.google.com/uds/solutions/localsearch/gmlocalsearch.css"</span><span style="color: #ff0000;"> rel</span><span style="color: #0000ff;">="stylesheet"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="text/css"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">script </span><span style="color: #ff0000;">src</span><span style="color: #0000ff;">="http://ditu.google.cn/maps?file=api&amp;amp;v=2.x&amp;amp;key=ABQIAAAAzr2EBOXUKnm_jVnk0OJI7xSosDVG8KKPE1-m51RBrvYughuyMxQ-i1QfUnH94QxWIa6N4U6MouMmBA&amp;hl=zh-CN"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="text/javascript"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">script</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">script </span><span style="color: #ff0000;">type</span><span style="color: #0000ff;">="text/javascript"</span><span style="color: #0000ff;">&gt;</span><span style="background-color: #f5f5f5; color: #000000;"><br />    </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> map </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">null</span><span style="background-color: #f5f5f5; color: #000000;">;<br />    </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> geocoder </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">null</span><span style="background-color: #f5f5f5; color: #000000;">;<br />    </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> mapReady </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">false</span><span style="background-color: #f5f5f5; color: #000000;">;<br />    </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> mapResult </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> [];<br />    </span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;"> initialize() {<br />        </span><span style="background-color: #f5f5f5; color: #0000ff;">if</span><span style="background-color: #f5f5f5; color: #000000;"> (GBrowserIsCompatible()) {<br />    <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">搜索结果元素</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> resultElem </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> document.getElementById(</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">googleResult</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">);<br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">地图容器元素</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> mapElem </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> document.getElementById(</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">googleMap</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">);<br />        <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;"> 指定实例化地图选项    </span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> options </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> {<br />            </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">size : new GSize (338,353),</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">            googleBarOptions : {<br />                onSearchCompleteCallback : </span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;">(searcher) {<br />                    </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">设置结果</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                    mapResult </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> searcher.results;<br />                    </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">统计结果数</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                    </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">document.getElementById("sum").innerHTML = searcher.results.length;</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                    </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">搜索完成时候自动居中第一个结果</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                    setTimeout(</span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;">() {autoCenter(</span><span style="background-color: #f5f5f5; color: #000000;">0</span><span style="background-color: #f5f5f5; color: #000000;">);},</span><span style="background-color: #f5f5f5; color: #000000;">1000</span><span style="background-color: #f5f5f5; color: #000000;">);<br />                },<br />                resultList : resultElem ,<br />                maxCursorPages : </span><span style="background-color: #f5f5f5; color: #000000;">5</span><span style="background-color: #f5f5f5; color: #000000;"> ,<br />                suppressZoomToBounds : </span><span style="background-color: #f5f5f5; color: #0000ff;">true</span><span style="background-color: #f5f5f5; color: #000000;"><br />            }<br />        };<br />          <br />        map </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GMap2(mapElem, options);<br />        <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;"> 平移及缩放控件（左上角）</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        map.addControl(</span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GLargeMapControl());<br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">比例尺控件（左下角）</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        map.addControl(</span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GScaleControl());<br />        <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">创建缩略图控件（右下角）</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> overviewMap </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GOverviewMapControl();<br />        map.addControl(overviewMap);<br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">最小化隐藏缩略图控件</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        setTimeout(</span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;"> (){overviewMap.hide();},</span><span style="background-color: #f5f5f5; color: #000000;">1000</span><span style="background-color: #f5f5f5; color: #000000;">);<br />        <br />        geocoder </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GClientGeocoder();<br />        <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">为地图启用集成搜索控件GoogleBar(此句顺序位置不可修改)</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        map.enableGoogleBar();<br />        <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">自动居中结果点</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        window.autoCenter </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;"> (resultIndex){<br />            </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> result </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> mapResult[resultIndex];<br />            </span><span style="background-color: #f5f5f5; color: #0000ff;">if</span><span style="background-color: #f5f5f5; color: #000000;">( result ) {<br />                setTimeout(</span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;">() {<br />                        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">构建以经度和纬度表示的地理坐标点</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                        </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> point </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GLatLng(result.lat,result.lng);<br />                        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">设置中心点</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                        map.setCenter(point);</span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">map.panTo(point);</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">以动画方式平移指定的距离(左：40px,下：100px)</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                        map.panBy(</span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GSize(</span><span style="background-color: #f5f5f5; color: #000000;">-</span><span style="background-color: #f5f5f5; color: #000000;">40</span><span style="background-color: #f5f5f5; color: #000000;">,</span><span style="background-color: #f5f5f5; color: #000000;">100</span><span style="background-color: #f5f5f5; color: #000000;">));<br />                    },<br />                    </span><span style="background-color: #f5f5f5; color: #000000;">500</span><span style="background-color: #f5f5f5; color: #000000;"><br />                );<br />            }<br />        }<br />        <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">点击搜索结果事件</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        resultElem.onclick </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;"> (e){<br />            e </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> window.event </span><span style="background-color: #f5f5f5; color: #000000;">||</span><span style="background-color: #f5f5f5; color: #000000;"> e;<br />            </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> target </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> e.target </span><span style="background-color: #f5f5f5; color: #000000;">||</span><span style="background-color: #f5f5f5; color: #000000;"> e.srcElement;<br />            </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> trElem </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> target;<br />            </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">获取冒泡事件的TR层节点</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">            </span><span style="background-color: #f5f5f5; color: #0000ff;">while</span><span style="background-color: #f5f5f5; color: #000000;">(trElem </span><span style="background-color: #f5f5f5; color: #000000;">&amp;&amp;</span><span style="background-color: #f5f5f5; color: #000000;"> trElem.tagName</span><span style="background-color: #f5f5f5; color: #000000;">!=</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">TR</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">)<br />            {<br />                </span><span style="background-color: #f5f5f5; color: #0000ff;">if</span><span style="background-color: #f5f5f5; color: #000000;">(trElem.tagName</span><span style="background-color: #f5f5f5; color: #000000;">==</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">TABLE</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">) </span><span style="background-color: #f5f5f5; color: #0000ff;">break</span><span style="background-color: #f5f5f5; color: #000000;">;<br />                trElem </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> trElem.parentNode;<br />            }<br />            </span><span style="background-color: #f5f5f5; color: #0000ff;">if</span><span style="background-color: #f5f5f5; color: #000000;"> (trElem</span><span style="background-color: #f5f5f5; color: #000000;">!=</span><span style="background-color: #f5f5f5; color: #0000ff;">null</span><span style="background-color: #f5f5f5; color: #000000;">)<br />            {<br />                </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">获取点击的结果索引</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> resultIndex </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> trElem.id.substring(trElem.id.length</span><span style="background-color: #f5f5f5; color: #000000;">-</span><span style="background-color: #f5f5f5; color: #000000;">1</span><span style="background-color: #f5f5f5; color: #000000;">);<br />                </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">自动居中</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">                autoCenter(resultIndex);<br />            }<br />        }<br />    <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">初始化位置</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> address </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">广东省广州市天河区科韵路22号五华大厦</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">;<br />        </span><span style="background-color: #f5f5f5; color: #0000ff;">if</span><span style="background-color: #f5f5f5; color: #000000;"> (geocoder) {<br />            geocoder.getLatLng(<br />              address,<br />              </span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;">(point) {<br />                </span><span style="background-color: #f5f5f5; color: #0000ff;">if</span><span style="background-color: #f5f5f5; color: #000000;"> (point) {<br />                  map.setCenter(point, </span><span style="background-color: #f5f5f5; color: #000000;">18</span><span style="background-color: #f5f5f5; color: #000000;">);<br />                  </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> marker </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GMarker(point);<br />                  map.addOverlay(marker);<br />                  marker.openInfoWindowHtml(address);<br />                  setTimeout(</span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;"> (){map.panBy(</span><span style="background-color: #f5f5f5; color: #0000ff;">new</span><span style="background-color: #f5f5f5; color: #000000;"> GSize(</span><span style="background-color: #f5f5f5; color: #000000;">-</span><span style="background-color: #f5f5f5; color: #000000;">10</span><span style="background-color: #f5f5f5; color: #000000;">,</span><span style="background-color: #f5f5f5; color: #000000;">120</span><span style="background-color: #f5f5f5; color: #000000;">));},</span><span style="background-color: #f5f5f5; color: #000000;">2500</span><span style="background-color: #f5f5f5; color: #000000;">);<br />                }<br />              }<br />            );<br />        }<br />        <br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">获取搜索控件</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        </span><span style="background-color: #f5f5f5; color: #0000ff;">var</span><span style="background-color: #f5f5f5; color: #000000;"> searchBar </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> mapElem.lastChild;<br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">清空样式</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        searchBar.style.cssText </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #000000;">""</span><span style="background-color: #f5f5f5; color: #000000;">;<br />        </span><span style="background-color: #f5f5f5; color: #008000;">//</span><span style="background-color: #f5f5f5; color: #008000;">改变搜索控件元素位置</span><span style="background-color: #f5f5f5; color: #008000;"><br /></span><span style="background-color: #f5f5f5; color: #000000;">        document.getElementById(</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">googleSearch</span><span style="background-color: #f5f5f5; color: #000000;">"</span><span style="background-color: #f5f5f5; color: #000000;">).appendChild(searchBar);<br />        <br />      }<br />    }<br />    <br />    window.onload </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">function</span><span style="background-color: #f5f5f5; color: #000000;">(){<br />        initialize();<br />        document.body.onunload </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> GUnload;<br />        mapReady </span><span style="background-color: #f5f5f5; color: #000000;">=</span><span style="background-color: #f5f5f5; color: #000000;"> </span><span style="background-color: #f5f5f5; color: #0000ff;">true</span><span style="background-color: #f5f5f5; color: #000000;">;<br />    }<br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">script</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<p><strong>Google地图搜索示例：</strong></p>
<div id="googleSearch"></div>
<div id="googleResult" style="margin: 4px 0px; width: 490px;"></div>
<div id="googleMap" style="width: 490px; height: 300px; border: #ccc 1px solid;">loading...</div>
<p><strong>在线Demo示例：</strong></p>
<ul>
<li><a href="/upload/jonllen/case/GoogleMap_Address.html" target="_blank" title="Google地图-根据地点名称定位">根据地点名称定位</a></li>
<li><a href="/upload/jonllen/case/GoogleMap_Point.html" target="_blank" title="Google地图-根据坐标点定位">根据坐标点定位</a></li>
<li><a href="/upload/jonllen/case/GoogleMap_Search.html" target="_blank" title="Google地图-搜索地点列表">搜索地点列表</a></li>
</ul>
<p><strong>相关链接：</strong></p>
<ul>
<li><a href="http://code.google.com/intl/zh-CN/apis/maps/documentation/reference.html" target="_blank">Google 地图 API 参考</a></li>
<li><a href="http://code.google.com/intl/zh-CN/apis/maps/documentation/examples/index.html" target="_blank">Google 地图 API 示例</a></li>
</ul>
<p><strong>注：</strong>如果访问本站出现&ldquo;此网站需要其他的Google地图API密钥&rdquo;，请更换当前访问域名为<a href="http://www.jonllen.com/jonllen/js/101.aspx#googleSearch" title="www.jonllen.com">www.jonllen.com</a>进行访问，因为我的其他域名还没有注册Google地图API密钥。</p>
<p>
<link type="text/css" rel="stylesheet" href="http://www.google.com/uds/css/gsearch.css" />
<link type="text/css" rel="stylesheet" href="http://www.google.com/uds/solutions/localsearch/gmlocalsearch.css" />
</p>
<script type="text/javascript" src="http://maps.google.com/maps?file=api&amp;v=2&amp;key=ABQIAAAAb6pkJc_ePmkHzvzZK9ZiJhQQter7LsUL0TW3HjWgvAD4t4lefxRGxlg7r1mcVrp1NCTj2lXH5dTTOw&amp;hl=zh-CN"></script>
<script type="text/javascript">// <![CDATA[
		var map = null;
		var geocoder = null;
		var mapReady = false;
		var mapResult = [];
		function initialize() {
			if (GBrowserIsCompatible()) {
		
			//搜索结果元素
			var resultElem = document.getElementById("googleResult");
			//地图容器元素
			var mapElem = document.getElementById("googleMap");
			
			// 指定实例化地图选项	
			var options = {
				//size : new GSize (338,353),
				googleBarOptions : {
					onSearchCompleteCallback : function(searcher) {
						//设置结果
						mapResult = searcher.results;
						//统计结果数
						//document.getElementById("sum").innerHTML = searcher.results.length;
						//搜索完成时候自动居中第一个结果
						setTimeout(function() {autoCenter(0);},1000);
					},
					resultList : resultElem ,
					maxCursorPages : 5 ,
					suppressZoomToBounds : true
				}
			};
			  
			map = new GMap2(mapElem, options);
			
			// 平移及缩放控件（左上角）
			map.addControl(new GLargeMapControl());
			//比例尺控件（左下角）
			map.addControl(new GScaleControl());
			
			//创建缩略图控件（右下角）
			var overviewMap = new GOverviewMapControl();
			map.addControl(overviewMap);
			//最小化隐藏缩略图控件
			setTimeout(function (){overviewMap.hide();},1000);
			
			geocoder = new GClientGeocoder();
			
			//为地图启用集成搜索控件GoogleBar(此句顺序位置不可修改)
			map.enableGoogleBar();
			
			//自动居中结果点
			window.autoCenter = function (resultIndex){
				var result = mapResult[resultIndex];
				if( result ) {
					setTimeout(function() {
							//构建以经度和纬度表示的地理坐标点
							var point = new GLatLng(result.lat,result.lng);
							//设置中心点
							map.setCenter(point);//map.panTo(point);
							//以动画方式平移指定的距离(左：40px,下：100px)
							map.panBy(new GSize(-40,100));
						},
						500
					);
				}
			};
			
			//点击搜索结果事件
			resultElem.onclick = function (e){
				e = window.event || e;
				var target = e.target || e.srcElement;
				var trElem = target;
				//获取冒泡事件的TR层节点
				while(trElem && trElem.tagName!="TR")
				{
					if(trElem.tagName=="TABLE") break;
					trElem = trElem.parentNode;
				}
				if (trElem!=null)
				{
					//获取点击的结果索引
					var resultIndex = trElem.id.substring(trElem.id.length-1);
					//自动居中
					autoCenter(resultIndex);
				}
			};
		
			//初始化位置
			var address = "广东省广州市天河区科韵路22号五华大厦";
			if (geocoder) {
				geocoder.getLatLng(
				  address,
				  function(point) {
					if (point) {
					  map.setCenter(point, 18);
					  var marker = new GMarker(point);
					  map.addOverlay(marker);
					  marker.openInfoWindowHtml(address);
					  setTimeout(function (){map.panBy(new GSize(-10,100));},2500);
					}
				  }
				);
			}
			
			//获取搜索控件
			var searchBar = mapElem.lastChild;
			//清空样式
			searchBar.style.cssText = "";
			//改变搜索控件元素位置
			document.getElementById("googleSearch").appendChild(searchBar);
			
		  }
		}
		
		window.onload = function(){
			initialize();
			document.body.onunload = GUnload;
			mapReady = true;
		};
// ]]></script>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/js/">JavaScript</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2010-01-24 02:08</li>
				<li>update@ 2010-04-05 16:36:22</li>
				<li>阅读(<span id="articleClick">14093</span>)</li>
				<li>评论(3)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/js/82.aspx">在线JavaScript调色板</a></li>
<li>下一篇：<a href="/jonllen/js/107.aspx">博客个性化定制(2)-实现类似iGoogle首页功能</a></li></ul>
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
						        <a>1楼</a> 文夕 2010-01-25 22:00:38
					        </div><div class="cont">一直在用谷歌地图。<br />顺便说下，你的博客现在打开好慢。。。是不是插件太多了的原因</div>
					        <div class="reply" ><span>回复：</span>呵呵，什么插件?（2010-01-26 23:35:06）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'MJ')">引用</a></li>

						        </ul>
						        <a>2楼</a> MJ 2010-01-27 09:17:01
					        </div><div class="cont">谷歌地图真的很不错</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'4008866310')">引用</a></li>

						        </ul>
						        <a>3楼</a> 4008866310 2010-05-17 11:30:00
					        </div><div class="cont">为什么我网站的google地图打开时提示需要其他的google地图API密钥？请金龙兄帮我看一下。http://www.4008866310.com/AboutUs.asp</div>
					        <div class="reply" ><span>回复：</span>你登陆Google帐户给你自己的网站注册一个google地图API密钥就有了。（2010-05-17 20:32:19）</div>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=101&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/js/101.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=101";
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