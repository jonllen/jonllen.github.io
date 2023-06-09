<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	jonllen - 金龙博客
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
            
            
    
    <div id="ctl00_cphContent_palArticle" class="article">
	
		<div class="position title">
		    
		    <strong>jonllen</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

<div class="item">
			            
			            <h2><a href="/jonllen/work/98.aspx">总结今年的几个项目案例</a></h2>
			            <!--<div class="date"><a href="">2010-01-04</a></div>-->
			            
			            <div class="summary">
			                一、广佛都市网

类　　型：门户网站
开发时间：2009.03~2009.10
参与人数：20人以上
项目说明：这是一个大型的综合门户网站，前台页面使用CMS内容发布系统静态发布，程序是采购TRS的内容协作平台WCM，系统架构采用Linux Java Tomcat Oracle，前期主要调用系统的接口置标包页面，我参与了旅游、佛山房产等栏目的包装。后期的通行证、博客、圈子、分类信息系统采用.Net SQL2005开发，我主要负责后台、博客、圈子、分类信息模块，及后期的程序优化和论坛模板修改，验收阶段编写了模块开发卷宗、数据库设计说明书文档。
二、美酒在线

类　　型：商城
开发时间：2009.08~2009.10
参与人数：8人左右
项目说明：这是一个非常典型的在线商城系统，整体来说不算很复杂，前台主要是分类X(交叉)商品X(交叉)品牌的一个结构显示，以及会员订单的一个处理。
三、iKnow

类　　型：问答系统
开发时间：2009.10.29~2009.11.25
参与人数：3人
项目说明：这是我全权负责的一个项目，包括前后台程序架构搭建、数据库设计、项目需求跟进等。网站实现的是类似百度知道的功能，用户能发表问题、设置最佳答案、举行投票、关闭问题等。
四、建行金融卖场

类　　型：商城
开发
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-04 23:24:03.0</li>
				            <li>阅读(7945)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/98.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/flex/97.aspx">Flex播放器同步显示歌词</a></h2>
			            <!--<div class="date"><a href="">2010-01-03</a></div>-->
			            
			            <div class="summary">
			                在听完S.H.E的你最近还吗不下一百遍，终于搞好了播放器同步显示歌词这一功能。这是继上一篇Flex播放器(实现播放、缓冲进度条和音频曲线显示)后的一扩展功能，本例是实现对lrc文本格式的歌词进行解析显示，并把当前播放歌词一行文本进行高亮显示。
播放歌曲时要同步显示歌词，首先必须要能解析出lrc格式的歌词文本，之前我还准备直接在网上匹配下载对应歌词，打开我机器的千千静音在线匹配歌词，然后用HTTPAnalyzerStdV监视所有的http请求，发现它是请求这个ttlrcct.qianqian.com网站下载歌词，本来还是直接套用千千静音服务器下载歌词，但是它的url参数全部加密了。后来又看了下酷狗音乐，它里面下载歌词我都监视不请求，考虑到就算我能在线找到下载歌词的url地址，flash里发送远程请求也会有安全杀箱问题，所以最终放弃直接在网络上下载歌词的办法，还是全部上传到我网站上去。lrc歌词其实就是一个文本格式的文件，在Flex里面我们可以使用URLLoader去加载，代码如下...
			            </div>
			            <div class="tags">标签：Flex 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-03 23:17:31.0</li>
				            <li>阅读(12191)</li>
				            <li><a class="comment" title="共8条评论" href="/jonllen/flex/97.aspx#comment">评论(8)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/96.aspx">今天回公司处理问题</a></h2>
			            <!--<div class="date"><a href="">2010-01-02</a></div>-->
			            
			            <div class="summary">
			                好不容易元旦连放三天假，今天下午接到电话叫我回公司处理建行金融卖场的问题，还要先打的士跑到岗顶去同事那里拿钥匙，然后在打的回公司开门，55555~事情是这样的， 我年轻的时候参与做过一个建行金融卖场的项目，但这周一我就被从这个项目中抽出来了，准备做一些Java相关的开发，本以为彻底解脱了，没想到客户一个电话，我就得要乖乖的回公司去解决系统的问题。不过这也怨不得谁了，谁叫我住公司近元旦又没有约呢！话说这个建行金融卖场的项目，我还得真要记一帐。系统不算是很大，属于B2C类型的商城，但是却有他们内部的一些特殊需求，比如他们员工可以实现在线缴团费和党费，并且团费和党费作为一个商品存在，商品的不同扩展字段对应不同员工的工号，每下一个团、党费的订单该商品自动下架。诸如此类，造成这个系统里面有太多的一些"特殊"判断处理，看的代码都会感觉很臃肿。曾几何时，为了建行金融卖场这个项目而加班也搞得混天黑地，尽而酿成了回来在楼顶星空之夜收被子的杯具。。。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-02 18:13:38.0</li>
				            <li>阅读(7163)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/work/96.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/95.aspx">2010年的第一天</a></h2>
			            <!--<div class="date"><a href="">2010-01-01</a></div>-->
			            
			            <div class="summary">
			                
