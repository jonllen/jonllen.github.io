<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	心情闪存 - 金龙博客
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
	    <h3>心情闪存</h3>
	    <h4>我的心情笔记</h4>
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
		        var url = "/plugin/web/getArticleArchive.do?coluidpath=581&colutype=6";		        		        
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
                    
		    <li><a href="http://www.applezqp.com" title="老平同志，高妹。" target="_blank">applezqp</a></li>
                    
		    <li><a href="http://www.thjy.org" title="天河部落教育博客" target="_blank">天河部落</a></li>
                    
		    <li><a href="http://weibo.com/zjj" title="时代财富张静君的微博" target="_blank">张静君</a></li>
                    
		    <li><a href="http://www.fortuneage.com" title="广州网站建设" target="_blank">时代财富</a></li>
                    
		</ul>
	</div>
</div>
 
</div>

	<div class="siderMiddle">
	    <div class="content column column2">
            
            	
		<div class="position">
		    <strong>当前位置：</strong>
	            <a href="/">首页</a>
	            > 
		    心情闪存
            
		</div>

    <div class="listmode twitter">
        <div class="item">
            <div class="head">
                <img src="/styles/index/css/default/images/mood.png" onerror="this.parentNode.removeChild(this)" alt="My Mood" />
                <div class="title">
                    <h3>心情闪存</h3>
                    <h4>我的心情笔记</h4>
                </div>
            </div>
            <hr size="1" />
            <ul class="list">
                
                        <li>
                            不得不承认，我还需要锻炼，特别是人际交往。<br />
                            <span class="date">2013-08-18 15:50:16</span>
                        </li>
                
                        <li>
                            只有自己有所作为了,才是对亲人最大的安慰.<br />
                            <span class="date">2013-08-10 09:56:30</span>
                        </li>
                
                        <li>
                            命运会很公平，失去学着珍惜，在乎无悔付出，徘徊让人坚定！<br />
                            <span class="date">2013-08-01 22:46:50</span>
                        </li>
                
                        <li>
                            坚定信念，努力付出！<br />
                            <span class="date">2013-07-14 21:59:02</span>
                        </li>
                
                        <li>
                            爷爷加油!<br />
                            <span class="date">2013-06-30 23:29:49</span>
                        </li>
                
                        <li>
                            大爱无疆，患难见真情。雅安加油！<br />
                            <span class="date">2013-04-27 09:53:12</span>
                        </li>
                
                        <li>
                            当大伯了.<br />
                            <span class="date">2013-03-01 21:36:53</span>
                        </li>
                
                        <li>
                            自己都不坚定怎么让别人相信你！<br />
                            <span class="date">2012-12-22 23:28:15</span>
                        </li>
                
                        <li>
                            生活原本很多感动，只是不曾用心发现。<br />
                            <span class="date">2012-12-08 00:11:26</span>
                        </li>
                
                        <li>
                            静心  修心<br />
                            <span class="date">2012-11-27 22:22:20</span>
                        </li>
                
                        <li>
                            犹豫不决的事要么不做，要做就坚定信念全力以赴。<br />
                            <span class="date">2012-11-22 22:18:24</span>
                        </li>
                
                        <li>
                            弟弟结婚了，挺感动的.<br />
                            <span class="date">2012-10-24 19:44:04</span>
                        </li>
                
                        <li>
                            寂寞因为想念，戒了就好！<br />
                            <span class="date">2012-10-11 02:48:27</span>
                        </li>
                
                        <li>
                            改变自己，发奋图强。<br />
                            <span class="date">2012-09-29 20:10:54</span>
                        </li>
                
                        <li>
                            懂得珍惜，幸福就在身边。<br />
                            <span class="date">2012-09-14 14:16:59</span>
                        </li>
                
                        <li>
                            不能养成加班的坏习惯。<br />
                            <span class="date">2012-09-11 22:41:58</span>
                        </li>
                
                        <li>
                            坚定信念，“撒哈泼”真爱无敌！<br />
                            <span class="date">2012-09-09 14:45:07</span>
                        </li>
                
                        <li>
                            我回来了~<br />
                            <span class="date">2012-03-07 17:39:19</span>
                        </li>
                
                        <li>
                            终于选择了离开。<br />
                            <span class="date">2012-02-26 18:10:00</span>
                        </li>
                
                        <li>
                            差点哭出来，要坚强！<br />
                            <span class="date">2011-11-25 21:02:39</span>
                        </li>
                
                        <li>
                            昨天去了加拿大花园游泳,喝了好多水啊～<br />
                            <span class="date">2011-07-31 13:15:01</span>
                        </li>
                
                        <li>
                            特别的日子，正忙~<br />
                            <span class="date">2011-11-11 11:11:11</span>
                        </li>
                
                        <li>
                            “老板”今日开始搬拿东西啦~<br />
                            <span class="date">2011-09-24 21:16:21</span>
                        </li>
                
                        <li>
                            已买票~<br />
                            <span class="date">2011-09-21 23:05:51</span>
                        </li>
                
                        <li>
                            工作就像感情一样,可以撕心裂肺,没付出就没有结果!<br />
                            <span class="date">2011-09-16 21:58:59</span>
                        </li>
                
                        <li>
                            爷爷，你要身体健康好起来~<br />
                            <span class="date">2011-09-10 14:14:58</span>
                        </li>
                
                        <li>
                            笔记本系统死机几次，郁闷~<br />
                            <span class="date">2011-09-06 23:24:54</span>
                        </li>
                
                        <li>
                            管理需要把控关键节点阶段.<br />
                            <span class="date">2011-09-02 23:11:21</span>
                        </li>
                
                        <li>
                            天气凉了,中午打瞌睡过头~<br />
                            <span class="date">2011-08-26 22:32:25</span>
                        </li>
                
                        <li>
                            第一次参加投标，还是被砖家问到有点乱了阵脚。<br />
                            <span class="date">2011-08-23 23:41:05</span>
                        </li>
                
                        <li>
                            敬酒也要有思路~<br />
                            <span class="date">2011-08-19 23:54:31</span>
                        </li>
                
                        <li>
                            再聚又是三年<br />
                            <span class="date">2011-08-14 11:39:26</span>
                        </li>
                
                        <li>
                            每逢佳节倍思亲<br />
                            <span class="date">2011-08-06 18:20:42</span>
                        </li>
                
                        <li>
                            管&理<br />
                            <span class="date">2011-08-03 22:01:32</span>
                        </li>
                
                        <li>
                            心平气和~<br />
                            <span class="date">2011-07-22 22:58:11</span>
                        </li>
                
                        <li>
                            被“侵权”啦!<br />
                            <span class="date">2011-07-21 21:51:53</span>
                        </li>
                
                        <li>
                            偶尔意外?<br />
                            <span class="date">2011-07-20 21:50:51</span>
                        </li>
                
                        <li>
                            出监理通知啦,项目阿项目~<br />
                            <span class="date">2011-07-12 23:23:53</span>
                        </li>
                
                        <li>
                            今天印出来了我的第一张名片.<br />
                            <span class="date">2011-07-08 23:30:27</span>
                        </li>
                
                        <li>
                            没动机单纯就是没觉悟。2 years，jonllen.com<br />
                            <span class="date">2011-06-28 00:00:00</span>
                        </li>
                
                        <li>
                            ZX微博议政:看来真的要玩微博咯?<br />
                            <span class="date">2011-06-27 22:14:56</span>
                        </li>
                
                        <li>
                            网站终于又开通啦...<br />
                            <span class="date">2011-06-18 19:32:46</span>
                        </li>
                
                        <li>
                            昨天公司聚餐喝了些红酒肚子好胀啊！<br />
                            <span class="date">2011-06-11 15:03:39</span>
                        </li>
                
                        <li>
                            台山下川岛之旅~<br />
                            <span class="date">2011-06-03 13:00:20</span>
                        </li>
                
                        <li>
                            受任于危难之际，担心迟早被吊。<br />
                            <span class="date">2011-04-22 23:28:53</span>
                        </li>
                
                        <li>
                            细节决定成败，凡事不能大意。<br />
                            <span class="date">2011-04-09 18:39:28</span>
                        </li>
                
                        <li>
                            愚人节不愚<br />
                            <span class="date">2011-04-01 20:41:30</span>
                        </li>
                
                        <li>
                            季度活动，龙眼洞森林公园一游。<br />
                            <span class="date">2011-03-26 23:20:58</span>
                        </li>
                
                        <li>
                            是圆则圆，是方则方，是与不是并不重要，做好自己无愧于心。<br />
                            <span class="date">2011-03-20 21:38:24</span>
                        </li>
                
                        <li>
                            没有意外<br />
                            <span class="date">2011-03-19 23:34:44</span>
                        </li>
                
                        <li>
                            工作的意义在于为社会创建价值，体现自我价值。<br />
                            <span class="date">2011-03-19 12:47:51</span>
                        </li>
                
                        <li>
                            关键第四号<br />
                            <span class="date">2011-03-11 19:45:00</span>
                        </li>
                
                        <li>
                            日本地震海啸，祈祷~<br />
                            <span class="date">2011-03-11 13:46:38</span>
                        </li>
                
                        <li>
                            趁现在还没被抄,赶紧努力工作...<br />
                            <span class="date">2011-03-09 11:21:55</span>
                        </li>
                
                        <li>
                            大学城溜冰，又堕落了一回~<br />
                            <span class="date">2011-03-05 01:54:01</span>
                        </li>
                
                        <li>
                            见或不见？<br />
                            <span class="date">2011-02-28 19:56:28</span>
                        </li>
                
                        <li>
                            目标，期望...<br />
                            <span class="date">2011-02-27 22:35:14</span>
                        </li>
                
                        <li>
                            有心栽花花不开，无心插柳柳成荫~<br />
                            <span class="date">2011-02-22 21:46:17</span>
                        </li>
                
                        <li>
                            技术部溜冰大聚餐...<br />
                            <span class="date">2011-02-19 23:02:16</span>
                        </li>
                
                        <li>
                            今天手机收到别人帮我冲值成功的提示短信，以为自己中头彩了，不一会儿又收到短信，说交易已取消，真是空欢喜一场，天下果然没有掉下来的馅饼。<br />
                            <span class="date">2011-02-17 20:59:42</span>
                        </li>
                
                        <li>
                            上班啦~<br />
                            <span class="date">2011-02-13 22:32:12</span>
                        </li>
                
                        <li>
                            生活无不艰难的选择,平凡而伟大,简单而不简略...<br />
                            <span class="date">2011-02-08 11:13:30</span>
                        </li>
                
                        <li>
                            安全到家啦...  Happy 兔 Year~<br />
                            <span class="date">2011-01-30 15:06:14</span>
                        </li>
                
                        <li>
                            重要的不是结果，而是过程。<br />
                            <span class="date">2011-01-28 19:38:47</span>
                        </li>
                
                        <li>
                            买了件大衣，准备回家过冬。。。<br />
                            <span class="date">2011-01-23 15:25:23</span>
                        </li>
                
                        <li>
                            给力、争气~<br />
                            <span class="date">2011-01-18 23:42:14</span>
                        </li>
                
                        <li>
                            一旦下海，就难以再靠岸了。<br />
                            <span class="date">2011-01-15 23:48:38</span>
                        </li>
                
                        <li>
                            佛山酒店水疗纯玩一天~<br />
                            <span class="date">2011-01-08 22:23:41</span>
                        </li>
                
                        <li>
                            本性顽劣~<br />
                            <span class="date">2011-01-06 12:58:52</span>
                        </li>
                
                        <li>
                            新年好~<br />
                            <span class="date">2011-01-02 15:56:17</span>
                        </li>
                
                        <li>
                            荣幸，遗憾，慰藉。<br />
                            <span class="date">2010-12-29 21:24:26</span>
                        </li>
                
                        <li>
                            剩蛋快乐~<br />
                            <span class="date">2010-12-25 17:34:10</span>
                        </li>
                
                        <li>
                            平安夜<br />
                            <span class="date">2010-12-24 23:53:42</span>
                        </li>
                
                        <li>
                            当有问题时及时向上级汇报，如果等到问题已发生就只有挨批。<br />
                            <span class="date">2010-12-23 23:29:44</span>
                        </li>
                
                        <li>
                            亚残运会闭幕，他们一样精彩！<br />
                            <span class="date">2010-12-19 22:40:08</span>
                        </li>
                
                        <li>
                            我什么时候这么的自我和见外呢？<br />
                            <span class="date">2010-12-16 20:41:02</span>
                        </li>
                
                        <li>
                            今天广州下起了雨，温度降了几度，湘潭还下起了入冬来的第一场雪。<br />
                            <span class="date">2010-12-15 20:14:56</span>
                        </li>
                
                        <li>
                            跑到楼顶想看双子座流星雨，发现神马也没有。。。<br />
                            <span class="date">2010-12-14 21:08:23</span>
                        </li>
                
                        <li>
                            积极指导好于批评教诲~<br />
                            <span class="date">2010-12-10 19:48:58</span>
                        </li>
                
                        <li>
                            微笑，面对一切。<br />
                            <span class="date">2010-12-04 13:30:58</span>
                        </li>
                
                        <li>
                            半年没打过篮球了，还没热身就不行了。<br />
                            <span class="date">2010-11-28 22:35:49</span>
                        </li>
                
                        <li>
                            一个多月没听过音乐，愿变成童话故事里的天使守护你。<br />
                            <span class="date">2010-11-26 22:35:12</span>
                        </li>
                
                        <li>
                            天河部落使我越来越轻浮？<br />
                            <span class="date">2010-11-16 20:53:45</span>
                        </li>
                
                        <li>
                            不为自己的错误找借口，只为解决问题找方法。<br />
                            <span class="date">2010-11-09 23:40:02</span>
                        </li>
                
                        <li>
                            360vsQQ：愤怒让人失去理智，只有尊重别人才会被别人尊重，霸道不得民心。<br />
                            <span class="date">2010-11-05 22:31:35</span>
                        </li>
                
                        <li>
                            南沙天后宫一日游。<br />
                            <span class="date">2010-10-30 20:58:14</span>
                        </li>
                
                        <li>
                            如何对比自己强的人不会感到压力？是自己给自己压力了？还是虚荣心在作祟？<br />
                            <span class="date">2010-10-30 20:55:06</span>
                        </li>
                
                        <li>
                            从没有如此揪结过，整周心都悬在半空中，没有平静过！<br />
                            <span class="date">2010-10-30 00:03:06</span>
                        </li>
                
                        <li>
                            天河部落部署上线第1天，在机房待1天，备份不成遭鄙视。<br />
                            <span class="date">2010-10-25 20:02:26</span>
                        </li>
                
                        <li>
                            今天溜冰摔了2交，还出血了，55555~<br />
                            <span class="date">2010-10-17 20:06:09</span>
                        </li>
                
                        <li>
                            重阳~<br />
                            <span class="date">2010-10-15 22:37:53</span>
                        </li>
                
                        <li>
                            10.10.10<br />
                            <span class="date">2010-10-10 18:31:06</span>
                        </li>
                
                        <li>
                            回来了~<br />
                            <span class="date">2010-10-07 19:35:15</span>
                        </li>
                
                        <li>
                            回家咯：）<br />
                            <span class="date">2010-09-30 09:19:45</span>
                        </li>
                
                        <li>
                            鎴戠洰鍓嶅敮涓€鐨勭鐮佸彧鏈夐潚鏄ワ紒<br />
                            <span class="date">2010-09-03 23:08:50</span>
                        </li>
                
                        <li>
                            没有做不到，只有想不到。<br />
                            <span class="date">2010-09-18 10:13:50</span>
                        </li>
                
                        <li>
                            感恩！<br />
                            <span class="date">2010-09-08 21:34:49</span>
                        </li>
                
                        <li>
                            脾气还是那么臭~`<br />
                            <span class="date">2010-09-05 23:15:03</span>
                        </li>
                
                        <li>
                            宽容是种美德，认错是种态度！<br />
                            <span class="date">2010-09-03 23:08:50</span>
                        </li>
                
                        <li>
                            纠结的九月~`<br />
                            <span class="date">2010-09-01 20:49:58</span>
                        </li>
                
                        <li>
                            哭泣：并不是示弱，而是种痛的发泄。<br />
                            <span class="date">2010-08-27 21:36:49</span>
                        </li>
                
                        <li>
                            vmlinuz-2.6.18-194.el5看作vmlinuz-2.6.18-194.e15，因1个单词之差导致grld引导找不到文件，这个问题竟然让我头大了2天...<br />
                            <span class="date">2010-08-25 23:48:41</span>
                        </li>
                
                        <li>
                            半路忙活，惊喜殊遇，曰好好干！<br />
                            <span class="date">2010-08-17 21:09:46</span>
                        </li>
                
                        <li>
                            七夕:第一次当"甲方"参加项目验收.<br />
                            <span class="date">2010-08-16 14:38:21</span>
                        </li>
                
                        <li>
                            哀悼舟曲遇难同胞（2010.8.7 22:00）。<br />
                            <span class="date">2010-08-15 14:04:04</span>
                        </li>
                
                        <li>
                            三国95完：看历史几代帝王，感慨人生如梦。<br />
                            <span class="date">2010-08-15 04:00:28</span>
                        </li>
                
                        <li>
                            为什么？劣根未除？<br />
                            <span class="date">2010-08-12 12:55:56</span>
                        </li>
                
                        <li>
                            三国72：关羽一世忠勇，最后被东吴所杀。<br />
                            <span class="date">2010-08-06 21:11:18</span>
                        </li>
                
                        <li>
                            男女混租时代开始.<br />
                            <span class="date">2010-07-31 23:35:58</span>
                        </li>
                
                        <li>
                            该走的还是要走~`<br />
                            <span class="date">2010-07-30 22:02:56</span>
                        </li>
                
                        <li>
                            三国57：周瑜一代名将，壮志未酬身先死。<br />
                            <span class="date">2010-07-29 19:53:18</span>
                        </li>
                
                        <li>
                            你努力了吗？努力了！但还不够，成功往往在于再努力一点点！<br />
                            <span class="date">2010-07-20 20:45:27</span>
                        </li>
                
                        <li>
                            三国30：官渡之战曹操大败袁军，陆续攻下冀州，袁绍最后吐血身亡。<br />
                            <span class="date">2010-07-19 21:19:39</span>
                        </li>
                
                        <li>
                            三国42：赤壁之战，曹操大败！诸葛亮料事如神，关羽念旧情，放曹操逃生。<br />
                            <span class="date">2010-07-22 20:53:40</span>
                        </li>
                
                        <li>
                            诸葛亮神机妙算，草船借箭。<br />
                            <span class="date">2010-07-22 00:19:25</span>
                        </li>
                
                        <li>
                            刘备三顾茅庐，请诸葛亮出山。孙策被仇家暗剑所杀，孙权继承江东大业。<br />
                            <span class="date">2010-07-21 00:27:37</span>
                        </li>
                
                        <li>
                            三国27：关羽过五关斩六将，忠义于刘备。<br />
                            <span class="date">2010-07-17 23:10:30</span>
                        </li>
                
                        <li>
                            曹操放虎归山，纵刘备丢徐州。<br />
                            <span class="date">2010-07-16 22:03:22</span>
                        </li>
                
                        <li>
                            一大早就杯具了~<br />
                            <span class="date">2010-07-16 08:57:30</span>
                        </li>
                
                        <li>
                            三国18：曹操攻下小沛，杀吕布、陈宫。<br />
                            <span class="date">2010-07-14 19:43:28</span>
                        </li>
                
                        <li>
                            三国17：曹操挟天子以另令侯，离间刘备和吕布，夺下徐州，虎视中原。<br />
                            <span class="date">2010-07-13 23:10:08</span>
                        </li>
                
                        <li>
                            三国10：吕布杀死董卓，王允最后一招不慎，被残余西凉军攻破长安，以身殉国。吕布带兵南退，终和貂禅在一起。<br />
                            <span class="date">2010-07-12 21:21:09</span>
                        </li>
                
                        <li>
                            三国7：刘表假意言和，半路伏击，杀死孙坚。其子孙权年方9岁，智勇双全，担当使者以俘虏赎回其父尸骨。<br />
                            <span class="date">2010-07-11 23:42:32</span>
                        </li>
                
                        <li>
                            隔天一个项目启动会~`<br />
                            <span class="date">2010-07-08 18:52:16</span>
                        </li>
                
                        <li>
                            难熬的酷暑。<br />
                            <span class="date">2010-07-05 23:01:51</span>
                        </li>
                
                        <li>
                            每次被换座位都有一种被流放的感觉，想家！<br />
                            <span class="date">2010-07-02 19:55:45</span>
                        </li>
                
                        <li>
                            2010年的变化是那么的快。。。<br />
                            <span class="date">2010-07-01 18:59:03</span>
                        </li>
                
                        <li>
                            <span style="display:none">王册：我怕以后走不出这公司，所以要加倍努力学习。</span><br />
                            <span class="date">2010-06-30 20:29:14</span>
                        </li>
                
                        <li>
                            昨天用错误的版本更新了网站,后果很严重~<br />
                            <span class="date">2010-06-29 19:02:34</span>
                        </li>
                
                        <li>
                            今天又错误的评估了工作量~<br />
                            <span class="date">2010-06-28 17:56:51</span>
                        </li>
                
                        <li>
                            再聚散伙饭<br />
                            <span class="date">2010-06-23 22:06:09</span>
                        </li>
                
                        <li>
                            世界杯进行中...(心浮气躁)<br />
                            <span class="date">2010-06-22 13:32:36</span>
                        </li>
                
                        <li>
                            父亲节：才发觉父亲已有很多白发了。<br />
                            <span class="date">2010-06-20 20:45:43</span>
                        </li>
                
                        <li>
                            又被“抓”了一次，最后要走时的一刻松懈，带来的是不好印象。<br />
                            <span class="date">2010-06-18 19:05:42</span>
                        </li>
                
                        <li>
                            人不可冒像，海水不可斗量。<br />
                            <span class="date">2010-06-18 18:55:36</span>
                        </li>
                
                        <li>
                            广州这天气好闷热.<br />
                            <span class="date">2010-06-17 17:20:39</span>
                        </li>
                
                        <li>
                            侥幸评上公司5月份先进员工，晚上喝酒敬张总不知道祝酒词，锻炼...<br />
                            <span class="date">2010-06-11 21:41:20</span>
                        </li>
                
                        <li>
                            FortuneAge十周年庆典，6月4日晚鸣泉居<br />
                            <span class="date">2010-06-04 19:00:00</span>
                        </li>
                
                        <li>
                            增城白水寨一游。。。<br />
                            <span class="date">2010-06-05 20:07:07</span>
                        </li>
                
                        <li>
                            公司十周年宴会的前一天...<br />
                            <span class="date">2010-06-03 16:34:39</span>
                        </li>
                
                        <li>
                            六·一儿童节来了...<br />
                            <span class="date">2010-06-01 16:17:31</span>
                        </li>
                
                        <li>
                            心情很低落...<br />
                            <span class="date">2010-05-31 10:58:56</span>
                        </li>
                
                        <li>
                            寂寞是一个人的狂欢，不要耐不住寂寞...<br />
                            <span class="date">2010-05-30 14:32:20</span>
                        </li>
                
                        <li>
                            第22个破蛋日...<br />
                            <span class="date">2010-05-29 18:26:51</span>
                        </li>
                
                        <li>
                            开通了Google AdSense...<br />
                            <span class="date">2010-05-27 22:52:18</span>
                        </li>
                
                        <li>
                            我相信你也可以，只要你能敢于去做。一年后，我一定要超过你。<br />
                            <span class="date">2010-05-27 22:37:50</span>
                        </li>
                
                        <li>
                            最后的晚餐：鸟儿翅膀硬了迟早会飞走，除开落地生根。<br />
                            <span class="date">2010-05-27 22:36:09</span>
                        </li>
                
                        <li>
                            淡定、从容。<br />
                            <span class="date">2010-05-27 13:27:37</span>
                        </li>
                
                        <li>
                            又一天...<br />
                            <span class="date">2010-05-25 10:12:24</span>
                        </li>
                
                        <li>
                            炫耀只会自取其辱.<br />
                            <span class="date">2010-05-24 09:24:52</span>
                        </li>
                
                        <li>
                            今日回公司加班，写需求说明书用例。(安利)<br />
                            <span class="date">2010-05-23 19:23:12</span>
                        </li>
                
                        <li>
                            软考结束，心里没底啊~<br />
                            <span class="date">2010-05-22 20:37:56</span>
                        </li>
                
                        <li>
                            呃，原来今天是520...<br />
                            <span class="date">2010-05-20 20:22:40</span>
                        </li>
                
                        <li>
                            小强不再~<br />
                            <span class="date">2010-05-19 21:11:34</span>
                        </li>
                
                        <li>
                            头大了一整天，快要崩溃了。(安利)<br />
                            <span class="date">2010-05-18 19:59:07</span>
                        </li>
                
                        <li>
                            这周被文档洗脑了，估计脑细胞要si不少...<br />
                            <span class="date">2010-05-17 20:33:11</span>
                        </li>
                
                        <li>
                            老爷爷的阅历告诉我们：凡事只有先苦后甜。<br />
                            <span class="date">2010-05-16 18:33:46</span>
                        </li>
                
                        <li>
                            写CMMI3的文档到头大，形式真的有那么重要吗？<br />
                            <span class="date">2010-05-14 20:17:32</span>
                        </li>
                
                        <li>
                            两天就可以打乱你的生物钟，看错时间早来公司一个小时…<br />
                            <span class="date">2010-05-13 08:11:20</span>
                        </li>
                
                        <li>
                            看书考试，最后几天冲刺。<br />
                            <span class="date">2010-05-11 09:55:33</span>
                        </li>
                
                        <li>
                            母亲节，妈妈您辛苦了！<br />
                            <span class="date">2010-05-09 17:43:39</span>
                        </li>
                
                        <li>
                            周会、月会、年会堆在一起来了<br />
                            <span class="date">2010-05-06 13:14:11</span>
                        </li>
                
                        <li>
                            压力和效率共存...<br />
                            <span class="date">2010-05-05 19:27:33</span>
                        </li>
                
                        <li>
                            早上7点多发现有人在窗前走动，亚运面子工程施工搞到人睡不着，所以很早就来公司了。<br />
                            <span class="date">2010-05-04 08:50:46</span>
                        </li>
                
                        <li>
                            五一三天一恍就过了。。。<br />
                            <span class="date">2010-05-03 20:44:53</span>
                        </li>
                
                        <li>
                            世博开幕，Hello World！！！<br />
                            <span class="date">2010-04-30 22:00:58</span>
                        </li>
                
                        <li>
                            我只能接受表扬不能接受批评?<br />
                            <span class="date">2010-04-28 14:46:05</span>
                        </li>
                
                        <li>
                            修改IBOX搞到头大...<br />
                            <span class="date">2010-04-27 20:29:01</span>
                        </li>
                
                        <li>
                            今天公司体检，健康是根本。<br />
                            <span class="date">2010-04-24 10:21:07</span>
                        </li>
                
                        <li>
                            地震无情，人间有爱（青海玉树7.1级地震，2010年4月14日7时49分）<br />
                            <span class="date">2010-04-20 22:46:55</span>
                        </li>
                
                        <li>
                            被压抑住的心情~<br />
                            <span class="date">2010-04-19 19:51:21</span>
                        </li>
                
                        <li>
                            完成系统邮件配置、发送邮件和评论回复通知功能。(svn:143)<br />
                            <span class="date">2010-04-17 21:43:38</span>
                        </li>
                
                        <li>
                            偶遇阿姨~<br />
                            <span class="date">2010-04-17 21:35:00</span>
                        </li>
                
                        <li>
                            时间是沙，磨灭的是激情。<br />
                            <span class="date">2010-04-16 09:22:27</span>
                        </li>
                
                        <li>
                            莫名奇妙的感觉，叫疯哥不应？<br />
                            <span class="date">2010-04-14 22:43:31</span>
                        </li>
                
                        <li>
                            可恶，还是只会当逃兵。<br />
                            <span class="date">2010-04-11 11:41:25</span>
                        </li>
                
                        <li>
                            今日上午龙洞森林公园一游~<br />
                            <span class="date">2010-04-10 16:14:26</span>
                        </li>
                
                        <li>
                            才发现：当一个人感伤的时候，听什么歌都觉的好听！<br />
                            <span class="date">2010-04-09 18:45:40</span>
                        </li>
                
                        <li>
                            生存是很残酷的，有困难并不重要，重要的是积极的面对。<br />
                            <span class="date">2010-04-07 20:30:31</span>
                        </li>
                
                        <li>
                            不以物喜,不以己悲!<br />
                            <span class="date">2010-04-07 09:56:18</span>
                        </li>
                
                        <li>
                            哈哈，又更新博客拉~<br />
                            <span class="date">2010-04-05 16:39:28</span>
                        </li>
                
                        <li>
                            今天很开心，康师傅请我们技术部大本营的吃虾火锅，算是对我们这一个多月来加班的慰问餐吧，这而先谢谢康师傅了~<br />
                            <span class="date">2010-04-01 23:20:26</span>
                        </li>
                
                        <li>
                            天河部落，路漫漫其修远兮，吾将加班而探索。<br />
                            <span class="date">2010-03-31 20:43:47</span>
                        </li>
                
                        <li>
                            天上银河，群星部落。天河部落，一个基于BLOG技术的教学研究平台，一条联结同仁、教师、学生、家庭、社会的绿色通道，诞生于2005年2月23日。<br />
                            <span class="date">2010-03-27 14:42:50</span>
                        </li>
                
                        <li>
                            www.hnonl.com终于又解封了。<br />
                            <span class="date">2010-03-26 22:03:32</span>
                        </li>
                
                        <li>
                            累~(天河部落)<br />
                            <span class="date">2010-03-23 20:30:16</span>
                        </li>
                
                        <li>
                            即使生活是一场很大的冒险，我也要勇敢的坚持走下去；即使生活到处充满了杯具，我也做上品的青花瓷。<br />
                            <span class="date">2010-03-22 09:16:20</span>
                        </li>
                
                        <li>
                            杯具了,不知道为什么有时候会面无表情,一定要克服!<br />
                            <span class="date">2010-03-18 13:15:42</span>
                        </li>
                
                        <li>
                            又搬回到6楼坐,听到熟悉的打下班点铃声~<br />
                            <span class="date">2010-03-17 17:59:27</span>
                        </li>
                
                        <li>
                            顺利更新完博客个性化功能~<br />
                            <span class="date">2010-03-16 23:43:05</span>
                        </li>
                
                        <li>
                            完成了博客个性化功能定制~ (svn134-svn136)<br />
                            <span class="date">2010-03-14 15:19:34</span>
                        </li>
                
                        <li>
                            第二个加班到22:00(天河部落)<br />
                            <span class="date">2010-03-16 21:54:17</span>
                        </li>
                
                        <li>
                            平淡的幸福(进入时代财富1周年)…<br />
                            <span class="date">2010-03-10 20:38:39</span>
                        </li>
                
                        <li>
                            没想到广州三月份还这么冷！今天又被天河部落给加班了~<br />
                            <span class="date">2010-03-09 21:04:08</span>
                        </li>
                
                        <li>
                            回到原点，简单就好。<br />
                            <span class="date">2010-03-06 17:42:00</span>
                        </li>
                
                        <li>
                            压力产生自自己的虚荣心.<br />
                            <span class="date">2010-03-04 09:51:41</span>
                        </li>
                
                        <li>
                            今天累死了~<br />
                            <span class="date">2010-03-01 19:53:52</span>
                        </li>
                
                        <li>
                            元宵节吃汤圆(泡汤)<br />
                            <span class="date">2010-02-28 12:59:40</span>
                        </li>
                
                        <li>
                            晚上加班到10点(天河部落)<br />
                            <span class="date">2010-02-23 22:57:53</span>
                        </li>
                
                        <li>
                            继续忙碌的工作~<br />
                            <span class="date">2010-02-23 12:31:00</span>
                        </li>
                
            </ul>
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