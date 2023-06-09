
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Asp.Net访问Access数据库注意事项 - 数据库 - 金龙博客</title>
<meta name="description" content="博客上线了这么久，一直还是用的Access数据库，不过程序是采用了工厂模式，预定义好了业务接口，方便以后移植到其它数据库上来，不过以前还是使用sqlserver数据库多一点，这次使用Access数据库还是会碰到一些小问题，总体用起来还是很方便，每次备份数据库就直接从ftp上拉下来就是，感觉性能还行，不过这些可能都是建立在小数据量的范围下。Q1：Access连接字符怎么写？A1：Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|blog.mdb。说明：从.Net2.0开始MS开始有App_Data目录来专门存放数据文件，而对于连接字符串数据库的文件位置可以使用DataDirectory关键来表示它的物理路径，从而在获取连接字符串的时候不再需要使用Server.MapPath()转换。Q2：时间类型的字段如何处理？
A2：使用Convert.ToDateTime()进行显示的转换一次即可。说明：Access数据库的时间类型字段需要进行特殊的处理，不然会报错。对于使用OleDbParameter传递参数的时候应该这样来写：parms.Add(new OleDbParameter("postDate", Convert.ToDateTime(article.PostDate.ToString())));先把PostDate的日期类型ToString()再Convert成DateTime类型。 而对于使用sql语句的日期类型..." />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-10-11' } );
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
		     > <a href="/jonllen/db/75.aspx">Asp.Net访问Access数据库注意事项</a>
		</div>
        <div class="article">
			<div class="title"><h2>Asp.Net访问Access数据库注意事项</h2></div>
			<div class="category">分类：<a href="/jonllen/db/">数据库</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p style="text-indent: 2em;">博客上线了这么久，一直还是用的Access数据库，不过程序是采用了工厂模式，预定义好了业务接口，方便以后移植到其它数据库上来，不过以前还是使用sqlserver数据库多一点，这次使用Access数据库还是会碰到一些小问题，总体用起来还是很方便，每次备份数据库就直接从ftp上拉下来就是，感觉性能还行，不过这些可能都是建立在小数据量下。</p>