时光不经意的流转，2010年已悄然到来，感觉前几天还在为网站做一个迎圣诞的风格模版，今天我却不得不考虑要找一个庆祝虎年的图片素材，是的，元旦节来了！昨晚一直在徘徊，是不是该写点东西呢？在逝去的2009年里多少会有些总结吧，但还是早早的睡了，在被窝里看着手机的时钟已经是2010-01-01，心里有点酸，好象不太肯接受2010年已经到来了。。。
在2009年里，最重要的两件事就是来到了时代财富和搭建了自己的个人网站，在时代财富，我认识一些同事，跟他们在一起给我带来的许多快乐的回忆，也学习到了不少的技术。再说说我的小站吧，其实早在2008年的时候就注册了www.hnonl.com的域名，不过没有太多的关注，只是下了一个Oblog放上去自己并没有认真的写博客，打开网站看到的全部是一些垃圾文章，也赖得管。今年来到时代财富，被某人说没有网站的刺激下，毅然下决心重整网站，自己用.Net+Access写了博客网站程序，从网站策划、html静态页面制作、程序编写全一个人独立完成，当然页面风格样式模仿参考了一些网站，并以我的英文名称注册了域名www.jonllen.com和www.jonllen.cn。诚然，自己一点都不会平面设计，是一个很纯粹的程序员，但为了网站做一些漂亮的风格，我会拿起Phot
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-01 19:01:58.0</li>
				            <li>阅读(6804)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/95.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/94.aspx">linux下常用管理命令</a></h2>
			            <!--<div class="date"><a href="">2009-12-29</a></div>-->
			            
			            <div class="summary">
			                创建新用户
useradd命令（也可以使用adduser）用来创建新的用户帐号，其命令格式如下：
-d 设置新用户的登陆目录
-e 设置新用户的停止日期，日期格式为MM/DD/YY
-f 帐户过期几日后永久停权。当值为0时帐号则立刻被停权。而当值为-1时则关闭此功能。预设值为-1
-g 使新用户加入群组
-G 使新用户加入一个新组。每个群组使用逗号，隔开，不可以夹杂空白字
-s 指定新用户的登陆Shell
-u 设定新用户的ID值
成功创建一个新用户以后，在/etc/passwd文件中就会增加一行该用户的信息，其格式为：〔用户名〕：〔密码〕：〔UID〕：〔GID〕：〔身份描述〕：〔主目录〕：〔登陆Shell〕，其中个字段被冒号：分成7各部分，由于小于500的UID和GID一般都是系统自己保留，不用做普通用户和组的标志，所以新增加的用户和组一般都是UID和GID大于500的。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-29 23:29:48.0</li>
				            <li>阅读(8007)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/work/94.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/flex/sound.aspx">Flex播放器(实现播放、缓冲进度条和音频曲线显示)</a></h2>
			            <!--<div class="date"><a href="">2009-12-29</a></div>-->
			            
			            <div class="summary">
			                <object height='200' width='450' data='/upload/jonllen/media/Index.swf' type='application/x-shockwave-flash'>
