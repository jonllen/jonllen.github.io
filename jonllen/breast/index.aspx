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
			            
			            <h2><a href="/jonllen/breast/802.aspx">祝你情人节快乐</a></h2>
			            <!--<div class="date"><a href="">2016-02-10</a></div>-->
			            
			            <div class="summary">
			                初次相识是十多年前，她是我个老妹的闺蜜，在我读初中时不同学校，我们写信联系。那个年代还是用不需要邮政条码的信封，我大概在读高中时就没写过了，中间没有怎么联系，她后来在家那边工作，而我做计算机去了广北，直到我老妹结婚生孩子，我们见了面但没怎么打招呼，后来她说要跟我介绍女朋友给我，我没有理。已经过了十多年了，当年写信的那个照大头贴的女孩已摇身变成大姑娘，她说都快认不出当年那个照大头贴女孩是她...
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2016-02-10 12:24:26.0</li>
				            <li>阅读(1)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/802.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/177.aspx">2014年国庆</a></h2>
			            <!--<div class="date"><a href="">2014-10-04</a></div>-->
			            
			            <div class="summary">
			                最近这段时间，感觉特么的不顺，国庆回湘潭家里打车，的士司机不打表记程，说好了价到了又乱加价，真的让我见识到湘潭的士真的很黑心，说他还要回句没人要你坐很不爽，以后不打表的士尽量不要坐了。国庆十一那天，本来准备去娄底参加个很好的朋友结婚的，结果只有当天下午的车了，准备好了的红包硬是没有送出去，感觉对不住人呀。
十月三日，家里去喝喜酒，新人都是家附近的，新郎的家里条件虽然不是特别好，但这天都彼此洋溢着幸福。婚礼只是在家里简单的请了一位主婚人，很简单的结婚仪式，交换戒指求婚誓言，整个过程很轻松愉悦，主婚人诙谐幽默给大家带来了不少欢乐，新郎阳光腼腆脸上不时地微笑。也许就是这样简单的婚礼快乐也会简单些，一句很形象地玩笑话，一些家常问题大拷问，把在座的大家逗得哈哈大笑，我想新郎不单只是口头上同意，他之后也会这样来做。
最近有些闹心，是家里装修的问题，基本上都是父母在主导在搞，他们说是帮我搞，可有些地方却不按我的来搞。父母老的这一辈大都是从耐用、方便维护、成本价格方面考虑，而我喜欢简约、美观和舒适的风格，当然我也会很考虑材料预算价格，尽可能的想要买到物廉价美的。因此我们在一些方面产生了不同分歧，比如在要不要贴台道瓷片，挑选瓷片的配色各方面等，关于整体装修色调由于刚开始没做设计效果图，所以我在选颜色的时候也没谱，在没有看到喜欢的情况下是想多看几种颜色再定，可爸妈总是比较急强调只要一般了，选铝合金护窗和门听信小区里别人的，而没有充分地了解后再去选择，我就怕搞得不好，因此就有些矛盾。
其实，我的周末大都回湘潭家里，在我内心里家庭应该比工作更重要，可事实是除开每周回去可以见到家里人，其余的也没有特别的感受，只是在吵架时才会后知后觉，我确实喜欢在家里头，就想和父母娭毑一起吃个饭，看看电视
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2014-10-04 19:12:08.0</li>
				            <li>阅读(555)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/177.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/176.aspx">面对&逃避</a></h2>
			            <!--<div class="date"><a href="">2014-08-04</a></div>-->
			            
			            <div class="summary">
			                最近博客又有一段时间没更新了，其实也没有什么特别忙的工作，可能是天气燥热不想动，做什么都没有劲。最近工作也是索然无味，感觉是吃老本学不到新知识，有些自己认为意见不同的东西会直言不讳，真的不想再勉强接受，因此有时候会比较好强一点，但希望我只是想工作上更严谨，真的很理性的不带任何个人感情。
