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
			            
			            <h2><a href="/jonllen/work/119.aspx">2010上半年系统集成项目管理工程师软考试题分析</a></h2>
			            <!--<div class="date"><a href="">2010-05-22</a></div>-->
			            
			            <div class="summary">
			                今天结束了系统集成项目管理工程师的考试，心情很鸡动，从去年就开始买书准备筹备考试，练兵百日，终于到试金的这一天了，上午75道选择题共75分，考得一般般，下午5大道题共75分，考得不好，心理完成没底，~~_~~
下午之所有完全没底的原因是有很多概念题，另外还有一些填ABCD选项题也都不确定，以为（主观希望）会考一个项目活动网络图结果没考，为了记录这次考试，以备后续复习使用（希望不要再复考了），对部分有记忆的试题和答案进行分析，按章节进行归类。
1.信息化基础知识
2.信息系统服务管理
3.信息系统集成专业技术知识
4.项目管理一般知识
5.立项管理
6.项目整体管理
7.项目范围管理
8.项目进度管理
9.项目成本管理
10.项目质量管理
11.项目人力资源管理
12.项目沟通管理
13.项目合同管理
14.项目采购管理
15.信息（文档）和配置管理
16.变更管理
17.信息系统安全管理
18.项目风险管理
19.项目收尾管理
20.知识产权管理
21.法律法规和标准规范
22.职业道德规范
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-05-22 22:09:09.0</li>
				            <li>阅读(10189)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/work/119.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/menu.aspx">几种形式的JavaScript树结构菜单</a></h2>
			            <!--<div class="date"><a href="">2010-05-09</a></div>-->
			            
			            <div class="summary">
			                今天我主要讲3种不同展示的JavaScript树结构菜单，分别是悬浮层树(Tree)、右键菜单树(ContextMenu)和节点树(TreeMenu)，目前都支持无限级层次。
			            </div>
			            <div class="tags">标签：JavaScript js,menu
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-05-09 17:17:55.0</li>
				            <li>阅读(11612)</li>
				            <li><a class="comment" title="共4条评论" href="/jonllen/js/menu.aspx#comment">评论(4)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/117.aspx">有趣的IE判断</a></h2>
			            <!--<div class="date"><a href="">2010-04-26</a></div>-->
			            
			            <div class="summary">
			                var ie = document.all;
在以前，如果单只是判断为IE浏览器使用document.all，它返回是文档所有元素数组，可根据数组下标或元素id、name索引元素。这里注意ff等其他非ie浏览器里并不是完全不支持document.all，在quirks模式下使用document.all.id仍然可以获取元素，只不过document.all不能被探知仍然返回false而已。
var ie = !+'\v1';
这是一个仅仅需要7bytes的ie判断，判定借助于IE不支持\v垂直制表符。\v在正则里匹配一个垂直制表符，而在IE里不支持'\v1'被认做为'v1'，而其他浏览器则为'1'，再使用+强制转换为数字，这时IE里就为NaN而其他浏览器则为数字1，最后再加上!强值转换为Boolean类型，此时候IE里就是true而其他浏览器就是false了。
测试：alert('\v1')(ie:v1,others:1)；alert(+'\v1')(ie:NaN,others:1)；alert(!+'\v1')(ie:true,others:false)；
var ie = !+[1,];
今天在逛园子的时候，发现另外一位童孩全世界最短的IE判定真是强淫，利用了IE与标准浏览器在处理数组的toString方法的差异判定，对于标准游览器，如果数组里面最后一个字符为逗号，JS引擎会自动剔除它，而IE则不会。原来至少需要7bytes，而在今年的1月8日被一个俄国人打破了世界记录，仅仅需
			            </div>
			            <div class="tags">标签：JavaScript ie
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-04-26 22:01:22.0</li>
				            <li>阅读(9942)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/117.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/116.aspx">Moodle系统整合方案</a></h2>
			            <!--<div class="date"><a href="">2010-04-24</a></div>-->
			            
			            <div class="summary">
			                一、项目背景
