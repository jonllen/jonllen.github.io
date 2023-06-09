
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Struts增删改查实例及源代码下载 - Java - 金龙博客</title>
<meta name="description" content="今天，我又做了一个培训，这次讲的是Java的Struts，康师傅很重视这次Struts的培训，他说我这次做的准备比较充分，可能他是觉得我对Struts已经比较了解了吧，但其实这一次是我最没有做准备的一次，我以前二次培训都会预先写一篇博文或内容大纲，而我这次什么都没有做，虽然这次我能从头到尾不停的讲下去，但这些都是我自己明白大家却没能听懂，没能教会大家，这证明我的表达问题的方法方式还有待改进，没有从大家的角度了看问题，才导致这次培训大家都没有听懂，我之过也。
虽然，康师傅下令叫我下个星期分二次重新讲Struts，但我还是来回顾一下我今天讲的Struts内容。
今天我们主要讲的是Struts，我简单的用pd画了一个时序图，以便了解它的整个流程，这里我们可以看出，其实struts也是java里面MVC模式的一种，jsp或do页面为表现层(View)，StrutsForm充当映射模型(Model)，而StrutsAction则是控制中心(Control)，其中还有FormValidate和ActionValidate的Struts验证。图不是很正规，如下：

这里我会分为增、删、改、查四个功能来分别在Struts里的实现，然后讲述它每一个功能走的流程。这里先来讲增加功能的实现，在项目里面增加Struts的引用，然后新建useradd.jsp页面，" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-10-19' } );
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
		     > <a href="/jonllen/java/">Java</a>
		     > <a href="/jonllen/java/struts.aspx">Struts增删改查实例及源代码下载</a>
		</div>
        <div class="article">
			<div class="title"><h2>Struts增删改查实例及源代码下载</h2></div>
			<div class="category">分类：<a href="/jonllen/java/">Java</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<p style="text-indent: 2em;">今天，我又做了一个培训，这次讲的是Java的Struts，康师傅很重视这次Struts的培训，他说我这次做的准备比较充分，可能他是觉得我对Struts已经比较了解了吧，但其实这一次是我最没有做准备的一次，我以前二次培训都会预先写一篇博文或内容大纲，而我这次什么都没有做，虽然这次我能从头到尾不停的讲下去，但这些都是我自己明白大家却没能听懂，没能教会大家，这证明我的表达问题的方法方式还有待改进，没有从大家的角度了看问题，才导致这次培训大家都没有听懂，我之过也。</p>
