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
				            <li>阅读(3496)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/48.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/46.aspx">本世纪最罕见壮观的天象之一500年最长的"日全食"又怎样？</a></h2>
			            <!--<div class="date"><a href="">2009-07-22</a></div>-->
			            
			            <div class="summary">
			                
今天早上8点多，在公司上班的路上，就发现有很多路人在等看日食，广州是不到日全食的，只能看到0.778分的日偏食，刚出来的时候天色很蒙浓灰暗，本以为天公不做美看不到日食了，没想到就快到9点时候天空开晴，此时正好日偏食的时候，我也偷偷的瞄了几眼，发现太阳光真的好刺眼，但是又忍不好奇看，最后发现眼睛真的有很痛也~~
人们对这些罕见的自然壮观是非常报有好奇心的，也难怪，500年以来最长的日全食，我也有点后悔没能亲眼看完日全食整个过程，没能体会白天突然变成昼夜这一奇观，可能这辈子都没能有机会了。在网上看了一些视频直播，感慨万千，人类在浩瀚的宇宙面前是多么的渺小，无论你是高高在上的老板领导，还是办工室工作的白领，或是田地里工作的农民都会被大自然的这个壮观所吸引，大自然真的很伟大，世界真的很奇妙！这次在中国可观看到日全食达几个小时，这场美丽的泻后，大家各自回到自己的岗位，继续自己的工作。。。
地球还是要转，明天早上的太阳还是要从东方生起来。。。
于2009 7 22晚9 : 27

			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-22 21:12:08.0</li>
				            <li>阅读(8419)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/46.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/42.aspx"><<命中注定我爱你>>，我要当便利贴~~</a></h2>
			            <!--<div class="date"><a href="">2009-07-16</a></div>-->
			            
			            <div class="summary">
			                命中注定我爱你
这几天过得比较堕落，每天晚上都搞到二、三点才睡， 是因为我最近迷上一部电视连续剧命中注定我爱你，里面的女主角是一个很平凡的便利贴女孩陈欣怡，然后在游轮上巧遇到了她的白马王子纪存希，并且两人错误的发生了关系陈欣怡还怀孕了，最后嫁进了纪家，但是她并是从此就开始了幸福生活，反而是她恶梦的开始。。。
我知道这只是一部电视剧，在现实生活中不可能有这样的故事。在现实生活中真的有这样的便利贴女孩吗？如果有的话她的身边一定会有很多关心的人，将还会有很多的追求着；现实生活中真的会有这样的巧合吗？我觉得不太可能，这只是电视剧里面的编的一个美丽的故事。但无论如何，我还是被这个故事深深的感动过，昨天晚上我看到陈欣怡遭车祸流车，我看到哭了，掉了很多眼泪，可能我这个人是因为太感性容易被一个很小小故事所感动。因为我是多么的希望陈欣怡能和纪存希平安的生下他们的纪念品，最后他们一家人能穿上亲子装牵着纪念品的到公园里一起散步，过着最幸福的日子，因为我觉得这是这个故事最美好结局。但是事实总是与愿违，不然就没有这部电视剧后面的那些续集。
陈欣怡流产后回到薑母島，最后在Dylan的鼓励下去上海工作，经过2年的时间...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-16 09:06:17.0</li>
				            <li>阅读(9203)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/42.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/36.aspx">我太鲁莽，还小不懂事？</a></h2>
			            <!--<div class="date"><a href="">2009-07-06</a></div>-->
			            
			            <div class="summary">
			                
