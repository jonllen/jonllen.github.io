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
			            
			            <h2><a href="/jonllen/breast/139.aspx">你深藏在心里的那个期望，会在2011年实现。加油！</a></h2>
			            <!--<div class="date"><a href="">2011-02-18</a></div>-->
			            
			            <div class="summary">
			                新年来了，第一天上班，收到了很多个红包。张总特别的有心，为了给大家一点惊喜，还特意在每个红包里放了一张纸条，表达对大家的新年祝愿。其中我的纸条上写的是：你深藏在心里的那个期望，会在2011年实现。加油！
借张总的这句美好祝愿，说说自己的期望和目标，好象自己都没有认真的想过这些问题，我将来到到底想要拥有什么？我将来的事业需要发展到什么程度？我自己都没有一个清晰准确的回答，前几天说需要交一份个人目标和工作目标，于是我就简单写了两句：
个人目标
开心工作，快乐生活...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-02-18 21:01:15.0</li>
				            <li>阅读(7932)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/139.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/138.aspx">2010年时代财富公司团年饭</a></h2>
			            <!--<div class="date"><a href="">2011-01-21</a></div>-->
			            
			            <div class="summary">
			                今天是2011年1月21号，公司在下午2:30在南峰酒店举行了的团年饭，这是我第二次参加公司的年夜饭，同去年一样，每个员工都有1分钟的时间上台自我介绍和工作总结及展望，我还是有些紧张怕到时候不知道讲什么，所以同去年一样，今年也准备了发言稿。
1.感动 
今天有个人不得不提，那就是王册，本来她发言说得好好的，说到后面她就哭了，我们也是一次次为她鼓掌加油。我跟她是同一天进公司的，这么久了还第一次见到她哭，真的，平时见她都是大大咧咧的什么都不怕，这次也见她感性的那一面。其实我知道，相信她是在这两年里进步了不少，很多感慨，其中也经历过了一些难关，但最终还是走了过来。很佩服她的勇气，能跟我们来流露出自己心底里的那份感动，想说什么就说什么。
2.总结发言
3.颁奖
4.游戏和抽奖
5.醉了
			            </div>
			            <div class="tags">标签：心情笔记 年会
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-01-21 23:09:15.0</li>
				            <li>阅读(9289)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/breast/138.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/137.aspx">是谁在逼你跳槽？</a></h2>
			            <!--<div class="date"><a href="">2011-01-18</a></div>-->
			            
			            <div class="summary">
			                今天，有两个同事跟我说要离职了，我感觉不是很震惊，比较淡定。其实老实说，我心底里也是蠢蠢欲动。现在年底了，相信很多朋友都会为自己的前途考虑而选择跳槽，每个人的目标和理想不同，找到一个适合自己的定位、内心满足、开开心心的就好。
当然，每个人在不同的阶段都可能有不同的规划目标，人们的欲望也总是在不断提高而不能满足。每个人也会有种种跳槽的原因，跳槽是每个公司都会有自然现象，只不过频率不一样而已。
1.高压
2.成长
3.归属
4.叛逆
今天这篇文章实在是有感而发，一个是我的好朋友，一个是我认为很认真的一个人，实在是有点舍不得。今天不写我怕以后会把你们给忘记了，祝福你们，希望你们早日得到自己想要的一切！
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-01-18 23:41:42.0</li>
				            <li>阅读(8007)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/137.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/136.aspx">项目管理中的那些纠结事儿</a></h2>
			            <!--<div class="date"><a href="">2011-01-15</a></div>-->
			            
			            <div class="summary">
			                在我看来，项目经理除开做策划方案一些本身的工作外，其他的大部分时间都是在进行协调沟通和管理上。然而在他们光鲜的背后，其实是有着一些鲜为人知的纠结事儿。
1.魅力
2.需求
3.资源
4.责任
5.信任
6.辛酸
7.僵局
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-01-15 23:42:56.0</li>
				            <li>阅读(7989)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/136.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/135.aspx">2010年度工作总结</a></h2>
			            <!--<div class="date"><a href="">2011-01-01</a></div>-->
			            
			            <div class="summary">
			                今天已经是2011年的第1天，回过头看走过的2010年，虽然感觉过程辛苦坎坷，但在我的人生道理上却是前进了一大步，技术知识的累积，项目实践的经验，使我从原来一个稚嫩的小屁孩逐渐成长为稳重的大男孩，从以前的轻浮和莽撞到现在逐渐多了一份理性和荡然。今年大部分的时候是投入在项目实施上，另外还有公司产品的开发，此外还有写相关技术文档。
