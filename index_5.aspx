<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	金龙之家
</title>
<link rel="search" type="application/opensearchdescription+xml" title="金龙博客" />
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
	    <h3></h3>
	    <h4></h4>
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
<script type="text/javascript" src="/styles/index/scripts/Topic.js"></script>
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
		        var url = "/plugin/web/getArticleArchive.do?coluidpath=&colutype=";		        		        
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
			            
			            <a href="/jonllen/" >
			                jonllen<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/pengfenjun/" >
			                pengfenjun<!-- (0)-->
			            </a>
			        </li>
			
		</ul>
	</div>
</div>
 
<div id="mod28" class="mod links">
	<div class="head"><strong class="ico">友情链接</strong></div>
	<div class="cont">
		<ul>
                    
		    <li><a href="http://www.thjy.org" title="天河部落教育博客" target="_blank">天河部落</a></li>
                    
		    <li><a href="http://weibo.com/zjj" title="时代财富张静君的微博" target="_blank">张静君</a></li>
                    
		</ul>
	</div>
</div>
 
</div>

	<div class="siderMiddle">
	    <div class="content column column2">
            
            
    
    <div id="ctl00_cphContent_palArticle" class="article">
	
		<div class="position title">
		    
		    <strong>我的文章</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

<div class="item">
			            
			            <h2><a href="/jonllen/java/100.aspx">Struts+Hibernate学习笔记</a></h2>
			            <!--<div class="date"><a href="">2010-01-06</a></div>-->
			            
			            <div class="summary">
			                目录
1.配置好Hibernate数据库连接
2.使用Hibernate映射数据库到实体类
3.创建struts应用程序
一、配置好Hibernate数据库连接
创建一个名为Hibernate的新工程，要使用Hibernate需要先创建一个数据库连接，选择Window工具栏Show View菜单中选择Other，在MyEclipse Enterprise Workbench目录下找到DB Browser数据库浏览器，先新建一个数据库连接驱动，输入正确的Connection URL数据库连接字符串和用户名密码，Add JARs选择本地的数据驱动文件，系统会自动选择驱动文件里的驱动类，完成之后在DB Browse里就多了一个数据库连接项，选择一个配置好的数据库连接项右击Open Connection连接，如果我们可以看到数据库和下面的表则证明配置数据库连接成功。右击工程项目选择MyEclipse菜单中的Add Hibernate Capabilities项，添加对Hibernate标签库的引用，选择Hibernate 3.1版，Next下一步使用hibernate.cfg.xml默认配置文件名，在连接数据库的步骤里我们选择JDBC驱动连接方式，在DB Driver下拉列表项中我们可以看到刚开始在DB Browser里配置好的数据库连接，选择一个下面的Connection URL数据库连接字符串和用户名密码自动填充，如果MyEclipse还未使用DB Browser数据库连接浏览器.
			            </div>
			            <div class="tags">标签：Java 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-06 19:59:48</li>
				            <li>阅读(13942)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/java/100.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/99.aspx">2009年工作总结及2010年工作计划</a></h2>
			            <!--<div class="date"><a href="">2010-01-05</a></div>-->
			            
			            <div class="summary">
			                接上级通知，写2009年工作总结及2010年工作计划报告一份，内容如下：
