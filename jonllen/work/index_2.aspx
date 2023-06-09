<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	工作 - 金龙博客
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
		    
		    <strong>工作</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

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
			            
			            <h2><a href="/jonllen/work/35.aspx">我的工作记录</a></h2>
			            <!--<div class="date"><a href="">2009-07-06</a></div>-->
			            
			            <div class="summary">
			                我的工作记录
			            </div>
			            <div class="tags">标签：工作 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-06 16:57:58.0</li>
				            <li>阅读(9797)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/work/35.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "/jonllen/work/index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
                            <!--共37条记录-->
                            <a href='javascript:goToPage0(1)' title='转到第1页'>首页</a>
                            <a href='javascript:goToPage0(1)' title='转到第1页'>上一页</a>
                            <a href='javascript:goToPage0(1)' title='转到第1页'>1</a><font color='red'><strong>2</strong></font>
                            
                            <a disabled>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='2' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/work/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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