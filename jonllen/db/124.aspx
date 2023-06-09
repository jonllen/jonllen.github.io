
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SQL性能优化 - 数据库 - 金龙博客</title>
<meta name="description" content="在做天河部落博客系统的时候，遇到了一个这样的SQL问题，博客首页处于列表模式的时候，需要显示博主每个栏目的前十篇文章，之前是根据栏目ID一个个查询出来，由于栏目可能还有子栏目，因此使用多个栏目OR的方式，在程序里拼接好再执行，然而这些SQL语句却存在效率问题..." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-06-27' } );
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
            

    <div class="articlecont">
        <div class="position">
		    <strong>当前位置：</strong>
		    <a href="http://www.jonllen.com">首页</a>
		     > <a href="/jonllen/db/">数据库</a>
		     > <a href="/jonllen/db/124.aspx">SQL性能优化</a>
		</div>
        <div class="article">
			<div class="title"><h2>SQL性能优化</h2></div>
			<div class="category">分类：<a href="/jonllen/db/">数据库</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>在做天河部落博客系统的时候，遇到了一个这样的SQL问题，博客首页处于列表模式的时候，需要显示博主每个栏目的前十篇文章，之前是根据栏目ID一个个查询出来，由于栏目可能还有子栏目，因此使用多个栏目OR的方式，在程序里拼接好再执行，然而这些SQL语句却存在效率问题：</p>