一、天河部落 类　　型：教育博客
二、IBOX 类　　型：富媒体内容管理平台
三、政协社情民意信息报送系统 类　　型：政务
四、缘中锈 类　　型：命理
五、梓元岗皮具网 类　　型：B2C
通过2010年的洗礼，相信我又坚强了很多，成长了很多。但在接下来的2011年里，我仍不能松懈，必须持之以恒的坚持下去。2010，我想说我今年并没有白干；2011，我期望新的一年里会更精彩。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-01-01 22:47:43.0</li>
				            <li>阅读(8583)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/work/135.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/134.aspx">网站开发常用优化</a></h2>
			            <!--<div class="date"><a href="">2010-12-26</a></div>-->
			            
			            <div class="summary">
			                网站优化有很多种，养成良好的编码习惯，平时注意知识点和经验的积累，是提升个人技术乃至网站技术含量的重要途径之一。
1.代码规范
2.编程思想
3.层次结构
4.框架技术
5.SQL优化
1）表结构优化
2）减少返回列
3）关联表优化
4）排序字段调整
5）分页查询优化
6）服务器调优
6.发布网站
			            </div>
			            <div class="tags">标签：Asp.Net SQL优化
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-12-26 12:22:54.0</li>
				            <li>阅读(8319)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/134.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/133.aspx">项目中的A、B、C、D、E角色</a></h2>
			            <!--<div class="date"><a href="">2010-11-27</a></div>-->
			            
			            <div class="summary">
			                今天是12.27广州亚运会的闭幕，广州又度过了一场激情盛会，身在广州我能够感受得到这座城市的美好，为之无私奉献的亚运志愿而感动，为之在赛场拼搏的运动键儿而鼓舞。今晚，在璀璨的烟火中，结束了这场盛会，广州亚运注定将在脑海里留下另人难忘的记忆。
昨天本是亚运会闭幕要放假一天，后来公司临时出个紧急通知规定正常上班，年假再多放一天补回来，好多人都说计划泡汤了，不过我能理解，首先又不是不放，而且年底到了很多项目要收尾，拿我手头上的工作来说可能加班都做不完。
昨天下午张总给我们做培训，其实是做一个游戏，一个关于项目团队沟通协作的游戏，蛮有意思的。我们分成几个小组，每个小组中分别有A、B、C、D、E这几中角色的人，他们的沟通规则如图所示。
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-11-27 23:20:06.0</li>
				            <li>阅读(8856)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/work/133.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/132.aspx">忙碌的工作</a></h2>
			            <!--<div class="date"><a href="">2010-11-21</a></div>-->
			            
			            <div class="summary">
			                生活的节奏：
最近的生活的节奏变得无序，被彻底的打乱。以前到晚上8点我绝对是饿得要吃饭，现在不知为什么有时候晚上8点不吃饭好象习以为常，有时候觉得自己手头上的工作就差一会儿就可以做完，谁知道时间也一会儿就过去了，但工作还没完。有时候心里会挂念着某些事，连出去玩也不敢。
发工资：
这个月的工资到15号如期发放，第一次拿着工资条看这么久，感觉这个月过得好不容易。以前觉得工作偶尔加班是正常的，但这两周不知不觉的常要加班了，其他项目还要来凑热闹，搞得我现在听加班有点反感，可能算是一种弥补吧。
祸不单行：
从到天河公园溜冰摔倒贴了2周膏药，到项目出现很多问题，再到前段时间看烟花脚趾被石头绊伤，好象都是杯具上演。不知道后面还有没有完，希望不要再来了。
			            </div>
			            <div class="tags">标签：心情笔记 天河部落
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-11-21 12:52:45.0</li>
				            <li>阅读(6585)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/132.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/131.aspx">天河部落揪着我的心</a></h2>
			            <!--<div class="date"><a href="">2010-10-31</a></div>-->
			            
			            <div class="summary">
			                这一周对于我来说是黑色的一星期，是进时代财富以来最揪心的一星期。从周一开始，天河部落就因庞大的数据未能先做好备份而心有余悸，接下来就是在心惊胆颤中整和Moodle系统，而最终上线后又问题不断，有些功能没有，有些数据不对，还有一些BUG。每想到用户反映说：“天河部落上不了，无法进行网络教研”、“没有附件功能，课件无法上传”等问题的时候，我心里就急得要跺脚，我深知这个影响的重要性。