今天真的是太鲁莽了，今天中午出去吃饭的时候竟然又忘记是要推开公司的门，而是不经思考的去拉门，发出碰的一声弹回来，把那个铝和金的门槛又挤大了一个洞，当场还有很多同事都看见了，那时候真我真的很囧很尴尬，我也恨自己真是个猪头没长脑子。其实这次已经是发生了的第二次了，之前我也拉公司的大门把那铝和金的门槛戳了一个小洞，那次正好还被张总给看到了，后来转正的和张总谈话的时候她说，我像她家的小孩子一样，不经思索的拉门，发出砰的一声。。。
还有今天晚上出去剪头发，不只虚荣心作祟还是总的，竟然只奔到马路门口那个理发店里面去剪头发，那个理发店里面剪头发是最贵的，里面的店子洗吹剪都只要10元，而跑到那里去看最低要25元，犹豫了一下最后还是报着就多了那十几块钱但相信服务会更好的心态进去了，这倒算了。不过我到里面去剪头发最后买单是104元，快无语了吧，这是我性格的缺点，有点优柔寡断，没主见，被别人说点好话就被轻易的给说服了。整个事情是这样的：进理发店里面一个说的株洲的湖南老乡给剪发，本来打算剪一个25元的头发(一跟里面的10元相比我还是很心疼的)，但是他剪完说我这个发型不太好，问我要改变下不？我本来是推辞的，后面问了他推荐
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-06 22:28:29.0</li>
				            <li>阅读(3065)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/36.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/31.aspx">国王之死---悼念迈克尔.杰克逊</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                2009年6月26日，The King Of Pop，流行音乐之王迈克尔.杰克逊因为心脏病突发逝世，终年50岁。此前，他正准备复出，在伦敦O2体育场举行五十场演唱。200万张门票在4个小时内销售告罄，这场演唱会的名字叫《This Is It》，就是这样了。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 21:10:59.0</li>
				            <li>阅读(9040)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/31.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/25.aspx">2009新变化，惠海→时代财富→广佛都市网</a></h2>
			            <!--<div class="date"><a href="">2009-03-28</a></div>-->
			            
			            <div class="summary">
			                 在精神委靡的状态，无聊回到的博客里，做个记号(于佛山出差加班时)。
 在今年，其实还是有瞒多的变化，年初，我离开了我在广州工作的近一年的公司—惠海IT连锁， 要离开的时候那段时间确实是有点舍不得，毕竟在那里工作了那么久，每天大家都相处在一起，一起工作，去蓝与白吃饭，这里我要特别感谢我的经理xkp(netfoxer),在惠海他很照顾我，我也再他那里学了不少东西，对每个人也非常的好。不过我离开到现在好象没太多的感觉了，我辞职掉工作不久马上就面试进入了时代财富公司，它就在科韵路那边，离我住的地方的比以前公司更近了，刚进公司感觉还不错，做程序有蛮多的高手，气愤很浓烈，相信我能学到更多的东西，我想我也能胜任这份工作。不过刚进公司好象就给过别人不好的印象，哎，好象是还会有点曲折。。。
 以上写于佛山出差期间，以下续于回广州后2009.4.6。
 时代财富给我印象不好的就是一进公司就加班，哎，那短日子可是苦日子啊，每天好像没完没了的加班，度日如年啊！在公司大概加了一个多月的班，我就派到佛山客户那边去工作，想想以为出差就不会想公司那样加班了，可是去那边仍然也是没昼夜的加班啊，总共就去了一个星期，就只有一天晚上没有加班，说起那天蛮
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-03-28 22:11:10.0</li>
				            <li>阅读(8330)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/25.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/27.aspx">给张总的一封信(新员工培训后感悟)</a></h2>
			            <!--<div class="date"><a href="">2009-06-28</a></div>-->
			            
			            <div class="summary">
			                张总，您好！我是彭金龙，来自湖南湘潭，在公司技术研发部。开会那天我是最后一个做自我介绍的，这里是我再次的对您自我介绍，相信您这时已经记住我的名字了吧。开会那天我感觉您应该是没有记住我的吧，因为您在说到技术望着我们这边的时候，你只有提起光明的名字，而没有说起同样做技术就座在他旁边的我。
听了张总那2个小时的演讲，感触颇深，感谢您为我们倾心的演讲，让我们受益匪浅。我觉得您不单只是给我们在做新员工培训，而是教会我们一些做人的道理。我们确实还太年轻，还需要学习更多的东西，还需要在这个社会锻炼，还有很多道理需要自己在摸索里来验证，张总在您给我们的讲课里，很形象的告知我们很多道理，可能对我以后的道路都帮助很大，就像是小萍折腾了半天的问题叫小龙来可能一句话就能搞定，像捷径一样会让我们少走很多冤枉路。我希望我是真的听进去了，然后做得比说的好。人生活在这世上最大的快乐就是没有遗憾，当老的时候能有一些美好快乐的回忆，能回想以前做过的一些有意义的事，那是多么快乐的事情。
作为一名程序员，整天就是对着一堆英文字母打交道，操作一些机器语言代码，我觉得本身做程序的人可能会点死板些吧，不太会说话。我不知我算是那种死
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-06-28 16:44:37.0</li>
				            <li>阅读(3295)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/27.aspx#comment">评论(0)</a></li>
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
                            <a href='javascript:goToPage0(2)' title='转到第2页'>上一页</a>
                            <a href='javascript:goToPage0(1)' title='转到第1页'>1</a><a href='javascript:goToPage0(2)' title='转到第2页'>2</a><font color='red'><strong>3</strong></font>
                            
                            <a disabled>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='3' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/breast/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

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