人本能地会怕困难，遇到挫折容易逃避，但只有勇敢理智面对，不畏困难努力向前才是本事。
感情是每个人都会遇到的事，这个世界上也有很多种爱。血浓于水的亲情的爱是无私的，朋友间的友情不曾常提起却在需要帮助时就在身边，而爱情是可遇不可求或许不经意间在身边。
慢慢开始改变那些不好的地方吧，让自己可以越来越好，青春正在成长需要正能量，每天多做一些有意义的事情，让身边的亲人朋友快乐，让自己更加充实。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2014-08-04 21:39:16.0</li>
				            <li>阅读(1264)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/176.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/172.aspx">2013年公司年会</a></h2>
			            <!--<div class="date"><a href="">2014-01-27</a></div>-->
			            
			            <div class="summary">
			                今年是来南方城墙的第二年，今天公司最后一天开年会，和去年相比各部门表演的些节目给年会带来不少的欢乐。虽然有些排练准备得不足，但还是能感受得到年会的氛围。年会总体的议程主要是总结发言，然后就是团年饭和节目活动。
			            </div>
			            <div class="tags">标签：心情笔记 年会
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2014-01-27 23:07:27.0</li>
				            <li>阅读(2297)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/172.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/168.aspx">在这公司一年多了</a></h2>
			            <!--<div class="date"><a href="">2013-10-19</a></div>-->
			            
			            <div class="summary">
			                不知不觉，在这家公司待了一年多的时间了，在这里过得不坏不好。刚回来的时候，心里还只是想简单的找份工作，因为公司从事软件行业而来到了这里。刚进公司这个新环境，还是有很多不习惯，后来慢慢的熟悉了这里的人和事，开始融入公司这个大圈子。我在这里所从事的工作，仍然还是开发为主，只是这里是针对信息安全相关的，比如UsbKey和数字证书应用。刚开始搞加解密很头疼，对密钥密码设备加解密一头雾水，但心想既然在做信息安全这些东西就必须要学懂，后面经过我老大和王总的指导帮助，慢慢的对信息安全有了较多了解，对CA系统有了全面认识。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-10-19 15:12:29.0</li>
				            <li>阅读(1579)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/168.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/166.aspx">感性碎碎念</a></h2>
			            <!--<div class="date"><a href="">2013-09-04</a></div>-->
			            
			            <div class="summary">
			                最近心情有些不好，如果伤害到了身边的朋友，这里只能说对不起，希望不要在意！
今天，我开始有点不听老大话了，希望也老大不要放在心里去。最近工作有些无聊，越是无趣越是没劲，根本就没有拿出100％精神去做事，有时候甚至很抵触。我到底是怎么了，怎么会一些小事都做不好了。现在变得有些好强，但是眼前的一些事都做不好，也没提出好的建议，要是我来做，我会怎么做，我就能做好吗？
我希望自己可以反省下，自己以后能成熟些，有更宽阔的胸怀，能很冷静理 智地面对一切。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-09-04 23:46:23.0</li>
				            <li>阅读(1519)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/166.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/165.aspx">爷爷，您一路走好！</a></h2>
			            <!--<div class="date"><a href="">2013-08-10</a></div>-->
			            
			            <div class="summary">
			                八月1号，因为工作又开始北京之行。本来前几天就准备去的，结果因为一些工作还没有完成，所以就推迟了。在这次来之前，我心里一直彷徨，我知道每次出来总少不了加班，这样的项目翻来覆去让人有些反感，以至于我们都麻木得习以为常了。出发之前跟家里打了个电话，那时候爷爷还在医院，说准备出院了，那时候我在火车站，心里还没有想太多，还是过来了。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-08-10 11:46:22.0</li>
				            <li>阅读(2455)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/165.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/161.aspx">最近发生的些事</a></h2>
			            <!--<div class="date"><a href="">2013-06-14</a></div>-->
			            
			            <div class="summary">
			                最近发生了些事，让人有些担心。在回来的这一年多了，好像经历过了很多，感觉自己都没反应过来，一切来得是那么的措手不及。自己也变得很感性，有时候都不敢面对自己心里最真实的情感，自己变得都不是自己了。
前段时间我爷爷病了，进了重症监护室，头部动了手术，昏迷了一个星期才醒来挣开眼睛。后面爸打电话给我才知道，回家去医院只能在窗外透过玻璃看到里面的爷爷，要不就是通过电话视频，爷爷也只能在电话那头里听着，我也不知道要说什么。感觉好像是电影场景中样，自己是那么的无能为力，我告诉我自己是男子汉不能哭，希望爷爷你也一定要坚持。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-06-14 22:28:23.0</li>
				            <li>阅读(3173)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/161.aspx#comment">评论(1)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/156.aspx">2012年公司年会</a></h2>
			            <!--<div class="date"><a href="">2013-02-07</a></div>-->
			            
			            <div class="summary">
			                来到公司快一年了，第一次参加公司的年会。分公司还有些同事没来参加，我还有很多同事还都叫不出名字，公司平时就很少有活动，今年年会也没有节目表演，所以也没有太多的期待。
