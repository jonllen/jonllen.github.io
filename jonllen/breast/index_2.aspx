<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	心情笔记 - 金龙博客
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
            
            
    
    <div id="ctl00_cphContent_palArticle" class="article">
	
		<div class="position title">
		    
		    <strong>心情笔记</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

<div class="item">
			            
			            <h2><a href="/jonllen/breast/121.aspx">再聚散伙饭</a></h2>
			            <!--<div class="date"><a href="">2010-06-23</a></div>-->
			            
			            <div class="summary">
			                四根老油条，两根单飞，两根继续煎熬。
一个月前，小萍离开了公司，当时还是觉得有点伤心，不过还是为她有了更好的发展而感到高兴，那时候小萍也请了我们吃饭，当时小霞就笑着说到时候离职申请拿过来套下模板，没想到这个星期小霞真的也要走了，再聚又是散伙饭。被剩下的是我和王册，我们两个笑着说，到时候是我请你还是你请我？
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-06-23 22:36:29.0</li>
				            <li>阅读(6655)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/breast/121.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/120.aspx">时代财富10周年年庆</a></h2>
			            <!--<div class="date"><a href="">2010-06-03</a></div>-->
			            
			            <div class="summary">
			                一、时代财富10周年晚宴的前一天(第1天)
1.前面的话
最近一直和自己打心理战，有时候倍感悲伤、有时候略感欣慰，心情起伏多变。我本是一个非常伤感之人，很容易就会被外间一些事物给影响，可能最近是忙得什么都淡了，像是看透了世态，什么事都不觉得不足为奇，不为所动。也许这叫做淡定...
2.西装革履赴年会晚宴
公司10周年庆典明天就要开始举行了，翻开去年的时代财富9周年年庆，却没有往年的那么期待。10周年毕竟是一个有意义的重大日子，所以跟往年会有所不同的是：给我们玩的时间少了，表演节目的时间缩减了，多了的是请了很多客户。所以这个年庆晚会就不单单只是晚会这么简单了，更重要的是以客户为中心。公司领导非常重视这个年会晚宴，要求把自己定位成一个服务者，更是要求员工西装领带配齐，为的是给客户留下一个美好的印象...
二、时代财富10周年晚宴进行时(第2天)
三、时代财富10周年白水寨之旅(第3天)
			            </div>
			            <div class="tags">标签：心情笔记 时代财富
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-06-03 22:35:47.0</li>
				            <li>阅读(8458)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/120.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/114.aspx">不要让此时此刻的青春流走</a></h2>
			            <!--<div class="date"><a href="">2010-04-09</a></div>-->
			            
			            <div class="summary">
			                今天下午，大唐早早的从JH回来，还问我借了一支笔，他拿着一封离职申请表给我看。我当时很震惊，怎么连大唐也都要走了？他跟我说在JH感觉有点憋，也觉得自己没做什么事，老是写文档，做一些自己不太擅长的事，工作也没有被认同。大唐是我们技术的Java部门经理，年前的时候大唐给我们做过一些培训，对我个人影响很大，我的知识面也扩大了很多。大唐为人也很谦虚，以前还在JH的时候他请我几个人一起吃过饭，他告诉我之前在天涯社区做过，不过他在那边只能是一个开发工程师，但他说那公司的开放式管理很好，每天可以10点上班，不会限制具体上班的时间，每天只要上足几个小时。他那时候还问我来公司多久了，觉得公司怎么样？我用了一句非常忽悠的话回答说：“该有的都有！”，他说不知道选择对不对，我当时就觉得他来我们公司是一笔的财富，可今却离职了。从今天他递交辞职申请书的那一刻，我就知道很难再有机会向他学习了。大唐还跟我说...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-04-09 17:29:00.0</li>
				            <li>阅读(7015)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/breast/114.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/113.aspx">读王雩老师的《赢在路上》</a></h2>
			            <!--<div class="date"><a href="">2010-04-08</a></div>-->
			            
			            <div class="summary">
			                这是我第二次读王雩老师的《赢在路上》，本来不准备再在博客里写些什么的，想更多的写一些关于技术方面的文章。但后来又想了下，一些心里的总结和感受远比技术更来得重要一些，而它们的关系是心理的感受和想法支配着技术生活和行动。