<param name='quality' value='high' />
<param name='wmode' value='transparent' />
<param name='src' value='/upload/jonllen/media/Index.swf' />
</object>
<br />
			            </div>
			            <div class="tags">标签：Flex 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-29 00:33:49.0</li>
				            <li>阅读(16384)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/flex/sound.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/flex/flex-js.aspx">Flex和js互调</a></h2>
			            <!--<div class="date"><a href="">2009-12-22</a></div>-->
			            
			            <div class="summary">
			                一、在JavaScript中调用Flex方法
在Flex中可以用ExternalInterface来调用Flex的方法，途径是通过在Flex应用可调用方法列表中添加指定的公用方法。在Flex 应用中通过调用addCallback()可以把一个方法添加到此列表中。addCallback将一个ActionScript的方法注册为一个 JavaScript和VBScript可以调用的方法。addCallback()函数的定义为：addCallback(function_name:String, closure:Function):void，function_name参数就是在Html页面中脚本调用的方法名。closure参数是要调用的本地方法，这个参数可以是一个方法也可以是对象实例。
举个例子： import flash.external.*;    public function myFunc():Number {        return 42;    }    public function initApp():void {        ExternalInterface.addCallback("myFlexFunction",myFunc);    }
那么在Html页面中，先获得SWF对象的引用，也就是用object .../声明的Swf的Id属性，比如说是MyFlexApp。然后就可以用以下方式调用Flex中的方法。
			            </div>
			            <div class="tags">标签：Flex 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-22 19:58:54.0</li>
				            <li>阅读(11170)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/flex/flex-js.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/flex/contextMenu.aspx">Flex屏蔽默认右键菜单。</a></h2>
			            <!--<div class="date"><a href="">2009-12-20</a></div>-->
			            
			            <div class="summary">
			                首先需要修改index.template.html生成的静态模板页面,使用js监听document.onmousedown事件，并调用Flex里暴露的方法，代码如下：(Index为生成的flash对象id)