从2009年进公司，学习了很多，感悟过很多，认知到很多。在做广佛项目的时候，尤其是出差加班那段时间，我才真正体会到了什么是工作，那是一种责任。在公司年庆组织去厦门古浪屿旅游的时候，在海岛上看到天际交接的景象，内心掩盖不了欢腾的喜悦，特别是那个晚会，让人陶醉和回味。在做IBOX系统开发的时候，我认识到了什么是效率，别人有的我们也能做出来，同时见证了公司产品化的一个过程。太多的太多，不胜枚举。
做为一名技术人员的我，掌握的知识还远远不够，觉得自己还不太成熟，有时候会因为粗心犯些小问题，但这些问题应该能够避免的。有时候觉得有些东西这样做不妥，但自己却找不出一个更好的解决方案来。还有自己的解决分析问题能力不够，就像是去审计署的那次，明明是一个比较简单的问题，我却因为被一些表面现象所迷惑而很久才发现问题的根源所在。我公司作为一个网络技术型公司，要提高产品和项目的质量，我觉得还得要从我们每一个技术人员抓起，因为技术人员每写的一行代码是直接反映在了产品的某一功能上，如果我们每个人进步一点点，那公司就向前跨出了一大步。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-05 21:11:14</li>
				            <li>阅读(7933)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/work/99.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


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
				            <li title="">posted@ 2010-01-04 23:24:03</li>
				            <li>阅读(8248)</li>
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
				            <li title="">posted@ 2010-01-03 23:17:31</li>
				            <li>阅读(12788)</li>
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
				            <li title="">posted@ 2010-01-02 18:13:38</li>
				            <li>阅读(7392)</li>
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
				            <li title="">posted@ 2010-01-01 19:01:58</li>
				            <li>阅读(6994)</li>
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
				            <li title="">posted@ 2009-12-29 23:29:48</li>
				            <li>阅读(8255)</li>
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
				            <li title="">posted@ 2009-12-29 00:33:49</li>
				            <li>阅读(16925)</li>
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
				            <li title="">posted@ 2009-12-22 19:58:54</li>
				            <li>阅读(11769)</li>
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
				            <li title="">posted@ 2009-12-20 16:36:57</li>
				            <li>阅读(12564)</li>
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
				            <li title="">posted@ 2009-12-14 11:42:22</li>
				            <li>阅读(6983)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/it/110.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/pengfenjun/dishcentrifuge/90.aspx">湘潭碟式分离机有限公司</a></h2>
			            <!--<div class="date"><a href="">2009-12-07</a></div>-->
			            
			            <div class="summary">
			                湖南省湘潭碟式分离机有限公司，是原湘潭离心机有限公司直属子公司，在分离机械行业内享有极高的声誉，是中国通用机械协会分离机械协会副理事长单位。公司总部座落于中国湖南湘潭湘江生态风景区，环境优雅，交通便利。 湘潭碟式分离机有限公司是专业从事分离领域成套设备和成套系统的科技型企业，技术力量雄厚，加工装备精良，检测手段完善，内部管理规范，是目前国内处具现代化规模，拥有较强科研能力和综合加工能力的分离机械研制与生产的骨干企业。经过近10年的发展，湘潭碟式分离机有限公司拥有的分离技术，已经在船舶工业、石油化工、食品工业、医药、生化工程等许多领域和环保工程中实现工业化应用。产品畅销全国各地，并远销欧洲、东南亚国家和地区，拥有较高的市场份额，深得用户好评。 公司任借经验丰富的中高级工程师和售后工程师，专业的市场分析策划及市场营销人员，完善的财务管理和售后服务体系，坚持您说，我做，诚实为本，互利双赢的经营宗旨，以优质的产品质量、极具竞争力的价格、及时完善的服务和高度的信誉为所有的客户创造更高价值。公司全体员工热忱恭候您的光临、同您一起共同开创更加美好的明天！
			            </div>
			            <div class="tags">标签：碟式分离机 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-12-07 15:29:41</li>
				            <li>阅读(6787)</li>
				            <li><a class="comment" title="共0条评论" href="/pengfenjun/dishcentrifuge/90.aspx#comment">评论(0)</a></li>
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
				            <li title="">posted@ 2009-12-04 11:50:25</li>
				            <li>阅读(8339)</li>
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
				            <li title="">posted@ 2009-11-27 17:33:53</li>
				            <li>阅读(3573)</li>
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
				            <li title="">posted@ 2009-11-27 11:08:35</li>
				            <li>阅读(12644)</li>
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
				            <li title="">posted@ 2009-11-23 00:29:52</li>
				            <li>阅读(11177)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/iknow.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/pengfenjun/experience/84.aspx">“长痘门”</a></h2>
			            <!--<div class="date"><a href="">2009-11-21</a></div>-->
			            
			            <div class="summary">
			                纪念已去的长痘门 
 那段日子长驻我的心底...... 
 这是发生在今年6月的事。6月初，本来是我出差湖北的好日子，高高兴兴的出差，高高兴兴的回家，多好啊！因为我从未出过湖南省，也未坐过车火。这回一次性的圆了我二个梦，心中的喜悦可想而知，我对自己说：在高兴之余也不忘努力。正当我从湖北办完事回家的火车上时，我接到一个不幸的电话，我一个同学不幸的卷入车祸门了，车祸造成一死一重伤，我同学幸运的留下小命，而另一同志不幸身故。有人说，这就叫命！而正在我为他们不幸之际，灾难随即降临，我深深的陷入了长痘门，记得那是20号的早上，我刚刚醒来，感觉到脸上刺痛，拿起镜子一看，我呆了~~~好大的痘啊！而且还不止一个，一夜的巨变，让我有点措手不及，我还傻傻的安慰自己说：没关系，过二天就好了，但我这心里可不这么想的，还要去上班，别人笑话我怎么办？比平常多带了份伤心的我照常上班，可到了公司，正如我心里所想的，大家都笑话我，我能怎么说呢？最有利的攻击就是沉默；下班后我马上去看医生了，医生说是体内有毒素，他给我开了中药，我每天中午晚上都去他那吃中药，希望不管是那里出了问题，我的痘痘能很快好起来。就这样，一天天过去了，面对别人的指点
			            </div>
			            <div class="tags">标签：经历 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-21 00:01:04</li>
				            <li>阅读(9374)</li>
				            <li><a class="comment" title="共0条评论" href="/pengfenjun/experience/84.aspx#comment">评论(0)</a></li>
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
				            <li title="">posted@ 2009-11-19 22:24:19</li>
				            <li>阅读(9479)</li>
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
				            <li title="">posted@ 2009-11-17 23:53:24</li>
				            <li>阅读(13131)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/82.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/pengfenjun/experience/81.aspx">“无线”坎坷之旅</a></h2>
			            <!--<div class="date"><a href="">2009-11-09</a></div>-->
			            
			            <div class="summary">
			                 现在的我基本就不喜欢呆在车间里，因为呆在车间里要做一些没有一点技术含量的事，并且还会弄得一身脏；本来自己工资就很低了，没办法生存，这可好了，逼的我跟老总摊牌，这可能也是我必然要做的事，总是呆在车间里对我来说是不可能的事。我鼓起勇气跟老总谈了我的想法，没想到老总竟然答应了我这几天去跑业务，当时心里有说不出的高兴，我想我这次一定要努力工作，不能辜负了他们对我的希望。就这样，下午带着愉悦的心情回家了。　　哈哈．．．．．．
 第二天，我一大早就起来了，因为今天我要去解决阻碍我销售的事。是这样的，在这个信息世界里，做我们这一行，如果没有一台可以联网的电脑，感觉就象是井底之蛙，使终不知道外面的世界，如何下手?信息从何而来，客户从何而来？其实早在几周前，我为了联网的时，已经搞得满头包了，我们家这边联不上宽带，有人把家门前的电缆线给偷了，去了几次电信公司，还把他们那边的技术人员请来了，就是联不了宽带，说什么要做工程，重新接电缆线，就这样，宽带泡汤了。
 今天的我，已经是下了决心的，要联网，联无线。抱着这份坚持，我再次来到电信公司营业大厅，在工作人员的帮助下，我成功办理了3G无线宽带，买了一张网卡418元，交
			            </div>
			            <div class="tags">标签：经历 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-11-09 21:50:06</li>
				            <li>阅读(9234)</li>
				            <li><a class="comment" title="共1条评论" href="/pengfenjun/experience/81.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
                            <!--共154条记录-->
                            <a href='javascript:goToPage0(1)' title='转到第1页'>首页</a>
                            <a href='javascript:goToPage0(4)' title='转到第4页'>上一页</a>
                            <a href='javascript:goToPage0(3)' title='转到第3页'>...</a><a href='javascript:goToPage0(4)' title='转到第4页'>4</a><font color='red'><strong>5</strong></font><a href='javascript:goToPage0(6)' title='转到第6页'>6</a><a href='javascript:goToPage0(7)' title='转到第7页'>...</a>
                            <a href='javascript:goToPage0(6)' title='转到第6页'>下一页</a>
                            <a href='javascript:goToPage0(8)' title='转到第8页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='5' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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
                    
		    <li><a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a>(40614)</li>
                    
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