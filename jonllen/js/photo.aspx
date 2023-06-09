
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>摆脱JQuery—之自定义图片缩略图列表滚动功能。 - JavaScript - 金龙博客</title>
<meta name="description" content="JavaScript图片缩略图列表滚动功能。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-07-04' } );
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
		     > <a href="/jonllen/js/photo.aspx">摆脱JQuery—之自定义图片缩略图列表滚动功能。</a>
		</div>
        <div class="article">
			<div class="title"><h2>摆脱JQuery—之自定义图片缩略图列表滚动功能。</h2></div>
			<div class="category">分类：<a href="/jonllen/js/">JavaScript</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="line-height: 30px; font-size: 16px;">
<p style="text-indent: 2em;">先来看下我做的相册的例子，详情请见我的博客相册。</p>
<div class="photo" style="border: none;">
<div class="cont">
<div class="fixfloat" style="width: 100%;">
<div class="miniature" id="miniaturebox"><input id="btnPrev" type="button" value=" " class="prev" />
<div class="list" id="miniaturelist">
<ul id="miniaturescroll">
</ul>
</div>
<input id="btnNext" type="button" value=" " class="next" />
<div class="mft"></div>
</div>
</div>
<div id="miniaturebody">
<div class="pic"><img src="/style/default/loading.gif" style="width: 32px; height: 32px;" id="imgCurrent" /></div>
<div class="name"><strong id="currentName">1-仙台修炼</strong><a href="/upload/jonllen/album/仙台修炼.jpg" target="_blank" class="originality" id="imgOriginality">原图</a></div>
<div class="detail"><dl><dd>名　　称：<span id="spanName">1-仙台修炼</span></dd><dd>上传时间：<span id="spanTime">2009-6-6 16:26:06</span></dd><dd>浏览次数：<span id="spanClick">20</span></dd><dd>评论次数：<span id="spanReviewCount">1</span></dd></dl></div>
</div>
<script type="text/javascript" src="/scripts/photo.js"></script>
<script type="text/javascript">// <![CDATA[
			
			//settings
			Photo.pageSize = 7;
			Photo.prevId = "btnPrev";
			Photo.nextId = "btnNext";
			Photo.containerId = "miniaturelist";
			Photo.scrollContainerId = "miniaturescroll";

			Photo.itemWidth = 80;
		        Photo.imgMaxWidth = 66;
		        Photo.imgMaxHeight = 49;
		        Photo.createLi = true;
		        Photo.createName = false;
		        Photo.speed = 20;
		        Photo.interval = 40;

			Photo.eClick = function (target)
			{
				//the click callback event
		    document.getElementById("imgOriginality").href = target.src;
		    document.getElementById("currentName").innerHTML = target.name;
		    document.getElementById("spanTime").innerHTML = target.time;
		    document.getElementById("spanClick").innerHTML = target.click;
		    document.getElementById("spanReviewCount").innerHTML = target.reviewCount;
		    
		    for(var i=0;i<Photo.list.length;i++)
		    {
		        Photo.list[i].img.parentNode.className = "";
		    }
		    target.img.parentNode.className = "on";
		    target.img.parentNode.blur();
		    
		    var imgElem = document.getElementById("imgCurrent");
		    if(target.isLoad==true && target.img.src != "")
		    {
		        imgElem.src = target.src;
		        return false;
		    }
		    
		    var maxWidth = 730, maxHeight = 500;
		    imgElem.style.marginTop = (maxHeight-32)/2+"px";
		    imgElem.style.width = "32px";
		    imgElem.style.height = "32px";
		    imgElem.src = "/style/default/loading.gif";
		    
		    this.loadImg(target.src,maxWidth,maxHeight,function (src,width,height,imgElem){
		        imgElem.style.width = width+"px";
		        imgElem.style.height = height+"px";
		        imgElem.src = src;
		        if(height<maxHeight)
		        {
		            imgElem.style.marginTop = (((maxHeight-height)/2)+"px");
		        }else
		        {
		            imgElem.style.marginTop = "0px";
		        }
		        
		    },imgElem);
		    
		                this.currImg = target;
			};
			
			Photo.eIsFirstPage = function (target)
			{
				target.className = "prev prevdisabled";
				if (Photo.pageCount > 1) document.getElementById(Photo.nextId).className = "next";
			};
			
			Photo.eIsLastPage = function (target)
			{
				target.className = "next nextdisabled";
				if (Photo.pageCount > 1) document.getElementById(Photo.prevId).className = "prev";
			};
			
			Photo.eIsMiddlePage = function (target)
			{
				document.getElementById(Photo.prevId).className = "prev";
				document.getElementById(Photo.nextId).className = "next";
			};
			