function onNsRightClick(e){     if(e.which == 3){          Index.openRightClick();          e.stopPropagation();      }     return false;}function onIeRightClick(e){     if(event.button  1){          Index.openRightClick();          parent.frames.location.replace('javascript: parent.falseframe');     }     return false;}if(navigator.appName == "Netscape"){     document.captureEvents(Event.MOUSEDOWN);      document.addEventListener("mousedown", onNsRightClick, true); }else{     document.onmousedown=onIeRightClick; }第二步，还需要修改index.template.html默认生成flash的脚本，在AC_FL_RunContent方法调用里添加一行"wmode", "opaque",参数设置，这是关键。
最后，在Flex端注册暴露能被js调用的函数，E
			            </div>
			            <div class="tags">标签：Flex 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-20 16:36:57.0</li>
				            <li>阅读(11980)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/flex/contextMenu.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/it/110.aspx">14日起个人用户无法申请注册CN域名</a></h2>
			            <!--<div class="date"><a href="">2009-12-14</a></div>-->
			            
			            <div class="summary">
			                中国互联网络信息中心(CNNIC)对加强域名监管再出重击，于11日晚间发公告称从今日(12月14日)9时起，用户注册.CN域名需提交书面申请，之前用户网上申请即可；并停止个人用户域名注册。CNNIC负责人表示，我国一直未开放过个人域名注册，但存在用户利用虚假资料注册并获得个人域名的行为。
			            </div>
			            <div class="tags">标签：业界 域名
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-14 11:42:22.0</li>
				            <li>阅读(6794)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/it/110.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/88.aspx">asp.net(C#)常用的一些功能</a></h2>
			            <!--<div class="date"><a href="">2009-12-04</a></div>-->
			            
			            <div class="summary">
			                asp.net(C#)常用的一些功能:发送邮件、直接读取上传文件内容(不经保存)、使用匿名委托筛选泛型列表和排序、导出csv报表文件。
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-04 11:50:25.0</li>
				            <li>阅读(8040)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/88.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/earth-week-meeting.aspx">替Earth出战周会</a></h2>
			            <!--<div class="date"><a href="">2009-11-27</a></div>-->
			            
			            <div class="summary">
			                今日上午，Earth跟我说他下午有事请假，叫帮忙替他出席做周会工作报告。刚听到这一消息确实很紧张啊，要知道公司每周五的都是项目经理和老大一起参加，我这小人物真的有点怯场。
下午4:30准是开会了，一刚开始就是我们技术部做工作总结，第一个就是康师傅，后来就论到我了，其实Earth工作报告的文档就准备好了，我只要对着念就有了，可是对这张总这些上级领导还是紧张，还好没有什么问题，就这样顺利过的。
技术、实施、财政的都过了后，杨总进行总结发言。他说到我们公司总签单金额到目前为止已是去年的150%，也就是增长了50%，但目标是要翻一倍也就是要增长100%，还表扬的diasy，说她是公司第二个做出200W的女同事，还送了她一个礼物作为奖励。一个高尔夫球手套，及球垫，说是日本什么名牌的，张总也有礼物，一张价值500块的购物卡，这是荣耀啊，真的很羡慕她，没想到她除开长得漂亮外，工作也是那么的出色，还受到老板的奖励，真的才貌双全的女强人啊。
想着有着有点动摇我钻研技术的信心了，技术再怎么好也没做市场的好，隔行如隔山，我的动力有点软件了，我在抱怨吗？

			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-27 17:33:53.0</li>
				            <li>阅读(3433)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/earth-week-meeting.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/db/oracle-notes.aspx">oracle学习小记</a></h2>
			            <!--<div class="date"><a href="">2009-11-27</a></div>-->
			            
			            <div class="summary">
			                最近忙完iKnow，难得忙里偷闲，打开N久没有打开过的NetBeans工程，继续开始Java的学习，之前已经有用Struts访问mysql、mssqlserver、derby数据库的实现，前几天正好把oracle数据库装好了，正好把jdbc连oracle数据库的功能实现一下。昨日感恩节，收到两位同学的祝福短信，心怀着感恩的心，我也感谢大家一路有你们，晚上听着欧阳菲菲感恩的心好几遍。
段今日一大早，终于解决了java读取Oracle数据库timestamp类型的问题，至此，oracle数据库的创建程序读取告一段段落，让我来记录每一步遇到的一些问题。
oracle数据库基本语法--创建表空间dbTestCREATE TABLESPACE dbTest    LOGGING     DATAFILE 'D:\J2ee\NetBeansProjects\JavaWeb\PowerDesigner\sql\dbTest.ora' SIZE 2M EXTENT    MANAGEMENT LOCAL SEGMENT SPACE MANAGEMENT AUTO;--创建用户blogadmin,默认表空间dbTest；CREATE USER blogadmin IDENTIFIED BY blogadmin DEFAULT TABLESPACE dbTest;--授予其三个权限:DBA,CONNECT,RESOURCEGRANT DBA, CONNECT, RESOURCE TO blogadmin;--查看用户角色...
			            </div>
			            <div class="tags">标签：数据库 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-27 11:08:35.0</li>
				            <li>阅读(12335)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/db/oracle-notes.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/iknow.aspx">我的iKnow</a></h2>
			            <!--<div class="date"><a href="">2009-11-23</a></div>-->
			            
			            <div class="summary">
			                最进忙于做一个问答系统，类似与百度知道，值得一题的时这次是全权由我来负责的，包括需求分析、数据库设计、程序前后台架构的搭建，项目进度的跟进。第一次让我把项目从头做到尾，发现有些地方还是心有余而力不足，比如系统开发进度控制等，有些都没事先的安排好，当然还会遇到一些大大小小的技术问题，不过到今天系统算是开发得差不多了，还剩下2个页面制作未完成的功能，比预期的时间提前一个星期。整个系统分为前后台2个工程，前台是一个独立网站项目，而后台则在我们公司的产品IBOX系统的插件内，其实整个iKonw也将是作为IBOX系统的插件存在，客户在买我们的产品时候可以选择是否需要此插件，在进行安装的时候就只部署选择的项目，由于前后台是独立在2个不同的项目里面，唯一相同的就是访问的同一个数据库，但是有一些系统配置我是直接用XML文件来保存的，我又不想用虚拟目录，所以给前后台通讯造成了一点麻烦。单例类所谓单例，就是说在全局里只存在一个实例，这个实例会在被频频使用，比如说系统的一些配置参数信息，或是一些过滤的关键字，访问这些信息的如果每次都要去读取配置文件的话就太麻烦了，这些内容我只希望读取一次配置，这个时候就可以考虑使用单件...
			            </div>
			            <div class="tags">标签：Asp.Net iKnow,单件,js弹窗
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-23 00:29:52.0</li>
				            <li>阅读(10867)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/iknow.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/83.aspx">久违的火锅</a></h2>
			            <!--<div class="date"><a href="">2009-11-19</a></div>-->
			            
			            <div class="summary">
			                才冲完一个热水藻，在这么冷的天气里真是一个种享受啊，拎着换洗的衣服，竟然还有股火锅味，真是囧-_-!!!老萍同志很有心，早就想这我们几个还要一起去吃顿饭，还专门创建了一个吃饭的讨论组，今天终于有机会大家一起去吃火锅咯。刚开始还没找着地方，还耐烦诡计童孩跑到那边去找我，这里先谢过了。广州的这鬼天气也这么冷，不过吃着热烹烹的火锅就更有味道了，不过前几天公司去大夫山烧烤后我就已经上火了，这次更加是火上加油了，所以我只能吃的斯文一点。刚坐下来就被喊去买王老吉，还好去买了，能降点火。王册还是那样子，说吃的就是第一，吃到打嗝还想要吃，当真无愧的是老中最大。不过她似乎很不正经，在述说了她大学里的风流史的同时，还告诉我说追女孩子不要用什么什么烂招，还正而八经的教我，要说我们在一起吧，演得真的很像，一看就是老江湖啊。还说，先找个女的拍拖，以后有经验就不会这么容易被甩掉了...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-19 22:24:19.0</li>
				            <li>阅读(9258)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/83.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/82.aspx">在线JavaScript调色板</a></h2>
			            <!--<div class="date"><a href="">2009-11-17</a></div>-->
			            
			            <div class="summary">
			                天气渐渐的冷了起来，冷到只打哆嗦，手插到口袋里不想出来，从未感觉广州也这么冷过，真是不想动啊。最近工作也比较忙，自己要负责一个项目，所以博客更新就没有像以前那样频繁了。
昨天设计部一同事问我要一个js取色板的功能，自己去做的话一时半会是不可能做好的，趁今天来公司比较早，就把Google大神搬出来帮他找了一下，刚开始找了几个兼容性都不是很好，而自己试着去改发现很麻烦，后台CSDN上有一个取色板的资源，不惜扣除了我2积分下载了这个资源，不过后来觉得这个js调色板着实好用，固出此文。
下载来看了它的Demo，页面很美观精致，功能也足够强大，有多种初始化调用方式。自己也写过几个简单的JavaScript类库，正好对比总结下。
1.定义一个全局的静态类或函数。
一个JavaScript类库，首先需要一个全局的静态类或活动函数，当然还可以定义更多的属性或函数，但最好都是定义在这个全局类下，而不要每一个方法或属性全部定义在window作用域下，这样会显得散乱无主次之分，至于什么时候用静态类时候用活动函数就要看具体实现的功能，一般来说页面会存在多份实例就需要使用pro
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-17 23:53:24.0</li>
				            <li>阅读(12554)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/82.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/80.aspx">感受点滴生活~</a></h2>
			            <!--<div class="date"><a href="">2009-11-07</a></div>-->
			            
			            <div class="summary">
			                
今天一大早，就去陪同事到天河公园跑步，我来广州好象还从来没早上在天河公园跑步的，今天7点的闹铃一响，就起床洗唰，从天河公园南门进跟同事会合，开始了我在广州的第一次晨跑。
等一下，我不知道这次晨跑能不能起到锻炼身体的作用哦？因为我总共跑步的距离可能都不到绕天河公园大湖一圈，囧-_-!!!。刚开始过来兴致脖脖，进天河公园南门就跑了起来，后来半路上啊华打电话给我，问我在往那个方向跑，我说往北门方向，他说他们正往我这边南门方向跑过来，叫我在放鸽场等他们。我好不容易跑了几步，没想到却是跑错方向了，不得不又走回原地来。。。
跟他们回合后，一起跑了来，没想到我的体质还是这么的差劲，跑两下就要不行了，不过啊华他也没两下就不行了，最后他还停下来走，最后我跟张军就先跑在前面了，张军体力好象蛮不错，都不需要停下来休息了，我实在是快不行了，但是我这个人好象又很倔，硬要死撑着，终于又跑回到了放鸽场，张军说先在这里休息一下等啊华，这个时候我已经是筋疲力尽了，难受极了，又没有带水口渴得要死，脑袋像很缺氧，就要昏厥过去似了。
可能是太久没有跑过了，一跑就如此差劲，不过难受一会儿后昏昏的感觉就没了，那是在汗珠一点一滴掉下来之后
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-07 19:48:49.0</li>
				            <li>阅读(7943)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/80.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/reflection/79.aspx">审计署，这次让我感觉那么的无能为力。</a></h2>
			            <!--<div class="date"><a href="">2009-11-05</a></div>-->
			            
			            <div class="summary">
			                昨天，进时代财富第二次出差，下午两点多就跑到审计署，去解决那个留言的Bug，本以为很容易就能解决马上回来，但是没想到晚上十点多才回来，面对那些问题觉得自己很无能为力，找到问题的切入口错误，需要自己检讨检讨。事情的原委其实是这样的，之前我的同事光仔已经去过客户那边把IBOX系统部署好了，就剩下一个留言插件的功能还没有解决，由于这块功能是我开发的，所以就派我过去解决这个BUG。其实外网里一模一样的功能没有问题，把那些置标原封不动拷过来在客户内网运行就报错，我就是要去解决客户内网里IBOX系统里的留言插件问题。button的onclick脚本函数不触发。这是一个很奇怪的问题，我在IE里面用DeveloperToolbar看提交留言的按钮，明明就指定了onclick="leaveadd()"脚本函数，点击按钮却怎么也没有反映，只报一个未找到对象的错误。但是js的leaveadd函数明明是有的啊，我是放在显示提交留言页面一起的。但是我这个提交留言页面有点特殊，因为它是作为一种置标动态输出js代码，然后js在使用ajax动态获取提交留言页面的html显示出来的，所以那个提交留言页面的html包括提交留言的文本输入框、按钮、leaveadd的javascript函数都是被动态加载到当前页面实现的..
			            </div>
			            <div class="tags">标签：三日必省吾身 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-05 10:35:22.0</li>
				            <li>阅读(9687)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/reflection/79.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/java/78.aspx">Java工厂模式切换数据库</a></h2>
			            <!--<div class="date"><a href="">2009-10-23</a></div>-->
			            
			            <div class="summary">
			                前二天，在struts介绍的实例中就提到数据库的访问使用了工厂模式，可以实现在线切换数据库的功能，同样是那个NetBeans工程，今天就来具体介绍我实现的思路。
网上有很多工厂模式的介绍，我最先接触是在.Net的PetShop项目里看到的，最近公司要搞Java，所以就搬到Java里来运用下，看了一些资料好象我这种实现的方法叫做简单工厂，是通过定义接口来实现的，在面向对象编程的世界里面，接口用来定义的一组规范，它强制规范实现类要一定要实现完成它的所有成员，至于接口的调用到底使用那个实现类则是在工厂类里面产生的。接口一般多定义对象的行为动作即方法，而抽象类则多用来定义对象的公共属性，比如男人和女人可以抽象出人做为抽象基类，因为都有人的一些公共特征，至于什么时候用接口什么时候用抽象类，这个就需要看实际项目中对象的关系了。
还是用户的增删改查功能的实现为例子，我们先需要定义用户的接口IUser，然后使用不同数据库来分别实现它，程序使用那种数据库则放在properties资源文件里配置，工厂在根据配置产生实例类，以接口形式返回到业务逻辑层，然后在页面里调用业务逻辑层方法。这里我用PowerDesiger简单画了一个类图如下...
			            </div>
			            <div class="tags">标签：Java 工厂模式
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-10-23 09:33:58.0</li>
				            <li>阅读(12163)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/java/78.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/77.aspx">js取元素和鼠标在页面内的坐标位置</a></h2>
			            <!--<div class="date"><a href="">2009-10-21</a></div>-->
			            
			            <div class="summary">
			                



获取页面元素坐标位置：
function elemOffset(elem){     var t = elem.offsetTop;       var l = elem.offsetLeft;       while( elem = elem.offsetParent)      {            t += elem.offsetTop;            l += elem.offsetLeft;       }     return {        x : l ,        y : t     };}
调用例子：
根据鼠标event事件对象获取坐标位置：
function mousePosition(e) {     if(e.pageX  e.pageY)     {        return {            x : e.pageX,            y : e.pageY         };     }    var scrollElem = (document.compatMode  document.compatMode!="BackCompat")? document.documentElement : document.body;    return {        x: e.clientX + scrollElem.scrollLeft,        y: e.clientY + scrollElem.scrollTop    };}
调用例子：
整理作者：Jonllen，以上在IE、Firefor3.0、Chrome1.0、Safari4.03、Opera9.64浏览器内测试通
			            </div>
			            <div class="tags">标签：JavaScript js元素鼠标位置
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-10-21 10:46:15.0</li>
				            <li>阅读(16795)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/77.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/java/struts.aspx">Struts增删改查实例及源代码下载</a></h2>
			            <!--<div class="date"><a href="">2009-10-19</a></div>-->
			            
			            <div class="summary">
			                今天，我又做了一个培训，这次讲的是Java的Struts，康师傅很重视这次Struts的培训，他说我这次做的准备比较充分，可能他是觉得我对Struts已经比较了解了吧，但其实这一次是我最没有做准备的一次，我以前二次培训都会预先写一篇博文或内容大纲，而我这次什么都没有做，虽然这次我能从头到尾不停的讲下去，但这些都是我自己明白大家却没能听懂，没能教会大家，这证明我的表达问题的方法方式还有待改进，没有从大家的角度了看问题，才导致这次培训大家都没有听懂，我之过也。
虽然，康师傅下令叫我下个星期分二次重新讲Struts，但我还是来回顾一下我今天讲的Struts内容。
今天我们主要讲的是Struts，我简单的用pd画了一个时序图，以便了解它的整个流程，这里我们可以看出，其实struts也是java里面MVC模式的一种，jsp或do页面为表现层(View)，StrutsForm充当映射模型(Model)，而StrutsAction则是控制中心(Control)，其中还有FormValidate和ActionValidate的Struts验证。图不是很正规，如下：

这里我会分为增、删、改、查四个功能来分别在Struts里的实现，然后讲述它每一个功能走的流程。这里先来讲增加功能的实现，在项目里面增加Struts的引用，然后新建useradd.jsp页面，
			            </div>
			            <div class="tags">标签：Java struts
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-10-19 09:45:27.0</li>
				            <li>阅读(19711)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/java/struts.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "/jonllen/index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
                            <!--共149条记录-->
                            <a href='javascript:goToPage0(1)' title='转到第1页'>首页</a>
                            <a href='javascript:goToPage0(4)' title='转到第4页'>上一页</a>
                            <a href='javascript:goToPage0(3)' title='转到第3页'>...</a><a href='javascript:goToPage0(4)' title='转到第4页'>4</a><font color='red'><strong>5</strong></font><a href='javascript:goToPage0(6)' title='转到第6页'>6</a><a href='javascript:goToPage0(7)' title='转到第7页'>...</a>
                            <a href='javascript:goToPage0(6)' title='转到第6页'>下一页</a>
                            <a href='javascript:goToPage0(8)' title='转到第8页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='5' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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