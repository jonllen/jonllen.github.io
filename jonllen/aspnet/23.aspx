
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>asp项目 — 报价订购系统 - Asp.Net - 金龙博客</title>
<meta name="description" content="其实我以前在学校里面并没有学过asp的,以前在学校里面学的java的东西最多,其次是.net的课程,不过我一直对.net很感兴趣,好象不只是因为java比较难.net比较人性化些,就感觉它好易用.用.net也做过几个项目了,但是还没有用asp做过,对它还是有点想法.
好象听别人说,asp是asp.net的前身哦,全称为Active Server Page动态页面,服务器端解析也是用IIS,但是它不需要有Microsoft .NET Framework就能直接运行的,在这里我先列举asp和.net的一些不同之处.asp部署简单,没有进行预编译,上传网站即是源代码,这样就有一个安全隐患,网站源文件容易被盗,好象asp页面代码也能加密的,但是比较弱能轻易的就被破解到的.而asp.net网站的话可以把网站预编译,上传为dll文件,这样就安全多了.asp代码不是很严谨,变量可以不申明直接使用,属与弱变量类型.而.net的话是非常面向对象的,如类的继承、多态、重写等.asp写代码调试都比较麻烦,只有少量的智能提示输入,而.net有一个强大的IDE编程环境(VS),达到了很人性化的设置.
上这个asp项目的时候其实心里没底,因为这个项目是原来已经做好成型的,不知道以前别人做得怎么样的,也没有接触过,后来发现它确实是个烂摊子,数据库表结构设计得不合理,代码写得很混乱.没" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-01-03' } );
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
		     > <a href="/jonllen/aspnet/23.aspx">asp项目 — 报价订购系统</a>
		</div>
        <div class="article">
			<div class="title"><h2>asp项目 — 报价订购系统</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="line-height: 30px; font-size: 14px;">
