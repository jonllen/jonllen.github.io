<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	JavaScript - 金龙博客
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
		    
		    <strong>JavaScript</strong>
            
		</div>
		<div class="articlelist">
		    <div id="articleitem" class="articleitem">
                
                    

<div class="item">
			            
			            <h2><a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a></h2>
			            <!--<div class="date"><a href="">2015-06-05</a></div>-->
			            
			            <div class="summary">
			                最近个项目已经加班连续加班1个月，因为公司经常有在外面客户现场或出差的情况，人事每个月初会把上个月的份考勤打卡记录全部发出来，让我们对自己的考勤，突然想到可根据大家打卡时间记录统计每天工作时间，看大家加班是否也多呢？然后使用我们现在项目用的ECharts报表来展示，做了个Web的柱状图和饼图分析...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2015-06-05 23:00:00.0</li>
				            <li>阅读(706)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/179.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/178.aspx">JavaScript实现SM2算法加解密</a></h2>
			            <!--<div class="date"><a href="">2014-10-28</a></div>-->
			            
			            <div class="summary">
			                在前段时间，已用JavaScript实现SM2算法的签名验证，下面来讲下JS的SM2算法的非对称加解密。这个在客户端加密的应用场景可能会更多些，比如我们平时登录的网站的密码，如果没有使用SSL证书加密一般会是明文传输这样会很不安全，这时可以考虑结合使用非对称算法加密，将服务器端的公钥输出在客户端，客户端使用公钥加密，登录时密码以密文方式传给服务器端再由相应私钥解密得到明文数据。
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2014-10-28 22:46:13.0</li>
				            <li>阅读(3000)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/178.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/175.aspx">JS版SM2国密算法的签名验证</a></h2>
			            <!--<div class="date"><a href="">2014-06-17</a></div>-->
			            
			            <div class="summary">
			                前段时间因工作需要，了解到在Github上已经有人实现了用JavaScript来写签名和验签，支持RSA、ECC、DSA等算法，还能解析X.509证书，一时觉得JavaScript是无比强大。后面就研究了下JavaScript版的ECC算法签名验证，自己再扩展实现了SM2国密算法的签名验证。

基于现有已实现的C#版SM2国密算法的签名验证，再结合原来JavaScript的ECC算法，使用JavaScript实现SM2国密算法的签名验证相对简单，只需要将C#语言翻译成JavaScript语言实现。不过中间还是遇到了些问题，主要是在JavaScript计算SM3摘要值大数的运算上还是有些不同。
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2014-06-17 20:33:45.0</li>
				            <li>阅读(4458)</li>
				            <li><a class="comment" title="共7条评论" href="/jonllen/js/175.aspx#comment">评论(7)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/167.aspx">网页图片延迟加载</a></h2>
			            <!--<div class="date"><a href="">2013-09-16</a></div>-->
			            
			            <div class="summary">
			                <p>看到很多大型的网站，都实现了图片延迟加载，即在浏览器的可视范围内才加载图片。这样最大的一个好处就是节约带宽提高用户体验，特别是对于访问量高的大型网站就显得尤为重要，往往大部分网站的流量都是图片大于文本内容，因此网站图片资源优化可以有很大的提升空间。</p>
<p>在说网站图片延迟加载前，先说下网站图片上传的处理。一般网站上传图片会保存原图，如果网站有多个尺寸规格的需要显示，还要按需生成不同大小的缩略图，这样做的好处就是之后可以快速使用访问，缺点是难以管理这些缩略图，增加了存储成本，算是&ldquo;以空间换时间&rdquo;。另外还有一种做法是&ldquo;以时间换空间&rdquo;，网站图片上传只保存原图，缩略图按需根据原图动态生成，这样会增加程序处理的一些成本，但可以换取更多空间。具体采用那种方式就因网站需要综合考虑的，目前我网站上传图片采用了比较懒的做法都只保留了原图。</p>
<p>&nbsp;</p>
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-09-16 23:06:20.0</li>
				            <li>阅读(5249)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/167.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/157.aspx">实现禁止掉浏览器后退的效果</a></h2>
			            <!--<div class="date"><a href="">2013-03-31</a></div>-->
			            
			            <div class="summary">
			                在网上搜索了很多禁止掉浏览器后退的方法，大都是说禁用缓存或使用JS跳转。其实浏览器的后退前进按钮我们本身是无法控制的，之所以还有要禁止后退的一些功能需要，主要还是存在提交表单、身份验证等应用场景，避免用户重复提交数据等。下面我从几次层面来说明实现禁止掉浏览器后退的效果。