总结发言
年会从早上10点开始，首先是领导的总结规划，2012年总体是打基础具有里程碑的一年，全面开展了项目和产品的开发工作并获批重要资质，2013年公司计划要完成股份制改革和上市，大力进行重点产品升级推广和项目运营。
颁发奖励
公司这次评选了年度的总裁奖、优秀团队奖、优秀新人奖、优秀员工奖，还对些管理层奖励了股份。会上还表扬很多先进个人，看了别人很多介绍还是觉得自己还不够，身边有太多努力优秀的榜样学习。一位同事的发言很是深刻：能被金钱所能买到的能被更高价格买到。我想这个世界上是有些东西不能用金钱来衡量的。
马上就要过年了，又是新的一年快开始了。真的很敬畏的时间的力量，眼看着岁月催人长大却自己做事还是那么不成熟。周围的些朋友真的很好，有很多我学习的榜样，希望明年大家还能够在一起，一起成长。
			            </div>
			            <div class="tags">标签：心情笔记 年会
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-02-07 14:35:59.0</li>
				            <li>阅读(3911)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/156.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/153.aspx">回顾2012</a></h2>
			            <!--<div class="date"><a href="">2013-01-03</a></div>-->
			            
			            <div class="summary">
			                2012转眼就过去了，这年仿佛经历了很多的事情，有让我激动不已的，有让我痛心不已的，本命年并没有给我带来好运，但老天爷其实对我已经很好了，只是自己不懂得珍惜，今年能认识了这么多的朋友已经很好了。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-01-03 22:53:59.0</li>
				            <li>阅读(4255)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/153.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/147.aspx">本命躬行</a></h2>
			            <!--<div class="date"><a href="">2012-09-30</a></div>-->
			            
			            <div class="summary">
			                2012是不是真的是世界末日，还是本命作祟？或许从一开始决定就注定错了，后面只是一错再错，已经麻木得不知悔改。原来以为是老天爷的考验，可结果却把自己给难倒了。原本我以为可以坚强地回到过去，可越是在乎，越是失望。
错了，你能坚持走下去；如果是一错再错，你的还有信念再坚定的走下去吗？以为自己可以放得下，却害怕再拿起来，真的需要勇气，还是不会？有时让人琢磨不透，原来是如此的自私，总想是要用一辈子来阐述？
大哭过一次，眼泪流得很如此原始。伤过人，也被伤过，犹豫过，执著过，内心挣扎过很多次。我只是一渺小的我，却想要大大的力量。别人都在前进，而我却在倒退，差距越来越大，要怎么做才能超越自己？
或许是自己追求在乎的东西太多了，以至于给自己造成了负担，是不是应该放下些东西，认真倾听自己的心声，原来会是如此的寂静，真的不该奢望太多。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2012-09-30 23:50:43.0</li>
				            <li>阅读(3580)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/147.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/146.aspx">2012年的期望</a></h2>
			            <!--<div class="date"><a href="">2012-02-28</a></div>-->
			            
			            <div class="summary">
			                我的爷爷，希望爷爷能长命百岁，多享齐福。我的外婆，希望今年有更多时间和家人一起相处，百善孝为先。我的爸妈，希望在今年我的本命年里，一切顺利美满，我的爸妈可以不用那么操劳，越活越年轻舒心。我的工作，终于离开了时代财富，一家我待了近三年的公司，一家伴我成长养育了我近三年的公司，一家让我欢喜让我愁的公司。我的内心还是有很多舍不得，最后一天上班眼睛其实有些红肿，但我还是保持很低调。回来后不知怎的头很痛，好像在浮想公司近三年来的画面，太多的人和事让人回味。因为是裸辞，没有工作感觉有些空虚不适应，希望自己能好好的调整状态，尽快找到一份合适自己的新工作，迎接新的机遇和挑战，努力成为一名更专业的技术型经理。最后，愿你深藏在心里的那个期望，会在2012年实现。加油！
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2012-02-28 21:07:25.0</li>
				            <li>阅读(4743)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/146.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/144.aspx">三年</a></h2>
			            <!--<div class="date"><a href="">2011-08-27</a></div>-->
			            
			            <div class="summary">
			                出来工作已经三年多了，往事并不如烟。本来很早就想写篇这个主题的，但一直没有落定下来，后来看到网上一张相片墙，回想到了自己这三年多来，虽然不堪回首，但还是有很多快乐幸福的回忆，不禁手痒PS出来了一张，感从中来。
			            </div>
			            <div class="tags">标签：心情笔记 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-08-27 14:07:08.0</li>
				            <li>阅读(7510)</li>
				            <li><a class="comment" title="共3条评论" href="/jonllen/breast/144.aspx#comment">评论(3)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/breast/142.aspx">2011时代财富11周年年庆</a></h2>
			            <!--<div class="date"><a href="">2011-06-05</a></div>-->
			            
			            <div class="summary">
			                最近身上的担子重了很多，感觉很忙，而且是前所未有。转眼间又到了时代财富公司11周年的年庆，这是我第3次参加公司的年庆了，感觉时间流淌的无比的快，我渐渐地也变成了公司的老油条，看到了一些人来人走，而我还在这里坚守着，继续挣扎和寻求成长。