王雩老师书里写得很真实，讲述的是自己一路走过来的亲身实践，我虽然目前不是从事销售工作，而是一名技术人员，就像书中所说的，偶尔也会被带到客户那边，跟客户做一些技术方面的交流，完事后就是要拼死拼活的做项目敲代码。可是，也就是书里说的，找工作需要跟自己兴趣爱好相对应的，我对程序还饱有浓厚的兴趣爱好，能一门心思的钻到里面去学习，所以我的工作将不会是枯燥无味的，而是快乐的。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-04-08 00:49:09.0</li>
				            <li>阅读(8588)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/113.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/112.aspx">月度工作总结会201003</a></h2>
			            <!--<div class="date"><a href="">2010-04-07</a></div>-->
			            
			            <div class="summary">
			                我最近的主要工作还是做天河部落的开发，在4月2号的时候已经部署了一个版本到公司的外网服务器，供客户测试。主要完成的是一期的功能点开发，模板完成个人博客、群组和学校的分别2套。我们最终需要完成的模板总数为个人博客12套、群组5套、学校5套，所以在后续的工作里会继续加上还未完成的模板，以及进行天河部落2期功能的开发，包括关键字过滤和Moodle系统等。
天河部落给我最大的成长，那就是再脱离了Earth老大后，我能直接跟项目那边进行很好的沟通，可以主动去发现一些问题，并能和大家一起讨论，最后解决问题。我觉得这个成长的过程实在太重要了，其中我的技术专业知识也进步了不少。
第二段是我后来加上去的，因为那时候杨总说要多谈一点个人的收获和成长，但最后我在发表总结的时候还是删了没说，因为我看到杨总脸色很难看，可能生气了。原因是对建行回来的技术同事工作报告不满意，因为建行的技术同事工作报告里都是说怎么怎么加班，怎么怎么忙碌，好象充满了怨气...
			            </div>
			            <div class="tags">标签：心情笔记 总结
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-04-07 22:18:02.0</li>
				            <li>阅读(7280)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/112.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/108.aspx">天河部落额外的收获</a></h2>
			            <!--<div class="date"><a href="">2010-03-21</a></div>-->
			            
			            <div class="summary">
			                在我喜欢的城市，做我喜欢的工作。站在新的起点，需要保持的是勇敢的心和坚定的付出。与我的45个孩子一起成长！一边走一边唱，生活可以这般美好！无论何时，都对自己说：来，笑一个！--罗翠兰 人生当中肯定会有那陡峭的山坡，也会有那平坦的大道；有波涛汹涌大浪，也有平静的港湾；不要因为那陡峭的山坡而放弃自己的梦想或是理想。不要给汹涌的大浪给吓退,勇敢的冲进大海里，你会发现大海那梦幻的世界是那么的让人迷恋!--！陈芷 ！ (阳光女孩) 感恩地活，快乐地忙，贪婪地学，痛快地玩，幸福地爱，积极地游，尽力地帮！--林美娟 孩子的心灵是一块纯净的土地，播下什么样的种子，就会有什么样的收获。我愿与孩子们一起成长。--李洁萍 世上千般物 难得是童心 --陈艳梅 以上是我工作中，收集摘自在天河部落博客测试数据。同样都是博客，天河部落的师生却能在在博客写出这般体会，实在是难能可贵，我能想象得到他们其乐融融的在一起是有多么的开心。博客，一个用心倾听自己心灵的声音，没有任何拘束，没有任何的纷争的境地。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-03-21 14:44:34.0</li>
				            <li>阅读(6705)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/108.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/104.aspx">回家过年</a></h2>
			            <!--<div class="date"><a href="">2010-02-28</a></div>-->
			            
			            <div class="summary">
			                过年短短几天假期，很快就结束了，回到广州继续进行忙碌的工作。每一次要离开的头一天晚上，都会感觉特别的珍惜，因为不舍所以难眠。回去因为买不到火车票，所以发狠心订了机票，过来则是坐大巴，还是加班车次，本来8个小时的车程坐了14个小时才到广州，让我深深的感觉到了什么是煎熬。这里还有一个笑话，我在长途汽车站等车，由于是加班车，都晚点了个多小时，我竟然记错了自己的那躺班车，而且都是看着走的，幸亏后来还有一躺去广州的班车人没坐满，不然我都不知道怎么回广州了。年30时候下午，去看望了好久不见的同学，好几次答应去看她，这次终于兑现了偌言。她是我的小学同学，我叫金龙她叫金凤，据说我出生的时候姥姥说是开封(一代人里第一个男丁)，要找一个女的娘奶水，于是第一次是喝她娘的奶水。但她现在早已成家立室，而且还有个一岁多的baby，已经会走路喊人了，去她家还开玩笑说叫我哥哥不要叫叔叔...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-02-28 16:17:29.0</li>
				            <li>阅读(6700)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/104.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/103.aspx">2009年公司团圆饭</a></h2>
			            <!--<div class="date"><a href="">2010-02-07</a></div>-->
			            
			            <div class="summary">
			                