1.客户端JS跳转
2.禁止缓存
3.让后退停在当前页面
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2013-03-31 22:54:12.0</li>
				            <li>阅读(7647)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/157.aspx#comment">评论(0)</a></li>
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


<div class="item">
			            
			            <h2><a href="/jonllen/js/45.aspx">JavaScript兼容笔记</a></h2>
			            <!--<div class="date"><a href="">2009-07-18</a></div>-->
			            
			            <div class="summary">
			                从今天开始记录JavaScript使用的兼容问题一、推荐获取元素的HTML代码使用innerHTML，是W3C属性兼容所有浏览器，不要使用innerText和outerHTML，因为这不是标准的属性FF内不被支持的。解决代替outerHTML方法如下：1.使用document.createElement("DIV").appendChild(parentLink.cloneNode(true)).parentNode.innerHTML;创建一个元素新元素添加到子节点后获取innerHTML即元素的outerHTML值。2.网上还有另外一种方案是给dom元素prototype自定义添加一个outerHTML属性。三、IE跟其他标准的浏览器在DOM认识处理上有个非常重大的区别，IE在获取childNodes的时候会很'人性化'把TEXT_NODE空文本节点给忽略掉，而FF等浏览器不会，但有时候我们只需要获取nodeType=1的元素节点，如果为TEXT_NODE文本节点误当元素节点设置它一些属性时会出错，一般做到兼容的办法是获取childNodes时逐一判断nodeType!=3(jquery的做法)，但是就麻烦了一点，我一般用childNodes的时候我会用document.getElementById('id').getElementsByTagName('li'),但这是在预知所有的childNodes的nodeName前提下的，如果可以控制程序动态输出所有的childNodes的时候，可预先清除所有的空格换行，这样用childNodes获取的节点就没有TEXT_NODE空文本节点了，使用firstChild、lastChild、previousSibling、p
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-18 16:18:07.0</li>
				            <li>阅读(10764)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/45.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/43.aspx">网页版弹钢琴&&滚动的音符</a></h2>
			            <!--<div class="date"><a href="">2009-07-16</a></div>-->
			            
			            <div class="summary">
			                网页版弹钢琴&&JQuery滚动的音符...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-16 21:26:16.0</li>
				            <li>阅读(17804)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/43.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/41.aspx">摆脱JQuery—之自定义Dom筛选器</a></h2>
			            <!--<div class="date"><a href="">2009-07-12</a></div>-->
			            
			            <div class="summary">
			                之所以说要摆脱jquery，并不是说jquery不好用，本人也是佩服jquery五体投地，在没有用上jquery的时候我还没认识到javascript如此强大的功能，好在jquery的脚本是全部开源的，在它的里面我们能够学到很多的东西。不过我看过它的源码，可能是由于本人的js水平有限还有很多地方看不是很明白，不过在使用的过程可以得知jquery之所以如此强大得意于的它封装的dom对象类，并且几乎提供一个几乎"万能"的筛选器，而封装类又提供很多方便常见的方法操作dom对象，最重要的一点是jquery帮我兼容搞定所有的浏览器，使得我们不需要再考虑为ff、opera或safari做单独的判断，所以jquery倍受程序员的青睐。jquery还能进行很好扩展，提供了很多丰富的插件，也有提供一整套UI解决方案，还算好用啦。不过可能是由于本人比较叛逆的性格，出与没事干找抽，呵呵，就是不想再用jquery，也没有啦，下面我来说一下我为什么不再想用jquery的原因：