今年公司年庆去下川岛，可以看到宽阔的大海。6月3日下午1点出发，从广州出发坐巴士约3个半小时到山咀码头，再乘船约半个小时到下川岛独湾码头，最后坐车约20来分钟到香岛酒店和王府洲海浴场，到那里放好行李已是6点。吃过晚饭，就到了激动人心的晚会，会议时间很短，也不需要每个人上台，张总和杨总发表了几分钟的简短讲话，就到了各部门的节目表演时间，把大部分时间都留给了我们来玩。
第1组，是我所在的技术部，表演的是改编版的江南四大才子，由于排练的时间短，没有穿上服装一起正式排练过，表演现场出现了一片混乱，前音不搭后语，手忙脚乱。。。
第2组，是市场中心表演的灰太狼和大白兔，感觉挺有创意的。兔子的装扮很惹人喜爱，还有扮演的大树，让人回想到小时候的童真和动画片。
第3组是JH团队，这组是配合得最好最有默契，剧情搞笑，表演生动形象，贴进我们平时的工作和生活，最后获得最佳团队奖。
第4组是大实施部门，表演的是非雷勿扰之凤姐相亲，里面也有四大才子的剧本，跟我们技术部的部分有雷同，但应纯属巧合。
			            </div>
			            <div class="tags">标签：心情笔记 年会
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2011-06-05 13:55:16.0</li>
				            <li>阅读(8927)</li>
				            <li><a class="comment" title="共2条评论" href="/jonllen/breast/142.aspx#comment">评论(2)</a></li>
			              </ul>
			            </div>
		            </div>


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
				            <li>阅读(7946)</li>
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
				            <li>阅读(9318)</li>
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
				            <li>阅读(8016)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/137.aspx#comment">评论(1)</a></li>
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
				            <li>阅读(6627)</li>
				            <li><a class="comment" title="共1条评论" href="/jonllen/breast/132.aspx#comment">评论(1)</a></li>
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
				            <li>阅读(6747)</li>
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
				            <li>阅读(6766)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/breast/128.aspx#comment">评论(0)</a></li>
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
                            <a disabled>首页</a>
                            
                            <font color='red'><strong>1</strong></font><a href='javascript:goToPage0(2)' title='转到第2页'>2</a><a href='javascript:goToPage0(3)' title='转到第3页'>3</a>
                            <a href='javascript:goToPage0(2)' title='转到第2页'>下一页</a>
                            <a href='javascript:goToPage0(3)' title='转到第3页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='1' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/breast/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

	</div>
	
</div>
 
        </div>
	</div>
	<div id="ctl00_panRight" class="siderRight column column3">
	
<div id="mod29" class="mod recommend">
    <h4 class="head">博文推荐</h4>
    <div class="cont">
	    <ul>
                    
		    <li><a href="/jonllen/breast/120.aspx">时代财富10周年年庆</a>(2010-06-03)</li>
                    

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