今天是农历的24，在我们那边是过小年，如今已是归心似箭，很想和自己的家人一起快快乐乐吃个团圆饭，然后在一起看春晚。就在昨天下午，我们公司也一起吃了个团圆饭，其实也是年会。
第一环节是各个部门上台，开始主管5分钟员工1分钟的09年度总结及新年展望的发言。没想到我还是那么的懦弱，连只有一分钟的台词都不知道要讲什么，无耐只有事先准备好草稿，发言的时候就对着念，完全就是在应付，感觉很无能的！发言稿如下：
大家好，我是彭金龙。时间匆匆而逝，还记得当时来公司的时候还历历在目，转眼间已经快一年了。在这个大家庭里，我学会了很多，也认知到了很多。在09年里，我参与过广佛项目，回想那段加班的日子，仍是亢奋不已。另外还参与了美酒、IBOX、建行等项目的开发，作为一名技术研发人员，我自知技术水平还有待提升，需要更多的历练，争取把工作快又好的完成。另外还需加强交流沟通能力，以及对客户需求理解能力等，同时不忘提升自己的学习能力，掌握更多方面的技能。最后，感谢大家陪我走过09年，是你们让我成长，让我更加的珍惜。
其中有一个人发言另我很感动，那就是何花，她说到商脉通的一些客户打电话过来，网站关闭访问不了，那种焦急的心情就像是在家
			            </div>
			            <div class="tags">标签：心情笔记 年会
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-02-07 16:32:49.0</li>
				            <li>阅读(7896)</li>
				            <li><a class="comment" title="共6条评论" href="/jonllen/breast/103.aspx#comment">评论(6)</a></li>
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
				            <li>阅读(6818)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/95.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(3439)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/earth-week-meeting.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(9276)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/83.aspx#comment">评论(1)</a></li>
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
				            <li>阅读(7955)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/80.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/74.aspx">国庆中秋假期感言</a></h2>
			            <!--<div class="date"><a href="">2009-10-09</a></div>-->
			            
			            <div class="summary">
			                结束了短短八天的国庆中秋假期，又回到广州继续开始忙碌的生活。在这几天回家的日子里还算Happy，参加了一个同学聚会，见到了几年未见的同学，帮弟弟过了一个二十岁的生日，然后又是爷爷的生日，好象很充实，又多了些记忆，看到家里一切熟悉的人和物，又多了一些的感慨，多了一份罗嗦。女人需要一双可以依靠的肩膀。一号中午坐上了回家的火车，我买到的是6号车厢的无座票，本原定是坐我一个姑姑的车回去，后来她因为有事要晚2天回去我便自己去买火车票回去，但因为那时候人很多早就买不到有座位的票，犹豫了一番后还是决定想去尝尝站八、九个小时回家滋味，因为我同学说他曾站了十多个小时到北京，我也想去试试，但我跟家里人说我是买的有座位的票，只是不想他们怕我累到而忧心。不过那天回家的人确实很多，刚开始火车上没有开空调，车道上的人却已经塞得满满，都动缠不得，憋在里面很闷热，像是在挤广州的工交车，那种滋味真不好受。那里还有很多人在埋怨，因为6号车厢本都是卧铺，但硬坐的也被安排到这节车厢来，最后导致的是下面的卧铺并坐5个人，中间的卧铺大部分变成了放行李的，上卧睡人，窗户旁边的座位也成了硬座，中见还有一部人是站在车道里...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-10-09 19:43:04.0</li>
				            <li>阅读(12602)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/74.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/73.aspx">国庆中秋双联欢，祝福我的祖国生日快乐，我也回家咯~~</a></h2>
			            <!--<div class="date"><a href="">2009-10-01</a></div>-->
			            
			            <div class="summary">
			                时光匆匆，中秋国庆如约而至。首先，祝福我的祖国60周年生日快乐，明天更加繁荣富强！虽然我只是一个小小的我，只有小小的力量，但每当我看到电视里面播出一些阅兵和激动人心的历史画面，我的心灵总能被触动，看到中国扬眉吐气的时候，总能激起我对祖国的热爱。所以下定决心换一个迎接国庆的博客样式风格，欢渡国庆，共渡中秋！但我并不会PS平面设计，那只能在网上找个国庆专题的风格模板了，google了一下发现蓝色理想里面晒的一个国庆专题的设计页面很不错，顺着找到了现在包好了的网站http://www.fjycw.com/2009zt/2009gq/，原版的把图片Copy了一份下来，版权归原公司所有。说到这次回家，行李倒没有很多，就一个书包的东西，记得去年过年回家的时候提了好几袋东西呢，买了一些东西送给爷爷奶奶说我乱花钱，这次回家没花钱买东西应该不会唠叨，就准备送爷爷奶奶一盒月饼，还是公司发的，呵呵，放在这里又赖得吃，又不用花钱买，干脆拿回去送给爷爷奶奶，不拿一点东西好象又不太好。除此之外还有红枚王蓝色硬装香烟2条，这个是爸叫我买的，一条送人一条留自己抽，好象我每次回去烟总是不能少的。还有Struts数据库项目开发宝典丛书一本，哈哈，这个我想在火车上漫漫8小时。。。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-10-01 00:29:37.0</li>
				            <li>阅读(9196)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/73.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/nianhui.aspx">时代财富9周年年庆</a></h2>
			            <!--<div class="date"><a href="">2009-09-24</a></div>-->
			            
			            <div class="summary">
			                6月4日，让我期待已久的时代财富年会终于到来，下午6：00点，我们乘做旅游大巴去火车站，踏上了去厦门鼓浪屿的旅程。晚上真的很激动，良久还没有睡者。我也自感到幸运，才入职3个月就碰上参加了公司的年庆盛会。经过13个多小时的车程于第二天早上就9：30到达厦门火车站，下火车后坐旅游大巴去了轮渡码头，坐船上鼓浪屿岛。一到海边，就感觉到了海水的淡淡的咸味扑鼻而来，而海边的风吹得凉爽的很，感觉好极了。上了鼓浪屿，已经是11：00点了，紧接着马上就召开了年庆大会。年会最主要的一个环节就是每个人要轮流上台演讲发言，就对自己的工作总结和对公司的提出建设性的意见，前面一些同事的发言都很精彩，而我第一次参加公司这么大的盛会都很紧张，而且事先我竟然没有做准备，最后还是吞吞吐吐的做了一下自我介绍，泛泛的说了几句敷衍了事，在这里BS一下我自己！年庆最后张总进行总结发言，她哭了，她说今年有可能不能来参加年会了，因为她的妈妈刚开始病的很严重，还好后来病情好多了。这么多年来，一直都是我的亲人在默默的支持着她，我敬爱的妈妈，我的先生 要是没有她们，我是不可能有今天的。张总几度说到哽咽...
			            </div>
			            <div class="tags">标签：心情笔记 时代财富,年会
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-24 23:44:34.0</li>
				            <li>阅读(16923)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/nianhui.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/61.aspx">小小仙人掌大大的力量，仙人掌有3条命？</a></h2>
			            <!--<div class="date"><a href="">2008-06-15</a></div>-->
			            
			            <div class="summary">
			                
