
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>mysql存储过程 在动态SQL内获取返回值 - 数据库 - 金龙博客</title>
<meta name="description" content="很简单，不需要使用游标循环来读取，直接select * into @变量就OK了，还可以传递参数来执行(附MySql通用分页存储过程)。
#拼接查询总记录的SQL语句 
setv_sqlcounts=concat('selectcount(*)into@recordcountfrom',v_tables,v_where); 
set@sqlcounts:=v_sqlcounts; 
#预处理动态SQL 
preparestmtfrom@sqlcounts; 
#传递动态SQL内参数 
set@s1=categoryid; 
executestmtusing@s1; 
deallocatepreparestmt; 
#获取动态SQL语句返回值 
setrecordcount=@recordcount;#拼接查询总记录的SQL语句
set v_sqlcounts = concat('select count(*) into @recordcount from ',v_tables,v_where);
set @sqlcounts := v_sqlcounts;
#预处理动态SQL
prepare stmt from @sqlcounts;
#传递动态SQL内参数
set @s1= categoryid;
execute stmt using @s1;
deallocate prepare stmt;
#获取动态SQL语句返回值
set recordcount = @recordcount;
以上我上再做存储过程分页里用到动态SQL里将查询到的count记录条数通过变量@recordcount放到recordcount里面了。
" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-06-28' } );
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
		     > <a href="/jonllen/db/20.aspx">mysql存储过程 在动态SQL内获取返回值</a>
		</div>
        <div class="article">
			<div class="title"><h2>mysql存储过程 在动态SQL内获取返回值</h2></div>
			<div class="category">分类：<a href="/jonllen/db/">数据库</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div class="blog_content">