<p style="text-indent: 2em;">其实我以前在学校里面并没有学过asp的,以前在学校里面学的java的东西最多,其次是.net的课程,不过我一直对.net很感兴趣,好象不只是因为java比较难.net比较人性化些,就感觉它好易用.用.net也做过几个项目了,但是还没有用asp做过,对它还是有点想法.</p>
<p style="text-indent: 2em;">好象听别人说,asp是asp.net的前身哦,全称为Active Server Page动态页面,服务器端解析也是用IIS,但是它不需要有Microsoft .NET Framework就能直接运行的,在这里我先列举asp和.net的一些不同之处.asp部署简单,没有进行预编译,上传网站即是源代码,这样就有一个安全隐患,网站源文件容易被盗,好象asp页面代码也能加密的,但是比较弱能轻易的就被破解到的.而asp.net网站的话可以把网站预编译,上传为dll文件,这样就安全多了.asp代码不是很严谨,变量可以不申明直接使用,属与弱变量类型.而.net的话是非常面向对象的,如类的继承、多态、重写等.asp写代码调试都比较麻烦,只有少量的智能提示输入,而.net有一个强大的IDE编程环境(VS),达到了很人性化的设置.</p>
<p style="text-indent: 2em;">上这个asp项目的时候其实心里没底,因为这个项目是原来已经做好成型的,不知道以前别人做得怎么样的,也没有接触过,后来发现它确实是个烂摊子,数据库表结构设计得不合理,代码写得很混乱.没得办法,这次这个报价系统新改版老总很重视,所以只能硬着头皮做了.先看一下我们报价系统登陆成功后的截图:</p>
<p><a href="/upload/jonllen/article/o_bd.jpg" target="_blank"><img title="asp报价系统" src="/upload/jonllen/article/o_bd.jpg" alt="asp报价系统" width="500" height="388" /></a></p>
<p style="text-indent: 2em;">以上图片为新报价系统登陆成功后的新界面,它实现和新增了如下新功能:</p>
<ol>
<li>增加了IM即时通讯系统,它是一个用JSP开发的Web版的即时通讯,主要用来公司内部人员和客户进行即时沟通.并且和报价系统内用户同步,登陆报价系统则登陆自动登陆上IM,注销则IM下线.如上图IM即使通讯为页面里一个position为absolute布局的可拖拽DIV层,也可以隐藏或显示.</li>
<li>网站前台和后台和并.以前公司内部人员要登陆http://gl.hhit.com.cn进行订单等管理,而外面客户则是登陆http://bd.hhit.com.cn,现在将统一为http://bd.hhit.com.cn登陆.由于这个报价系统是一个比较特殊的系统,公司很多客户都是通过这个报价系统进行订购下订单的,而且都还有打款但是不是在报价系统里通过支付宝或银行接口进行的,都是在现实中合作认识的值得信赖的客户事先联系好再打款的,报价系统充当着一个展示产品并可下订单订购的重要平台,是直接和金钱打交道的,我们报价系统对不同地区的不同客户给的价格还不一样.</li>
<li>增加订单议价的功能,借助IM及时通讯,公司内部人员和客户能进行及时的通讯,而且下订单每个产品可以填一个议价,即客户在订购这件产品的时候可以'讨价还价'.订单的流程如下:<br /><ol>
<li><strong><span style="color: #ff0000;">①第一步:</span></strong> 客户通过IM或电话事先联系好通过报价系统下单(可以填议价);</li>
<li><strong><span style="color: #ff0000;">②第二步:</span></strong> 公司内勤业务(各个产品助理)审核,确认议价和库存,确认是否新去采购或'炒货'(开意向采购单);</li>
<li><strong><span style="color: #ff0000;">③第三步:</span></strong> 公司信控审核,相当与对客户信用额度的确认,如果非现金交易则需确认客户的帐款(是否有拖欠帐款,如果无则可在信用额度下欠帐款);</li>
<li><span style="color: #ff0000;"><strong>④第四步:</strong></span>财务确认,再次确认用户帐款,提交到ERP内入库,通知物流发货(打印ERP发货单等); </li>
</ol>其中每一步对订单的操作将会被记录,提交到下一步处理的时候都写订单备注可以让内部人员看到,如果有一步没有确认订单将会被打回.</li>
<li>增加'选项卡'功能,这个是说在一个页面里面打开多个网页,它们可以自由的切换或关闭,比如上图所示是打开了笔记本和LCD显示器的产品浏览页面二个选项卡(首页默认打开),当前是选择浏览笔记本的'选项卡'.</li>
</ol>
<p style="font-weight: bold; text-indent: 2em;">&middot;IM及时通讯</p>
<p style="text-indent: 2em;">IM及时通讯系统并不是我们开发的,公司把这个项目外包到一个软件公司用JSP开发的.其实我们公司有个同事一直在做Flex开发的,那时候没有上系统前还以为会把IM让我们自己去开发,我们还去到网上找一些Flex的IM开源的项目测试啊等,谁知道最后老总竟把它外包给别人去开发,这里先BS一下.那边开发IM的给我们这里一个接口,一个URL地址,我们这边用一个iframe把他们的页面嵌在我们页面里.当然URL地址肯定要是安全的,我们传给他们那边有如下几个参数:</p>
<ul>
<li>encode:这个是主要编码的字符串,是来识别验证用户的合法性,我们约定好它组成规则为 用户唯一编号+md5密码+key密匙+tempCode一个随机数 以某种方式组合起来.</li>
<li>synId:同步ID.这个实为用户ID,只不过这个用户ID是我们这个报价系统内的用户ID,而他们在开发那个IM系统里面就叫同步ID.</li>
<li>tempCode:看名字就知道是一个临时的编码,一般就是为当前的时间了.</li>
<li>projectId:工程编号,他们那边说要的,这个都为1不变的. </li>
</ul>
<p style="text-indent: 2em;">我们这边按照如上要求配置参数发送URL,他们那边也按照此规则进行验证,并在指定时间内有效,实现安全通讯.安全倒是实现了,但是还有一个最大的问题就是数据库用户同步的问题,而我们这个报价系统里就有几千个用户了,而且一直还在增加,怎不能我这里一个个加进去吧?而且以后我们这边用户的资料修改了怎么办?还好他们开发用的数据库也是sqlserver,而且都放在同一个数据库服务器里面,这样我们这边两条sql语句进行跨库同步用户.</p>
<div style="padding-left: 2em;">
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #008000;">/*</span><span style="color: #008000;"><br />注:删除清空数据前应先备份,虽然后来会自动增加上<br />truncate table [hh_im].[dbo].[SYS_USER_ROLE]<br />truncate table [hh_im].[dbo].[sys_users]<br /></span><span style="color: #008000;">*/</span><span style="color: #000000;"><br /><br /></span><span style="color: #008000;">/*</span><span style="color: #008000;">对新增的用户和对应角色同步</span><span style="color: #008000;">*/</span><span style="color: #000000;"><br />INSERT INTO [hh_im].[dbo].[sys_users]<br />([accounts]<br />,[username]<br />,[password]<br />,[Synchronous_Id])<br />select n.userID,n.userCompanySort</span><span style="color: #000000;">+</span><span style="color: #800000;">'</span><span style="color: #800000;">(</span><span style="color: #800000;">'</span><span style="color: #000000;">+</span><span style="color: #000000;">n.userTrueName</span><span style="color: #000000;">+</span><span style="color: #800000;">'</span><span style="color: #800000;">)</span><span style="color: #800000;">'</span><span style="color: #000000;">,n.userpassword,cast(substring(n.user_inner_code,len(n.user_inner_code)</span><span style="color: #000000;">-</span><span style="color: #800080;">3</span><span style="color: #000000;">,</span><span style="color: #800080;">4</span><span style="color: #000000;">) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric) from [HH_Price].[dbo].[tbl_user] n<br />left outer join [hh_im].[dbo].[sys_users] o on o.Synchronous_Id</span><span style="color: #000000;">=</span><span style="color: #000000;">cast(substring(n.user_inner_code,len(n.user_inner_code)</span><span style="color: #000000;">-</span><span style="color: #800080;">3</span><span style="color: #000000;">,</span><span style="color: #800080;">4</span><span style="color: #000000;">) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric)<br /></span><span style="color: #0000ff;">where</span><span style="color: #000000;"> o.Synchronous_Id </span><span style="color: #0000ff;">is</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;"><br /><br />insert into [hh_im].[dbo].[SYS_USER_ROLE]<br />([SYS_USER_ROLE_USERID],[SYS_USER_ROLE_ROLEID])<br />select (select [userid] from [hh_im].[dbo].[sys_users] </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> [Synchronous_Id]</span><span style="color: #000000;">=</span><span style="color: #000000;">cast(substring(n.user_inner_code,len(n.user_inner_code)</span><span style="color: #000000;">-</span><span style="color: #800080;">3</span><span style="color: #000000;">,</span><span style="color: #800080;">4</span><span style="color: #000000;">) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric)),cast(n.userTypSN </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric) from [HH_Price].[dbo].[tbl_user] n<br />left outer join [hh_im].[dbo].[SYS_USER_ROLE] o on o.SYS_USER_ROLE_USERID</span><span style="color: #000000;">=</span><span style="color: #000000;"> (select [userid] from [hh_im].[dbo].[sys_users] </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> [Synchronous_Id]</span><span style="color: #000000;">=</span><span style="color: #000000;">cast(substring(n.user_inner_code,len(n.user_inner_code)</span><span style="color: #000000;">-</span><span style="color: #800080;">3</span><span style="color: #000000;">,</span><span style="color: #800080;">4</span><span style="color: #000000;">) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric))<br /></span><span style="color: #0000ff;">where</span><span style="color: #000000;"> o.SYS_USER_ROLE_USERID </span><span style="color: #0000ff;">is</span><span style="color: #000000;"> </span><span style="color: #0000ff;">null</span><span style="color: #000000;"><br /><br /></span><span style="color: #008000;">/*</span><span style="color: #008000;">对修改的用户和对应角色同步</span><span style="color: #008000;">*/</span><span style="color: #000000;"><br />update o<br /></span><span style="color: #0000ff;">set</span><span style="color: #000000;"> [accounts]</span><span style="color: #000000;">=</span><span style="color: #000000;">n.userID<br />,[username]</span><span style="color: #000000;">=</span><span style="color: #000000;">n.userCompanySort</span><span style="color: #000000;">+</span><span style="color: #800000;">'</span><span style="color: #800000;">(</span><span style="color: #800000;">'</span><span style="color: #000000;">+</span><span style="color: #000000;">n.userTrueName</span><span style="color: #000000;">+</span><span style="color: #800000;">'</span><span style="color: #800000;">)</span><span style="color: #800000;">'</span><span style="color: #000000;"><br />,[password]</span><span style="color: #000000;">=</span><span style="color: #000000;">n.userpassword<br />from [HH_Price].[dbo].[tbl_user] n<br />inner join [hh_im].[dbo].[sys_users] o on o.Synchronous_Id</span><span style="color: #000000;">=</span><span style="color: #000000;">cast(substring(n.user_inner_code,len(n.user_inner_code)</span><span style="color: #000000;">-</span><span style="color: #800080;">3</span><span style="color: #000000;">,</span><span style="color: #800080;">4</span><span style="color: #000000;">) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric)<br /><br />update o </span><span style="color: #0000ff;">set</span><span style="color: #000000;"> SYS_USER_ROLE_USERID</span><span style="color: #000000;">=</span><span style="color: #000000;">(select [userid] from [hh_im].[dbo].[sys_users] </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> [Synchronous_Id]</span><span style="color: #000000;">=</span><span style="color: #000000;">cast(substring(n.user_inner_code,len(n.user_inner_code)</span><span style="color: #000000;">-</span><span style="color: #800080;">3</span><span style="color: #000000;">,</span><span style="color: #800080;">4</span><span style="color: #000000;">) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric)),<br />SYS_USER_ROLE_ROLEID</span><span style="color: #000000;">=</span><span style="color: #000000;">cast(n.userTypSN </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric)<br />from [HH_Price].[dbo].[tbl_user] n<br />inner join [hh_im].[dbo].[SYS_USER_ROLE] o on o.SYS_USER_ROLE_USERID</span><span style="color: #000000;">=</span><span style="color: #000000;"> (select [userid] from [hh_im].[dbo].[sys_users] </span><span style="color: #0000ff;">where</span><span style="color: #000000;"> [Synchronous_Id]</span><span style="color: #000000;">=</span><span style="color: #000000;">cast(substring(n.user_inner_code,len(n.user_inner_code)</span><span style="color: #000000;">-</span><span style="color: #800080;">3</span><span style="color: #000000;">,</span><span style="color: #800080;">4</span><span style="color: #000000;">) </span><span style="color: #0000ff;">as</span><span style="color: #000000;"> numeric))<br /><br /></span></div>
</div>
</div>
<p style="text-indent: 2em;">以上所涉及到的数据库有hh_im和HH_Price及它们所对应表sys_users、sys_user_role和tbl_user、tbl_user的userTypSN列(表示角色类型,主要分为内外部用户)的增加和修改的同步,和他们IM系统的表结构不同,我们系统的角色是一对一的关系,角色类型为用户表的一个列字段,而他们那里设计的时候是用户和角色多对多的关系,所以我们再同步的时候都是以tbl_user为准的操作,在同步新增加的用户的时候是将tbl_user(我们报价系统的)left outer join到sys_users(IM系统用户表)条件是sys_users. Synchronous_Id为空,Synchronous_Id实为我们报价系统的用户ID,通过使用left outer join在加上不为空的条件,即把在tbl_user我们报价系统里的用户在他们sys_users表里不存在的插入到他们sys_users表里,对用户的角色亦是如此,只是他们那里的角色是用的用户角色关联表,他们那边用户角色关联表插入的是新增用户的自动生成编号和角色编号,加个查询条件转个弯一样的也能同步过去.同理,修改用户和用户的角色也能照样能同步,以上sql语句能多次执行,因为只改变同步不相同的行,而不会重复的新增加,如果执行用户和对应的角色影响的记录条数相同的话基本上就没错了,在执行一次应该所影响的记录条数都为0,因为上一次把所有不同的全部都给同步了.把这些sql语句做成一个计划任务,再在我们系统里几个修改用户资料和新加用户的地方多加条sql更新到他们im数据库里去,OK,2个不同数据库的内用户同步搞定!</p>
<p style="font-weight: bold; text-indent: 2em;">&middot;订单处理</p>
<p style="text-indent: 2em;">订单这块是用Flex做的,它生成一个静态页面.我们查看源文件里面可以看到一些object的html标记,它的src就是指向一个swf的文件,它的body里面为noscript标记内写好的一个完整的object标签flash,而head里还有script在页面load的时候又动态生成一个flash,为什么要是这样写呢?原来noscript标记是在浏览器被禁止执行javascript仍然能显示出flash,而当允许执行脚本的时候用javascript动态生成的flash在ie内flash不要单击激活.flash处理订单的界面如下图:</p>
<div><a href="/upload/jonllen/article/o_order.jpg" target="_blank"><img title="Flash处理订单" src="/upload/jonllen/article/o_order.jpg" alt="Flash处理订单" width="500" height="357" /></a></div>
<p style="text-indent: 2em;">Flex生成的Flash就是这样了,呵呵,是不是感觉有点丑?我也觉得有点,没有办法这个没得Flash美工,都是几个程序员搞的,就别说页面美化了,连排版还都是想得我们够脑壳疼的,才发现设计页面排版也有一门很深的学问.</p>
<p style="text-indent: 2em;">其实订单的处理并不算很复杂,只是中正现实的需求是复杂的.我们公司内部人员能看到订单的人员有很多,主要是分为内勤业务、信控员和调度员这三种角色(一般一个用户只拥有一个角色),不同的角色看到的订单不同,对订单的操作亦不同.</p>
<ol>
<li>内勤业务:它是产品助理的工作,主要是对客户下单的产品的确认,以及库存的控制.但是我们的产品不是没有库存就不能进行下单,其实产品是这样的,公司做的产品分为主营和非主营,所谓主营产品字面上的意思的主要销售的产品,实为产品的独家或主要的代理商,即我们进货的上家就是产品生产厂家,如果该产品没有货了,那就不能下单.非主营产品是指不是独家代理商的产品,这样的产品是不受库存控制的,因为这样的产品可先去其他代理商去'抄货',就是我们没这样产品但是我们到其他代理商那里去拿货再买给你(往往价格就会贵一点),这就叫抄货.据说公司现在炒货比自己做的产品还要多,利益熟多熟少我就不是很清楚了.</li>
<li>一个订单可有多件产品,一个产品可能有多个产品助理.一个产品助理可能同时为多个产品的产品助理.一个产品助理确认通过那订单内那件产品就审核通过,所有产品通过那个订单才通过进入下一步审核.流程基本上就是这样的.这要求产品助理能及时进行处理订单,我们老总是要求产品助理时时守在电脑面前的.而且还规定超过多久没有处理订单就要扣钱.我们还做了一个发短信的程序,如果订单内那件产品超过多久没有处理的话就发段信息到产品助理的手机上,呵呵,当他们看到短信的时候就要扣工资了.扣的是那件产品的所有产品助理的工资.</li>
<li>程序上,使用Flex开发,服务器端是asp,怎么没有WebServer那怎么办呢?凉拌!其实在Flex里面使用它自动生成引用的WebService的组件并不怎么好用,不单只生成一些无用的东西,而且还有一些Bug,如有时候返回的数据丢失等.直接自己写mx:HTTPService类,它能发送一个http请求并返回,实现WebService类似的功能.对于返回的结果我们可以使用Json来处理,在asp里面我们可以轻松的将adodb.recordset结果集转换为Json对象.代码如下:<br />
<div style="padding-right: 5.4pt; padding-left: 5.4pt; padding-bottom: 4px; width: 645px; word-break: break-all; padding-top: 4px; background-color: #efefef; border: #cdcdcd 1px solid;">
<div><span style="color: #0000ff;">function</span><span style="color: #000000;"> GetJSON(rs)<br /></span><span style="color: #0000ff;">dim</span><span style="color: #000000;"> returnStr <br /></span><span style="color: #0000ff;">dim</span><span style="color: #000000;"> i<br /></span><span style="color: #0000ff;">dim</span><span style="color: #000000;"> ors<br /></span><span style="color: #008000;">'</span><span style="color: #008000;">将记录集生成JSON字符串</span><span style="color: #008000;"><br /></span><span style="color: #0000ff;">if</span><span style="color: #000000;"> </span><span style="color: #0000ff;">not</span><span style="color: #000000;"> rs.eof </span><span style="color: #0000ff;">then</span><span style="color: #000000;"><br />returnStr </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">[</span><span style="color: #800000;">"</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">while</span><span style="color: #000000;"> </span><span style="color: #0000ff;">not</span><span style="color: #000000;"> rs.eof<br />ors </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">{</span><span style="color: #800000;">"</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">for</span><span style="color: #000000;"> i </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800080;">0</span><span style="color: #000000;"> </span><span style="color: #0000ff;">to</span><span style="color: #000000;"> Rs.Fields.Count </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;"><br />ors </span><span style="color: #000000;">=</span><span style="color: #000000;"> ors </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #0000ff;">chr</span><span style="color: #000000;">(</span><span style="color: #800080;">34</span><span style="color: #000000;">) </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> rs.Fields(i).Name </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #0000ff;">chr</span><span style="color: #000000;">(</span><span style="color: #800080;">34</span><span style="color: #000000;">) </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">:</span><span style="color: #800000;">"</span><span style="color: #000000;"> <br />ors </span><span style="color: #000000;">=</span><span style="color: #000000;"> ors </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #0000ff;">chr</span><span style="color: #000000;">(</span><span style="color: #800080;">34</span><span style="color: #000000;">) </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> jsonReplace(rs.Fields(i).Value) </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #0000ff;">chr</span><span style="color: #000000;">(</span><span style="color: #800080;">34</span><span style="color: #000000;">) </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">,</span><span style="color: #800000;">"</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">next</span><span style="color: #000000;"><br />ors </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">left</span><span style="color: #000000;">(ors, </span><span style="color: #0000ff;">len</span><span style="color: #000000;">(ors) </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">)<br />ors</span><span style="color: #000000;">=</span><span style="color: #000000;">ors </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">},</span><span style="color: #800000;">"</span><span style="color: #000000;"><br />returnStr </span><span style="color: #000000;">=</span><span style="color: #000000;"> returnStr </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> ors<br />Rs.MoveNext<br /></span><span style="color: #0000ff;">wend</span><span style="color: #000000;"><br />returnStr </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000ff;">left</span><span style="color: #000000;">(returnStr, </span><span style="color: #0000ff;">len</span><span style="color: #000000;">(returnStr) </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #800080;">1</span><span style="color: #000000;">)<br />returnStr </span><span style="color: #000000;">=</span><span style="color: #000000;"> returnStr </span><span style="color: #000000;">&amp;</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">]</span><span style="color: #800000;">"</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />returnStr </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #800000;">"</span><span style="color: #800000;">[]</span><span style="color: #800000;">"</span><span style="color: #000000;"><br /></span><span style="color: #0000ff;">end</span><span style="color: #000000;"> </span><span style="color: #0000ff;">if</span><span style="color: #000000;"><br />GetJSON </span><span style="color: #000000;">=</span><span style="color: #000000;"> returnStr<br /></span><span style="color: #0000ff;">end function</span></div>
</div>
而在Flex端, 有as的Json类,能把它轻易的转换为对象.并把它绑定到DataGrid上呈现出来.其他的操作亦如此,Flex相当与客户端为表示层,而asp则为业务逻辑层,是为具体功能的实现,两者使用Flex传输数据进行通讯,真的比较完美! </li>
</ol>
<p style="font-weight: bold; text-indent: 2em;">&middot;选项卡功能</p>
<p style="text-indent: 2em;">这一块功能的其实是需要客户体验它的实用性的.以前这个报价系统的主页面是一个frameset框架,它最大的优点是局部刷新.但是这个frameset框架也有很多缺点,整个主页面只能有frameset及FRAME子标签,不允许有其他的标签,连body标签都没有的.这样的一个页面控制起来是比较麻烦的.只能单独控制FRAME里面src里的页面,报价系统里要嵌一个IM及时通讯,而且要能在整个页面里自由拖拽而不是在FRAME里单独某个页面,那改如何实现呢?没得办法只有改掉以前frameset框架,再重新做一个主页,那样便没有什么约束随你怎么放了,而且也好控制多了.在新做的一个页面里右边还是同样多的菜单链接,但是它不是被套在FRAME里面,它就是一个DIV了,当高度过长的时候也有滚动条.但是这个链接都执行那里呢?新打开一个窗体?不!如果我还是要实现以前frameset那些功能的话那要怎么做?有朋友应该会马上想到在中间放一个iframe,然后所有的链接都指向该iframe,思路基本上是这样的!但是我们平时管理产品有很多分类,有时候将要对产品进行频繁的操作,要是能同时打开多个产品的页面但是不是每一个都是打开一个新的浏览器窗体或是替换之前的页面,那样会不会方便一些呢?这时候选项卡就应运而生了.先看张选项卡操作的解图吧.</p>
<div><a href="/upload/jonllen/article/o_option.jpg" target="_blank"><img title="JS选项卡" src="/upload/jonllen/article/o_option.jpg" alt="JS选项卡" width="500" height="389" /></a></div>
<p style="text-indent: 2em;">选项卡看见了吧,上面首页、笔记本、CPU、价格管理等都是选项卡了.它们是可以自由的切换和关闭的.选项卡就是由一个DIV包裹着的,它的宽度是为100%高度不固定.当前只能选择浏览一个选项卡的页面,切换或关闭一个选项卡是无刷新的.另外选项卡的大小为最大页面可用大小.并且在页面改变大小onresize的时候也跟着改变,我们也兼容了不同分辨率的显示器,分辨率大的那好说,可是小的显示起来就不怎么好看了,例如我们公司还有同事在用14寸的显示器,1024*768的分辨率调不了,因为显卡跟不上了.在他电脑上看的字很大一个,我们能抛弃他们吗?不行,我们得觉得这个问题把它做得更好.</p>
<div><a href="/upload/jonllen/article/o_autoScreen.jpg" target="_blank"><img title="订购报价商务平台" src="/upload/jonllen/article/o_autoScreen.jpg" alt="订购报价商务平台" width="500" height="417" /></a></div>
<p style="text-indent: 2em;">如上图,将浏览器缩小到此大小仍能正常的浏览该网页的.要维持这个页面滚动条状态javascript是少不了的.要动态改变它的宽和高,刚开始写的时候写的有点晕,包括浏览器缩放大小的时候事件不触发,且各种浏览器它的宽高度值会不一样.所以到现在好象有时候还会有点Bug.一般我做网页的时候用IE6做测试,因为根据51la等流量统计等IE6仍是用得最多的浏览器.你不能因为IE7好用而且对一些新样式min-Width等支持容易控制,没什么那么Bug,而在ie6用个div层遮不住select就骂ie6以ie7为标准了(一般在ie6中行就在ie7中行,而在ie7行的不一定在ie6中行).再者是用firefox2.0的浏览器测试,这个版本不高不低,应该也算是ff里的主流了.用ff浏览器主要对web标准的测试.</p>
<p style="text-indent: 2em;">程序上,选项卡的功能也基本上就是js,说到js,就少不了jquery这个方便实用的好东西.在本项目中除开用了jquery库,还用了它一套ui插件(dialog弹窗).它对浏览器的兼容算是做的不错的,个人是比较佩服的是jquery它的筛选,其次它的Ajax也不错.jquery大部分函数都是返回this本身对象,这个使得我们操作某个dom对象一行搞定所有的功能.其实选项卡实现起来真的比较简单,只要你在写js的时候搞清楚它整个思路,代码是行如流水能有条不紊的写出来.不过写前应该明白:选项卡主要是点击页面链接(主要为左边菜单)时候创建的,每一个选项卡有一个唯一ID控制,由于要打开多个选项卡并且无刷新的自由的切换,所以每一个选项卡应该对应一个iframe,只不过只有一个是显示出来的.切换点击选项卡的过程即是设置对应iframe显示的过程.选项卡和对应iframe必须关联起来,如&lt;a id='test' href='test.asp'&gt;test页面&lt;/a&gt;的选项卡id为nav_test对应的iframe的id为item_test(我项目内的命名规则).根据链接就能产生一个选项卡页面.总体实现的思路如下:</p>
<ol>
<li>在页面ready(窗体load)里通过jquery筛选找到所有要创建为选项卡的链接,并绑定click事件.</li>
<li>在click事件里,获取到链接(a标签)的id作为选项卡的id(应该是不包含nav_和item_的)、innerText为选项卡的标题、href为选项卡和对应iframe的地址.</li>
<li>判断选项卡是否已经打开(id为nav_id或item_id元素是否存在),如果不存在则先隐藏所有所有选项卡再创建选项卡的导航条(需设置它的文本和关闭、点击选中对应的事件)和iframe元素(需用js设置它的宽高度为当前页面最大可用宽高度),并设置为当前所选(导航条为选中样式ifame显示出来其他的都隐藏).</li>
<li>如果已经打开,则找到设置为当前所选.</li>
<li>click事件的最后为return false,防止打开新窗体. </li>
</ol>
<p style="text-indent: 2em;">我想这思路算是比较清晰了的吧,如果你还不明白那可能就是我表述不清了.这里请你不要问我要源代码,如果你对它有兴趣的话,自己动手做一个吧,很简单的,说不定你又能从中学到一些东西呢. 项目就先写到这里：)</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-01-03 00:28</li>
				<li>update@ 2010-02-11 17:36:54</li>
				<li>阅读(<span id="articleClick">10755</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/22.aspx">一个Windows后台服务(.Net的C#版) - 定时访问数据库循环发送手机短信</a></li>
<li>下一篇：<a href="/jonllen/aspnet/21.aspx">.Net版(C#)的CMP模式(存储过程ORM)</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=23&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/23.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=23";
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