这周我整个心都是悬在半空中，没有平静过！周五下班，和同事一起吃饭聊天，是这周中吃得最舒服的一餐；周六公司组织去南沙天后宫，是我这周中最放松的一天；周日早上睡到9点多，是我这周中睡得最充足的一天；而其他的大部分时间，我的心就像那跳动的CPU指针，七上八下，到100%后就要像死掉，窒息。。。
对于一个从今年初就开始接触了大半年的项目，我真的不好怎么找借口解释为什么还有这些问题的发生！项目经理和领导到客户那被挨骂，我知道现在说什么也无济于事，因为错误已经发生无法挽回。虽然领导说也不全是我的错，但我知道这些问题我要付大部分的责任，总结问题如下：
1.需求、
2.功能开发、
3.测试
			            </div>
			            <div class="tags">标签：工作 天河部落
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-10-31 22:17:56.0</li>
				            <li>阅读(7802)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/work/131.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/130.aspx">大杂烩&培训</a></h2>
			            <!--<div class="date"><a href="">2010-10-17</a></div>-->
			            
			            <div class="summary">
			                <ul>
<li>1.前言</li>
<li>2.泛型的应用</li>
<li>3.使用自定义属性</li>
<li>4.程序的解耦</li>
<li>4.1.面向接口设计</li>
<li>4.2.细化分解</li>
<li>4.3.多层结构</li>
<li>5.面向切面编程</li>
<li>6.结束语</li>
</ul>
			            </div>
			            <div class="tags">标签：工作 ORM框架
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-10-17 12:33:46.0</li>
				            <li>阅读(8185)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/130.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/129.aspx">写在2010.10.10</a></h2>
			            <!--<div class="date"><a href="">2010-10-10</a></div>-->
			            
			            <div class="summary">
			                国庆7天长假一晃就过去了，由于这次回家预定了武广高铁的车票，一路来回都很轻松，不再感觉到奔波劳累之苦。这次回家选择了沉默，没有主动去约朋友玩，而是大部分时间待在家里，感受家里的温馨，留意着身旁的一草一木，听爸妈、爷爷奶奶她们述说着家乡的人和事的变化。
今天是2010-10-10，很值得纪念的一天，希望也能成为我真正长大跨越的一天。改变未来，从当前开始，从足下行动！
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-10-10 10:10:10.0</li>
				            <li>阅读(6734)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/129.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/128.aspx">又是一年中秋国庆时</a></h2>
			            <!--<div class="date"><a href="">2010-09-23</a></div>-->
			            
			            <div class="summary">
			                时间过得真的很快，又是一年中秋国庆时。回头看看今年日子，比以往过得辛苦，心里头竟然有早点过完这个年头的想法。以前好象很少需要自己劝自己坚持住的，而今年却倍感莫名奇妙的压力，压抑在心里头，只不过我平时伪装做没事的样子。
家，每逢佳节倍思亲。家人，每时每刻牵动着游子的心。游子，无时不刻挂念着自己的家人。家，一个温馨的避风港，一个心灵的归宿。
多事之秋，我发现自己是个喜欢捕风捉影的人，遇到一点点小事都久久不能释怀。
成长了却还没长大，今年是成长的一年，不管是工作和还是生活，都有一些进步。也许，这个年龄段的我，正需要更多的工作经历、更多社会冷暖的体会、更多的意志磨砺，更多的学会如何做人。虽然有很多的辛酸，可能后面的远远不止如此，但人生必须在这些风风雨雨走过。
再过一个星期就国庆可以回家了，每次回家前都是归心似箭，可一回到家了呢，又没有想象中的那么喜悦，感觉也仅仅是如此。在离开前的最后一个晚上，然而又被感珍惜，每一年都是如此轮回。
			            </div>
			            <div class="tags">标签：心情笔记 国庆中秋
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-09-23 18:07:08.0</li>
				            <li>阅读(6750)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/128.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/127.aspx">showModalDialog、showModelessDialog和open异同</a></h2>
			            <!--<div class="date"><a href="">2010-08-08</a></div>-->
			            
			            <div class="summary">
			                1.showModalDialog()
大部分浏览器已支持showModalDialog函数，我们叫它为模态对话框，它有个好处是打开之后会始终保持输入焦点，在关闭它之前父窗体是无法获取焦点，这可以阻塞用户的操作等待返回
2.showModelessDialog()
showModelessDialog方法打开的窗体为非模态对话框，与showModalDialog模态对话框不同的是用户可以随便切换输入焦点，因此它不会阻塞线程等待返回结果
3.window.open()
4.兼容性
5.window.open()模拟showModalDialog()
6.小结
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-08-08 12:37:01.0</li>
				            <li>阅读(9584)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/127.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/126.aspx">如何管理好下属？你目前还有什么不足之处？以后将如何改善？</a></h2>
			            <!--<div class="date"><a href="">2010-08-01</a></div>-->
			            
			            <div class="summary">
			                (前言)