原有Moodle系统环境：Linux debian + Apache/2.2.9 + PHP Version 5.2.6 + mysql 5.0
新天河部落系统环境 ：Win2003 + IIS(.Net) + SqlServer2005
二、项目需求
根据天河部落优化合同(1209) (附件3)要求，对天河部落和天河Moodle进行整合，实现统一登录通行证功能，内容如下：
为达到一次注册多站访问的效果，拟通过统一登录通行证的方法实现，即天河Moodle使用天河部落数据库中的用户表。
根据Moodle所提供的身份验证方法，有效的结合天河部落现有用户数据，建议选用天河Moodle直接使用天河部落的数据库。该方法使用一个外部数据库来检验用户名和密码是否有效。如果是一个新帐号，该帐号其它字段的信息将一起复制到本系统中。
用户在天河Moodle注册，直接转跳到天河部落注册。
用户在天河Moodle登录，系统会在Moodle的用户数据表中查找是否存在该授权用户；若无，则链接到天河部落用户数据表查找；在天河部落用户数据表检查到该用户，则将该用户信息导入到Moodle的用户数据表；在天河部落用户数据表也没有该用户数据，则不允许登录。
			            </div>
			            <div class="tags">标签：工作 moodle
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-04-24 11:38:22.0</li>
				            <li>阅读(10718)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/116.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/115.aspx">Apache2.2+PHP5.2.13配置Moodle1.9.8+SQL2005</a></h2>
			            <!--<div class="date"><a href="">2010-04-13</a></div>-->
			            
			            <div class="summary">
			                由于最近工作的关系，需要研究Moodle系统，它是一个线上学习的教学平台，是一个PHP的免费开源项目，目前Windows下的最新版是Moodle 1.9.8，推荐使用MySql数据库，毕竟PHP+MySQL组合一起会更佳，但由于我目前还在MS的.Net阵营，所以期待使用熟悉的MSSQL数据库，这样也能跟现有的.Net系统进行很好的整合，并有利于以后的维护。配置好PHP运行环境...
			            </div>
			            <div class="tags">标签：工作 Moodle
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-04-13 22:39:52.0</li>
				            <li>阅读(9964)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/115.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(7004)</li>
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
				            <li>阅读(8579)</li>
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
				            <li>阅读(7269)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/112.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/111.aspx">天河部落网站升级改版工作</a></h2>
			            <!--<div class="date"><a href="">2010-03-27</a></div>-->
			            
			            <div class="summary">
			                最近满脑子都是天河部落，接收这一工作已有一个多月的时间，下周就要正式上线了，目前还在紧锣密鼓测试修改之中，预计安排的工作如下：