有点伤心，帮别人代照顾的仙人掌死了。。。
今天是星期一，双休一回来就发现我的盆栽仙人掌死了，里面变成了一滩死水，上面的仙人掌已经发酶了，还发出很臭的味道。记得好像上周五好像还没事的，可能也是没察觉到吧。想了一下其实都是我自己的疏忽了，好像都是一个星期多没理过它了，也没浇过点水，我可怜的仙人掌啊。。。
最大的问题是这个仙人掌不是我的啦，是坐我旁边一个同事的，她还没正式毕业回学校去答辩去了，临走的时候拖我照顾好她的仙人掌，还交代说不要让它给死了，要死了就怎么怎么样，记得她以前还跟我开玩笑说如果它死了你偷偷的买买一盆新的回来不告诉我我也不会怪你的，没想到现在真的让她给说中了，现在好像她17号就会回来了，今天是15号了，还有1天的时间。没办法啦，只有去再买一盆新的赔给她了，希望真的不会被她知道，心里还是祈祷一下让她原谅我吧，我已经把原来装的那个盆子洗干净，今天晚上回去就重新买一盆装进去明天就带过来。
于当前晚上
晚上回来的时候跑到一个买花的店子里，还好有我要的那种仙人掌，小个的仙人球，由于我不要有盆子装好的现成的，店里的伙计帮我重新移植了一侏仙人掌到原来的那个盆子里面去。只有这样充一下数咯，看能
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2008-06-15 15:09:03.0</li>
				            <li>阅读(9666)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/61.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/58.aspx">亲临周笔畅广州签售会</a></h2>
			            <!--<div class="date"><a href="">2009-08-23</a></div>-->
			            
			            <div class="summary">
			                陪同学一起，第一次追新，并买一张签售专缉，第一次于明星面对面，并签名。

			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-23 09:16:06.0</li>
				            <li>阅读(9461)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/breast/58.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/57.aspx">走近Earth</a></h2>
			            <!--<div class="date"><a href="">2009-08-20</a></div>-->
			            
			            <div class="summary">
			                搬过技术部快2个星期了，最进一个星期都在写广佛的验收文档，实在写得无聊，进博客来娱乐八卦一番^_^!!!