<p style="text-indent: 2em;"><strong>Q1：Access连接字符怎么写？</strong></p>
<p style="text-indent: 2em;">A1：Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|blog.mdb。</p>
<p style="text-indent: 2em;">说明：从.Net2.0开始MS开始有App_Data目录来专门存放数据文件，而对于连接字符串数据库的文件位置可以使用DataDirectory关键来表示它的物理路径，从而在获取连接字符串的时候不再需要使用Server.MapPath()转换。</p>
<p style="text-indent: 2em;"><strong>Q2：时间类型的字段如何处理？</strong></p>
<p style="text-indent: 2em;">A2：使用Convert.ToDateTime()进行显示的转换一次即可。</p>
<p style="text-indent: 2em;">说明：Access数据库的时间类型字段需要进行特殊的处理，不然会报错。对于使用OleDbParameter传递参数的时候应该这样来写：
<pre><div class="code"><div><span style="color: #000000;">parms.Add(</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OleDbParameter(</span><span style="color: #800000;">"</span><span style="color: #800000;">postDate</span><span style="color: #800000;">"</span><span style="color: #000000;">, Convert.ToDateTime(article.PostDate.ToString())));</span></div></div></pre>
先把PostDate的日期类型ToString()再Convert成DateTime类型。 而对于使用sql语句的日期类型需要使用#来包括日期，不能使用单引号，正确的写法如下：
<pre><div class="code"><div><span style="color: #0000ff;">string</span><span style="color: #000000;"> cmdText </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">string</span><span style="color: #000000;">.Format(</span><span style="color: #800000;">"</span><span style="color: #800000;">SELECT * FROM BL_Article WHERE [postDate] &lt;= #{0}#</span><span style="color: #800000;">"</span><span style="color: #000000;">, Convert.ToDateTime(article.PostDate.ToString()));</span></div></div></pre>
这样组装的sql语句才不会出错。如果使用参数化查询，也需要先把参数值使用Convert.ToDateTime( postDate.ToString())进行转换，否则可能会报<strong>标准表达式中数据类型不匹配</strong>的错误。</p>
<p style="text-indent: 2em;"><strong>Q3：如何返回新插入记录的自动增长编号？</strong></p>
<p style="text-indent: 2em;">A3：这里我自己写了一个方法专门用来返回新插入记录的自动增长编号，同时适用于sqlserver数据库。
<pre><div class="code"><div><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> 插入一条新记录，并返回当前自动增长编号<br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;/summary&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="sql"&gt;</span><span style="color: #008000;">Insert语句</span><span style="color: #808080;">&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;param name="parms"&gt;</span><span style="color: #008000;">参数</span><span style="color: #808080;">&lt;/param&gt;</span><span style="color: #008000;"><br /></span><span style="color: #808080;">///</span><span style="color: #008000;"> </span><span style="color: #808080;">&lt;returns&gt;</span><span style="color: #008000;">当前插入记录的自动增长编号</span><span style="color: #808080;">&lt;/returns&gt;</span><span style="color: #808080;"><br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> ExecuteNonQueryReturnIdentity(</span><span style="color: #0000ff;">string</span><span style="color: #000000;"> sql, List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">OleDbParameter</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> parms)<br />{<br />    OleDbConnection conn </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OleDbConnection(CONN_STRING);<br />    OleDbCommand cmd </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> OleDbCommand(sql, conn);<br />    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (parms </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;"> </span><span style="color: #000000;">&amp;&amp;</span><span style="color: #000000;"> parms.Count </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />    {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">添加参数</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">foreach</span><span style="color: #000000;"> (OleDbParameter parameter </span><span style="color: #0000ff;">in</span><span style="color: #000000;"> parms)<br />        {<br />            cmd.Parameters.Add(parameter);<br />        }<br />    }<br /><br />    </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> record </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">;<br />    OleDbTransaction tr </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br />    conn.Open();<br />    tr </span><span style="color: #000000;">=</span><span style="color: #000000;"> conn.BeginTransaction();<br />    cmd.Transaction </span><span style="color: #000000;">=</span><span style="color: #000000;"> tr;<br />    record </span><span style="color: #000000;">=</span><span style="color: #000000;"> cmd.ExecuteNonQuery();<br />    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (record </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br />    {<br />        cmd.CommandText </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">SELECT @@identity</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br />        record </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">int</span><span style="color: #000000;">.Parse(cmd.ExecuteScalar().ToString());<br />    }<br />    tr.Commit();<br />    conn.Close();<br />    </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> record;<br />}</span></div></div></pre>
</p>
<p style="text-indent: 2em;">说明：先添加参数，然后开始事务，接着正常的ExecuteNonQuery()执行Insert语句，接下来注意使用了Command来ExecuteScalar了SELECT @@identity语句，这样就是用的同一个连接会话，返回第一行第一列identity即是新插入记录的自动增长编号。</p>
<p style="text-indent: 2em;"><strong>Q4：Access如何按yyyy-MM-dd时间格式查询每天的归档？</strong></p>
<p style="text-indent: 2em;">A4：sql语句如下：
<pre><div class="code"><div><span style="color: #0000ff;">select</span><span style="color: #000000;"> cstr(</span><span style="color: #ff00ff;">DatePart</span><span style="color: #000000;">(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">yyyy</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,postDate))</span><span style="color: #808080;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">-</span><span style="color: #ff0000;">'</span><span style="color: #808080;"> </span><span style="color: #000000;">cstr(</span><span style="color: #ff00ff;">DatePart</span><span style="color: #000000;">(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">m</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,postDate))</span><span style="color: #808080;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">-</span><span style="color: #ff0000;">'</span><span style="color: #808080;"> </span><span style="color: #000000;">cstr(</span><span style="color: #ff00ff;">DatePart</span><span style="color: #000000;">(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">d</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,postDate)) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> </span><span style="color: #ff0000;">[</span><span style="color: #ff0000;">date</span><span style="color: #ff0000;">]</span><span style="color: #000000;">,</span><span style="color: #ff00ff;">count</span><span style="color: #000000;">(articleId) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> </span><span style="color: #ff0000;">[</span><span style="color: #ff0000;">count</span><span style="color: #ff0000;">]</span><span style="color: #000000;"> </span><span style="color: #0000ff;">from</span><span style="color: #000000;"> BL_Article </span><span style="color: #0000ff;">group</span><span style="color: #000000;"> </span><span style="color: #0000ff;">by</span><span style="color: #000000;"> cstr(</span><span style="color: #ff00ff;">DatePart</span><span style="color: #000000;">(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">yyyy</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,postDate))</span><span style="color: #808080;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">-</span><span style="color: #ff0000;">'</span><span style="color: #808080;"> </span><span style="color: #000000;">cstr(</span><span style="color: #ff00ff;">DatePart</span><span style="color: #000000;">(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">m</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,postDate))</span><span style="color: #808080;"> </span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">-</span><span style="color: #ff0000;">'</span><span style="color: #808080;"> </span><span style="color: #000000;">cstr(</span><span style="color: #ff00ff;">DatePart</span><span style="color: #000000;">(</span><span style="color: #ff0000;">'</span><span style="color: #ff0000;">d</span><span style="color: #ff0000;">'</span><span style="color: #000000;">,postDate))</span></div></div></pre>
</p>
<p style="text-indent: 2em;">说明：使用DataPart来取日期的部分值，然后使用cstr转换成字符串类型，使用 号连接起来，最后使用group by进行分组，如果是需要按月进行归档统计去掉DataPart('d',postDate)的部分就有了。</p>
<p style="text-indent: 2em;"><strong>Q5：Access数据库还有其他的注意项吗？</strong></p>
<p style="text-indent: 2em;">A5：Access是一个轻量级的桌面数据库，当然它的功能语法上和其他数据库比还是有一定的限制的。</p>
<p style="text-indent: 2em;">说明：只支持单条语句的执行，不能使用一些高级的语法，分页比较麻烦。不能使用!=号，但可以使用&lt;&gt;代替。关键字的问题，有时候列使用了title、password一些关键字会报一些莫名奇妙的错误，让人摸不着头脑，使用[]来包括列即可解决问题，当然其它数据库也会存在这个问题，养成把所有列都用[]包括起来的良好习惯才是。以后如果遇到一些使用Access数据库的问题将继续更新。</p>
<p style="text-indent: 2em;"><strong>Q6：至少一个参数没有被指定值。</strong></p>
<p style="text-indent: 2em;">A6：使用Asp.Net执行修改操作报至少一个参数没有被指定值的错。</p>
<p style="text-indent: 2em;">说明：看起来好象是在sql语句里使用了参数化查询，但执行的时候没有传递参数进去，但我一个个字段对照发现每个参数有值传递，纳闷了好久。跑到数据库那里去看，原来一个字段名称错了还没有修改过来，其实就是指定的一个列名不存在，但报至少一个参数没有被指定值这样的错误提示信息实乃误导。</p>
<p style="text-indent: 2em;"><strong>Q7：语法错误 (操作符丢失) 在查询表达式 'INNER JOIN...'中。</strong></p>
<p style="text-indent: 2em;">A7：这样是在Access数据库中使用INNER JOIN语法的问题。</p>
<p style="text-indent: 2em;">说明：Access能使用INNER JOIN语法，但是和其他数据库不同是多个INNER JOIN需要使用()包括起来，如果只关联一个表用INNER JOIN不需要，如select * from a inner join b on a.id = b.id，但是多个INNER JOIN使用就必须把前一个INNER JOIN用()包括起来，如select * from (a inner join b on a.id = b.id) inner join c on a.cid = c.cid，否则将报如上语法错误。</p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/db/">数据库</a> Access
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-10-11 20:57</li>
				<li>update@ 2010-06-17 22:18:36</li>
				<li>阅读(<span id="articleClick">12256</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/db/20.aspx">mysql存储过程 在动态SQL内获取返回值</a></li>
<li>下一篇：<a href="/jonllen/db/oracle-notes.aspx">oracle学习小记</a></li></ul>
		</div>
		

<div class="correlative">
	
		    <h4>相关文章</h4>
			<ul>



			</ul>
		
</div>

		
		<div class="comment">
			<div class="title">评论</div>
			<div class="commentlist" id="commentContent">
				

				<div id="commentNothing" class="nothing">
	暂无任何评论。
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=75&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/db/75.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=75";
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