<p style="text-indent: 2em;">虽然，康师傅下令叫我下个星期分二次重新讲Struts，但我还是来回顾一下我今天讲的Struts内容。</p>
<p style="text-indent: 2em;">今天我们主要讲的是Struts，我简单的用pd画了一个时序图，以便了解它的整个流程，这里我们可以看出，其实struts也是java里面MVC模式的一种，jsp或do页面为表现层(View)，StrutsForm充当映射模型(Model)，而StrutsAction则是控制中心(Control)，其中还有FormValidate和ActionValidate的Struts验证。图不是很正规，如下：</p>
<p><a href="/upload/jonllen/article/SequenceDiagram.gif" target="_blank"><img title="Struts工作流程PowerDesigner时序图" src="/upload/jonllen/article/SequenceDiagram.gif" alt="Struts工作流程PowerDesigner时序图" width="500" height="353" /></a></p>
<p style="text-indent: 2em;">这里我会分为增、删、改、查四个功能来分别在Struts里的实现，然后讲述它每一个功能走的流程。这里先来讲增加功能的实现，在项目里面增加Struts的引用，然后新建useradd.jsp页面，在页面最上头添加struts标签的引用，如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000; background-color: #ffff00;">&lt;%</span><span style="color: #000000; background-color: #f5f5f5;">@ taglib uri</span><span style="color: #000000; background-color: #f5f5f5;">=</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #800000; background-color: #f5f5f5;">http://struts.apache.org/tags-bean</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #000000; background-color: #f5f5f5;"> prefix</span><span style="color: #000000; background-color: #f5f5f5;">=</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #800000; background-color: #f5f5f5;">bean</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #000000; background-color: #f5f5f5;"> </span><span style="color: #000000; background-color: #ffff00;">%&gt;</span><span style="color: #000000;"><br /></span><span style="color: #000000; background-color: #ffff00;">&lt;%</span><span style="color: #000000; background-color: #f5f5f5;">@ taglib uri</span><span style="color: #000000; background-color: #f5f5f5;">=</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #800000; background-color: #f5f5f5;">http://struts.apache.org/tags-html</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #000000; background-color: #f5f5f5;"> prefix</span><span style="color: #000000; background-color: #f5f5f5;">=</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #800000; background-color: #f5f5f5;">html</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #000000; background-color: #f5f5f5;"> </span><span style="color: #000000; background-color: #ffff00;">%&gt;</span><span style="color: #000000;"><br /></span><span style="color: #000000; background-color: #ffff00;">&lt;%</span><span style="color: #000000; background-color: #f5f5f5;">@ taglib uri</span><span style="color: #000000; background-color: #f5f5f5;">=</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #800000; background-color: #f5f5f5;">http://struts.apache.org/tags-logic</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #000000; background-color: #f5f5f5;"> prefix</span><span style="color: #000000; background-color: #f5f5f5;">=</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #800000; background-color: #f5f5f5;">logic</span><span style="color: #800000; background-color: #f5f5f5;">"</span><span style="color: #000000; background-color: #f5f5f5;"> </span><span style="color: #000000; background-color: #ffff00;">%&gt;</span></div></div></pre>
<p style="text-indent: 2em;">然后我们就可以在页面里面使用强大的Struts标签了，在页面的body内加入一个struts表单，如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:form </span><span style="color: #ff0000;">action</span><span style="color: #0000ff;">="/struts/useradd.do"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">div </span><span style="color: #ff0000;">class</span><span style="color: #0000ff;">="msg"</span><span style="color: #ff0000;"> style</span><span style="color: #0000ff;">="color:red; margin:10px; padding:5px;border:solid &lt;bean:write name="</span><span style="color: #ff0000;">UserAddForm" property</span><span style="color: #0000ff;">="hasErrors"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;">px green"&gt;<br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:errors </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">用户名：<br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:text </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserName"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:text</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">span </span><span style="color: #ff0000;">style</span><span style="color: #0000ff;">="color:red"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:errors </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserName"</span><span style="color: #ff0000;"> prefix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> suffix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> header</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> footer</span><span style="color: #0000ff;">=""</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:errors</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">邮　箱：<br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:text </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserEmail"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:text</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">span </span><span style="color: #ff0000;">style</span><span style="color: #0000ff;">="color:red"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:errors </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserEmail"</span><span style="color: #ff0000;"> prefix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> suffix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> header</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> footer</span><span style="color: #0000ff;">=""</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:errors</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">性　别：<br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:radio </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserSex"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="1"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">男</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">html:radio</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:radio </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserSex"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="0"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">女</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">html:radio</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">span </span><span style="color: #ff0000;">style</span><span style="color: #0000ff;">="color:red"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:errors </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserSex"</span><span style="color: #ff0000;"> prefix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> suffix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> header</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> footer</span><span style="color: #0000ff;">=""</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:errors</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">城　市：<br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:text </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserCity"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:text</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">span </span><span style="color: #ff0000;">style</span><span style="color: #0000ff;">="color:red"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:errors </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserCity"</span><span style="color: #ff0000;"> prefix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> suffix</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> header</span><span style="color: #0000ff;">=""</span><span style="color: #ff0000;"> footer</span><span style="color: #0000ff;">=""</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:errors</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">span</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">p</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:submit </span><span style="color: #ff0000;">value</span><span style="color: #0000ff;">="提交"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:submit</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            　</span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">a </span><span style="color: #ff0000;">href</span><span style="color: #0000ff;">="userlist.jsp"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">返回列表</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">html:form</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<p style="text-indent: 2em;">上面所使用的输入控件都是struts的自定义标签，<span style="color: #800000;">html:form </span><span style="color: #ff0000;">action</span><span style="color: #0000ff;">="/struts/useradd.do"</span>是一个struts的form表单标签，它最后产生的就是html的form表单，这里的action是指向.do页面，当服务器端解析到这一行struts自定义标签的时候，它会根据action这个路径找到对应的StrutsForm(这里应该是UserAddForm，在struts-config.xml配置文件里面)，并初始化创建实例保存在当前上下文内，那当解析form标签里面<span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:text </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="fdUserName"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:text</span><span style="color: #0000ff;">&gt;</span>的时候，则是在ActionForm里面找到<span style="color: #0000ff;">fdUserName</span>a的属性字段(带JavaBean的get和set方法访问规则)，如果它不为空的话输出的text标签value将会被赋初始值为ActionForm里对应的字段。<span style="color: #800000;">html:errors</span>是struts错误信息标签，可以是StrutsFrom表单在执行了validate方法返回的ActionErrors错误信息，如果指定了<span style="color: #ff0000;">property</span>则是显示指定的字段的错误信息。在请求jsp页面的时候只会实例化创建<span style="color: #800000;">html:form</span>的<span style="color: #ff0000;">action</span>对应的StrutsFrom类，且不会调用StrutsForm的validate验证方法，也不会跳到StrutsAction里执行，而是直接返回，页面根据StrutsForm属性字段初始话输出值，这就是为什么要用<span style="color: #800000;">html:text</span>这种struts标签，它既能根据StrutsForm的对应字段初始话值，当用户post请求*.do的时候反向填充到StrutsForm，在validate错误的时候就能保存用户输入的信息，返回页面让用户修改重新输入，当然这里我没有在StrutsAction里面做验证，而是在StrutsForm里面进行，用户第一次请求useradd.jsp页面的时候不会调用StrutsForm里面的validate方法，但当post到*.do时则会先事例化对应StrutsForm表单，如果配置文件内设置了validate=true则会调用validate验证方法，只有验证通过时候才会跳到StrutsAction里执行execute方法，所以在StrutsAction里我是直接获取StrutsForm里面的值插入到数据库，然后通过返回一个ActionForward转发页面，userlist是在struts-config.xml配置一个全局转发的页面url地址，UserAddAction的execute代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">public</span><span style="color: #000000;"> ActionForward execute(ActionMapping mapping, ActionForm form,<br />        HttpServletRequest request, HttpServletResponse response)<br />        </span><span style="color: #0000ff;">throws</span><span style="color: #000000;"> Exception {<br /><br />    UserAddForm userForm </span><span style="color: #000000;">=</span><span style="color: #000000;"> (UserAddForm)form;<br /><br />    bean.User userBean </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> bean.User();<br />    userBean.setFdUserName( userForm.getFdUserName() );<br />    userBean.setFdUserEmail( userForm.getFdUserEmail() );<br />    userBean.setFdUserSex(  userForm.getFdUserSex() );<br />    userBean.setFdUserCity(  userForm.getFdUserCity() );<br /><br />    </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> record </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> bll.UserBLL().UserAdd(userBean);<br /><br />    request.setAttribute(</span><span style="color: #000000;">"</span><span style="color: #000000;">msg</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #000000;">"</span><span style="color: #000000;">添加用户</span><span style="color: #000000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> (record </span><span style="color: #000000;">&gt;</span><span style="color: #000000;">0</span><span style="color: #000000;"> </span><span style="color: #000000;">?</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">成功！</span><span style="color: #000000;">"</span><span style="color: #000000;"> : </span><span style="color: #000000;">"</span><span style="color: #000000;">失败！</span><span style="color: #000000;">"</span><span style="color: #000000;">) );<br /><br />    </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> mapping.findForward(</span><span style="color: #000000;">"</span><span style="color: #000000;">userlist</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br /><br />}</span></div></div></pre>
<p style="text-indent: 2em;">struts-config.xml配置文件的内容如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;?</span><span style="color: #ff00ff;">xml version="1.0" encoding="UTF-8" </span><span style="color: #0000ff;">?&gt;</span><span style="color: #000000;"><br /><br /></span><span style="color: #0000ff;">&lt;!</span><span style="color: #ff00ff;">DOCTYPE struts-config PUBLIC<br />          "-//Apache Software Foundation//DTD Struts Configuration 1.3//EN"<br />          "http://jakarta.apache.org/struts/dtds/struts-config_1_3.dtd"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">struts-config</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">form-beans</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">form-bean </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="UserEditForm"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.form.UserEditForm"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">form-bean </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="UserAddForm"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.form.UserAddForm"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">form-bean </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="UserListForm"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.form.UserListForm"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">form-beans</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    <br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">global-exceptions</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    <br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">global-exceptions</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">global-forwards</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">forward </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="userlist"</span><span style="color: #ff0000;"> redirect</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> path</span><span style="color: #0000ff;">="/struts/userlist.jsp"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">forward</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">global-forwards</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action-mappings</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action </span><span style="color: #ff0000;">input</span><span style="color: #0000ff;">="/struts/useradd.jsp"</span><span style="color: #ff0000;"> validate</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"> name</span><span style="color: #0000ff;">="UserAddForm"</span><span style="color: #ff0000;"> path</span><span style="color: #0000ff;">="/struts/useradd"</span><span style="color: #ff0000;"> scope</span><span style="color: #0000ff;">="request"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.action.UserAddAction"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action </span><span style="color: #ff0000;">validate</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> path</span><span style="color: #0000ff;">="/struts/userdel"</span><span style="color: #ff0000;"> scope</span><span style="color: #0000ff;">="request"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.action.UserDelAction"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action </span><span style="color: #ff0000;">input</span><span style="color: #0000ff;">="/struts/useredit.jsp"</span><span style="color: #ff0000;"> validate</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> name</span><span style="color: #0000ff;">="UserEditForm"</span><span style="color: #ff0000;"> path</span><span style="color: #0000ff;">="/struts/useredit"</span><span style="color: #ff0000;"> scope</span><span style="color: #0000ff;">="request"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.action.UserEditAction"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">action </span><span style="color: #ff0000;">input</span><span style="color: #0000ff;">="/struts/userlist.jsp"</span><span style="color: #ff0000;"> validate</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> name</span><span style="color: #0000ff;">="UserListForm"</span><span style="color: #ff0000;"> path</span><span style="color: #0000ff;">="/struts/userlist"</span><span style="color: #ff0000;"> scope</span><span style="color: #0000ff;">="request"</span><span style="color: #ff0000;"> type</span><span style="color: #0000ff;">="struts.action.UserListAction"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">action-mappings</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    <br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">controller </span><span style="color: #ff0000;">inputForward</span><span style="color: #0000ff;">="false"</span><span style="color: #ff0000;"> processorClass</span><span style="color: #0000ff;">="org.apache.struts.tiles.TilesRequestProcessor"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br /><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">message-resources </span><span style="color: #ff0000;">parameter</span><span style="color: #0000ff;">="ApplicationResource"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;">    <br />    <br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">plug-in </span><span style="color: #ff0000;">className</span><span style="color: #0000ff;">="org.apache.struts.tiles.TilesPlugin"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">set-property </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="definitions-config"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="/WEB-INF/tiles-defs.xml"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;">      <br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">set-property </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="moduleAware"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="true"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">plug-in</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    <br />    </span><span style="color: #008000;">&lt;!--</span><span style="color: #008000;"> ========================= Validator plugin ================================= </span><span style="color: #008000;">--&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">plug-in </span><span style="color: #ff0000;">className</span><span style="color: #0000ff;">="org.apache.struts.validator.ValidatorPlugIn"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">set-property<br />            </span><span style="color: #ff0000;">property</span><span style="color: #0000ff;">="pathnames"</span><span style="color: #ff0000;"><br />            value</span><span style="color: #0000ff;">="/WEB-INF/validator-rules.xml,/WEB-INF/validation.xml"</span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">plug-in</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />  <br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">struts-config</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<p style="text-indent: 2em;">再看一下使用Struts来实现用户编辑的功能，编辑先要查询出用户信息，点击保存后再post回来执行修改。所以这里我们编辑就先链接到useredit.do传递一个id参数过去，并把ActionForm的validate设置为false，让它顺利的执行到StrutsAction的execute方法，这样就能在这个方法里面访问数据库获取用户信息并初始化填充到表单，再转发到原来的编辑页面，那么对应ActionForm已经有值填充，所以页面里面的struts标签就会对应ActionForm有初始值。那我在保存的时候也是post到useredit.do那如何区分是要初始化填充ActionForm还是保存更新到数据库呢？我这里是在execute方里根据HttpMethod做一个简单的判断，如果为post就认为是保存更新，否则是初始化填充ActionForm表单，这里我在保存更新时也做了验证判断，如果验证失败则Forward转发到Input的输入页面(即是在配置文件里面的<span style="color: #ff0000;">input</span><span style="color: #0000ff;">="/struts/useredit.jsp"</span>)，UserEditAction的execute方法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">public</span><span style="color: #000000;"> ActionForward execute(ActionMapping mapping, ActionForm form,<br />        HttpServletRequest request, HttpServletResponse response)<br />        </span><span style="color: #0000ff;">throws</span><span style="color: #000000;"> Exception {<br /><br />    UserEditForm userForm </span><span style="color: #000000;">=</span><span style="color: #000000;"> (UserEditForm)form;<br /><br />    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( </span><span style="color: #000000;">"</span><span style="color: #000000;">post</span><span style="color: #000000;">"</span><span style="color: #000000;">.equalsIgnoreCase( request.getMethod() ) )<br />    {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">验证Form</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        ActionErrors errors </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionErrors();<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( </span><span style="color: #000000;">0</span><span style="color: #000000;"> </span><span style="color: #000000;">==</span><span style="color: #000000;"> userForm.getFdUserID() )<br />        {<br />            errors.add( </span><span style="color: #000000;">"</span><span style="color: #000000;">fdUserID</span><span style="color: #000000;">"</span><span style="color: #000000;">,  </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">用户不存在！！！</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( util.Convert.isNullorEmpty( userForm.getFdUserName() ) )<br />        {<br />            errors.add( </span><span style="color: #000000;">"</span><span style="color: #000000;">fdUserName</span><span style="color: #000000;">"</span><span style="color: #000000;">,  </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">用户名不能为空！</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( util.Convert.isNullorEmpty( userForm.getFdUserEmail() ) )<br />        {<br />            errors.add( </span><span style="color: #000000;">"</span><span style="color: #000000;">fdUserEmail</span><span style="color: #000000;">"</span><span style="color: #000000;">,  </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">邮箱地址不能为空！</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( </span><span style="color: #000000;">-</span><span style="color: #000000;">1</span><span style="color: #000000;"> </span><span style="color: #000000;">==</span><span style="color: #000000;"> userForm.getFdUserSex() )<br />        {<br />            errors.add( </span><span style="color: #000000;">"</span><span style="color: #000000;">fdUserSex</span><span style="color: #000000;">"</span><span style="color: #000000;">,  </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">性别不能为空！</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( util.Convert.isNullorEmpty( userForm.getFdUserCity() ) )<br />        {<br />            errors.add( </span><span style="color: #000000;">"</span><span style="color: #000000;">fdUserCity</span><span style="color: #000000;">"</span><span style="color: #000000;">,  </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">城市不能为空！</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( </span><span style="color: #000000;">!</span><span style="color: #000000;">util.Convert.isDate( userForm.getFdUserTime() ) )<br />        {<br />            errors.add( </span><span style="color: #000000;">"</span><span style="color: #000000;">fdUserTime</span><span style="color: #000000;">"</span><span style="color: #000000;">,  </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionMessage(</span><span style="color: #000000;">"</span><span style="color: #000000;">时间为空或格式不正确！</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #0000ff;">false</span><span style="color: #000000;">));<br />        }<br /><br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( errors.size() </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;"> )<br />        {<br />            userForm.setHasErrors(</span><span style="color: #000000;">1</span><span style="color: #000000;">);<br />            </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.saveErrors(request, errors);<br />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> mapping.getInputForward();<br />        }<br /><br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">保存用户</span><span style="color: #008000;"><br /></span><span style="color: #000000;">         bean.User userBean </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> bean.User();<br />        userBean.setFdUserID( userForm.getFdUserID() );<br />        userBean.setFdUserName( userForm.getFdUserName() );<br />        userBean.setFdUserEmail( userForm.getFdUserEmail() );<br />        userBean.setFdUserSex( userForm.getFdUserSex() );<br />        userBean.setFdUserCity( userForm.getFdUserCity() );<br />        userBean.setFdUserTime( </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> java.text.SimpleDateFormat(</span><span style="color: #000000;">"</span><span style="color: #000000;">yyyy-MM-dd HH:mm:ss</span><span style="color: #000000;">"</span><span style="color: #000000;">).parse( userForm.getFdUserTime())  );<br />        </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> record </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> bll.UserBLL().UserUpdate(userBean);<br />        String msg </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">修改用户</span><span style="color: #000000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;"> </span><span style="color: #000000;"> (record </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;"> </span><span style="color: #000000;">?</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">成功！</span><span style="color: #000000;">"</span><span style="color: #000000;"> : </span><span style="color: #000000;">"</span><span style="color: #000000;">失败！</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />        request.setAttribute(</span><span style="color: #000000;">"</span><span style="color: #000000;">msg</span><span style="color: #000000;">"</span><span style="color: #000000;">, msg);<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> mapping.findForward(</span><span style="color: #000000;">"</span><span style="color: #000000;">userlist</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />    }<br /><br />    bean.User userBean </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;">;<br />    </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> id </span><span style="color: #000000;">=</span><span style="color: #000000;"> util.Convert.ParseInt( request.getParameter(</span><span style="color: #000000;">"</span><span style="color: #000000;">id</span><span style="color: #000000;">"</span><span style="color: #000000;">) ,</span><span style="color: #000000;">0</span><span style="color: #000000;"> );<br />    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( id </span><span style="color: #000000;">==</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;"> )<br />    {<br />        request.setAttribute(</span><span style="color: #000000;">"</span><span style="color: #000000;">msg</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #000000;">"</span><span style="color: #000000;">参数不正确！</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> mapping.findForward(</span><span style="color: #000000;">"</span><span style="color: #000000;">userlist</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />    }<br />    </span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />    {<br />        userBean </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> bll.UserBLL().GetUserInfo( id );<br />    }<br /><br />    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (userBean</span><span style="color: #000000;">==</span><span style="color: #0000ff;">null</span><span style="color: #000000;">)<br />    {<br />        request.setAttribute(</span><span style="color: #000000;">"</span><span style="color: #000000;">msg</span><span style="color: #000000;">"</span><span style="color: #000000;">, </span><span style="color: #000000;">"</span><span style="color: #000000;">用户不存在！</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> mapping.findForward(</span><span style="color: #000000;">"</span><span style="color: #000000;">userlist</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />    }<br />    </span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />    {<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">无错误信息</span><span style="color: #008000;"><br /></span><span style="color: #000000;">         userForm.setFdUserID( userBean.getFdUserID() );<br />        userForm.setFdUserName( userBean.getFdUserName() );<br />        userForm.setFdUserEmail( userBean.getFdUserEmail() );<br />        userForm.setFdUserSex( userBean.getFdUserSex() );<br />        userForm.setFdUserCity( userBean.getFdUserCity() );<br />        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> ( userBean.getFdUserTime() </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;"> )<br />        {<br />            userForm.setFdUserTime( </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> java.text.SimpleDateFormat(</span><span style="color: #000000;">"</span><span style="color: #000000;">yyyy-MM-dd HH:mm:ss</span><span style="color: #000000;">"</span><span style="color: #000000;">).format( userBean.getFdUserTime() ) );<br />        }<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">request.setAttribute("UserEditForm", userForm);</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionForward(</span><span style="color: #000000;">"</span><span style="color: #000000;">/struts/useredit.jsp</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />    }<br /><br />}</span></div></div></pre>
<p style="text-indent: 2em;">通过使用<span style="color: #0000ff;">if</span><span style="color: #000000;"> ( </span><span style="color: #000000;">"</span><span style="color: #000000;">post</span><span style="color: #000000;">"</span><span style="color: #000000;">.equalsIgnoreCase( request.getMethod() ) )</span>的判断来区分StrutsForm的初始化填充值和保存更新，返回不同的Forward转发页面，要注意的是这里我使用了request.setAttribute("msg", msg)，把有些信息放在了request上下文，这样我在Forward的页面就能获取msg并在页面上显示出来，在接下来说的userlist.jsp页面就有使用struts标签输出msg的，下面就是使用struts显示列表的做法，页面主要标签代码如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">logic:present </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="msg"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">div </span><span style="color: #ff0000;">class</span><span style="color: #0000ff;">="msg"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">bean:write </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="msg"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">div</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">logic:present</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:form </span><span style="color: #ff0000;">action</span><span style="color: #0000ff;">="/struts/userlist.do"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    切换数据库：<br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:select </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="UserListForm"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="defaultName"</span><span style="color: #ff0000;"> onchange</span><span style="color: #0000ff;">="location='userlist.do?type=' this.value"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">html:optionsCollection </span><span style="color: #ff0000;">label</span><span style="color: #0000ff;">="dbName"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="dbName"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="dblist"</span><span style="color: #ff0000;"> </span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">html:optionsCollection</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">html:select</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">br </span><span style="color: #0000ff;">/&gt;&lt;</span><span style="color: #800000;">br </span><span style="color: #0000ff;">/&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">table </span><span style="color: #ff0000;">cellpadding</span><span style="color: #0000ff;">="5"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">tr</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                UserId<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                UserName<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                Email<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                Sex<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                City<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                Time<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                操作<br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">th</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">tr</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">logic:iterate </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> name</span><span style="color: #0000ff;">="UserListForm"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="list"</span><span style="color: #ff0000;"> offset</span><span style="color: #0000ff;">="0"</span><span style="color: #ff0000;"> length</span><span style="color: #0000ff;">="20"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">tr</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">bean:write </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="fdUserID"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">bean:write </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="fdUserName"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">bean:write </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="fdUserEmail"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">logic:equal </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="fdUserSex"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="1"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">男</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">logic:equal</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">logic:notEqual </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="fdUserSex"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="1"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">女</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">logic:notEqual</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">bean:write </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="fdUserCity"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">bean:write </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="user"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="fdUserTime"</span><span style="color: #ff0000;"> format</span><span style="color: #0000ff;">="yyyy年MM月dd日 HH点mm分ss秒"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">a </span><span style="color: #ff0000;">href</span><span style="color: #0000ff;">="useredit.do?id=&lt;bean:write name="</span><span style="color: #ff0000;">user" property</span><span style="color: #0000ff;">="fdUserID"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">"&gt;编辑</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                 </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">a </span><span style="color: #ff0000;">href</span><span style="color: #0000ff;">="userdel.do?id=&lt;bean:write name="</span><span style="color: #ff0000;">user" property</span><span style="color: #0000ff;">="fdUserID"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">" onclick="return confirm('是否确认删除？')"&gt;删除</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">tr</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">logic:iterate</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">bean:size </span><span style="color: #ff0000;">id</span><span style="color: #0000ff;">="count"</span><span style="color: #ff0000;"> name</span><span style="color: #0000ff;">="UserListForm"</span><span style="color: #ff0000;"> property</span><span style="color: #0000ff;">="list"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:size</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">logic:equal </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="count"</span><span style="color: #ff0000;"> value</span><span style="color: #0000ff;">="0"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">tr</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">td </span><span style="color: #ff0000;">colspan</span><span style="color: #0000ff;">="7"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">em</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">暂无数据，记录为</span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">bean:write </span><span style="color: #ff0000;">name</span><span style="color: #0000ff;">="count"</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">bean:write</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">。</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">em</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />                </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">td</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />            </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">tr</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />        </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">logic:equal</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">table</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">h4</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">a </span><span style="color: #ff0000;">href</span><span style="color: #0000ff;">="useradd.jsp"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">添加用户</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">h4</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #0000ff;">&lt;</span><span style="color: #800000;">h4</span><span style="color: #0000ff;">&gt;&lt;</span><span style="color: #800000;">a </span><span style="color: #ff0000;">href</span><span style="color: #0000ff;">="/factory/userlist.jsp"</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;">转至：/factory/userlist.jsp</span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">a</span><span style="color: #0000ff;">&gt;&lt;/</span><span style="color: #800000;">h4</span><span style="color: #0000ff;">&gt;</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">&lt;/</span><span style="color: #800000;">html:form</span><span style="color: #0000ff;">&gt;</span></div></div></pre>
<p style="text-indent: 2em;">标签<span style="color: #800000;">logic:present</span>就是判断当前上下文环境里是否存在msg的对象，并且不为空，就输出标签体里内容。而这次<span style="color: #800000;">html:form</span>标签内使用了<span style="color: #800000;">html:select</span>、<span style="color: #800000;">html:optionsCollection</span>、<span style="color: #800000;">logic:iterate</span>等标签，但是它们的<span style="color: #ff0000;">property</span>都无非是对应着StrutsForm的字段，在解析输出成html代码的时候就根据StrutsForm对应字段输出值，我在这个struts实例里访问数据库使用的是简单工厂模式，暂只用sqlserver、mysql、derby(NetBeans自带的数据库)实现了接口，经过修改能实现在线切换访问的数据库功能，这个在之后文章里详细介绍，这里我只是在StrutsForm里增加当前使用数据库和切换列表，供在jsp页面输出显示，在StrutsAction里去调用切换数据库的方法，先看我UserListForm类的代码：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">package</span><span style="color: #000000;"> struts.form;<br /><br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> javax.servlet.http.HttpServletRequest;<br /><br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> org.apache.struts.action.ActionErrors;<br /></span><span style="color: #0000ff;">import</span><span style="color: #000000;"> org.apache.struts.action.ActionMapping;<br /><br /></span><span style="color: #008000;">/*</span><span style="color: #008000;"><br /> * @auther Jonllen<br /> * @create 2009-10-13 14:40:40<br /> * @site   </span>http://www.jonllen.com<span style="color: #008000;"><br /> </span><span style="color: #008000;">*/</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> UserListForm </span><span style="color: #0000ff;">extends</span><span style="color: #000000;"> org.apache.struts.action.ActionForm {<br /><br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> String defaultName </span><span style="color: #000000;">=</span><span style="color: #000000;"> db.DbManager.GetConfig().getDefaultName();<br /><br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> java.util.List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">db.DbItem</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> dblist </span><span style="color: #000000;">=</span><span style="color: #000000;"> db.DbManager.GetConfig().getList();<br /><br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> java.util.List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">bean.User</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> list;<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> String getDefaultName() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> defaultName;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setDefaultName(String defaultName) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.defaultName </span><span style="color: #000000;">=</span><span style="color: #000000;"> defaultName;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> java.util.List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">db.DbItem</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> getDblist() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> dblist;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setDblist(java.util.List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">db.DbItem</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> dblist) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.dblist </span><span style="color: #000000;">=</span><span style="color: #000000;"> dblist;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> java.util.List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">bean.User</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> getList() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> list;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setList(java.util.List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">bean.User</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> list) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.list </span><span style="color: #000000;">=</span><span style="color: #000000;"> list;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> UserListForm() {<br />        </span><span style="color: #0000ff;">super</span><span style="color: #000000;">();<br />        setList(</span><span style="color: #0000ff;">new</span><span style="color: #000000;"> bll.UserBLL().GetUserList());<br />    }<br /><br />    </span><span style="color: #008000;">/**</span><span style="color: #008000;"><br />     * This is the action called from the Struts framework.<br />     * </span><span style="color: #808080;">@param</span><span style="color: #008000;"> mapping The ActionMapping used to select this instance.<br />     * </span><span style="color: #808080;">@param</span><span style="color: #008000;"> request The HTTP Request we are processing.<br />     * </span><span style="color: #808080;">@return</span><span style="color: #008000;"><br />     </span><span style="color: #008000;">*/</span><span style="color: #000000;"><br />    @Override<br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {<br />        ActionErrors errors </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ActionErrors();<br />        <br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> errors;<br />    }<br /><br />}</span></div></div></pre>
<p style="text-indent: 2em;">可以看到，类字段defaultName、dblist在初试化就已经赋值，在UserListForm()构造函数也对list用户列表进行了赋值，所以在请求userlist.jsp用户列表页面的时候初始化实例StrutsFrom后UserListForm内字段已经全部有值，那这时候不需要通过在StrutsAction里再去填充StrutsFrom，所以<span style="color: #800000;">html:select</span>、<span style="color: #800000;">html:optionsCollection</span>、<span style="color: #800000;">logic:iterate</span>标签的<span style="color: #ff0000;">property</span>都有值了，那么select的选中值(defaultName)、列表项(dblist)、用户对象列表(list)也都会对应输出，跌代标签<span style="color: #800000;">logic:iterate</span>下面的<span style="color: #800000;">bean:size</span>标签也指向了UserListFrom的list属性字段，是声明一个id为count的变量，通过下面的<span style="color: #800000;">logic:equal</span>比较判断标签如果记录条数为0则输出暂无数据等字样。至此，Struts的列表显示功能已经实现。</p>
<p style="text-indent: 2em;">最后，只剩下的删除的功能，也是最简单的一个功能，因为Struts来实现都不需要jsp页面，直接访问userdel.do传一个id过去，看<span style="color: #0000ff;">/struts/userdel</span>的path对应配置，没有设置<span style="color: #ff0000;">input</span>输入页面属性，也没有对应的StrutsForm类，<span style="color: #ff0000;">validate</span>为false，所以它会直接跳到<span style="color: #0000ff;">UserDelAction</span>里执行execute方法，在这个方法访问数据库删除掉改id的用户，也在request上下文里放一个msg后转发到userlist.jsp页面，并显示删除用户成功与否的msg信息。</p>
<p style="text-indent: 2em;">Struts的用户增、删、改、查的功能已基本实现，大家需要先了解Struts的大概工作原理及它的标签使用，如果还有什么疑问的话，我这里提供了NetBeans 6.7工程源文件下载，大家可以对照我上面讲的来看，我事例里面默认是使用mysql数据库，默认连接数据库、连接字符串、驱动类都是在connector.properties资源文件内配置，PowerDesigner目录下有我建的物理模型、工厂模式类图、Struts流程时序图及各种数据库创建FA_User用户表的sql文件，访问数据库的部分使用了工厂模式，factory目录下对应的jsp页面是用纯ScriptLet实现以上Struts增、删、改、查的功能。</p>
<p style="text-indent: 2em;"><a href="http://files.cnblogs.com/Jonllen/JavaWeb(Struts事例).rar" title="Struts实例源代码">Struts实例源代码下载(用户的增、删、改、查功能，带Java工厂模式的实现，NetBeans工程)</a></p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/java/">Java</a> struts
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-10-19 09:45</li>
				<li>update@ 2009-11-29 15:09:36</li>
				<li>阅读(<span id="articleClick">19711</span>)</li>
				<li>评论(2)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/java/18.aspx">Java方法强制传递引用参数(做为返回值)，改变被传递参数值。</a></li>
<li>下一篇：<a href="/jonllen/java/78.aspx">Java工厂模式切换数据库</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'王旭颖')">引用</a></li>

						        </ul>
						        <a>1楼</a> 王旭颖 2010-06-21 11:03:41
					        </div><div class="cont">好好，谢谢</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'王旭颖')">引用</a></li>

						        </ul>
						        <a>2楼</a> 王旭颖 2010-06-21 11:04:56
					        </div><div class="cont">我是一名学生，软件工程系，正要考Java，不是很会，看了你的后，感觉明白点了。。。谢谢~1</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=76&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/java/struts.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=76";
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