<div><a href="/upload/jonllen/article/profiler1.jpg" target="_blank"><img src="/upload/jonllen/article/profiler1.jpg" width="418" height="245" /></a></div>
<p>根据SQL Server Profiler性能工具监视可知，Duration服务执行时间很大，并且会随子栏目多少变化很大，如上10个查询总共花费了3337ms，当一个博客有几十个栏目的时候，服务器响应时间就可想而之了，几乎会感觉页面开打很慢，SQL语句如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">select</span><span style="color: #000000;"> </span><span style="color: #0000ff;">top</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;"> fdArtiID, fdArtiColuID, fdArtiCreateAt, fdArtiTitle, fdArtiClickCount, fdArtiReviewCount </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> FA_ARTICLE  </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> fdArtiIsPub</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;"> </span><span style="color: #808080;">and</span><span style="color: #000000;"> (fdArtiColuID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633057023801718750</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">or</span><span style="color: #000000;"> <br />fdArtiColuID</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633874888423437500</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">or</span><span style="color: #000000;"> fdArtiColuID</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633372936322500000</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">or</span><span style="color: #000000;"> fdArtiColuID</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633372931919531250</span><span style="color: #ff0000;">'</span><span style="color: #000000;">) </span><span style="color: #0000ff;">order</span><span style="color: #000000;"> </span><span style="color: #0000ff;">by</span><span style="color: #000000;"> fdArtiIsTop </span><span style="color: #0000ff;">desc</span><span style="color: #000000;">, fdArtiID </span><span style="color: #0000ff;">desc</span></div></div></pre>
<p>如上栏目前十篇文章查询的Duration服务执行时间平均为217ms，而子栏目更多这个时间将更大，后面想到了另外一种方式，使用IN替换多个OR条件，SQL语句如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">select</span><span style="color: #000000;"> </span><span style="color: #0000ff;">top</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;"> fdArtiID, fdArtiColuID, fdArtiCreateAt, fdArtiTitle, fdArtiClickCount, fdArtiReviewCount </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> FA_ARTICLE  </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> fdArtiIsPub</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;"> </span><span style="color: #808080;">and</span><span style="color: #000000;"> fdArtiColuID </span><span style="color: #808080;">IN</span><span style="color: #000000;"> (</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633057023801718750</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633874888423437500</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633372936322500000</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633372931919531250</span><span style="color: #ff0000;">'</span><span style="color: #000000;">) </span><span style="color: #0000ff;">order</span><span style="color: #000000;"> </span><span style="color: #0000ff;">by</span><span style="color: #000000;"> fdArtiIsTop </span><span style="color: #0000ff;">desc</span><span style="color: #000000;">, fdArtiID </span><span style="color: #0000ff;">desc</span></div></div></pre>
<p>但效果仍然不明显，Duration服务执行时间差不多。查看它的执行计划，发现上面的多个IN最终还是变成多个OR来执行，而主要开销是在使用聚集索引扫描上。</p>
<div><a href="/upload/jonllen/article/Plant1.jpg" target="_blank"><img src="/upload/jonllen/article/Plant1.jpg" width="500" /></a></div>
<p>SQL Server共有4种数据查找方式：</p>
<p><strong>Table Scan（表扫描）：</strong>数据表上没有聚集索引，或者查询优化器没有使用索引来查找，即资料表的每一行都被检查到，如果资料表相对较小的话，表扫描可以非常快速，有时甚至快过使用索引。</p>
<p><strong>Index Seek（索引查找）：</strong>索引查找意味着查询优化器使用了数据表上的非聚集索引来查找数据。性能通常会很快，尤其是当只有少数的数据行被返回时。</p>
<p><strong><strong>Clustered Index Seek（</strong><strong>聚集索引查找</strong><strong>）</strong>：</strong>这指查询优化器使用了数据表上的聚集索引来查找数据，性能很快。实际上，这是SQL Server能做的最快的索引查找类型。在创建表的PRIMARY KEY约束时，将自动创建唯一聚集索引。</p>
<p><strong>Clustered Index Scan（</strong><strong>聚集索引扫描</strong><strong>）</strong>：聚集索引扫描与表扫描相似，不同的是聚集索引扫描是在一个建有聚集索引的数据表上执行的。和一般的表扫描一样，聚集索引扫描可能表明存在效能问题。一般来说，有两种原因会引此聚集索引扫描的执行。第一个原因，相对于数据表上的整体数据行数目，可能需要获取太多的数据行。查看&rdquo;预估的数据行数量(Estimated Row Count)&rdquo;可以对此加以验证。第二个原因，可能是由于WHERE条件句中用到的字段选择性不高。在任何情况下，与标准的表扫描不同，聚集索引扫描并不会总是去查找数据表中的所有数据，所以聚集索引扫描一般都会比标准的表扫描要快。通常来说，要将聚集索引扫描改成聚集索引查找，你唯一能做的是重写查询语句，让语句限制性更多，从而返回更少的数据行。</p>
<p>由于上面是在FA_Article文章表没有栏目ID索引的情况下测试的，而文章fdArtiID是主键默认创建的是聚集索引，给栏目fdArtiColuID加一个非聚集索引后再执行：</p>
<div><a href="/upload/jonllen/article/Plant2.jpg" target="_blank"><img src="/upload/jonllen/article/Plant2.jpg" width="500" /></a></div>
<p>此时的查询时间终于降下来了，Duration服务执行时间约为55ms，这时候执行计划里显示使用了索引查找，即使用了非聚集索引查找数据，栏目fdArtiColuID查询方式不再是OR匹配，而是多个等于比较。55ms这个时间看上去是可以接受了，但它仍然会随子栏目多少而变化不稳定，因此还必须继续优化。</p>
<p>这时候出现了个小插曲，因为这时想到了个办法可以把每个栏目前10篇文章一条SQL语句一次性查询出来，这似乎是一个完美的方法，即使时间稍微长一点也没有关系，至少比每个栏目都查一次要好，一个简单的SQL如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">select</span><span style="color: #000000;"> fdArtiID, fdArtiColuID, fdArtiCreateAt, fdArtiTitle, fdArtiClickCount, fdArtiReviewCount <br /></span><span style="color: #0000ff;">from</span><span style="color: #000000;"> FA_ARTICLE </span><span style="color: #0000ff;">AS</span><span style="color: #000000;"> a<br /></span><span style="color: #0000ff;">where</span><span style="color: #000000;"> fdArtiID </span><span style="color: #808080;">in</span><span style="color: #000000;"><br />(<br /></span><span style="color: #0000ff;">select</span><span style="color: #000000;"> </span><span style="color: #0000ff;">top</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;"> fdArtiID </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> FA_ARTICLE  <br /></span><span style="color: #0000ff;">where</span><span style="color: #000000;"> fdArtiIsPub</span><span style="color: #808080;">=</span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;"> </span><span style="color: #808080;">and</span><span style="color: #000000;">  fdArtiColuID </span><span style="color: #808080;">=</span><span style="color: #000000;"> a.fdArtiColuID<br /></span><span style="color: #0000ff;">order</span><span style="color: #000000;"> </span><span style="color: #0000ff;">by</span><span style="color: #000000;"> fdArtiIsTop </span><span style="color: #0000ff;">desc</span><span style="color: #000000;">, fdArtiID </span><span style="color: #0000ff;">desc</span><span style="color: #000000;"><br />)<br /></span><span style="color: #808080;">AND</span><span style="color: #000000;"> fdArtiColuID </span><span style="color: #808080;">IN</span><span style="color: #000000;"> (</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633691599677500000</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633677885317968750</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633670970930156250</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633371098994062500</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633232866300000000</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633231086737187500</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">633222768009687500</span><span style="color: #ff0000;">'</span><span style="color: #000000;">)</span></div></div></pre>
<p>单是执行上面的语句问题不大，Duration服务执行时间约为150ms，但上面我还没有列出博客所有栏目，且都是一级栏目，而栏目前十篇文章需要显示的是一级栏目或该子栏目下的文章，因此上面的子查询需要加上或者为子栏目的条件，这样才能符合需求，而在子查询里加上或者为子栏目的条件后，几乎快慢得一塌糊涂，因此最终以失败告终。后面又想到了使用临时表，但还是无果。</p>
<p>两三天的时间就这样摸索过了，继续回到了原点。有点无奈，无意想到了原来的旧版天河部落，听说旧版的性能很高，所以拿下来到本机借鉴参考，查看旧版读取栏目的前十篇文章的方法也是一个个分别进行查询的，但发现有个小小的差异，旧版SQL语句如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">select</span><span style="color: #000000;">  </span><span style="color: #0000ff;">top</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">5</span><span style="color: #000000;"> fdArtiUserID, fdColuIsForum, fdArtiID, fdArtiColuID, fdArtiBlogID, fdArtiTitle, fdArtiCreateAt, fdArtiIsAuthorship, fdArtiIsHot, fdArtiIsGood, <br />fdArtiIsUp, fdArtiIsWorth, fdArtiClickCount, fdArtiReviewCount, fdArcgColuID, FA_Article_Column_G.fdArcgID </span><span style="color: #0000ff;">AS</span><span style="color: #000000;"> Expr1 <br /></span><span style="color: #0000ff;">from</span><span style="color: #000000;"> FA_Article </span><span style="color: #0000ff;">inner</span><span style="color: #000000;"> </span><span style="color: #808080;">join</span><span style="color: #000000;"> FA_Article_Column_G <br /></span><span style="color: #0000ff;">ON</span><span style="color: #000000;"> FA_Article_Column_G.fdArcgArtiID </span><span style="color: #808080;">=</span><span style="color: #000000;"> FA_Article.fdArtiID <br /></span><span style="color: #0000ff;">INNER</span><span style="color: #000000;"> </span><span style="color: #808080;">JOIN</span><span style="color: #000000;"> FA_Column </span><span style="color: #0000ff;">ON</span><span style="color: #000000;"> FA_Article_Column_G.fdArcgColuID </span><span style="color: #808080;">=</span><span style="color: #000000;"> FA_Column.fdColuID <br /></span><span style="color: #0000ff;">where</span><span style="color: #000000;"> fdColuBlogID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">schqiaole</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">and</span><span style="color: #000000;"> fdColuPwd </span><span style="color: #808080;">=</span><span style="color: #ff0000;">''</span><span style="color: #000000;"> <br /></span><span style="color: #808080;">and</span><span style="color: #000000;"> (fdColuID</span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">632959986169218750</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">or</span><span style="color: #000000;"> fdColuParentID </span><span style="color: #808080;">=</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">632959986169218750</span><span style="color: #ff0000;">'</span><span style="color: #000000;">) <br /></span><span style="color: #0000ff;">order</span><span style="color: #000000;"> </span><span style="color: #0000ff;">by</span><span style="color: #000000;"> fdArtiCreateAt </span><span style="color: #0000ff;">DESC</span></div></div></pre>
<p>这里最大的一个差异是旧版的查询多了一个博客ID的条件，而理论上指定了栏目ID就不必要指定博客ID了，因为根据栏目ID是可以获取博客ID的，是不是加了这句就这么神奇呢？马上修改原来的SQL语句如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">SELECT</span><span style="color: #000000;"> </span><span style="color: #0000ff;">TOP</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">10</span><span style="color: #000000;"> fdArtiID, fdArtiColuID, fdArtiCreateAt, fdArtiTitle, fdArtiClickCount, fdArtiReviewCount <br /></span><span style="color: #0000ff;">FROM</span><span style="color: #000000;"> FA_Article<br /></span><span style="color: #0000ff;">INNER</span><span style="color: #000000;"> </span><span style="color: #808080;">JOIN</span><span style="color: #000000;"> FA_Column </span><span style="color: #0000ff;">ON</span><span style="color: #000000;"> fdArtiColuID </span><span style="color: #808080;">=</span><span style="color: #000000;"> fdColuID<br /></span><span style="color: #0000ff;">WHERE</span><span style="color: #000000;"> fdArtiStatus </span><span style="color: #808080;">&lt;&gt;</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">3</span><span style="color: #000000;"> </span><span style="color: #808080;">AND</span><span style="color: #000000;"> fdArtiIsPub </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;"><br /></span><span style="color: #808080;">AND</span><span style="color: #000000;"> fdColuUserID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">linmeijuan</span><span style="color: #ff0000;">'</span><span style="color: #000000;"><br /></span><span style="color: #808080;">AND</span><span style="color: #000000;"> (fdArtiColuID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">632788831139531250</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">OR</span><span style="color: #000000;"> fdColuParentID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">632788831139531250</span><span style="color: #ff0000;">'</span><span style="color: #000000;">)<br /></span><span style="color: #0000ff;">ORDER</span><span style="color: #000000;"> </span><span style="color: #0000ff;">BY</span><span style="color: #000000;"> fdArtiIsTop </span><span style="color: #0000ff;">DESC</span><span style="color: #000000;">, fdArtiCreateAt </span><span style="color: #0000ff;">DESC</span></div></div></pre>
<p>先看一下修改后的执行计划：</p>
<div><a href="/upload/jonllen/article/plant3.jpg" target="_blank"><img src="/upload/jonllen/article/plant3.jpg" width="500" /></a></div>
<p>再看一下没有指定博客ID条件的执行计划：</p>
<div><a href="/upload/jonllen/article/plant4.jpg" target="_blank"><img src="/upload/jonllen/article/plant4.jpg" width="500" /></a></div>
<p>原来在没有指定博客ID的条件时查询优化器选择了哈希匹配，而加入博客ID条件后查询优化器选择了嵌套循环，fdColuUserID条件和fdColuParentID条件组合成一个嵌套循环，再和fdArtiColuID条件组合成一个嵌套循环，相当于<span style="color: #000000;">fdColuUserID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">linmeijuan</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">AND</span><span style="color: #000000;"> (fdArtiColuID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">632788831139531250</span><span style="color: #ff0000;">'</span><span style="color: #000000;"> </span><span style="color: #808080;">OR</span><span style="color: #000000;"> fdColuParentID </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">632788831139531250</span><span style="color: #ff0000;">'</span><span style="color: #000000;">)</span>这句SQL的数据筛选。</p>
<p>SQL Server里有3种不同的表连接类型：</p>
<p><strong>嵌套循环（Nested Loop）：</strong>嵌套循环联接也称为&ldquo;嵌套迭代&rdquo;<em><!----></em>，它将一个联接输入用作外部输入表，将另一个联接输入用作内部输入表。外部循环逐行处理外部输入表。内部循环会针对每个外部行执行，在内部输入表中搜索匹配行。如果外部输入较小而内部输入较大且预先创建了索引，则嵌套循环联接尤其有效。一般来说，索引嵌套循环联接优于合并联接和哈希联接。但在大型查询中，嵌套循环联接通常不是最佳选择。</p>
<p><strong>散列（Hash）：</strong>哈希联接用于多种设置匹配操作：内部联接；左外部联接、右外部联接和完全外部联接；左半联接和右半联接；交集；联合和差异。哈希联接按不同类型又分为内存中的哈希联接、Grace 哈希联接和递归哈希联接。</p>
<p><strong>合并（Merge）：</strong>合并联接要求两个输入都在合并列上排序，而合并列由联接谓词的等效 (ON) 子句定义。合并联接本身的速度很快，但如果需要排序操作，选择合并联接就会非常费时。然而，如果数据量很大且能够从现有 B 树索引中获得预排序的所需数据，则合并联接通常是最快的可用联接算法。</p>
<p><strong>总结</strong></p>
<p>在我们平时SQL性能优化中，需要结合实际需求，使用好执行计划（Query Execution Plan）和事件探察器（SQL Server Profiler）两大利器，而不是一概的说不要使用OR、IN，自己去测试实践的结果才是最好的证明。</p>
<p>参考资料：</p>
<ol>
<li><a href="http://technet.microsoft.com/zh-cn/library/ms191426.aspx" target="_blank">高级查询优化概念</a></li>
<li><a href="http://blog.csdn.net/xiao_hn/archive/2009/06/11/4259628.aspx" target="_blank">了解SQL Server执行计划</a></li>
<li><a href="http://blog.joycode.com/ghj/archive/2008/01/02/113291.aspx" target="_blank">SQL Server 索引基础知识(2)----聚集索引，非聚集索引 </a></li>
</ol>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/db/">数据库</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2010-06-27 17:32</li>
				<li>update@ 2010-07-04 17:33:23</li>
				<li>阅读(<span id="articleClick">7544</span>)</li>
				<li>评论(1)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/db/oracle-notes.aspx">oracle学习小记</a></li>
<li>下一篇：<a href="/jonllen/db/150.aspx">Oracle流同步使用总结</a></li></ul>
		</div>
		

<div class="correlative">
	
		    <h4>相关文章</h4>
			<ul>



			</ul>
		
</div>

		
		<div class="comment">
			<div class="title">评论</div>
			<div class="commentlist" id="commentContent">
				



				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'三维网')">引用</a></li>

						        </ul>
						        <a>1楼</a> 三维网 2010-08-17 14:37:03
					        </div><div class="cont">很不错，读了。</div>
					        <div class="reply" ><span>回复：</span>呵呵~`（2010-08-17 14:38:07）</div>
				        </div>


				
			</div>
		</div>
		<div class="postcomment">
	        <div class="title">发表评论<a id="comment"></a></div>
	        <div class="box">
		        <div class="fi"><label>用户名</label><input id="txtUserName" type="text" value="" class="text" title="请输入显示用户名称" /><span class="note">*必填</span></div>
		        
		        
		        <div class="fi"><label>网站链接</label><input id="txtWebsite" type="text" class="text" title="请输入您的网站链接地址以便回访（非必填）" /></div>
		        
		        <div class="fi"><label>邮箱地址</label><input id="txtEmail" type="text" class="text" title="请输入您的邮箱地址以便回复（非必填）" /><input id="chkEmailNotify" type="checkbox" title="当博主回复时以邮件通知我" />回复通知我</div>
		        <div class="fi"><label>内容</label><textarea id="txtContent" class="textarea"></textarea><span class="note">*必填</span></div>
		        <div class="btn"><input type="button" class="submit" onclick="postComment()" value="提交" /></div>
	        </div>
        </div>
        <script type="text/javascript" src="/styles/index/scripts/ajax.js"></script>
        <script type="text/javascript">
            function postComment()
		    {
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=124&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/db/124.aspx';
		        data += "&content="+ encodeURIComponent(document.getElementById("txtContent").value);
		        var pwd = document.getElementById("txtPassword");
		        if (pwd!=null)
		        {
		            data += "&pwd="+ pwd.value;
		        }
		        var website = document.getElementById("txtWebsite");
		        if (website!=null)
		        {
		            data += "&website="+ website.value;
		        }
		        data += "&email="+ encodeURIComponent(document.getElementById("txtEmail").value);
		        data += "&emailNotify="+ encodeURIComponent(document.getElementById("chkEmailNotify").checked);
		        Ajax.send({
		            type : "POST",
		            url : url,
		            data : data,
		            fn : function (data){
	                    var rs;
	                    try{rs=eval("rs="+data);}catch(e){alert(e);return;}
                        
	                    if (rs.success)
	                    {
	                        appendComment();
	                        if(document.getElementById('commentNothing')!=null){ 
	                          document.getElementById('commentNothing').style.display = 'none';
	                        }
	                        document.getElementById("txtContent").value = "";
	                        alert("提交评论成功！");
	                    }else
	                    {
	                        alert(rs.error);
	                    }
                            }
		        });
		    }

function appendComment()
		    {
var itemComment = document.createElement('div');
itemComment.className = 'item';
var username = document.getElementById("txtUserName").value;
var index = document.getElementById('commentContent').getElementsByTagName('ul').length + 1;
var content =  document.getElementById("txtContent").value;
itemComment.innerHTML = '<div class="desc"><ul class="options"><li><a href="javascript:;" onclick="quote(this,\''+username+'\')">引用</a></li></ul><a>'+index+'楼</a> '+username+'</div><div class="cont">'+content+'</div>';
document.getElementById('commentContent').appendChild(itemComment);
}

            function addClick()
		    {
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=124";
		        Ajax.send({
		            type : "GET",
		            url : url,
		            fn : function (data){
		                 var clickElem = document.getElementById('articleClick');
		                 if(clickElem !=null) clickElem.innerHTML = data; 
		            }
		        });

		    }
            addClick();
        </script>
		
	</div>
	<script type="text/javascript">
	    function zoom(size)
	    {
	        var content = document.getElementById("content");
	        content.style.fontSize = size+"px";
	        for(var i=0;i<content.childNodes.length;i++)
	        {
	            if(content.childNodes[i].nodeType==1)
	                content.childNodes[i].style.fontSize = size+"px";
	        }
	    }
	    
	    function quote(target,name)
	    {
	        var content = name+"："+target.parentNode.parentNode.parentNode.nextSibling.innerHTML;
	        var reply = document.getElementById("txtContent");
	        if (reply==null) return;
	        reply.value += "[quote]"+content.replace(/<br>/ig,'\n\r')+"[/quote]\n";
	        reply.focus();
	        
            var r = reply.createTextRange();
            r.moveStart('character',reply.innerHTML.length);
            r.collapse(true);
            r.select();
            
            //replace <fieldset(\S|\s)+?legend>(\S|\s)+</fieldset> to [quote]$2[/quote]
	    }
	</script>
 


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