Photo.push( { id : 41, name : 'me', title : 'me', time : '2009-7-27 13:28:41', click : 6, reviewCount : 0, src : '/upload/jonllen/album/我的照片/633842981210321631_me.jpg' } );
Photo.push( { id : 40, name : '天河公园me', title : '天河公园me', time : '2009-7-27 13:20:55', click : 3, reviewCount : 0, src : '/upload/jonllen/album/我的照片/633842976551564466_天河公园me.jpg' } );
Photo.push( { id : 35, name : '我的近照', title : '我的近照', time : '2009-7-20 20:04:28', click : 2, reviewCount : 0, src : '/upload/jonllen/album/我的照片/633837170683267895_me.jpg' } );
Photo.push( { id : 22, name : '全景', title : '全景', time : '2009-7-5 16:41:46', click : 3, reviewCount : 0, src : '/upload/jonllen/album/天河公园/633824089069531250_全景.jpg' } );
Photo.push( { id : 21, name : '貌似海南', title : '貌似海南', time : '2009-7-5 16:41:46', click : 1, reviewCount : 0, src : '/upload/jonllen/album/天河公园/633824089069062500_貌似海南.jpg' } );
Photo.push( { id : 20, name : '绿幽', title : '绿幽', time : '2009-7-5 16:41:46', click : 1, reviewCount : 0, src : '/upload/jonllen/album/天河公园/633824089068593750_绿幽.jpg' } );
Photo.push( { id : 19, name : '阶梯', title : '阶梯', time : '2009-7-5 16:41:46', click : 1, reviewCount : 0, src : '/upload/jonllen/album/天河公园/633824089068125000_阶梯.jpg' } );
Photo.push( { id : 18, name : '湖面', title : '湖面', time : '2009-7-5 16:41:46', click : 1, reviewCount : 0, src : '/upload/jonllen/album/天河公园/633824089067656250_湖面.jpg' } );
Photo.push( { id : 16, name : '长廊', title : '长廊', time : '2009-7-5 16:41:46', click : 1, reviewCount : 0, src : '/upload/jonllen/album/天河公园/633824089066718750_长廊.jpg' } );
			Photo.push( { id : 34, name : '真人', title : '真人', time : '2009-7-5 23:25:32', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824331329218750_真人.jpg' } );
			Photo.push( { id : 33, name : '兄弟排排站', title : '兄弟排排站', time : '2009-7-5 23:25:32', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824331328750000_兄弟排排站.jpg' } );
			Photo.push( { id : 32, name : '仙台修炼 - 惟美画面', title : '仙台修炼 - 惟美画面', time : '2009-7-5 23:25:32', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824331328437500_仙台修炼 - 惟美画面.jpg' } );
			Photo.push( { id : 31, name : '我是猪队长,哈哈', title : '我是猪队长,哈哈', time : '2009-7-5 23:25:32', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824331327968750_我是猪队长,哈哈.jpg' } );
			Photo.push( { id : 30, name : '我的合影', title : '我的合影', time : '2009-7-5 23:25:32', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824331327187500_我的合影.jpg' } );
			Photo.push( { id : 29, name : '帅气道~`', title : '帅气道~`', time : '2009-7-5 23:24:42', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824330819843750_帅气道~`.jpg' } );
			Photo.push( { id : 28, name : '美丽的沙城', title : '美丽的沙城', time : '2009-7-5 23:24:41', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824330819531250_美丽的沙城.jpg' } );
			Photo.push( { id : 27, name : '化身蝙蝠', title : '化身蝙蝠', time : '2009-7-5 23:24:41', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824330819062500_化身蝙蝠.jpg' } );
			Photo.push( { id : 26, name : '和弟弟一起玩哈，开心!', title : '和弟弟一起玩哈，开心!', time : '2009-7-5 23:24:41', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824330818593750_和弟弟一起玩哈，开心!.jpg' } );
			Photo.push( { id : 25, name : '挂了，哈~`暴神', title : '挂了，哈~`暴神', time : '2009-7-5 23:24:41', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824330818125000_挂了，哈~`暴神.jpg' } );
			Photo.push( { id : 24, name : '飞起的蝙蝠', title : '飞起的蝙蝠', time : '2009-7-5 23:24:41', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824330817656250_飞起的蝙蝠.jpg' } );
			Photo.push( { id : 23, name : '飞驰的翅膀', title : '飞驰的翅膀', time : '2009-7-5 23:24:41', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824330817187500_飞驰的翅膀.jpg' } );
			Photo.push( { id : 14, name : '4人照', title : '4人照', time : '2009-7-5 16:26:44', click : 0, reviewCount : 0, src : '/upload/jonllen/album/游戏照片/633824080048906250_4人照.jpg' } );

			//Photo.enableMouseDown = true;
			Photo.init();
			
			
			if (Photo.list.length==0)
			{
				document.getElementById("miniaturebox").style.display="none";
				document.getElementById("miniaturebody").innerHTML = "暂无照片。";
			}else
			{
				//init the first is choosed
				if( Photo.list.length > 0) Photo.eClick(Photo.list[0]);
				document.getElementById(Photo.scrollContainerId).style.width = parseFloat(document.getElementById(Photo.scrollContainerId).style.width)+2+"px";
				//only 1 page
				if (Photo.pageCount<=1)
				{
					document.getElementById(Photo.prevId).disabled = true;
					document.getElementById(Photo.prevId).className = "prev prevdisabled";
					document.getElementById(Photo.nextId).disabled = true;
					document.getElementById(Photo.nextId).className = "next nextdisabled";
				}
				//auto center
				document.getElementById("miniaturebox").style.width = ( (Photo.pageCount>1?Photo.pageSize:Photo.list.length) *Photo.itemWidth)+23*2+"px";
			}
// ]]></script>
</div>
</div>
<p style="text-indent: 2em;">自己写了一个JS类，叫Photo，里面提供了照片列表分页的实现，之所以写这个东西，一是因为我广佛项目里面答应了别人要实现这个功能，二个是我自己的博客相册也要实现这个功能，现在算是提前做吧，先看贴下整个JS类的代码：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008000;">/*</span><span style="color: #008000;">*************************************************<br />Description : Photo Miniature Page List Manage V1.0<br />Author : Jonllen<br />Create : 2009-07-04 18:35:21<br />Update : 2009-08-15 23:04:01<br />WebSite: http://www.hnonl.com<br />*************************************************</span><span style="color: #008000;">*/</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">var</span><span style="color: #000000;"> Photo </span><span style="color: #000000;">=</span><span style="color: #000000;"> {<br />    pageCount : </span><span style="color: #000000;">0</span><span style="color: #000000;">,<br />    pageIndex : </span><span style="color: #000000;">1</span><span style="color: #000000;">,<br />    pageSize : </span><span style="color: #000000;">5</span><span style="color: #000000;">,<br />    itemWidth : </span><span style="color: #000000;">80</span><span style="color: #000000;">,<br />    imgMaxWidth : </span><span style="color: #000000;">66</span><span style="color: #000000;">,<br />    imgMaxHeight : </span><span style="color: #000000;">49</span><span style="color: #000000;">,<br />    createLi : </span><span style="color: #0000ff;">true</span><span style="color: #000000;">,<br />    createName : </span><span style="color: #0000ff;">false</span><span style="color: #000000;">,<br />    prevId : </span><span style="color: #000000;">"</span><span style="color: #000000;">btnPrev</span><span style="color: #000000;">"</span><span style="color: #000000;">,<br />    nextId : </span><span style="color: #000000;">"</span><span style="color: #000000;">btnNext</span><span style="color: #000000;">"</span><span style="color: #000000;">,<br />    containerId : </span><span style="color: #000000;">"</span><span style="color: #000000;">miniaturelist</span><span style="color: #000000;">"</span><span style="color: #000000;">,<br />    scrollContainerId : </span><span style="color: #000000;">"</span><span style="color: #000000;">miniaturescroll</span><span style="color: #000000;">"</span><span style="color: #000000;">,<br />    loadingSrc : </span><span style="color: #000000;">"</span><span style="color: #000000;">images/loading.gif</span><span style="color: #000000;">"</span><span style="color: #000000;">,<br />    img : {<br />        id : </span><span style="color: #000000;">""</span><span style="color: #000000;">,<br />        alt: </span><span style="color: #000000;">"</span><span style="color: #000000;">图片未加载</span><span style="color: #000000;">"</span><span style="color: #000000;">,<br />        title : </span><span style="color: #000000;">""</span><span style="color: #000000;">,<br />        src : </span><span style="color: #000000;">""</span><span style="color: #000000;">,<br />        href :</span><span style="color: #000000;">"</span><span style="color: #000000;">javascript:;</span><span style="color: #000000;">"</span><span style="color: #000000;">,<br />        img : undefined,<br />        isLoad : </span><span style="color: #0000ff;">false</span><span style="color: #000000;"><br />    },<br />    speed : </span><span style="color: #000000;">20</span><span style="color: #000000;">,<br />    interval : </span><span style="color: #000000;">40</span><span style="color: #000000;">,<br />    timer : undefined,<br />    currImg : {},<br />    list : </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Array(),<br />    push : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (img){<br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> item </span><span style="color: #000000;">=</span><span style="color: #000000;"> img;<br />        </span><span style="color: #0000ff;">for</span><span style="color: #000000;">(p </span><span style="color: #0000ff;">in</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.img)<br />        {<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (item[p] </span><span style="color: #000000;">==</span><span style="color: #000000;"> undefined) item[p]</span><span style="color: #000000;">=</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.img[p];<br />        }<br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> container </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.scrollContainerId);<br /><br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> linkElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.createElement(</span><span style="color: #000000;">"</span><span style="color: #000000;">a</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />        linkElem.href </span><span style="color: #000000;">=</span><span style="color: #000000;"> item.href;<br />        <br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> imgElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.createElement(</span><span style="color: #000000;">"</span><span style="color: #000000;">img</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">imgElem.src = item.src;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        imgElem.alt </span><span style="color: #000000;">=</span><span style="color: #000000;"> item.alt;<br />        imgElem.title </span><span style="color: #000000;">=</span><span style="color: #000000;"> item.title;<br />        item.img </span><span style="color: #000000;">=</span><span style="color: #000000;"> imgElem;<br />        <br />        linkElem.appendChild(imgElem);<br /><br />        linkElem.onclick </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> () { </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> Photo.eClick(item); };<br />        <br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.createLi</span><span style="color: #000000;">==</span><span style="color: #0000ff;">true</span><span style="color: #000000;"> )<br />        {<br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> liElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.createElement(</span><span style="color: #000000;">"</span><span style="color: #000000;">li</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />            liElem.appendChild(linkElem);<br />            <br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.createName</span><span style="color: #000000;">==</span><span style="color: #0000ff;">true</span><span style="color: #000000;">)<br />            {<br />                </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> pElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.createElement(</span><span style="color: #000000;">"</span><span style="color: #000000;">p</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />                pElem.innerHTML </span><span style="color: #000000;">=</span><span style="color: #000000;"> item.name </span><span style="color: #000000;">?</span><span style="color: #000000;"> item.name : item.title;<br />                liElem.appendChild(pElem);<br />            }<br />        <br />            container.appendChild(liElem);<br />        }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />        {<br />            container.appendChild(linkElem);<br />        }<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.push(item);<br />        <br />    },<br />    init : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){<br />    <br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageCount </span><span style="color: #000000;">=</span><span style="color: #000000;"> Math.ceil(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.length</span><span style="color: #000000;">/</span><span style="color: #000000;">this.pageSize*1.0);</span><span style="color: #000000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.setPage();<br /><br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">set scroll Container width</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.scrollContainerId).style.width </span><span style="color: #000000;">=</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.itemWidth</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.length</span><span style="color: #000000;">+</span><span style="color: #000000;">2</span><span style="color: #000000;">) </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;</span><span style="color: #008000;">//</span><span style="color: #008000;">2px border</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.scrollContainerId).style.overflow </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">visible</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">set wrap Container width to autoWidth</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.containerId).style.width </span><span style="color: #000000;">=</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageCount </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;"> </span><span style="color: #000000;">?</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.itemWidth</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize : </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.itemWidth</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.length)</span><span style="color: #000000;">+</span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;</span><span style="color: #008000;">//</span><span style="color: #008000;">2px border</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.containerId).style.overflow </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">hidden</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        <br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">set the next page Space in default</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.nextSpace </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize </span><span style="color: #000000;">*</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.itemWidth;<br />        <br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.prevId </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #000000;">""</span><span style="color: #000000;">)<br />        {<br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> prevElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.prevId);<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.enableMouseDown)<br />            {<br />                </span><span style="color: #008000;">//</span><span style="color: #008000;">bind onmousedown event</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                prevElem.onmousedown </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){Photo.eMouseDown( </span><span style="color: #000000;">-</span><span style="color: #000000;">Photo.interval )};<br />                prevElem.onmouseup </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){Photo.eMouseUp(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">)};<br />            }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />            {<br />                </span><span style="color: #008000;">//</span><span style="color: #008000;">bind click</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                prevElem.onclick </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){Photo.ePrev(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">)};  <br />            }<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.nextId </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #000000;">""</span><span style="color: #000000;">)<br />        {<br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> nextElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.nextId);<br />            <br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.enableMouseDown)<br />            {<br />                nextElem.onmousedown </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){ Photo.eMouseDown(Photo.interval) };<br />                nextElem.onmouseup </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){ Photo.eMouseUp(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">) };<br />            }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />            {<br />                nextElem.onclick </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){Photo.eNext(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">)};<br />            }<br />        }<br />    },<br />    setPage : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> ()<br />    {<br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> pageIndex </span><span style="color: #000000;">=</span><span style="color: #000000;"> arguments.length </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;"> </span><span style="color: #000000;">?</span><span style="color: #000000;"> arguments[</span><span style="color: #000000;">0</span><span style="color: #000000;">] : </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex;<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (pageIndex </span><span style="color: #000000;">&lt;=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">) pageIndex</span><span style="color: #000000;">=</span><span style="color: #000000;">1</span><span style="color: #000000;">;<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (pageIndex </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageCount) pageIndex </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageCount;<br />        <br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> list;<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( pageIndex</span><span style="color: #000000;">==</span><span style="color: #000000;">1</span><span style="color: #000000;"> )<br />        {<br />            list </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.slice(</span><span style="color: #000000;">0</span><span style="color: #000000;">,( </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.length  </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize </span><span style="color: #000000;">?</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize : </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.length ) );<br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.eIsFirstPage(document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.prevId));<br />        }<br />        </span><span style="color: #0000ff;">else</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( pageIndex</span><span style="color: #000000;">==</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageCount )<br />        {<br />            list </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.slice( </span><span style="color: #000000;">-</span><span style="color: #000000;">(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.length </span><span style="color: #000000;">-</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageCount</span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;">)</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize) );<br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.eIsLastPage(document.getElementById(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.nextId));<br />        }<br />        </span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />        {<br />            list </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list.slice( (pageIndex</span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;">)</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize,pageIndex</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize);<br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.eIsMiddlePage(</span><span style="color: #0000ff;">this</span><span style="color: #000000;">);<br />        }<br />        <br />        </span><span style="color: #0000ff;">for</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">var</span><span style="color: #000000;"> i</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;i</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">list.length;i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />        {<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( list[i].isLoad</span><span style="color: #000000;">==</span><span style="color: #0000ff;">false</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> list[i].img.src </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #000000;">""</span><span style="color: #000000;"> )<br />            {<br />                list[i].img.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.loadingSrc;<br />                </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.loadImg(list[i].src,</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.imgMaxWidth,</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.imgMaxHeight,</span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (src,width,height,parms){<br />                    parms.img.style.width </span><span style="color: #000000;">=</span><span style="color: #000000;"> width</span><span style="color: #000000;">+</span><span style="color: #000000;">'</span><span style="color: #000000;">px</span><span style="color: #000000;">'</span><span style="color: #000000;">;<br />                    parms.img.style.height </span><span style="color: #000000;">=</span><span style="color: #000000;"> height</span><span style="color: #000000;">+</span><span style="color: #000000;">'</span><span style="color: #000000;">px</span><span style="color: #000000;">'</span><span style="color: #000000;">;<br />                    parms.img.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> parms.src;<br />                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(Photo.imgMaxHeight </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> height)<br />                        parms.img.style.marginTop </span><span style="color: #000000;">=</span><span style="color: #000000;"> (Photo.imgMaxHeight </span><span style="color: #000000;">-</span><span style="color: #000000;"> height)</span><span style="color: #000000;">/</span><span style="color: #000000;">2+'px';</span><span style="color: #000000;"><br /></span><span style="color: #000000;">                },list[i]);<br />            }<br />        }<br />        <br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (pageIndex</span><span style="color: #000000;">==</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex) </span><span style="color: #0000ff;">return</span><span style="color: #000000;">;<br />        <br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">count the scroll space</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> space </span><span style="color: #000000;">=</span><span style="color: #000000;"> pageIndex </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex </span><span style="color: #000000;">?</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.itemWidth</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize : </span><span style="color: #000000;">-</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.itemWidth</span><span style="color: #000000;">*</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageSize;<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">debugger;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #008000;">//</span><span style="color: #008000;">alert('Move Space:'+space);</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #008000;">//</span><span style="color: #008000;">scroll in the container using timer</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.scroll(space);<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">last set pageIndex</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex </span><span style="color: #000000;">=</span><span style="color: #000000;"> pageIndex;<br />    },<br />    scroll : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (space)<br />    {<br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> hasMove </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">;<br />        </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> enlarge(){<br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> container </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.getElementById(Photo.containerId);<br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> interval </span><span style="color: #000000;">=</span><span style="color: #000000;"> space </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;"> </span><span style="color: #000000;">?</span><span style="color: #000000;"> Photo.interval : </span><span style="color: #000000;">-</span><span style="color: #000000;">Photo.interval;<br />            <br />            </span><span style="color: #008000;">//</span><span style="color: #008000;">if(hasMove==0) alert('Begin scrollLeft:'+container.scrollLeft);</span><span style="color: #008000;"><br /></span><span style="color: #000000;">            <br />            container.scrollLeft </span><span style="color: #000000;">+=</span><span style="color: #000000;"> interval;<br />            hasMove </span><span style="color: #000000;">+=</span><span style="color: #000000;"> Math.abs(interval);<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( hasMove </span><span style="color: #000000;">&gt;=</span><span style="color: #000000;"> Math.abs(space) ){<br />                clearInterval(Photo.timer);</span><span style="color: #008000;">//</span><span style="color: #008000;">alert('End scrollLeft:'+container.scrollLeft);</span><span style="color: #008000;"><br /></span><span style="color: #000000;">            };<br />        }<br />        Photo.timer </span><span style="color: #000000;">=</span><span style="color: #000000;"> setInterval(enlarge,</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.speed);<br />    },<br />    isFirstPage : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> ()<br />    {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">;<br />    },<br />    isLastPage : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> ()<br />    {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageCount;<br />    },<br />    eIsFirstPage :</span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target){},<br />    eIsLastPage :</span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target){},<br />    eIsMiddlePage :</span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target){},<br />    ePrev : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target)<br />    {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.setPage( </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex</span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;"> );<br />    },<br />    eNext : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target)<br />    {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">debugger;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.setPage( </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.pageIndex</span><span style="color: #000000;">+</span><span style="color: #000000;">1</span><span style="color: #000000;"> );<br />    },<br />    enableMouseDown : </span><span style="color: #0000ff;">false</span><span style="color: #000000;">,<br />    isMouseDown : </span><span style="color: #0000ff;">false</span><span style="color: #000000;">,<br />    nextSpace : </span><span style="color: #000000;">82</span><span style="color: #000000;">*</span><span style="color: #000000;">5</span><span style="color: #000000;">,</span><span style="color: #008000;">//</span><span style="color: #008000;">还差到下一页的距离default:pageSize*itemWidth(init内设置)</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    scrollSpace : </span><span style="color: #000000;">0</span><span style="color: #000000;">,<br />    eMouseDown : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (interval)<br />    {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">这个方法分页算发还有问题。-_-!!!</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> downSpace </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">;</span><span style="color: #008000;">//</span><span style="color: #008000;">鼠标按下滚动的距离</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.isMouseDown </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br />        timer </span><span style="color: #000000;">=</span><span style="color: #000000;"> setInterval(</span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( Photo.isMouseDown) {<br />                <br />                </span><span style="color: #008000;">//</span><span style="color: #008000;">if ( Photo.scrollSpace&lt; 0 || Photo.scrollSpace &gt; document.getElementById(Photo.containerId).scrollLeft ) return ;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                </span><span style="color: #008000;">//</span><span style="color: #008000;"> &amp;&amp; document.getElementById(Photo.containerId).scrollLeft&gt;=0 &amp;&amp; document.getElementById(Photo.containerId).scrollLeft&lt;parseInt(document.getElementById(Photo.scrollContainerId).style.width) </span><span style="color: #008000;"><br /></span><span style="color: #000000;">                downSpace </span><span style="color: #000000;">+=</span><span style="color: #000000;"> Math.abs(interval);<br />                Photo.scrollSpace </span><span style="color: #000000;">+=</span><span style="color: #000000;"> interval;<br />                </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> moveItem </span><span style="color: #000000;">=</span><span style="color: #000000;"> Math.ceil( downSpace</span><span style="color: #000000;">/</span><span style="color: #000000;">Photo.itemWidth*1.0 );</span><span style="color: #000000;"><br /></span><span style="color: #000000;"><br />                Photo.nextSpace </span><span style="color: #000000;">+=</span><span style="color: #000000;"> interval;<br />                </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> movePage </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">;<br />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( Math.abs(Photo.nextSpace) </span><span style="color: #000000;">&gt;=</span><span style="color: #000000;"> Photo.pageSize</span><span style="color: #000000;">*</span><span style="color: #000000;">Photo.itemWidth)<br />                {<br />                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( Photo.nextSpace </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;"> )<br />                    {<br />                        Photo.nextSpace </span><span style="color: #000000;">-=</span><span style="color: #000000;"> Photo.pageSize</span><span style="color: #000000;">*</span><span style="color: #000000;">Photo.itemWidth;<br />                        movePage</span><span style="color: #000000;">=</span><span style="color: #000000;">1</span><span style="color: #000000;">;<br />                    }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />                    {<br />                        </span><span style="color: #008000;">//</span><span style="color: #008000;">debugger;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                        Photo.nextSpace </span><span style="color: #000000;">+=</span><span style="color: #000000;"> Photo.pageSize</span><span style="color: #000000;">*</span><span style="color: #000000;">Photo.itemWidth;<br />                        movePage</span><span style="color: #000000;">=-</span><span style="color: #000000;">1</span><span style="color: #000000;">;<br />                    }<br />                }<br />                </span><span style="color: #008000;">//</span><span style="color: #008000;">var movePage = moveScoll &gt;= (Photo.pageSize*Photo.itemWidth) ? 1 : 0;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                <br />                Photo.pageIndex </span><span style="color: #000000;">+=</span><span style="color: #000000;"> movePage;<br />                <br />                </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> list </span><span style="color: #000000;">=</span><span style="color: #000000;"> Photo.list.slice( Photo.pageSize</span><span style="color: #000000;">*</span><span style="color: #000000;">(Photo.pageIndex</span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;">) , Photo.pageSize</span><span style="color: #000000;">*</span><span style="color: #000000;">Photo.pageIndex);<br />                </span><span style="color: #0000ff;">for</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">var</span><span style="color: #000000;"> i</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;i</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">list.length;i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />                {<br />                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( list[i].img.src </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #000000;">""</span><span style="color: #000000;"> )<br />                        list[i].img.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> list[i].src;<br />                }<br />                <br />                Photo.scroll(interval);<br />                <br />                </span><span style="color: #008000;">//</span><span style="color: #008000;">document.getElementById("test").innerHTML = 'moveItem：' + moveItem;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                </span><span style="color: #008000;">//</span><span style="color: #008000;">document.getElementById("test").innerHTML += '，movePage：' + movePage;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                </span><span style="color: #008000;">//</span><span style="color: #008000;">document.getElementById("test").innerHTML += '，pageIndex：' + Photo.pageIndex;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                </span><span style="color: #008000;">//</span><span style="color: #008000;">document.getElementById("test").innerHTML += '，downSpace：' + downSpace;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                </span><span style="color: #008000;">//</span><span style="color: #008000;">document.getElementById("test").innerHTML += '，scrollSpace：' + Photo.scrollSpace;</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                <br />            }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"> clearInterval(timer);<br />            <br />        }, Photo.speed);<br />    },<br />    eMouseUp : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> ()<br />    {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">alert("eNextMouseUp");</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        Photo.isMouseDown </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />    },<br />    eClick : </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target)<br />    {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.currImg </span><span style="color: #000000;">=</span><span style="color: #000000;"> target;<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />    },<br />    loadImg : </span><span style="color: #0000ff;">function</span><span style="color: #000000;">(src,width,height,callback,parms)<br />    {<br />        </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> imgElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Image();<br />        imgElem.style.display </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">none</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        imgElem.onload </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){<br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> loadWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> parseFloat(imgElem.width), loadHeight </span><span style="color: #000000;">=</span><span style="color: #000000;"> parseFloat(imgElem.height);<br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> zoomWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> loadWidth, zoomHeight </span><span style="color: #000000;">=</span><span style="color: #000000;"> loadHeight;<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(width </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> height </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> (loadWidth</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">width </span><span style="color: #000000;">||</span><span style="color: #000000;"> loadHeight</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">height) )<br />            {<br />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(Math.abs( width</span><span style="color: #000000;">-</span><span style="color: #000000;">loadWidth) </span><span style="color: #000000;">&lt;</span><span style="color: #000000;">  Math.abs( height</span><span style="color: #000000;">-</span><span style="color: #000000;">loadHeight) )<br />                {<br />                    </span><span style="color: #008000;">//</span><span style="color: #008000;">宽度不变，等比缩放高度。</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                    zoomWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> width;<br />                    zoomHeight </span><span style="color: #000000;">=</span><span style="color: #000000;"> (width</span><span style="color: #000000;">*</span><span style="color: #000000;">loadHeight)</span><span style="color: #000000;">/</span><span style="color: #000000;">loadWidth;</span><span style="color: #000000;"><br /></span><span style="color: #000000;">                    </span><span style="color: #008000;">//</span><span style="color: #008000;">高度大于需要高度，继续宽度缩放</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (zoomHeight </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> height)<br />                    {<br />                        zoomWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> width</span><span style="color: #000000;">*</span><span style="color: #000000;">height</span><span style="color: #000000;">/</span><span style="color: #000000;">zoomHeight;</span><span style="color: #000000;"><br /></span><span style="color: #000000;">                        zoomHeight </span><span style="color: #000000;">=</span><span style="color: #000000;">  height;<br />                    }<br />                }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />                {<br />                    zoomHeight </span><span style="color: #000000;">=</span><span style="color: #000000;"> height;<br />                    zoomWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> (height</span><span style="color: #000000;">*</span><span style="color: #000000;">loadWidth)</span><span style="color: #000000;">/</span><span style="color: #000000;">loadHeight;</span><span style="color: #000000;"><br /></span><span style="color: #000000;">                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (zoomWidth</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">width)<br />                    {<br />                        zoomHeight </span><span style="color: #000000;">=</span><span style="color: #000000;"> width</span><span style="color: #000000;">*</span><span style="color: #000000;">height</span><span style="color: #000000;">/</span><span style="color: #000000;">zoomWidth;</span><span style="color: #000000;"><br /></span><span style="color: #000000;">                        zoomWidth </span><span style="color: #000000;">=</span><span style="color: #000000;">  width;<br />                    }<br />                }<br />            }<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (callback) callback(src,zoomWidth,zoomHeight,parms);<br />            setTimeout(</span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){<br />                imgElem.parentNode.removeChild(imgElem);<br />                imgElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br />            },</span><span style="color: #000000;">0</span><span style="color: #000000;">);<br />        };<br />        imgElem.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> src;<br />        imgElem.onabort </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (){ imgElem.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> imgElem.src; };<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">imgElem.onreadystatechange=function(){ if (imgElem.readyState=="complete") {} }</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        document.body.insertBefore(imgElem,document.body.childNodes[</span><span style="color: #000000;">0</span><span style="color: #000000;">]);<br />    }<br />};</span></div></div></pre>
<p style="text-indent: 2em;">上面的JS代码还有点小BUG，就是当设置鼠标点击按住不放的连续的滚动还有点问题，计算出来的距离有误，导致分页算法不正确。这个实现的难点在于要计算总共滚动了多远，然后要算上上次滚动的距离，如果上次滚动了半页，这次没有滚动半页当前pageIndex是不加的，但是如果这次滚动超过了半页pageIndex则加一，而下页只需要滚动一页宽度减去上次滚动1页超过的距离，算起有点晕，昨天我还被搞的稀里糊涂的，最后还是没有准确的算出来，如果是上一页或下一页一页页的距离翻，那到好计算，但是我想实现只滚一张图片的话就只下载这一张图片就有点晕了。总体来说实现了以下功能：</p>
<ol>
<li>图片列表JS客户端分页，而且每次只下载显示的张数的图片，点下一页才下载下一页的图片。这样的做法用意就不要说了吧，因为如果图片列表多的话一次性全部下载所有图片有可能会很慢，所以最基本的功能便是用JS来分页，计算原理很简单，在服务器动态输出JS将所有图片对象保存在数组里面，然后就是初始话的分页计算判断很简单了。</li>
<li>可以自定义分页大小，指定上一页下一页的按钮，将自动绑定CLICK事件，如果设置了enableMouseDown为true的话，将关联mouseout和mouseout事件，实现点击按钮不放连续滚动的功能，这个用定时器来实现也很简单，用了一个全局变量来标识是否正在按下，mouseout的时候设置为false即关闭定时器，就是上面说的要计算当前分页比较棘手...</li>
<li>自定义点击图片、当前是第一页、中间页、最后一页的回调事件，点击图片事件这个很重要肯定要自定义，比如我们经常点图片列表内小图片的时候设置大图片SRC，加载当前这张图片的评论，上传日期等。我这里做的时候在click事件里面把当前图片的push进数组里面的信息作为参数传入进来，然后好获取这张图片的信息，这个事件里面设置图片路径，显示的上传日期、设置当前图片的样式为选种的样式，实现Ajax请求获取图片评论(这个在我的相册里面没做)，第一页、中间页、最后一页的回调事件是用来判断为第一页上一页按钮不可选，最后一页下一页不可选等的。</li>
<li>增加图片列表的预载功能，并根据图片大小等比缩放，支持相片显示名称创建P元素，调整相关样式。<span style="color: red;">(最新增加)</span></li>
</ol>
<p style="text-indent: 2em;">在引用了Photo那个JS文件后我设置处初试话相册分页的代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008000;">        //</span><span style="color: #008000;">settings</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        Photo.pageSize </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">7</span><span style="color: #000000;">;<br />        Photo.prevId </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">btnPrev</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        Photo.nextId </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">btnNext</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        Photo.enableMouseDown </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />        Photo.containerId </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">miniaturelist</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        Photo.scrollContainerId </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">miniaturescroll</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        Photo.loadingSrc </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">style/default/loading.gif</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        <br />        Photo.itemWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">80</span><span style="color: #000000;">;<br />        Photo.imgMaxWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">66</span><span style="color: #000000;">;<br />        Photo.imgMaxHeight </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">49</span><span style="color: #000000;">;<br />        Photo.createLi </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br />        Photo.createName </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />        Photo.speed </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">20</span><span style="color: #000000;">;<br />        Photo.interval </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">40</span><span style="color: #000000;">;<br />        <br />        Photo.eClick </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target)<br />        {<br />            </span><span style="color: #008000;">//</span><span style="color: #008000;">the click callback event</span><span style="color: #008000;"><br /></span><span style="color: #000000;">            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">imgOriginality</span><span style="color: #000000;">"</span><span style="color: #000000;">).href </span><span style="color: #000000;">=</span><span style="color: #000000;"> target.src;<br />            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">currentName</span><span style="color: #000000;">"</span><span style="color: #000000;">).innerHTML </span><span style="color: #000000;">=</span><span style="color: #000000;"> target.name;<br />            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">spanName</span><span style="color: #000000;">"</span><span style="color: #000000;">).innerHTML </span><span style="color: #000000;">=</span><span style="color: #000000;"> target.name;<br />            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">spanTime</span><span style="color: #000000;">"</span><span style="color: #000000;">).innerHTML </span><span style="color: #000000;">=</span><span style="color: #000000;"> target.time;<br />            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">spanClick</span><span style="color: #000000;">"</span><span style="color: #000000;">).innerHTML </span><span style="color: #000000;">=</span><span style="color: #000000;"> target.click;<br />            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">spanReviewCount</span><span style="color: #000000;">"</span><span style="color: #000000;">).innerHTML </span><span style="color: #000000;">=</span><span style="color: #000000;"> target.reviewCount;<br />            <br />            </span><span style="color: #0000ff;">for</span><span style="color: #000000;">(</span><span style="color: #0000ff;">var</span><span style="color: #000000;"> i</span><span style="color: #000000;">=</span><span style="color: #000000;">0</span><span style="color: #000000;">;i</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Photo.list.length;i</span><span style="color: #000000;">++</span><span style="color: #000000;">)<br />            {<br />                Photo.list[i].img.parentNode.className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">""</span><span style="color: #000000;">;<br />            }<br />            target.img.parentNode.className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">on</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            target.img.parentNode.blur();<br />            <br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> imgElem </span><span style="color: #000000;">=</span><span style="color: #000000;"> document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">imgCurrent</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(target.isLoad</span><span style="color: #000000;">==</span><span style="color: #0000ff;">true</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> target.img.src </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #000000;">""</span><span style="color: #000000;">)<br />            {<br />                imgElem.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> target.src;<br />                </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">;<br />            }<br />            <br />            </span><span style="color: #0000ff;">var</span><span style="color: #000000;"> maxWidth </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">730</span><span style="color: #000000;">, maxHeight </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">500</span><span style="color: #000000;">;<br />            imgElem.style.marginTop </span><span style="color: #000000;">=</span><span style="color: #000000;"> (maxHeight</span><span style="color: #000000;">-</span><span style="color: #000000;">32</span><span style="color: #000000;">)</span><span style="color: #000000;">/</span><span style="color: #000000;">2+"px";</span><span style="color: #000000;"><br /></span><span style="color: #000000;">            imgElem.style.width </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">32px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            imgElem.style.height </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">32px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            imgElem.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">style/default/loading.gif</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            <br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.loadImg(target.src,maxWidth,maxHeight,</span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (src,width,height,imgElem){<br />                imgElem.style.width </span><span style="color: #000000;">=</span><span style="color: #000000;"> width</span><span style="color: #000000;">+</span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />                imgElem.style.height </span><span style="color: #000000;">=</span><span style="color: #000000;"> height</span><span style="color: #000000;">+</span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />                imgElem.src </span><span style="color: #000000;">=</span><span style="color: #000000;"> src;<br />                </span><span style="color: #0000ff;">if</span><span style="color: #000000;">(height</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">maxHeight)<br />                {<br />                    imgElem.style.marginTop </span><span style="color: #000000;">=</span><span style="color: #000000;"> (maxHeight</span><span style="color: #000000;">-</span><span style="color: #000000;">height)</span><span style="color: #000000;">/</span><span style="color: #000000;">2+"px";</span><span style="color: #000000;"><br /></span><span style="color: #000000;">                }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />                {<br />                    imgElem.style.marginTop </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">0px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />                }<br />                <br />            },imgElem);<br />            <br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.currImg </span><span style="color: #000000;">=</span><span style="color: #000000;"> target;            <br />        };<br />        <br />        Photo.eIsFirstPage </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target)<br />        {<br />            target.className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">prev prevdisabled</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (Photo.pageCount </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">) document.getElementById(Photo.nextId).className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">next</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        };<br />        <br />        Photo.eIsLastPage </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target)<br />        {<br />            target.className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">next nextdisabled</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (Photo.pageCount </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">) document.getElementById(Photo.prevId).className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">prev</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        };<br />        <br />        Photo.eIsMiddlePage </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">function</span><span style="color: #000000;"> (target)<br />        {<br />            document.getElementById(Photo.prevId).className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">prev</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            document.getElementById(Photo.nextId).className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">next</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        };<br />        <br />        </span><span style="color: #000000;">&lt;%=</span><span style="color: #000000;">photoScript </span><span style="color: #000000;">%&gt;</span><span style="color: #000000;"><br />        Photo.init();<br />        <br />        <br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (Photo.list.length</span><span style="color: #000000;">==</span><span style="color: #000000;">0</span><span style="color: #000000;">)<br />        {<br />            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">miniaturebox</span><span style="color: #000000;">"</span><span style="color: #000000;">).style.display</span><span style="color: #000000;">=</span><span style="color: #000000;">"</span><span style="color: #000000;">none</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">miniaturebody</span><span style="color: #000000;">"</span><span style="color: #000000;">).innerHTML </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">暂无照片。</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        }</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />        {<br />            </span><span style="color: #008000;">//</span><span style="color: #008000;">init the first is choosed</span><span style="color: #008000;"><br /></span><span style="color: #000000;">            </span><span style="color: #0000ff;">if</span><span style="color: #000000;">( Photo.list.length </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">) Photo.eClick(Photo.list[</span><span style="color: #000000;">0</span><span style="color: #000000;">]);<br />            document.getElementById(Photo.scrollContainerId).style.width </span><span style="color: #000000;">=</span><span style="color: #000000;"> parseFloat(document.getElementById(Photo.scrollContainerId).style.width)</span><span style="color: #000000;">+</span><span style="color: #000000;">2</span><span style="color: #000000;">+</span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            </span><span style="color: #008000;">//</span><span style="color: #008000;">only 1 page</span><span style="color: #008000;"><br /></span><span style="color: #000000;">            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (Photo.pageCount</span><span style="color: #000000;">&lt;=</span><span style="color: #000000;">1</span><span style="color: #000000;">)<br />            {<br />                document.getElementById(Photo.prevId).disabled </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br />                document.getElementById(Photo.prevId).className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">prev prevdisabled</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />                document.getElementById(Photo.nextId).disabled </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">true</span><span style="color: #000000;">;<br />                document.getElementById(Photo.nextId).className </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">next nextdisabled</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />            }<br />            </span><span style="color: #008000;">//</span><span style="color: #008000;">auto center</span><span style="color: #008000;"><br /></span><span style="color: #000000;">            document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">miniaturebox</span><span style="color: #000000;">"</span><span style="color: #000000;">).style.width </span><span style="color: #000000;">=</span><span style="color: #000000;"> ( (Photo.pageCount</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">1</span><span style="color: #000000;">?</span><span style="color: #000000;">Photo.pageSize:Photo.list.length) </span><span style="color: #000000;">*</span><span style="color: #000000;">Photo.itemWidth)</span><span style="color: #000000;">+</span><span style="color: #000000;">23</span><span style="color: #000000;">*</span><span style="color: #000000;">2</span><span style="color: #000000;">+</span><span style="color: #000000;">"</span><span style="color: #000000;">px</span><span style="color: #000000;">"</span><span style="color: #000000;">;<br />        }</span></div></div></pre>
<p style="text-indent: 2em;"><strong><span style="color: #ff0000;">总结：</span></strong></p>
<p style="text-indent: 2em;">泼自己一下冷水，从上面调用的看来，这个JavaScript类写的确实很烂，你看还需要自己写这么多的复杂判断的代码，也不够通用，因为上面实现的图片滚动还必须是要是特定的布局，因为图片列表滚动的原理是设置ScrollLeft距离，所以必须有一个最外面大的DIV布局overflox:hidden，里面的里表容器宽度一定是超过外面的DIV的，不然ScrollLeft将无效，只所以用设置ScrollLeft的方法。当然可以使用float，设置里的div容器overflow:visible，而外面的div容器固定宽度并设置overflox:hidden。</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/js/">JavaScript</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-07-04 20:01</li>
				<li>update@ 2009-11-29 16:19:02</li>
				<li>阅读(<span id="articleClick">13394</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/js/33.aspx">js拖拽代码</a></li>
<li>下一篇：<a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=34&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/js/photo.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=34";
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