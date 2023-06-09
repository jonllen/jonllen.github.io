<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	喜洋洋与灰太狼 - 金龙博客
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
            
    <script type="text/javascript">
        function imgZoom(target) {
            
            var maxWidth = target.width, maxHeight = target.height;
            
            var img = new Image();
            img.src = target.src;
            
            var originalWidth = img.width, originalHeight = img.height;
            var width = originalWidth, height = originalHeight;
            
            if( height > maxHeight) {
                height = maxHeight;
                width = originalWidth * height / originalHeight;
            }
            if( width > maxWidth){
                width = maxWidth;
                height = originalHeight * width / originalWidth;
            }

            target.style.width = width + 'px';
            target.style.height = height + 'px';
        }
    </script>
    <div class="album">
		<div class="title">
		    <strong>当前位置：</strong>
		    <a href="/">首页</a>
		    > <a href="../">我的相册</a>
		    > <a href=".">喜洋洋与灰太狼</a>
		 </div>
		<div class="cont">
			<div class="guide"></div>
			<div class="list">
	            <ul class="fixft" id="albumlist">
                    
                            <li>
                                <a href="/jonllen/album/7/49.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870109549062500_myy_01.jpg?width=140&height=108" width="140" height="108" title="myy_01" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_01
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/50.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870109549531250_myy_02.jpg?width=140&height=108" width="140" height="108" title="myy_02" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_02
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/51.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870109550000000_myy_03.jpg?width=140&height=108" width="140" height="108" title="myy_03" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_03
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/52.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870109550468750_myy_04.jpg?width=140&height=108" width="140" height="108" title="myy_04" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_04
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/53.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870109550781250_myy_05.jpg?width=140&height=108" width="140" height="108" title="myy_05" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_05
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/54.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870109551250000_myy_07.jpg?width=140&height=108" width="140" height="108" title="myy_07" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_07
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/55.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870109551718750_myy_08.jpg?width=140&height=108" width="140" height="108" title="myy_08" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_08
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/56.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870110865937500_sheep1.gif?width=140&height=108" width="140" height="108" title="sheep1" />
                                </a>
	                            <p>
	                                <strong>
	                                    sheep1
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/57.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870110866406250_sheep2.gif?width=140&height=108" width="140" height="108" title="sheep2" />
                                </a>
	                            <p>
	                                <strong>
	                                    sheep2
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/58.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870110866875000_sheep3.gif?width=140&height=108" width="140" height="108" title="sheep3" />
                                </a>
	                            <p>
	                                <strong>
	                                    sheep3
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/59.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870110867187500_sheep5.gif?width=140&height=108" width="140" height="108" title="sheep5" />
                                </a>
	                            <p>
	                                <strong>
	                                    sheep5
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/60.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870110867656250_sheep6.gif?width=140&height=108" width="140" height="108" title="sheep6" />
                                </a>
	                            <p>
	                                <strong>
	                                    sheep6
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/61.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870110868125000_sheep7.gif?width=140&height=108" width="140" height="108" title="sheep7" />
                                </a>
	                            <p>
	                                <strong>
	                                    sheep7
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/62.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870113267031250_myy_11.jpg?width=140&height=108" width="140" height="108" title="myy_11" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_11
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/63.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870113267500000_myy_12.jpg?width=140&height=108" width="140" height="108" title="myy_12" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_12
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/64.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870113267968750_myy_13.jpg?width=140&height=108" width="140" height="108" title="myy_13" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_13
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/65.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870113268281250_myy_14.jpg?width=140&height=108" width="140" height="108" title="myy_14" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_14
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/66.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870113268750000_myy_15.jpg?width=140&height=108" width="140" height="108" title="myy_15" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_15
	                                </strong>
	                            </p>
	                        </li>    
                    
                            <li>
                                <a href="/jonllen/album/7/67.aspx" >
                                    <img src="/upload/jonllen/album/喜洋洋与灰太狼/633870113269218750_myy_16.jpg?width=140&height=108" width="140" height="108" title="myy_16" />
                                </a>
	                            <p>
	                                <strong>
	                                    myy_16
	                                </strong>
	                            </p>
	                        </li>    
                    
	            </ul>
	            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	            <script type="text/javascript">new ImgLazy();</script>
	        </div>
		</div>
	</div>            
    
     
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