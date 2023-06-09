
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Java和.Net三层架构和MVC - Java - 金龙博客</title>
<meta name="description" content="这几天好象发生了很多事情，好象有些憋气，感觉很多事都不顺心，竟然连跑路的想法都有了，也许这就是生活，大大小小总会有那么些的磨砺吧。不管怎么样，都归结自己不够强大。通过最近一段时间的学习，深刻的认识到以前所学知识的局限性。在使用Java的Spring框架的时候，认知到了一些新的编程思想，同时也对它强大的功能为之折服。对比之前编程方式，总结如下：
1.深入的了解面向对象编程;
2.面向接口编程，依赖注入接口的实例;
3.三层架构表现层(MVC)、业务逻辑层、持久层;
4.使用观察着模式、面向切面(AOP)编程。" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2010-01-30' } );
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
		     > <a href="/jonllen/java/102.aspx">Java和.Net三层架构和MVC</a>
		</div>
        <div class="article">
			<div class="title"><h2>Java和.Net三层架构和MVC</h2></div>
			<div class="category">分类：<a href="/jonllen/java/">Java</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 14px; line-height: 30px;">
<p style="text-indent: 2em;">这几天好象发生了很多事情，好象有些憋气，感觉很多事都不顺心，竟然连跑路的想法都有了，也许这就是生活，大大小小总会有那么些的磨砺吧。不管怎么样，都归结自己不够强大。通过最近一段时间的学习，深刻的认识到以前所学知识的局限性。在使用Java的Spring框架的时候，认知到了一些新的编程思想，同时也对它强大的功能为之折服。对比之前编程方式，总结如下：</p>
<p style="text-indent: 2em;"><strong>深入的了解面向对象编程</strong></p>
<p style="text-indent: 2em;">所谓面向对象变成，相信大家都知道，但我们在写代码是否有这样做呢？比如在实际项目中，我们会对数据库进行一些操作，如果我们对面向对象了解的不够深，就很有可能会局限于以数据库为中心的思路进行编程。拿数据库和实体类来说，它们分别对应物理模型和类图模型，而且之间应该是可以互相转换的，之前我一般会先设计好物理模型生成SQL语句创建数据库，然后在转换生成实体类。而使用Hibernate这个ORM框架，建好实体类后可反向创建数据库表，更精彩的是Java里可以使用注解来标识实体类或属性对应的数据库表或列，通过Spring接管代理后，通过XML配置可在初始化时把实体类同步到数据库表结构，甚至可根据实体对象的关系(如一对多、多对多)自动生成主外建关系，自动创建数据库。</p>
<p style="text-indent: 2em;">Hibernate实体类(包含ManyToOne和ManyToMany关系，使用@代码注解代替繁杂的XML配置)</p>
<pre><div class="code"><div><!--<br /><br />Code highlighting produced by Actipro CodeHighlighter (freeware)<br />http://www.CodeHighlighter.com/<br /><br />--><span style="color: #000000;">@NamedQueries( {<br />    @NamedQuery(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">Account.AccountByUuid[load]</span><span style="color: #000000;">"</span><span style="color: #000000;">, query </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">from Account as account where account.uuid=?</span><span style="color: #000000;">"</span><span style="color: #000000;">, cacheable </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">)})<br />@Entity<br />@Table(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">FA_Account</span><span style="color: #000000;">"</span><span style="color: #000000;">)<br /></span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">class</span><span style="color: #000000;"> Account </span><span style="color: #0000ff;">implements</span><span style="color: #000000;"> java.io.Serializable{<br /><br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> </span><span style="color: #0000ff;">static</span><span style="color: #000000;"> </span><span style="color: #0000ff;">final</span><span style="color: #000000;"> </span><span style="color: #0000ff;">long</span><span style="color: #000000;"> serialVersionUID </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">-</span><span style="color: #000000;">6002028996236248727L</span><span style="color: #000000;">;<br /><br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> String uuid;<br />    <br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setUuid(String uuid) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.uuid </span><span style="color: #000000;">=</span><span style="color: #000000;"> uuid;<br />    }<br /><br />    @Id<br />    @GeneratedValue(generator </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">system-uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">)<br />    @GenericGenerator(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">system-uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">, strategy </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">)<br />    @Column(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">, length </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">32</span><span style="color: #000000;">, updatable </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">, columnDefinition </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">VARCHAR(32)</span><span style="color: #000000;">"</span><span style="color: #000000;">)<br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> String getUuid() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.uuid;<br />    }<br /><br />    @Length(max </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">50</span><span style="color: #000000;">,chinese </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">false</span><span style="color: #000000;">)<br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> String name;<br />    <br />    @Length(max </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">50</span><span style="color: #000000;">)<br />    @Email<br />    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> String email;<br /><br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">所属部门</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> Department department;<br />    <br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">爱好</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000ff;">private</span><span style="color: #000000;"> Set</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Loving</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> lovings;<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> String getEmail() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> email;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setEmail(String email) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.email </span><span style="color: #000000;">=</span><span style="color: #000000;"> email;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> String getName() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> name;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setName(String name) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.name </span><span style="color: #000000;">=</span><span style="color: #000000;"> name;<br />    }<br />    <br />    @ManyToOne(fetch </span><span style="color: #000000;">=</span><span style="color: #000000;"> FetchType.LAZY)<br />    @JoinColumn(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">department_uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">)<br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> Department getDepartment() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> department;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setDepartment(Department department) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.department </span><span style="color: #000000;">=</span><span style="color: #000000;"> department;<br />    }<br /><br />    @ManyToMany(targetEntity </span><span style="color: #000000;">=</span><span style="color: #000000;"> Loving.</span><span style="color: #0000ff;">class</span><span style="color: #000000;">,fetch </span><span style="color: #000000;">=</span><span style="color: #000000;"> FetchType.LAZY)<br />    @JoinTable(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">fa_account_loving</span><span style="color: #000000;">"</span><span style="color: #000000;">, joinColumns </span><span style="color: #000000;">=</span><span style="color: #000000;"> @JoinColumn(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">account_uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">, referencedColumnName </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">), inverseJoinColumns </span><span style="color: #000000;">=</span><span style="color: #000000;"> @JoinColumn(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">loving_uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">, referencedColumnName </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">uuid</span><span style="color: #000000;">"</span><span style="color: #000000;">))<br />    @Editor(value </span><span style="color: #000000;">=</span><span style="color: #000000;"> CollectionEditor.</span><span style="color: #0000ff;">class</span><span style="color: #000000;">, params </span><span style="color: #000000;">=</span><span style="color: #000000;"> {<br />            @Param(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">collectionClass</span><span style="color: #000000;">"</span><span style="color: #000000;">, value </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">java.util.HashSet</span><span style="color: #000000;">"</span><span style="color: #000000;">),<br />            @Param(name </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">elementClass</span><span style="color: #000000;">"</span><span style="color: #000000;">, value </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">com.fortuneage.entity.member.Loving</span><span style="color: #000000;">"</span><span style="color: #000000;">) })<br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> Set</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Loving</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> getLovings() {<br />        </span><span style="color: #0000ff;">return</span><span style="color: #000000;"> lovings;<br />    }<br /><br />    </span><span style="color: #0000ff;">public</span><span style="color: #000000;"> </span><span style="color: #0000ff;">void</span><span style="color: #000000;"> setLovings(Set</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">Loving</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> lovings) {<br />        </span><span style="color: #0000ff;">this</span><span style="color: #000000;">.lovings </span><span style="color: #000000;">=</span><span style="color: #000000;"> lovings;<br />    }<br />    <br />    <br />}</span></div></div></pre>
<p style="text-indent: 2em;"><strong>面向接口编程，依赖注入接口的实例</strong></p>
<p style="text-indent: 2em;">所谓接口，旨在提供一种约束规范，它要求实现类必须实现接口内所有方法或属性。我们常说的提供一个接口，但其实是提供一个接口的实例，只不过应该是以接口形式返回的，接口类里只有方法或属性的申明，所以我们不必要关注里面的实现，这样可促进各模块的松耦合。Spring里有一种称作控制反转（IOC）的技术，其中很多的地方就是使用接口，先通过容器配置管理一个bean实例(一般为singleton模式)，然后再使用set方法或构造函数进行注入实例。</p>
<p style="text-indent: 2em;"><strong>三层架构表现层(MVC)、业务逻辑层、持久层</strong></p>
<p style="text-indent: 2em;">传统的三层应该是表现层、业务逻辑层、持久层，根据项目需求的不同可能层次会更细分，但一般应该保证有这三层的明确分工，如下图：</p>
<p><img src="/upload/jonllen/article/三层结构图.jpg" alt="三层结构图" title="三层结构图" /></p>
<p style="text-indent: 2em;">但这里应该跟MVC三层区分开来，因为MVC应该是表现层一层，拿Struts来说，M(Model)应该是Action Form，V(View)应该是jsp页面，C(Control)应该是Struts Action。而如果使用Spring框架的话，当然也可以把Struts整合在一起，但Spring本身有提供DispatcherServlet控制分发器，可以直接把请求交给指定类处理，并可以根据不同URL参数响应不同方法，加上可以使用@代码注解，所以很方便实用。Spring同时还能整合Hibernate，构成目前JavaWeb开发领域最流行的框架SSH，Spring在其中冲当着控制管理的核心作用，详细流程如下图所示：</p>
<p><img src="/upload/jonllen/article/SSH.jpg" alt="SSH结构图" title="SSH结构图" /></p>
<p style="text-indent: 2em;">相比Java，.Net则是本身提供了一个强大的平台，在表现层，aspx页面则是属于View，aspx.cs相当于每个页面的控制层Control，依赖于.Net里强大的服务器控件，很容易在cs里控制aspx页面输出的内容，一般直接可以很方便通过控件ID获取值，因此View在到Control层前很少对Model进行填充转换，不过到持久化写入数据库还是依赖Model实体，因此Model层转换还是必须的，但目前我还没有用过.Net自动转换Model层的框架。</p>
<p style="text-indent: 2em;"><strong style="display: none;">使用观察着模式、面向切面(AOP)编程</strong></p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/java/">Java</a> MVC
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2010-01-30 16:55</li>
				<li>update@ 2010-02-05 00:44:41</li>
				<li>阅读(<span id="articleClick">13115</span>)</li>
				<li>评论(4)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/java/100.aspx">Struts+Hibernate学习笔记</a></li>
