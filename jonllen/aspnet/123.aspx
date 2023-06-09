
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>我的ORM（一）——重复造轮子 - Asp.Net - 金龙博客</title>
<meta name="description" content="ORM在我们平时项目里是必不可少的，也是最重要的系统架构之一，它提供对数据访问的底层实现，比较出名的有Java里的Hibernate、.Net里的NHibernate和Linq，这些都是很成熟的ORM框架，今天我要说的是我的ORM，这当然不能和前面说的那些ORM比，这里仅当自己造轮子学习。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-07-01' } );
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
		     > <a href="/jonllen/aspnet/">Asp.Net</a>
		     > <a href="/jonllen/aspnet/123.aspx">我的ORM（一）——重复造轮子</a>
		</div>
        <div class="article">
			<div class="title"><h2>我的ORM（一）——重复造轮子</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<p>ORM在我们平时项目里是必不可少的，也是最重要的系统架构之一，它提供对数据访问的底层实现，比较出名的有Java里的Hibernate、.Net里的NHibernate和Linq，这些都是很成熟的ORM框架，今天我要说的是我的ORM，这当然不能和前面说的那些ORM比，这里仅当自己造轮子学习。</p>
<p><strong>使用Attribute元数据</strong></p>
<p>用过Hibernate等ORM的童鞋都知道，可以使用XML文件来配置数据表和实体对象的关系，虽然说这样可以更灵活一些，但我是比较反感这些繁杂的配置的，讨厌一大堆的配置文件，所以我这里是先采用了元数据的方法，将这些配置直接嵌入在代码里，使用Attribute元数据来标识实体对象和属性。一个简单的Breast实体类如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">[EntityFlag(TableName </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">bl_breast</span><span style="color: #800000;">"</span><span style="color: #000000;">)]<br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> Breast: ModelBase<br />    {<br /><br />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> User user;<br /><br />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> User User<br />        {<br />            </span><span style="color: #0000ff;">get</span><span style="color: #000000;"> { </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> user; }<br />            </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> { user </span><span style="color: #000000;">=</span><span style="color: #000000;"> value; }<br />        }<br />    <br />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> Int32 breastId;<br /><br />        [ColumnFlag( PrimaryKey</span><span style="color: #000000;">=</span><span style="color: #0000ff;">true</span><span style="color: #000000;">)]<br />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> Int32 BreastId<br />        {<br />            </span><span style="color: #0000ff;">get</span><span style="color: #000000;"> { </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> breastId; }<br />            </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> { breastId </span><span style="color: #000000;">=</span><span style="color: #000000;"> value; }<br />        }<br />        <br />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> Int32 userId;<br /><br />        [ColumnFlag]<br />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> Int32 UserId<br />        {<br />            </span><span style="color: #0000ff;">get</span><span style="color: #000000;"> { </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> userId; }<br />            </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> { userId </span><span style="color: #000000;">=</span><span style="color: #000000;"> value; }<br />        }<br />        <br />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> String breast;<br /><br />        [ColumnFlag(ColumnName </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">breast</span><span style="color: #800000;">"</span><span style="color: #000000;">)]<br />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> String BreastContent<br />        {<br />            </span><span style="color: #0000ff;">get</span><span style="color: #000000;"> { </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> breast; }<br />            </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> { breast </span><span style="color: #000000;">=</span><span style="color: #000000;"> value; }<br />        }<br />        <br />        </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> DateTime addDate;<br /><br />        [ColumnFlag]<br />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> DateTime AddDate<br />        {<br />            </span><span style="color: #0000ff;">get</span><span style="color: #000000;"> { </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> addDate; }<br />            </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> { addDate </span><span style="color: #000000;">=</span><span style="color: #000000;"> value; }<br />        }</span></div></div></pre>
<p>上面的EntityFlag和ColumnFlag都是Attribute元数据，其中的TableName和ColumnName、PrimaryKey分别为元数据属性，代表对应的表名和列名。获取的时候也很简单，使用GetCustomAttributes能返回对象的所有元数据，获取对象所有ColumnFlag标识方法如下：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">ColumnFlag</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> GetPropertyAnnotations(Type t)<br />        {<br /><br />            List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">ColumnFlag</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> propertyAnnotations </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">ColumnFlag</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">();<br /><br />            PropertyInfo[] properties </span><span style="color: #000000;">=</span><span style="color: #000000;"> t.GetProperties();<br /><br />            </span><span style="color: #0000ff;">foreach</span><span style="color: #000000;"> (PropertyInfo property </span><span style="color: #0000ff;">in</span><span style="color: #000000;"> properties)<br />            {<br /><br />                </span><span style="color: #0000ff;">object</span><span style="color: #000000;">[] attrs </span><span style="color: #000000;">=</span><span style="color: #000000;"> property.GetCustomAttributes(</span><span style="color: #0000ff;">true</span><span style="color: #000000;">);<br /><br />                </span><span style="color: #0000ff;">foreach</span><span style="color: #000000;"> (</span><span style="color: #0000ff;">object</span><span style="color: #000000;"> attr </span><span style="color: #0000ff;">in</span><span style="color: #000000;"> attrs)<br />                {<br />                    </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (attr </span><span style="color: #0000ff;">is</span><span style="color: #000000;"> ColumnFlag)<br />                    {<br />                        ColumnFlag propertyAnnotation </span><span style="color: #000000;">=</span><span style="color: #000000;"> (ColumnFlag)attr;<br /><br />                        </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (String.IsNullOrEmpty(propertyAnnotation.ColumnName)) {<br />                            propertyAnnotation.ColumnName </span><span style="color: #000000;">=</span><span style="color: #000000;"> property.Name;<br />                        }<br /><br />                        propertyAnnotation.TargetPropertyInfo </span><span style="color: #000000;">=</span><span style="color: #000000;"> property;<br /><br />                        propertyAnnotations.Add(propertyAnnotation);<br />                    }<br />                }<br />            }<br /><br />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> propertyAnnotations;<br />        }</span></div></div></pre>
<p>元数据在Java里叫注解，hibernate和springframework中有大量的应用，如Controller控制层的里URL路由地址配置：</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">@Controller<br />@RequestMapping(</span><span style="color: #000000;">"</span><span style="color: #000000;">/member/account.do</span><span style="color: #000000;">"</span><span style="color: #000000;">)<br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> AccountController {<br /><br />    @Autowired<br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> MemberService memberService;<br /><br />    @RequestMapping(params </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">action=editin</span><span style="color: #000000;">"</span><span style="color: #000000;">)<br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> ModelAndView edit_in() {<br />        HashMap</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">String, Object</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> model </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> HashMap</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">String, Object</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">();<br />        List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Loving</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> lovings </span><span style="color: #000000;">=</span><span style="color: #000000;"> memberService.listAllLoving();<br />        model.put(</span><span style="color: #000000;">"</span><span style="color: #000000;">lovings</span><span style="color: #000000;">"</span><span style="color: #000000;">, lovings);<br /><br />        List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Department</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> departments </span><span style="color: #000000;">=</span><span style="color: #000000;"> memberService.listAllDepartment();<br />        model.put(</span><span style="color: #000000;">"</span><span style="color: #000000;">departments</span><span style="color: #000000;">"</span><span style="color: #000000;">, departments);<br />        <br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> ModelAndView(</span><span style="color: #000000;">"</span><span style="color: #000000;">/member/edit</span><span style="color: #000000;">"</span><span style="color: #000000;">, model);<br />    }<br />}</span></div></div></pre>
<p>这些配置都是ORM的核心，通过获取这些信息就可为生成SQL语句做准备了，而访问数据库的主要方法就是在BaseDao类里实现的。</p>
<p><strong>参数化查询</strong></p>
<p>简单的拼接SQL很容易，但要避免一些SQL注入等问题，就必须要使用参数化的查询，即使遇到一些像like等的查询没办法一定要拼接字符串的时候，也要在基类里集中进行处理，一个BreastDAL数据库访问类如下：</p>
<pre><div class="code"><div class="codetitle"><img title="展开" src="/codehighlighter/outliningIndicators/ContractedBlock.gif" onclick="this.src=this.title=='展开'?'/codehighlighter/outliningIndicators/ExpandedBlockStart.gif':'/codehighlighter/outliningIndicators/ContractedBlock.gif'; document.getElementById('HighlighterCode_634136185000468750').style.display=this.title=='展开'?'block':'none'; this.title=this.title=='展开'?'收缩':'展开'; " /><span>BreastDAL数据访问类</span></div><div class="codemain" id="HighlighterCode_634136185000468750" style="display: none;"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><img src="/codehighlighter/outliningIndicators/None.gif" /><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> BreastDAL : BaseDao</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Breast</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">, IBreast<br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockStart.gif" id="CodeHighlighter1_54_1245_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_54_1245_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_54_1245_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_54_1245_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedBlock.gif" style="display: none;" id="CodeHighlighter1_54_1245_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_54_1245_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_54_1245_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_54_1245_Open_Text').style.display='inline';" />    </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_54_1245_Closed_Text">...</span><span id="CodeHighlighter1_54_1245_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" id="CodeHighlighter1_66_1239_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_66_1239_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_66_1239_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_66_1239_Open_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" style="display: none;" id="CodeHighlighter1_66_1239_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_66_1239_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_66_1239_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_66_1239_Closed_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff;" id="CodeHighlighter1_66_1239_Closed_Text">IBreast 成员</span><span style="display: none;" id="CodeHighlighter1_66_1239_Open_Text"><span style="color: #0000ff;">#region</span><span style="color: #000000;"> IBreast 成员</span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> AddBreast(Breast breast)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_138_189_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_138_189_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_138_189_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_138_189_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_138_189_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_138_189_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_138_189_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_138_189_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_138_189_Closed_Text">...</span><span id="CodeHighlighter1_138_189_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">base</span><span style="color: #000000;">.Insert(breast);<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> DeleteBreast(</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> breastId)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_245_298_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_245_298_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_245_298_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_245_298_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_245_298_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_245_298_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_245_298_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_245_298_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_245_298_Closed_Text">...</span><span id="CodeHighlighter1_245_298_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">base</span><span style="color: #000000;">.Delete(breastId);<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">int</span><span style="color: #000000;"> UpdateBreastInfo(Breast breast)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_359_410_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_359_410_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_359_410_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_359_410_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_359_410_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_359_410_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_359_410_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_359_410_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_359_410_Closed_Text">...</span><span id="CodeHighlighter1_359_410_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">base</span><span style="color: #000000;">.Update(breast);<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> Breast GetBreastInfo(</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> breastId)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_470_521_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_470_521_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_470_521_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_470_521_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_470_521_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_470_521_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_470_521_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_470_521_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_470_521_Closed_Text">...</span><span id="CodeHighlighter1_470_521_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">base</span><span style="color: #000000;">.Load(breastId);<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />        </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> List</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Breast</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> GetBreastList(</span><span style="color: #0000ff;">int</span><span style="color: #000000;"> userId)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_585_1219_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_585_1219_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_585_1219_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_585_1219_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_585_1219_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_585_1219_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_585_1219_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_585_1219_Open_Text').style.display='inline';" />        </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_585_1219_Closed_Text">...</span><span id="CodeHighlighter1_585_1219_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            Query</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Breast</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> query </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">new</span><span style="color: #000000;"> Query</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Breast</span><span style="color: #000000;">&gt;</span><span style="color: #000000;">();<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            <br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">if</span><span style="color: #000000;"> (userId </span><span style="color: #000000;">!=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;">)<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockStart.gif" id="CodeHighlighter1_696_824_Open_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_696_824_Open_Text').style.display='none'; document.getElementById('CodeHighlighter1_696_824_Closed_Image').style.display='inline'; document.getElementById('CodeHighlighter1_696_824_Closed_Text').style.display='inline';" /><img src="/codehighlighter/outliningIndicators/ContractedSubBlock.gif" style="display: none;" id="CodeHighlighter1_696_824_Closed_Image" onclick="this.style.display='none'; document.getElementById('CodeHighlighter1_696_824_Closed_Text').style.display='none'; document.getElementById('CodeHighlighter1_696_824_Open_Image').style.display='inline'; document.getElementById('CodeHighlighter1_696_824_Open_Text').style.display='inline';" />            </span><span style="border: solid 1px #808080; background-color: #ffffff; display: none;" id="CodeHighlighter1_696_824_Closed_Text">...</span><span id="CodeHighlighter1_696_824_Open_Text"><span style="color: #000000;">{<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />                </span><span style="color: #008000;">//</span><span style="color: #008000;">动态添加userId查询条件（使用参数化查询）</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">                query.AddWhere(Expression.AndEqual(</span><span style="color: #800000;">"</span><span style="color: #800000;">userId</span><span style="color: #800000;">"</span><span style="color: #000000;">, userId));<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />            }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;">添加username查询条件（使用参数化查询）</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            query.AddWhere(Expression.AndEqual(</span><span style="color: #800000;">"</span><span style="color: #800000;">username</span><span style="color: #800000;">"</span><span style="color: #000000;">, </span><span style="color: #800000;">"</span><span style="color: #800000;">jonllen</span><span style="color: #800000;">"</span><span style="color: #000000;">));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">string</span><span style="color: #000000;"> key </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">jonllen's blog</span><span style="color: #800000;">"</span><span style="color: #000000;">;<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;">添加content的模糊查询（自动过滤掉SQL关键字符）</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            query.AddWhere(Expression.AndLike(</span><span style="color: #800000;">"</span><span style="color: #800000;">content</span><span style="color: #800000;">"</span><span style="color: #000000;">, </span><span style="color: #800000;">"</span><span style="color: #800000;">%</span><span style="color: #800000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> key </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">%</span><span style="color: #800000;">"</span><span style="color: #000000;">));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #008000;">//</span><span style="color: #008000;">添加排序条件</span><span style="color: #008000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /></span><span style="color: #000000;">            query.AddOrder(Order.Desc(</span><span style="color: #800000;">"</span><span style="color: #800000;">addDate</span><span style="color: #800000;">"</span><span style="color: #000000;">));<br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" />            </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> query.List();<br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        }</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/InBlock.gif" /><br /><img src="/codehighlighter/outliningIndicators/ExpandedSubBlockEnd.gif" />        </span><span style="color: #0000ff;">#endregion</span></span><span style="color: #000000;"><br /><img src="/codehighlighter/outliningIndicators/ExpandedBlockEnd.gif" />    }</span></span></div></div></div></pre>
<p>BaseDao是一个泛型类，占位符T是约束了实体类必须由BaseBean派生，因此在基类就可预先获取实体类的元数据注解，以便生成SQL语句，另外JoinTable（表关联）、Expression（条件）、Order（排序）等作为生成SQL的元素，为的是尽量不要直接写SQL语句，而像hibernate框架中专门有HQL语言，这是一种为完全面向对象查询的有意识设计，当然一些非常复杂的SQL语句还得直接写SQL或改用存储过程才行。</p>
<p><strong>不同数据库和分页实现</strong></p>
<p>为了提供不同数据库的访问，特别是SQL语法和主键的一些差异，需要提供良好的配置接口，以达到不改SQL而兼容各种数据库的访问，基类需要根据不同数据库进行不同处理，最大的难度可能是服务器分页处理上了，因为Access、SQL2000、SQL2005、Oracle、MYSQL分页几乎各不一样，这就必须要解藕一一实现，由于我目前只实现了Access的分页，且一些效率问题还没有经过测试，所以这里就不深入撰述了，不过以后的SQL2005、Oracle、MYSQL分页实现稍微都会简单些，因为都有内置分页函数支持。</p>
<p><strong>代码生成</strong></p>
<p>凡是企业级的开发，都会讲究效率问题，特别是针对自己的框架特点，做一个简单的代码生成工具自动生成一些Bean和Dao还是很有必要的，也就是根据数据库表结构生成对应的CS文件。Access数据库有点麻烦，先需要进入数据库，勾选工具&gt;选项&gt;视图&gt;显示隐藏对象，然后再工具&gt;安全&gt;用户与组权限&gt;选中对象名称MSysObjects，在权限里至少勾选读取数据和读取设计选项，这样才能读取Access数据库里的所有表，至于列嘛可以不必直接再去查询，因为查询表的数据里也会包含所有列信息，并且可以获取对应的.Net数据类型，所以生成代码的时候就没必要映射据类型了，简单处理就好。</p>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> ORM框架
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2010-07-01 23:36</li>
				<li>update@ </li>
				<li>阅读(<span id="articleClick">9638</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/106.aspx">博客个性化定制功能</a></li>
<li>下一篇：<a href="/jonllen/aspnet/125.aspx">我的ORM（二）——兼容不同的数据库</a></li></ul>
		</div>
		

<div class="correlative">
	
		    <h4>相关文章</h4>
			<ul>


                    	<li><a href='/jonllen/aspnet/125.aspx' title='' target="_blank">我的ORM（二）——兼容不同的数据库</a></li>
                    
                    	<li><a href='/jonllen/work/130.aspx' title='' target="_blank">大杂烩&培训</a></li>
                    
                    	<li><a href='/jonllen/aspnet/141.aspx' title='' target="_blank">我的第一个NHibernate2.1.2.GA程序事例</a></li>
                    

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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=123&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/123.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=123";
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