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
			            
			            <h2><a href="/jonllen/db/75.aspx">Asp.Net访问Access数据库注意事项</a></h2>
			            <!--<div class="date"><a href="">2009-10-11</a></div>-->
			            
			            <div class="summary">
			                博客上线了这么久，一直还是用的Access数据库，不过程序是采用了工厂模式，预定义好了业务接口，方便以后移植到其它数据库上来，不过以前还是使用sqlserver数据库多一点，这次使用Access数据库还是会碰到一些小问题，总体用起来还是很方便，每次备份数据库就直接从ftp上拉下来就是，感觉性能还行，不过这些可能都是建立在小数据量的范围下。Q1：Access连接字符怎么写？A1：Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|blog.mdb。说明：从.Net2.0开始MS开始有App_Data目录来专门存放数据文件，而对于连接字符串数据库的文件位置可以使用DataDirectory关键来表示它的物理路径，从而在获取连接字符串的时候不再需要使用Server.MapPath()转换。Q2：时间类型的字段如何处理？
A2：使用Convert.ToDateTime()进行显示的转换一次即可。说明：Access数据库的时间类型字段需要进行特殊的处理，不然会报错。对于使用OleDbParameter传递参数的时候应该这样来写：parms.Add(new OleDbParameter("postDate", Convert.ToDateTime(article.PostDate.ToString())));先把PostDate的日期类型ToString()再Convert成DateTime类型。 而对于使用sql语句的日期类型...
			            </div>
			            <div class="tags">标签：数据库 Access
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-10-11 20:57:25.0</li>
				            <li>阅读(12256)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/db/75.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(12566)</li>
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
				            <li>阅读(9185)</li>
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
				            <li>阅读(16909)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/nianhui.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/71.aspx">时代财富技术部Java选型基础培训草稿</a></h2>
			            <!--<div class="date"><a href="">2009-09-20</a></div>-->
			            
			            <div class="summary">
			                我真是一个很幸运的人，老天待我不薄啊，好象在我身边真能发生一些不可思议的事，让我体味。这个星期，我们总监康师傅开会正式宣布技术要向Java方向转型，当然.Net不能丢，一些能用.Net应付的还是用那个.Net的IBOX内容发布系统来做。那转型的主要原因就是因为我们的客户群体主要是政府部门，而这些政府部门目前大都是采用Java平台Linux服务器，因此公司.Net的主营产品会丢掉很多的单子。我不知道这对于我是不是一件好事，但我知道我能在工作上去学习研究Java技术了，我想二、三年前学的Java又能用上了，要能多会一门技术那可是不亦乐乎，在这个有限的青春时间里。公司转型Java后需要能用jsp对.net版的功能进行copy一份，就是做一个java版的.Net IBox系统，其实我还有一个小小的愿望，我希望用jsp做出来的IBox系统能支持兼容所有的浏览器，而不是只能在IE里面跑，样式没多大的问题都是前端开发包好页面的，主要是程序要用js脚本有一些兼容问题，其实在这个W3C大的规范标准下多写一句代码几乎就能兼容所有的浏览器了，我觉得这也是一个网页最基本的东西，但是我们目前正在开发的.Net版IBox系统却存在这个问题。废话不多说了...
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-20 22:48:43.0</li>
				            <li>阅读(10302)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/71.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/reflection/68.aspx">关于IE6的老掉牙select问题</a></h2>
			            <!--<div class="date"><a href="">2009-09-14</a></div>-->
			            
			            <div class="summary">
			                今天真的很'瞎'也，整整一个下午都没能解决一个问题，而且是一开始都没有明白需求，幸好做到半路上发现个问题问了下Earth，发现原来自己一直都没有明白要做什么？哎，悲哀！为什么我的沟通和理解能力这么差呢？怪不得现在还是一个人。。。其实是一个很小问题拉，算是css样式问题，在IE6里面select会覆盖遮挡在所有元素之上，现在有一个select，想要把它做成可选值又可手动输入值的，但是它又没有一个属性来标识可输入的功能，所有只能新加个text文本输入框，控制显示和隐藏，模拟可输入的select功能，但是这个功能竟然搞了我一下午，白拿工资了。。。需要实现的效果如下：自己输入 a项 b项   请选择选择值:代码如下...
			            </div>
			            <div class="tags">标签：三日必省吾身 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-14 22:36:58.0</li>
				            <li>阅读(11801)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/reflection/68.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a></h2>
			            <!--<div class="date"><a href="">2009-09-11</a></div>-->
			            
			            <div class="summary">
			                玩了tiny_mce在线编辑器好几个星期，今天终于差不多把所有的功能都给完成了，确切的说是把编辑器的插件功能完美的整合在我的博客里面，解决一些小的bug，这还得意于它本身是开源免费的，这里我实现的功能主要有：修改图片和多媒体文件上传和浏览功能；增加signature个性签名(关联博客)和insertcode插入代码(整合CodeHighlighter代码高亮显示)功能插件；修改编辑器内按下Ctrl S键save保存插件功能，使之支持Postback到服务器端并触发OnSave事件。修正编辑器内字体过小、设置编辑器不会自动移除div元素节点的等问题。起初我引用tiny_mce编辑器都是直接嵌入的脚本的，摸索了一番待完善所有功能后，当然就要把它做成.net的自定义控件了，方便每一个页面调用，下面我就结合在做自定义控件的时候说一下Tinymce编辑器。，可在线试试我的TinyMCE在线编辑器，先上自定义控件源代码...
			            </div>
			            <div class="tags">标签：Asp.Net TinyMce
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-11 23:32:22.0</li>
				            <li>阅读(31679)</li>
				            <li><a class="comment" title="共8条评论" href="/jonllen/aspnet/tinymce.aspx#comment">评论(8)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/css/65.aspx">FF内text-align:right无法对齐的问题</a></h2>
			            <!--<div class="date"><a href="">2009-09-07</a></div>-->
			            
			            <div class="summary">
			                在做我博客文章保存的时候当按下Ctrl+S使用Ajax请求服务器无刷新来保存，并在输入框的左下放提示返回信息，用的是一个相对定位，但是没有想到ff内却没有有问题，那个div好象不是display=block了，text-align:right;竟然右对齐不了，ie,谷歌浏览器里面都没有问题的，具体html代码如下：保存文章成功。为什么绿色边框的div里面的X不能右对齐呢？
			            </div>
			            <div class="tags">标签：CSS 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-07 21:54:26.0</li>
				            <li>阅读(10280)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/css/65.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/64.aspx">在线JavaScript编码和解码</a></h2>
			            <!--<div class="date"><a href="">2009-09-05</a></div>-->
			            
			            <div class="summary">
			                在线JavaScript编码和解码，整理一下JavaScript编码的一些方法实例，提供在线escape编码、unescape解码、encodeURIComponentUrl参数编码、decodeURIComponentUrl参数解码、encodeURIUrl地址编码、decodeURIUrl地址解码测试的小程序，使用escape编码能很好的解决JavaScript中文乱码，今天用TinyMce在线编辑器的时候发现的它的语言包里面的中文都是一些\u9F20开头格式的字符，后来经过验证原来这些中文字符都是经过escape编码后的，估计在读取的是再用unescape解码回来，不过tinymce语言包里面的是escape编码后把所有的%替换为了\，不知道它为什么要怎么做。关于escape、unescape、encodeURI、decodeURI、encodeURIComponent、decodeURIComponent这些编码函数使用的地方我这里就不在撰述了，网上一大把。

			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-05 14:04:02.0</li>
				            <li>阅读(15331)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/64.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/62.aspx">发布IBOX插件之LEAVE留言置标使用说明书</a></h2>
			            <!--<div class="date"><a href="">2009-09-01</a></div>-->
			            
			            <div class="summary">
			                留言置标IBOX：LEAVE，IBOX产品里第一个自己写的插件，使用说明如下：