哈哈，其实Earth是我的主管拉，我们都叫他地球，我搬到技术部就座在他的旁边了，其实我也蛮荣幸座在他的旁边，我想能和他学会到不少东东。不过搬到这里来这么久了，没跟他学到什么技术的东西，但发现他其实蛮有趣的，，，
其一，身材。胖乎乎的他有着魔鬼般的身材，一身桶圆桶圆的，头大大的，这几天剪了个和尚头，给人的感觉是那么的清凉，笑起来脸扁扁的，也蛮嘻哈，整个给人以一个像如来佛充满艺术的味道，真想去捏一把他那肥肥的脸，呵呵，不敢拉，他可是我主管呢~
贪睡，不知道肥胖一点点的人是不是都会有一点？今天中午过了午睡时间，发现他还在我旁边贪睡这没醒，康师傅从旁边都走过了几次，他突然撑起懒腰手拿起耳机指着我，看他眼睛还是红红的没睡醒样子，我还真不知道他要我做什么，什么意思？我只能当作他是要我帮他拿耳机了，接过他手里的耳机放在的屏栏上，然后他继续睡，约15分钟后，睡到自然醒，拿着毛巾去厕所里"清醒"了一番后，继续工作。
另外，后续挖掘中。。。

			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-20 14:58:23.0</li>
				            <li>阅读(8250)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/57.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/55.aspx">换换位</a></h2>
			            <!--<div class="date"><a href="">2009-08-12</a></div>-->
			            
			            <div class="summary">
			                在赖了几天后，我终于还是搬回位置坐到了技术部，在火星外边绕了一大圈，回归到了地球的旁边。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-12 13:00:07.0</li>
				            <li>阅读(8395)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/55.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/49.aspx">为了我的家人健康祈祷...</a></h2>
			            <!--<div class="date"><a href="">2009-08-01</a></div>-->
			            
			            <div class="summary">
			                