这周五参加了公司的周例会，应杨总的要求，参会人需对标题所述内容写总结一篇，我虽然没有当过管理者，但还是可以从下属的角度看，认为一个管理着应该要怎么样？于是便出此文。
一、如何管理好自己的下属？
1.传帮带
2.信任
3.鼓励
4.人格魅力
5.X理论
6.Y理论
二、你目前还有什么不足之处？
1.自控力
2.孤僻
3.专业技能
4.胆小
三、以后将如何改善？
1.毅力
2.沟通
3.学习
4.锻炼
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-08-01 17:53:24.0</li>
				            <li>阅读(10531)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/126.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/125.aspx">我的ORM（二）——兼容不同的数据库</a></h2>
			            <!--<div class="date"><a href="">2010-07-06</a></div>-->
			            
			            <div class="summary">
			                今天，我自己的第一个ORM框架终于上线了，既感自豪，又深之很知其不完善，还有很多地方需要改进，只能日后慢慢修正。
我博客是使用类似PetShop框架开发，但于之不同的是采用了ORM框架，简化底层的数据访问，并实现跨数据库的访问。PetShop是提供了业务逻辑接口，并针对SQL Server和Oracle各自单独实现，但其实大部分都是那些DML操作，且不同的数据库的SQL语法大都相同，因此可利用它们的相同之处重用，即使用ORM来兼容各种数据库的访问，或是说ORM底层自动判断数据库类型再使用不同语法特性来实现，这便是ORM框架最重要的作用之一。
基于ADO.Net，各种主流数据库的访问得以支持实现，Access可使用OleDb，SQL Server使用SqlClient，Oracle使用OracleClient，而MySql使用MySql.Data开源库，且ADO框架提供了良好的接口，如要提供对其他数据库的支持只需实现ADO接口。当然，在我的ORM里为了更好的封装，我也定义了一些接口...
			            </div>
			            <div class="tags">标签：Asp.Net ORM框架
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-07-06 22:27:02.0</li>
				            <li>阅读(9319)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/125.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/123.aspx">我的ORM（一）——重复造轮子</a></h2>
			            <!--<div class="date"><a href="">2010-07-01</a></div>-->
			            
			            <div class="summary">
			                ORM在我们平时项目里是必不可少的，也是最重要的系统架构之一，它提供对数据访问的底层实现，比较出名的有Java里的Hibernate、.Net里的NHibernate和Linq，这些都是很成熟的ORM框架，今天我要说的是我的ORM，这当然不能和前面说的那些ORM比，这里仅当自己造轮子学习。
			            </div>
			            <div class="tags">标签：Asp.Net ORM框架
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-07-01 23:36:21.0</li>
				            <li>阅读(9638)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/123.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/db/124.aspx">SQL性能优化</a></h2>
			            <!--<div class="date"><a href="">2010-06-27</a></div>-->
			            
			            <div class="summary">
			                在做天河部落博客系统的时候，遇到了一个这样的SQL问题，博客首页处于列表模式的时候，需要显示博主每个栏目的前十篇文章，之前是根据栏目ID一个个查询出来，由于栏目可能还有子栏目，因此使用多个栏目OR的方式，在程序里拼接好再执行，然而这些SQL语句却存在效率问题...
			            </div>
			            <div class="tags">标签：数据库 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-06-27 17:32:42.0</li>
				            <li>阅读(7544)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/db/124.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/122.aspx">Write Less，Do More!</a></h2>
			            <!--<div class="date"><a href="">2010-07-01</a></div>-->
			            
			            <div class="summary">
			                一、前言
二、复杂问题简单化
1.如何获取最优的解决方案？
1）参考同类型的项目或解决方案
2）对比多种解决方案
2.追求简单而不简略的解决方案
3.上报领导来解决问题
三、沟通
四、结束语
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-07-01 00:05:02.0</li>
				            <li>阅读(8495)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/122.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


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
				            <li>阅读(6636)</li>
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
				            <li>阅读(8417)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/120.aspx#comment">评论(1)</a></li>
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
                            <a href='javascript:goToPage0(2)' title='转到第2页'>上一页</a>
                            <a href='javascript:goToPage0(1)' title='转到第1页'>1</a><a href='javascript:goToPage0(2)' title='转到第2页'>2</a><font color='red'><strong>3</strong></font><a href='javascript:goToPage0(4)' title='转到第4页'>...</a>
                            <a href='javascript:goToPage0(4)' title='转到第4页'>下一页</a>
                            <a href='javascript:goToPage0(8)' title='转到第8页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='3' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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