程序集assembly：IBOX.Plugins.InterActive（属于互动插件），控件命名控件namespace：FortuneAge.IBOX_UC.Plugins，控件前缀IBOX。
语法：
Code highlighting produced by Actipro CodeHighlighter (freeware)http://www.CodeHighlighter.com/-->IBOX:Leave ShowResult="0或1" ShowSubmit="0或1" TopCount="提取前记录条数" PageSize="显示条数" /IBOX:Leave

置标属性说明：




属性


描述


类型


取值


值说明




SiteID


站点ID


数字


未指定


当前站点




大于0的整数


必须跟内容管理系统的站点ID一致,为0显示所有




TypeID


留言类型编号


数字


大于0的整数


必须跟留言类型列表里编号对应一致，为0列出当前站点下所有选择




PageSize


列表每页显示数


数字


大于0的整数


默认20条




TopCount


提取每页记录前条数


数字


大于0的整数


默认0，显示每页显示PageSize条



ShowResult
是否显示留言列表结果
数字
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-09-01 14:34:03.0</li>
				            <li>阅读(17369)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/62.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(9652)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/61.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/59.aspx">IIS虚拟目录调用主网站Bin内类库方法</a></h2>
			            <!--<div class="date"><a href="">2009-08-26</a></div>-->
			            
			            <div class="summary">
			                最近全力投入IBOX的开发，先是做了一个留言的Plugins互动插件，不过发现在插件内调用主站很是麻烦，但是可用.net的反射调用IBOX的主站类库的方法：