2010年03月24日：完成数据迁移程序测试。
2010年03月25日：完成数据迁移程序测试问题调整及第一轮内部集成测试。
2010年03月29日：完成第一轮内部集成测试问题调整及第二轮内部集成测试。
2010年04月01日：完成第二轮内部集成测试问题调整。
2010年04月02日：完成搭建外网测试环境，下载天河部落截止至3月31日的正式数据，运行数据迁移脚本，将数据迁移至外网测试服务器。
2010年04月03日：完成部署系统至外网测试服务器，新版天河部落测试上线。
不过此次工作比较特殊，由于之前的程序有些地方设计得不太合理，一些历史遗留问题全部都要修正，加上原天河部落网站资源数据量庞大，所以此次升级工作有点棘手。
			            </div>
			            <div class="tags">标签：工作 天河部落
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-03-27 14:30:43.0</li>
				            <li>阅读(8549)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/work/111.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/it/109.aspx">谷歌今日宣布退出中国内地</a></h2>
			            <!--<div class="date"><a href="">2010-03-23</a></div>-->
			            
			            <div class="summary">
			                Google谷歌于北京时间2010年3月23日凌晨将搜索服务有中国内地转至香港。这就意味着GOOGLE.cn的搜索业务正式离开了中国大陆市场。中国已经申明，任何终止审查的举动都是违反本地法律的行为，但并未表示Google中国员工有否潜在责任。据称，谷歌中国的员工向其它科技公司递交简历，许多人才也随之流失到中国搜索引擎巨头百度。
			            </div>
			            <div class="tags">标签：业界 google
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-03-23 20:12:06.0</li>
				            <li>阅读(6957)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/it/109.aspx#comment">评论(0)</a></li>
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
				            <li>阅读(6697)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/108.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/107.aspx">博客个性化定制(2)-实现类似iGoogle首页功能</a></h2>
			            <!--<div class="date"><a href="">2010-03-21</a></div>-->
			            
			            <div class="summary">
			                继上一篇博客个性化定制功能后，今天我又花了足足一天时间，实现了使用js拖拽定制模块功能。主要包括三大块功能：1.拖拽模块；2.计算坐标位置；3.完成拖拽，保存当前布局位置。
			            </div>
			            <div class="tags">标签：JavaScript 拖拽,博客个性化
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-03-21 00:07:24.0</li>
				            <li>阅读(12459)</li>
				            <li><a class="comment" title="共8条评论" href="/jonllen/js/107.aspx#comment">评论(8)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/aspnet/106.aspx">博客个性化定制功能</a></h2>
			            <!--<div class="date"><a href="">2010-03-16</a></div>-->
			            
			            <div class="summary">
			                最近在忙几个事，工作上做天河部落的升级改版，绕有兴致的做博客的个性化功能，以前我的博客也有几个样式模板，但是模块没有定制，昨天顺便就把我博客的个性化定制功能实现了，对于Asp.Net的博客个性化定制功能的方法总结如下：1.简单的切换css样式文件；2.切换博客的MasterPage.master母版页；3.动态加载ascx控件模块；4.使用微软的WebParts个性化部件。
			            </div>
			            <div class="tags">标签：Asp.Net 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-03-16 23:24:43.0</li>
				            <li>阅读(12467)</li>
				            <li><a class="comment" title="共4条评论" href="/jonllen/aspnet/106.aspx#comment">评论(4)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/work/105.aspx">杨总谈话</a></h2>
			            <!--<div class="date"><a href="">2010-03-03</a></div>-->
			            
			            <div class="summary">
			                今天下午5：30，我们技术部门的所有员工进行开会，杨总第一次和我们技术部的人员开部门会议，我们每个人都要进行一、二分钟的工作汇报总结发言，之后再是杨总的对我们总结发言。杨总谈话充满激情，但又不是空虚脱离现实，短短几个小故事，教会我们大家如何来成功。以前一直对一个公司的副总没有概念，今天杨总亲口跟我们说他以前是做职业经理的，年薪30万，而今又来到了时代财富，并投资做了公司股东，因为想亲手把时代财富带大成个一流的公司...
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-03-03 21:34:02.0</li>
				            <li>阅读(7799)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/work/105.aspx#comment">评论(2)</a></li>
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
				            <li>阅读(6689)</li>
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
				            <li>阅读(7870)</li>
				            <li><a class="comment" title="共6条评论" href="/jonllen/breast/103.aspx#comment">评论(6)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/java/102.aspx">Java和.Net三层架构和MVC</a></h2>
			            <!--<div class="date"><a href="">2010-01-30</a></div>-->
			            
			            <div class="summary">
			                这几天好象发生了很多事情，好象有些憋气，感觉很多事都不顺心，竟然连跑路的想法都有了，也许这就是生活，大大小小总会有那么些的磨砺吧。不管怎么样，都归结自己不够强大。通过最近一段时间的学习，深刻的认识到以前所学知识的局限性。在使用Java的Spring框架的时候，认知到了一些新的编程思想，同时也对它强大的功能为之折服。对比之前编程方式，总结如下：
1.深入的了解面向对象编程;
2.面向接口编程，依赖注入接口的实例;
3.三层架构表现层(MVC)、业务逻辑层、持久层;
4.使用观察着模式、面向切面(AOP)编程。
			            </div>
			            <div class="tags">标签：Java MVC
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-30 16:55:29.0</li>
				            <li>阅读(13115)</li>
				            <li><a class="comment" title="共4条评论" href="/jonllen/java/102.aspx#comment">评论(4)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/101.aspx">使用Google地图API搜索功能</a></h2>
			            <!--<div class="date"><a href="">2010-01-24</a></div>-->
			            
			            <div class="summary">
			                由于工作关系，最近这两天研究了下Google地图API，要实现地图位置搜索功能，显示搜索结果并能在地图上标记下来，刚开始还考虑使用51ditu，出于搜索关键字分词等方面考虑，最后还是决定使用Google地图，一直也都是那么的崇拜谷歌的大神，这次就来体验一翻~
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2010-01-24 02:08:14.0</li>
				            <li>阅读(14093)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/js/101.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>


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
				            <li title="">posted@ 2010-01-06 19:59:48.0</li>
				            <li>阅读(12093)</li>
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
				            <li title="">posted@ 2010-01-05 21:11:14.0</li>
				            <li>阅读(7711)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/work/99.aspx#comment">评论(1)</a></li>
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
                            <a href='javascript:goToPage0(3)' title='转到第3页'>上一页</a>
                            <a href='javascript:goToPage0(3)' title='转到第3页'>...</a><font color='red'><strong>4</strong></font><a href='javascript:goToPage0(5)' title='转到第5页'>5</a><a href='javascript:goToPage0(6)' title='转到第6页'>6</a><a href='javascript:goToPage0(7)' title='转到第7页'>...</a>
                            <a href='javascript:goToPage0(5)' title='转到第5页'>下一页</a>
                            <a href='javascript:goToPage0(8)' title='转到第8页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='4' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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