<li>下一篇：<a href="/jonllen/java/140.aspx">移动硬盘Linux内搭建MyEcilipse8.6开发环境</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'文夕')">引用</a></li>

						        </ul>
						        <a>1楼</a> 文夕 2010-02-05 19:24:04
					        </div><div class="cont">在我看来，会编程的人都是天才~</div>
					        
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'su389847531')">引用</a></li>

						        </ul>
						        <a>2楼</a> su389847531 2011-03-04 13:33:15
					        </div><div class="cont">麻烦问下这篇文章的最后一幅图中的实体代表什么？为什么有那么多箭头是指向实体的？而且为什么数据不是双向的读写呢？箭头都是单向的？谢谢：）</div>
					        <div class="reply" ><span>回复：</span>谢谢提醒。这里的实体应该代表填充表现层页面视图的Model对象，每一层之间传递的参数Bean对象，因此每一层几乎都依赖于实体。（2011-03-04 13:42:14）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'su389847531')">引用</a></li>

						        </ul>
						        <a>3楼</a> su389847531 2011-03-04 21:19:48
					        </div><div class="cont">那图中的箭头代表什么意思呢？是说模块间的依赖关系还是操作关系？还是单纯的数据流向？</div>
					        <div class="reply" ><span>回复：</span>算是依赖关系吧，表现层、业务层、持久层这三层应为自上而下的弱依赖关系。（2011-03-06 21:49:51）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'su389847531')">引用</a></li>

						        </ul>
						        <a>4楼</a> su389847531 2011-03-06 19:34:23
					        </div><div class="cont">为什么我的内容一直在审核中呢？我想问问题，还是那幅图中的箭头代表什么呢？操作流程？依赖关系？还是数据流程？谢谢</div>
					        <div class="reply" ><span>回复：</span>因为我设置了评论要审核回复后才显示。（2011-03-06 21:50:49）</div>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=102&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/java/102.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=102";
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