<p style="text-indent: 2em;">很简单，不需要使用游标循环来读取，直接select * into @变量就OK了，还可以传递参数来执行。</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #008080;"> 1</span><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #000000;">MySql通用分页存储过程<br /></span><span style="color: #008080;"> 2</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /><br /></span><span style="color: #008080;"> 3</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />过程参数<br /></span><span style="color: #008080;"> 4</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />p_cloumns </span><span style="color: #0000ff;">varchar</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">500</span><span style="color: #000000;">),p_tables </span><span style="color: #0000ff;">varchar</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">100</span><span style="color: #000000;">),p_where </span><span style="color: #0000ff;">varchar</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">4000</span><span style="color: #000000;">),p_order </span><span style="color: #0000ff;">varchar</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">100</span><span style="color: #000000;">),p_pageindex </span><span style="color: #0000ff;">int</span><span style="color: #000000;">,p_pagesize </span><span style="color: #0000ff;">int</span><span style="color: #000000;">,out p_recordcount </span><span style="color: #0000ff;">int</span><span style="color: #000000;">,out p_pagecount </span><span style="color: #0000ff;">int</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 5</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /><br /></span><span style="color: #008080;"> 6</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />$$:</span><span style="color: #0000ff;">begin</span><span style="color: #000000;"><br /></span><span style="color: #008080;"> 7</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">declare</span><span style="color: #000000;"> v_sqlcounts </span><span style="color: #0000ff;">varchar</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">4000</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 8</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">declare</span><span style="color: #000000;"> v_sqlselect </span><span style="color: #0000ff;">varchar</span><span style="color: #000000;">(</span><span style="color: #800000; font-weight: bold;">4000</span><span style="color: #000000;">);<br /></span><span style="color: #008080;"> 9</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    #拼接查询总记录的SQL语句<br /></span><span style="color: #008080;">10</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> v_sqlcounts </span><span style="color: #808080;">=</span><span style="color: #000000;"> concat(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">select count(*) into @recordcount from </span><span style="color: #ff0000;">'</span><span style="color: #000000;">,p_tables,p_where);<br /></span><span style="color: #008080;">11</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    #</span><span style="color: #0000ff;">select</span><span style="color: #000000;"> v_sqlcounts;leave $$;<br /></span><span style="color: #008080;">12</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> </span><span style="color: #008000;">@sqlcounts</span><span style="color: #000000;"> </span><span style="color: #808080;">=</span><span style="color: #000000;"> v_sqlcounts;<br /></span><span style="color: #008080;">13</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">prepare</span><span style="color: #000000;"> stmt </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> </span><span style="color: #008000;">@sqlcounts</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">14</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />         </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> stmt;<br /></span><span style="color: #008080;">15</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">deallocate</span><span style="color: #000000;"> </span><span style="color: #0000ff;">prepare</span><span style="color: #000000;"> stmt;<br /></span><span style="color: #008080;">16</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    #获取动态SQL语句返回值<br /></span><span style="color: #008080;">17</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> p_recordcount </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #008000;">@recordcount</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">18</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    #根据总记录跳数计算出总页数<br /></span><span style="color: #008080;">19</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> p_pagecount </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #ff00ff;">ceiling</span><span style="color: #000000;">((p_recordcount</span><span style="color: #808080;">+</span><span style="color: #800000; font-weight: bold;">0.0</span><span style="color: #000000;">)</span><span style="color: #808080;">/</span><span style="color: #000000;">p_pagesize);<br /></span><span style="color: #008080;">20</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> p_pageindex </span><span style="color: #808080;">&lt;</span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;"> </span><span style="color: #0000ff;">then</span><span style="color: #000000;"><br /></span><span style="color: #008080;">21</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />        </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> p_pageindex </span><span style="color: #808080;">=</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">22</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    elseif p_pageindex </span><span style="color: #808080;">&gt;</span><span style="color: #000000;"> p_pagecount </span><span style="color: #808080;">and</span><span style="color: #000000;"> p_pagecount </span><span style="color: #808080;">&lt;&gt;</span><span style="color: #000000;"> </span><span style="color: #800000; font-weight: bold;">0</span><span style="color: #000000;"> </span><span style="color: #0000ff;">then</span><span style="color: #000000;"><br /></span><span style="color: #008080;">23</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />        </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> p_pageindex </span><span style="color: #808080;">=</span><span style="color: #000000;"> p_pagecount;<br /></span><span style="color: #008080;">24</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">end</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">25</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    #拼接分页查询记录的动态SQL语句<br /></span><span style="color: #008080;">26</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> v_sqlselect </span><span style="color: #808080;">=</span><span style="color: #000000;"> concat(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">select </span><span style="color: #ff0000;">'</span><span style="color: #000000;">,p_cloumns,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;"> from </span><span style="color: #ff0000;">'</span><span style="color: #000000;">,p_tables,p_where,</span><span style="color: #0000ff;">if</span><span style="color: #000000;">(p_order </span><span style="color: #0000ff;">is</span><span style="color: #000000;"> </span><span style="color: #808080;">not</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">,p_order,</span><span style="color: #ff0000;">''</span><span style="color: #000000;">),</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;"> limit </span><span style="color: #ff0000;">'</span><span style="color: #000000;">,(p_pageindex</span><span style="color: #808080;">-</span><span style="color: #800000; font-weight: bold;">1</span><span style="color: #000000;">)</span><span style="color: #808080;">*</span><span style="color: #000000;">p_pagesize,</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;"> , </span><span style="color: #ff0000;">'</span><span style="color: #000000;">,p_pagesize);<br /></span><span style="color: #008080;">27</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    #</span><span style="color: #0000ff;">select</span><span style="color: #000000;"> v_sqlselect;leave $$;<br /></span><span style="color: #008080;">28</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> </span><span style="color: #008000;">@sqlselect</span><span style="color: #000000;"> </span><span style="color: #808080;">=</span><span style="color: #000000;"> v_sqlselect;<br /></span><span style="color: #008080;">29</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">prepare</span><span style="color: #000000;"> stmtselect </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> </span><span style="color: #008000;">@sqlselect</span><span style="color: #000000;">;<br /></span><span style="color: #008080;">30</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">execute</span><span style="color: #000000;"> stmtselect;<br /></span><span style="color: #008080;">31</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" />    </span><span style="color: #0000ff;">deallocate</span><span style="color: #000000;"> </span><span style="color: #0000ff;">prepare</span><span style="color: #000000;"> stmtselect;<br /></span><span style="color: #008080;">32</span><span style="color: #000000;"><img src="/codehighlighter/outliningIndicators/None.gif" /></span><span style="color: #0000ff;">end</span><span style="color: #000000;"> $$</span></div></div></pre>
<div class="dp-highlighter">
<div class="bar">
<div class="tools" style="text-indent: 2em;">Sql代码 <a href="http://jonllen.javaeye.com/blog/370343#" title="复制代码"></a></div>
</div>
<ol>
<li><span><span>#拼接查询总记录的SQL语句 &nbsp;&nbsp;</span></span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">set</span></strong></span><span>&nbsp;v_sqlcounts&nbsp;=&nbsp;concat(</span><span class="string"><span style="color: #0000ff;">'select&nbsp;count(*)&nbsp;into&nbsp;@recordcount&nbsp;from&nbsp;'</span></span><span>,v_tables,v_where); &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">set</span></strong></span><span>&nbsp;@sqlcounts&nbsp;:=&nbsp;v_sqlcounts; &nbsp;&nbsp;</span></li>
<li><span>#预处理动态SQL &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">prepare</span></strong></span><span>&nbsp;stmt&nbsp;</span><span class="keyword"><strong><span style="color: #7f0055;">from</span></strong></span><span>&nbsp;@sqlcounts; &nbsp;&nbsp;</span></li>
<li><span>#传递动态SQL内参数 &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">set</span></strong></span><span>&nbsp;@s1=&nbsp;categoryid; &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">execute</span></strong></span><span>&nbsp;stmt&nbsp;using&nbsp;@s1; &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">deallocate</span></strong></span><span>&nbsp;</span><span class="keyword"><strong><span style="color: #7f0055;">prepare</span></strong></span><span>&nbsp;stmt; &nbsp;&nbsp;</span></li>
<li><span>#获取动态SQL语句返回值 &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">set</span></strong></span><span>&nbsp;recordcount&nbsp;=&nbsp;@recordcount;&nbsp;&nbsp;</span></li>
</ol></div>
<pre>#拼接查询总记录的SQL语句
set v_sqlcounts = concat('select count(*) into @recordcount from ',v_tables,v_where);
set @sqlcounts := v_sqlcounts;
#预处理动态SQL
prepare stmt from @sqlcounts;
#传递动态SQL内参数
set @s1= categoryid;
execute stmt using @s1;
deallocate prepare stmt;
#获取动态SQL语句返回值
set recordcount = @recordcount;</pre>
<p>&nbsp;以上我上再做存储过程分页里用到动态SQL里将查询到的count记录条数通过变量@recordcount放到recordcount里面了。</p>
<p>mysql的IF ELSE和其他数据库的判断有点不一样，简单的判断语句如下。</p>
<div class="dp-highlighter">
<div class="bar">
<div class="tools" style="text-indent: 2em;">Sql代码</div>
</div>
<ol>
<li><span><span>#根据总记录跳数计算出总页数 &nbsp;&nbsp;</span></span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">set</span></strong></span><span>&nbsp;pagecount&nbsp;=&nbsp;ceiling((recordcount+0.0)/pagesize); &nbsp;&nbsp;</span></li>
<li><span>if&nbsp;pageindex&nbsp;&lt;1&nbsp;</span><span class="keyword"><strong><span style="color: #7f0055;">then</span></strong></span><span>&nbsp;&nbsp;</span></li>
<li><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="keyword"><strong><span style="color: #7f0055;">set</span></strong></span><span>&nbsp;pageindex&nbsp;=&nbsp;1; &nbsp;&nbsp;</span></li>
<li><span>elseif&nbsp;pageindex&nbsp;&gt;&nbsp;pagecount&nbsp;</span><span class="keyword"><strong><span style="color: #7f0055;">then</span></strong></span><span>&nbsp;&nbsp;</span></li>
<li><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="keyword"><strong><span style="color: #7f0055;">set</span></strong></span><span>&nbsp;pageindex&nbsp;=&nbsp;pagecount; &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">else</span></strong></span><span>&nbsp;&nbsp;</span></li>
<li><span>&nbsp;&nbsp;&nbsp;&nbsp;</span><span class="keyword"><strong><span style="color: #7f0055;">select</span></strong></span><span>&nbsp;pageindex,pagecount; &nbsp;&nbsp;</span></li>
<li><span></span><span class="keyword"><strong><span style="color: #7f0055;">end</span></strong></span><span>&nbsp;if;&nbsp;&nbsp;</span></li>
</ol></div>
<pre>#根据总记录跳数计算出总页数
set pagecount = ceiling((recordcount+0.0)/pagesize);
if pageindex &lt;1 then
	set pageindex = 1;
elseif pageindex &gt; pagecount then
	set pageindex = pagecount;
else
	select pageindex,pagecount;
end if;</pre>
<pre>&nbsp;</pre>
<pre>&nbsp;</pre>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/db/">数据库</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-06-28 14:59</li>
				<li>update@ 2009-11-29 17:07:11</li>
				<li>阅读(<span id="articleClick">17008</span>)</li>
				<li>评论(1)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href=""></a></li>
<li>下一篇：<a href="/jonllen/db/75.aspx">Asp.Net访问Access数据库注意事项</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'一看就知道是我想要的')">引用</a></li>

						        </ul>
						        <a>1楼</a> 一看就知道是我想要的 2013-02-19 11:34:31
					        </div><div class="cont">一看就知道是我想要的</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=20&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/db/20.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=20";
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