IBOX插件是一个独立网站作为IBOX主站的Plugin虚拟目录存在，调用主站Bin内类方法非常不方便，有时候不好和主站交互，如在插件内删除留言的操作我要在IBOX的主站内记录日志，但我又不想把dao、bean重新拷贝一份到插件内来，但发现使用反射可以完美的调用IBOX的主站内任一类库方法，具体实现是通过动态加载IBOX的主站类库程序，动态创建dao、bean类实例，动态调用其方法并可获得返回值，所以IBOX插件网站也能调用IBOX的主站IBOX_DB.dll、IBOX_DL.dll内任一方法，希望下次能用到。

			            </div>
			            <div class="tags">标签：Asp.Net 反射,IBOX
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-26 14:45:55.0</li>
				            <li>阅读(10678)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/aspnet/59.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(9446)</li>
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
				            <li>阅读(8243)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/57.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/56.aspx">软件开发规范—模块开发卷宗(GB8567——88)</a></h2>
			            <!--<div class="date"><a href="">2009-08-16</a></div>-->
			            
			            <div class="summary">
			                最近这个两个星期的工作都写广佛验收的相关文档，叫一个做程序的写这个东西可难为我了，Earth那时候是奸笑着对我说正好"锻炼一下"，由于之前很少这些东西，所以这一锻炼可是让我头都大了，可谓是绞尽脑汁，还不知道我写的那些东西过得关不，有时候我都不知道怎么组织好语句写通顺，左想右想都不是，还好有些能对着页面里一些帮助信息进行写。
其实，做软件开发是有那么一套国准可参照的，当然就是那些文档了，这里列出一下所有软件开发的规范文档：

操作手册
用户手册
软件质量保证计划
软件需求说明书
概要设计说明书
开发进度月报
测试计划文档
测试分析报告
数据库设计说明书
软件配置管理计划
模块开发卷宗
详细设计说明书
项目开发总结报告

我现在再做的东西是数据库设计说明书，两天前才写玩模块开发卷宗，那时候在网上找了一些事例不是很符合规范，而完全对着模块开发卷宗的模板去写真不知道里面要写什么，因为里面有太多概念性的东西都看不懂，在这里贴以下广佛都市网的模块开发卷宗，仅供参考。

广佛都市网
模块开发卷宗（GB856788）
2009年8月
广佛都市网模块开发卷宗（GB856788）....................................................
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-16 22:26:01.0</li>
				            <li>阅读(12007)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/56.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(8387)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/55.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/54.aspx">PowerDesigner使用(修改版)—时代财富技术部培训资料</a></h2>
			            <!--<div class="date"><a href="">2009-08-10</a></div>-->
			            
			            <div class="summary">
			                PowerDesigner使用
