
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>chapter3-300x199 - 海派甜心 - 金龙博客</title>
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-02-28' } );
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
			            
			            <a href="/jonllen/album/4/" >
			                天河公园<!-- (7)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/album/8/" >
			                网络收藏<!-- (12)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/album/10/" >
			                科韵路<!-- (7)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/album/3/" >
			                游戏照片<!-- (16)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/album/11/" >
			                海派甜心<!-- (10)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/jonllen/album/7/" >
			                喜洋洋与灰太狼<!-- (19)-->
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
            

    <div class="photo">
		<div class="title">
		    <strong>当前位置：</strong>
			    <a href="/">首页</a>
			     > <a href="../">我的相册</a>
			     > <a href="/jonllen/album/11/">海派甜心</a>
			     > <a id='currentLink' href='/jonllen/album/11/104.aspx'>chapter3-300x199</a>
		</div>
		<div class="cont">
		    <div class="fixfloat">
		        <div class="miniature" id="miniaturebox"></div>
		    </div>
			<div id="miniaturebody">
			    <div class="pic"><img id="imgCurrent" src="/upload/jonllen/album/海派甜心/chapter3-300x199.jpg" /></div>
			    <div class="name"><strong id="currentName">chapter3-300x199</strong><a href="/upload/jonllen/album/海派甜心/chapter3-300x199.jpg" id="imgOriginality" target="_blank" class="originality">原图</a></div>
			    <div class="detail">
				    <dl>
					    <dd>名　　称：<span id="spanName">chapter3-300x199</span></dd>
					    <dd>上传时间：<span id="spanTime">2010-02-07 19:36:41.0</span></dd>
					    <dd>浏览次数：<span id="spanClick">156</span></dd>
					    <dd>评论次数：<span id="spanReviewCount">0</span></dd>
				    </dl>
		        </div>
		    </div>
		</div>
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
			<div class="fi"><label>内容</label><textarea id="txtContent" class="text" style=" width:320px; height:150px" ></textarea><span class="note">*必填</span></div>
			<div class="btn"><input type="button" class="submit" onclick="postComment()" value="提交" /></div>
		</div>
	</div>
    
	<script type="text/javascript" src="/styles/index/scripts/ajax.js"></script>
	<script type="text/javascript" src="/styles/index/scripts/photo.js"></script>
	<script type="text/javascript">
		
		var photo = new Photo( { containerId : "miniaturebox", imgLoading : "/styles/index/style/default/images/loading.gif", itemWidth : 78 });
		
		var photoClick = photo.eClick;
		photo.eClick = function (img){
		    //base.eClick
		    photoClick.call(photo, img);
		    if(img.id!='104'){location=img.link;}
		    document.getElementById("imgOriginality").href = img.rawSrc;
		    document.getElementById("currentName").innerHTML = img.name;
		    document.getElementById("spanName").innerHTML = img.name;
		    document.getElementById("spanTime").innerHTML = img.time;
		    document.getElementById("spanClick").innerHTML = img.click;
		    document.getElementById("spanReviewCount").innerHTML = img.reviewCount;
		    
		    var currentLinkElem = document.getElementById("currentLink");
		    if (currentLinkElem) {
		        currentLinkElem.href = img.link;
		        currentLinkElem.innerHTML = img.name;
		    }
		    
		    
		    var imgElem = document.getElementById("imgCurrent");
		    
		    var maxWidth = imgElem.parentNode.clientWidth - 4, maxHeight =  imgElem.parentNode.clientHeight;
		    imgElem.style.marginTop = (maxHeight-32)/2+"px";
		    imgElem.style.width = "32px";
		    imgElem.style.height = "32px";
		    imgElem.src = photo.settings.imgLoading;
		    
		    function loadImgCallback (src,width,height,imgElem,maxWidth,maxHeight){
		        imgElem.style.width = width+"px";
		        imgElem.style.height = height+"px";
		        imgElem.src = src;
		        var imgMarginTop = 0;
		        if ( height < maxHeight ) imgMarginTop = (maxHeight-height)/2;
		        imgElem.style.marginTop = imgMarginTop + "px";
                    }
                    photo.loadImg(img.rawSrc,maxWidth,maxHeight,loadImgCallback,imgElem);
		};
		
		
		function postComment()
		{
		    var url = "/plugin/web/doSaveComment.do?sourcetype=2&sourceid=104&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/album/11/104.aspx';
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
		        if (document.getElementById("txtEmail")!=null)
		        {
		            data += "&email="+ encodeURIComponent(document.getElementById("txtEmail").value);
		        }
		        if (document.getElementById("chkEmailNotify")!=null)
		        {
		            data += "&emailNotify="+ encodeURIComponent(document.getElementById("chkEmailNotify").checked);
		        }
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
		
		function quote(target,name)
	    {
	        var content = name+"："+target.parentNode.parentNode.parentNode.nextSibling.innerHTML;
	        var reply = document.getElementById("txtContent");
	        if (reply==null) return;
	        reply.value += "[quote]" + content.replace(/<[^>].*?>/g,"") + "[/quote]\n";
	        reply.focus();
	        
            var r = reply.createTextRange();
            r.moveStart('character',reply.innerHTML.length);
            r.collapse(true);
            r.select();

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
		        var url = "/plugin/web/doAddClick.do?columnType=2&documentId=104";
		        Ajax.send({
		            type : "GET",
		            url : url,
		            fn : function (data){
		                 var clickElem = document.getElementById('spanClick');
		                 if(clickElem !=null) clickElem.innerHTML = data; 
		            }
		        });

		    }
            addClick();
    </script> 

<script>

photo.push( { id : 102, name : 'chapter1-300x212', title : 'chapter1-300x212', time : '2010-02-07 19:36:41.0', click : 117, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/chapter1-300x212.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/chapter1-300x212.jpg', 'link' : '/jonllen/album/11/102.aspx' } );

photo.push( { id : 103, name : 'chapter2-300x200', title : 'chapter2-300x200', time : '2010-02-07 19:36:41.0', click : 162, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/chapter2-300x200.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/chapter2-300x200.jpg', 'link' : '/jonllen/album/11/103.aspx' } );

photo.push( { id : 104, name : 'chapter3-300x199', title : 'chapter3-300x199', time : '2010-02-07 19:36:41.0', click : 156, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/chapter3-300x199.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/chapter3-300x199.jpg', 'link' : '/jonllen/album/11/104.aspx' } );

photo.push( { id : 105, name : 'fix6-300x199', title : 'fix6-300x199', time : '2010-02-07 19:36:41.0', click : 131, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/fix6-300x199.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/fix6-300x199.jpg', 'link' : '/jonllen/album/11/105.aspx' } );

photo.push( { id : 106, name : 'Part-04-300x199', title : 'Part-04-300x199', time : '2010-02-07 19:36:41.0', click : 142, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/Part-04-300x199.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/Part-04-300x199.jpg', 'link' : '/jonllen/album/11/106.aspx' } );

photo.push( { id : 107, name : 'Part-05-沒有豬鼻子-300x200', title : 'Part-05-沒有豬鼻子-300x200', time : '2010-02-07 19:36:41.0', click : 148, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/Part-05-沒有豬鼻子-300x200.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/Part-05-沒有豬鼻子-300x200.jpg', 'link' : '/jonllen/album/11/107.aspx' } );

photo.push( { id : 108, name : '插圖07-300x200', title : '插圖07-300x200', time : '2010-02-07 19:36:41.0', click : 151, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/插圖07-300x200.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/插圖07-300x200.jpg', 'link' : '/jonllen/album/11/108.aspx' } );

photo.push( { id : 109, name : '海派漫畫第9集-300x199', title : '海派漫畫第9集-300x199', time : '2010-02-07 19:36:41.0', click : 146, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/海派漫畫第9集-300x199.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/海派漫畫第9集-300x199.jpg', 'link' : '/jonllen/album/11/109.aspx' } );

photo.push( { id : 110, name : '海派漫畫第10集-300x199', title : '海派漫畫第10集-300x199', time : '2010-02-07 19:36:41.0', click : 156, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/海派漫畫第10集-300x199.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/海派漫畫第10集-300x199.jpg', 'link' : '/jonllen/album/11/110.aspx' } );

photo.push( { id : 111, name : '海派漫畫第11集-300x200', title : '海派漫畫第11集-300x200', time : '2010-02-07 19:36:41.0', click : 155, reviewCount : 0, src : '/upload/jonllen/album/海派甜心/海派漫畫第11集-300x200.jpg?width=74', rawSrc : '/upload/jonllen/album/海派甜心/海派漫畫第11集-300x200.jpg', 'link' : '/jonllen/album/11/111.aspx' } );
		
photo.init(104);
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