jquery脚本文件较庞大，1.2.6版没打包前有98kb，而打包后也占了31kb，但我们通常只用它其中的一个很小部分功能，感觉就有点浪费，所以没有必要把这么大的一个jquery脚本文件引用到页面；
本身的一些Bug，无论写什么东西都可能会有bug，虽然jquery是开
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-12 22:52:40.0</li>
				            <li>阅读(12771)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/41.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a></h2>
			            <!--<div class="date"><a href="">2009-07-08</a></div>-->
			            
			            <div class="summary">
			                这个模式弹窗是我结合Jquery写的，因为有时候用Jquery的时候会造成和其他脚本有冲突。。。感觉Jquery的有些插件也不能都满足所有的需求，有些Bug不好怎么去解决；我写的也还有很多BUG，但是自己写的的也好去修复它，功能如下: 
同样支持窗体缩放大小时自动居中对齐(IE下必须很秀气的resize才能正确触发)；
支持同时打开对个窗体，并能响应Esc事件和点击遮掩层进行关闭弹窗；还有很对功能待完善，目前已经加入了拖拽和缩放大小的功能，默认是false不拖拽的,在init里面可以设置drag:true以让元素可拖拽,拖拽的代码是我之前在51js上看到别人贴的,很简洁所以就直接拿过来用了...
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-08 11:59:02.0</li>
				            <li>阅读(25861)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/js-popup.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/photo.aspx">摆脱JQuery—之自定义图片缩略图列表滚动功能。</a></h2>
			            <!--<div class="date"><a href="">2009-07-04</a></div>-->
			            
			            <div class="summary">
			                JavaScript图片缩略图列表滚动功能。
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-04 20:01:45.0</li>
				            <li>阅读(13394)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/photo.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>


<div class="item">
			            
			            <h2><a href="/jonllen/js/33.aspx">js拖拽代码</a></h2>
			            <!--<div class="date"><a href="">2009-07-04</a></div>-->
			            
			            <div class="summary">
			                从51js论坛上路过时，看到别人贴的一段拖拽的JS代码，很简短就几行，除开在IE6内还有点小BUG外，在IE7、FF内均运行良好，固运用过来瞧瞧~~~
			            </div>
			            <div class="tags">标签：JavaScript 
			            </div>
			            <div class="desc">
			              <ul>
				            <li title="">posted@ 2009-07-04 12:53:11.0</li>
				            <li>阅读(9991)</li>
				            <li><a class="comment" title="共0条评论" href="/jonllen/js/33.aspx#comment">评论(0)</a></li>
			              </ul>
			            </div>
		            </div>

                
            </div>
            <script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'articleitem', maxWidth : document.getElementById('articleitem').offsetWidth });</script>
		</div>
		<div class="pagination" id="ctl00_cphContent_Pager1">

<script type='text/javascript'>function goToPage0(pid, urlformat){var url = "/jonllen/js/index__pid.aspx";if(urlformat)url=urlformat;document.location.replace(url.replace("_pid",pid).replace("_1.","."));}</script>
                            <!--共23条记录-->
                            <a disabled>首页</a>
                            
                            <font color='red'><strong>1</strong></font><a href='javascript:goToPage0(2)' title='转到第2页'>2</a>
                            <a href='javascript:goToPage0(2)' title='转到第2页'>下一页</a>
                            <a href='javascript:goToPage0(2)' title='转到第2页'>末页</a>
                            <!--每页<input type='text' value='20' id='_pagersize0' style='width:25px'>条,转到第<input type='text' value='1' id='_pagerid0' style='width:25px'>页<input type='button' value='Go' onclick='javascript:goToPage0(document.getElementById("_pagerid0").value,"/jonllen/js/index__pid.aspx".replace("psize=20","psize=" + document.getElementById("_pagersize0").value));'>-->

	</div>
	
</div>
 
        </div>
	</div>
	<div id="ctl00_panRight" class="siderRight column column3">
	
<div id="mod29" class="mod recommend">
    <h4 class="head">博文推荐</h4>
    <div class="cont">
	    <ul>
                    
		    <li><a href="/jonllen/js/107.aspx">博客个性化定制(2)-实现类似iGoogle首页功能</a>(2010-03-21)</li>
                    

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