今天，我弟弟发了一张半脸照过来，满脸红色的痘痘，有些驼都很大个里面还灌白浓肿得很大个，我看了真的很心疼，然后看了他昨天晚上4点多睡不着用手机发了一篇日志到QQ空间上面来：
相当无语！想哭却哭不出来！ 如果一个人经历了太多挫折，还能咬紧牙关走下去吗？有时候 真想离开这个是非之地，甚至这个世界；因为这个世界太不公平了，令人喘不过气来！ 老天在考验我的心里承受吗？现在每天都睡不着 难受  
我能体会到他现在的心情，他现在不止脸上的痘很疼，而且心里更痛。他说他下个星期也会去厂上班了，就算他自己不怕他现在脸上的东西，别人见了也会叫他回去治疗的，我内心真为他担心啊，真的想要哭出来，想他这几年也是身体不好，又是脚长疖子又开刀刮过脚趾，那种痛苦我知道真的很难受，十指连心啊。那我时候我妈动手术那种表情我现在仍然还记得，那是种揪心的痛，我希望不会再有了，希望我的家人还有我自己都要好好的保重，不要生病，祈祷我的家人和朋友都身体健康，平安是福！AM...

			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-01 17:18:18.0</li>
				            <li>阅读(8169)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/49.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "/jonllen/breast/index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
                            <!--共47条记录-->
                            <a href='javascript:goToPage0(1)' title='转到第1页'>首页</a>
                            <a href='javascript:goToPage0(1)' title='转到第1页'>上一页</a>
                            <a href='javascript:goToPage0(1)' title='转到第1页'>1</a><font color='red'><strong>2</strong></font><a href='javascript:goToPage0(3)' title='转到第3页'>3</a>
                            <a href='javascript:goToPage0(3)' title='转到第3页'>下一页</a>
                            <a href='javascript:goToPage0(3)' title='转到第3页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='2' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/breast/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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
		    

<li><a href="/jonllen/work/162.aspx#comment"><b>justin</b>：你好，代码能给我发一份吗，学习用，谢谢了！</a></li>

<li><a href="/jonllen/work/164.aspx#comment"><b>oracle_cs</b>：您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？ 1607418266@qq.com</a></li>

<li><a href="/jonllen/work/164.aspx#comment"><b>oracle_cs</b>：您好，我最近也在研究国密这块，您上面的加密中用到了SM2CryptoServiceProvider，您能把这个实现发给我邮箱吗？ 1607418266@qq.com</a></li>

<li><a href="/jonllen/js/175.aspx#comment"><b>cstomcat</b>：您好，请问用js可以实现sm3算法吗？改造的难度大吗？</a></li>

<li><a href="/jonllen/js/175.aspx#comment"><b>cstomcat</b>：您好，请问用js可以实现sm3算法吗？改造的难度大吗？</a></li>

	    </ul>
    </div>
</div>
 
<div id="mod31" class="mod recent">
    <h4 class="head">最近发表</h4>
    <div class="cont">
	    <ul>

                    
		    <li><a href="/jonllen/breast/802.aspx">祝你情人节快乐</a>(2016-02-10)</li>
                    
		    <li><a href="/jonllen/work/800.aspx">2015年度工作总结</a>(2015-12-31)</li>
                    
		    <li><a href="/jonllen/travel/801.aspx">靖港古镇游</a>(2015-11-29)</li>
                    
		    <li><a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a>(2015-06-05)</li>
                    
		    <li><a href="/jonllen/js/178.aspx">JavaScript实现SM2算法加解密</a>(2014-10-28)</li>
                    
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
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(31865)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(25972)</li>
                    
		    <li><a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a>(23181)</li>
                    
		    <li><a href="/jonllen/aspnet/24.aspx">二次开发WinWebMail邮件系统接口 - 企业邮件服务器解决方案</a>(20362)</li>
                    
		    <li><a href="/jonllen/java/struts.aspx">Struts增删改查实例及源代码下载</a>(19891)</li>
                    
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