PowerDesigner是一种著名的CASE建摸工具，最开始为数据库建模设计，即物理模型(Physical Data Model)用于生成数据库表结构，还有面向对象模型(Object Oriented Model)，用于建立UML模型的结构，可以直接生成CS代码，还有其他的模型等等，不同的模型之间可以相互的转化。我觉得它最实用方便的功能是使用物理模型直接设计生成数据库，给我们对数据库的生成升级维护带来极大的方便，下面主要来讲一下它的物理模型设计。
1.使用PowerDesigner物理模型生成数据库
PowerDesigner工程是采用Workspace工作空间，一个工作空间可包含多个模型项目，每个模型项目对应一个数据库结构。打开PowerDesigner在File里New选择Physical Data Model(物理模型)，可在DBMS选项里面选择数据库的类型，新建立模型后PowerDesigner自动创建一个工作空间(Workspace)放在里面，然后模型下面默认会创建一个名PhysicalDiagram_1的物理图表区，这个其实就是用来区分数据库内某一模块的单元区域，我一般是把数据库内有关系的表放在同一块里面，如会员模块就叫MemberDiagrm里面放会员及其相关的表，其他模块就另外新建一个另外放在一起。浮在IDE右上方的Palette就是PowerDesigner里一些
			            </div>
			            <div class="tags">标签：工作 PowerDesigner,时代财富
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-08-10 10:21:16.0</li>
				            <li>阅读(15182)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/54.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(8163)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/49.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/48.aspx">由劳动合同所产生的一些胡思乱想...</a></h2>
			            <!--<div class="date"><a href="">2009-07-31</a></div>-->
			            
			            <div class="summary">
			                今天我拿回了和广州时代财富科技公司签的劳动合同，其实是前天就签好了的，过了2天忘记带回来了，刚开始看到的合同日期是2009到2011年2年，后来跟人事部的人说她说错了公司统一应该都是签3年的，所有最终我也是签了3年的合同。我进公司是3月9日，算一下到今天不只不觉已经在时候财富待了4个月20天了。在这不到5个月里面，我认识学习到了很多东西，也认识了一些很好的同事，能让我不断的在进步。不过想一想我如果真的在这个公司待上了3年，那3年后真不知道会变成怎样？待人处事会不会成熟很多，技术能不能上到架构师的级别呢？3年后我的工资是不是还只是和劳动合同上签的一样高呢？我竟然在胡思乱想这些问题。。。
其实我现在有一个小小的目标，就是每天只要能学习积累进步一点点，那么每年就可以跨出一大步，如果以工资薪酬为标准来衡量的话，我希望我每一年能比上一年的月薪至少高出1K，要是我真的能这样跨越10年的话，那我的收入就很可观了。虽然说我从工作起后第一年实现了快超出以前工资1K的目标，但我知道能坚持到最终目标不容易，因为最开始都会比较容易，而到后面将会越来越难。以我现在的表现在公司待一年后工资想多加1K估计不可能，因为现在连我自己都感觉现在...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-31 23:57:36.0</li>
				            <li>阅读(3489)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/48.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/47.aspx">loadScript和预载图片的JavaScript脚本</a></h2>
			            <!--<div class="date"><a href="">2009-07-24</a></div>-->
			            
			            <div class="summary">
			                动态加载自己JavaScript的Ajax请求脚本文件,使用Ajax发送请求...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-24 10:51:32.0</li>
				            <li>阅读(11391)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/47.aspx#comment">评论(0)</a></li>
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
                            <a href='javascript:goToPage0(5)' title='转到第5页'>上一页</a>
                            <a href='javascript:goToPage0(3)' title='转到第3页'>...</a><a href='javascript:goToPage0(4)' title='转到第4页'>4</a><a href='javascript:goToPage0(5)' title='转到第5页'>5</a><font color='red'><strong>6</strong></font><a href='javascript:goToPage0(7)' title='转到第7页'>...</a>
                            <a href='javascript:goToPage0(7)' title='转到第7页'>下一页</a>
                            <a href='javascript:goToPage0(8)' title='转到第8页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='6' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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