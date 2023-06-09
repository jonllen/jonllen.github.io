
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>使用PowerDesigner的物理模型创建升级管理数据库 - Asp.Net - 金龙博客</title>
<meta name="description" content="PowerDesigner是一种著名的CASE建摸工具，最开始为数据库建模设计，即物理模型(Physical Data Model)用于生成数据库表结构，还有面向对象模型(Object Oriented Model)，用于建立UML模型的结构，可以直接生成CS代码，还有其他的模型等等，不同的模型之间可以相互的转化。我最中意的就是它的物理模型直接设计生成数据库，给我们对数据库的生成升级维护带来极大的方便，下面主要来讲一下它的物理模型设计。
1.使用PowerDesigner物理模型生成数据库
打开PowerDesigner在File里New选择Physical Data Model(物理模型)，可在DBMS选项里面选择数据库的类型，新建立模型后PowerDesigner自动创建一个工作空间(Workspace)放在里面，然后模型下面默认会创建一个名PhysicalDiagram_1的物理图表区，这个其实就是用来区分数据库内某一模块的单元区域，我一般是把数据库内有关系的表放在同一块里面，如会员模块就叫MemberDiagrm里面放会员及其相关的表，其他模块就另外新建一个另外放在一起。浮在IDE右上方的Palette就是PowerDesigner里一些常见操作的工具面板，点击选择在图表区新建一个FA_Member会员表，双击表在General里面修改表名描述，这里的Name最好是用中文，然后Code就是数据库的" />
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
	                        WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked, startDate:'2009-07-11' } );
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
		     > <a href="/jonllen/aspnet/pd.aspx">使用PowerDesigner的物理模型创建升级管理数据库</a>
		</div>
        <div class="article">
			<div class="title"><h2>使用PowerDesigner的物理模型创建升级管理数据库</h2></div>
			<div class="category">分类：<a href="/jonllen/aspnet/">Asp.Net</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size: 16px; line-height: 24px;">
<p style="text-indent: 2em;">PowerDesigner是一种著名的CASE建摸工具，最开始为数据库建模设计，即物理模型(Physical Data Model)用于生成数据库表结构，还有面向对象模型(Object Oriented Model)，用于建立UML模型的结构，可以直接生成CS代码，还有其他的模型等等，不同的模型之间可以相互的转化。我最中意的就是它的物理模型直接设计生成数据库，给我们对数据库的生成升级维护带来极大的方便，下面主要来讲一下它的物理模型设计。</p>
<p style="text-indent: 2em;"><strong>1.使用PowerDesigner物理模型生成数据库</strong></p>
<p style="text-indent: 2em;">打开PowerDesigner在File里New选择Physical Data Model(物理模型)，可在DBMS选项里面选择数据库的类型，新建立模型后PowerDesigner自动创建一个工作空间(Workspace)放在里面，然后模型下面默认会创建一个名PhysicalDiagram_1的物理图表区，这个其实就是用来区分数据库内某一模块的单元区域，我一般是把数据库内有关系的表放在同一块里面，如会员模块就叫MemberDiagrm里面放会员及其相关的表，其他模块就另外新建一个另外放在一起。浮在IDE右上方的Palette就是PowerDesigner里一些常见操作的工具面板，点击选择<img title="table" src="/upload/jonllen/article/a_pd_table.gif" width="16" height="15" />在图表区新建一个FA_Member会员表，双击表在General里面修改表名描述，这里的Name最好是用中文，然后Code就是数据库的表名用英文，默认是Name to Code mirroring名字会连动的，如果觉得这个功能有点讨厌可在Tools工具栏General Options里Dialog的Name to Code mirroring不选中即可。表的列是在Columns选项卡里面添加的，同样Name最好用中文描述而Code即是表的列名了。 后面的P、F、M选项分别代表主键、外键、强制的(字段不为空)，选中主键强制的选项也会选中，外键不可选当字段有外键引用时自动选中。双击字段列可修改字段的一些属性，有描述、字段类型等，字段默认值在Standard Checks选项卡的Values里Default处设置。再新建一个会员类型表FA_MemberType，此时会员表里面的会员类型字段应该是引用会员类型表里面的会员类型编号，在PowerDesigner里表的主外关系建立的方法是：在Palette工具面板里面选择<img title="reference" src="/upload/jonllen/article/a_pd_reference.gif" width="16" height="15" />Reference后先点击从表然后再拖向主表，从表一条带箭头实线指向主表以表示主外键引用关系，双击关系名以编辑引用关系属性，建议主外键关系取名为：FK_从表_Reference_主表，但注意这里的Code不是数据库内生成的主外键关系名，而是在Integrity选项卡里Constraint name设置，另外对Insert和Update强制关系级联(Cascade)更新、删除操作(sql2005叫叠层并可以设置为空或默认值)也在此选项卡内设置。Join选项卡里是设置两个主外键表的引用列，PowerDesigner会自动选择主表主键为默认主外键列，如果两个表的列名不一样则需要修改，无论是修改主外键还是表都能在Preview选项卡里面即时预览看到生成的SQL语句。生成整个数据库的SQL语句是在Database工具栏的Generate Database里，建议新建一个sql目录专门放生成的sql语句文件，第一次创建数据库所有表建议取名叫create1.0.sql(因为后面全部是update)，Generation type建议选择Script generation生成sql脚本文件，而不要选择下面的Direct generation直接连接数据库执行，因为有时候生成的SQL语句里面会有Warn警告需要稍做修改不然会报错的(如修改表字段类型时候将以前表内数据导入时会有Warn)。Automatic archive自动备份也需要选中，该选项使生成sql语句后将弹出保存当前工程模型的对话框，后缀名为apm(其实内容和工程文件格式pdm是一样的，同样都可以打开)，建议新建一个目录叫log里面存所有apm格式的归档记录文件，由于是创建数据库文件所以建议取名叫create1.0.apm，这样能与创建数据库的sql文件一一对应。要创建数据库，找到sql目录里生成的create1.0.sql文件执行即可。</p>
<p style="text-indent: 2em;"><strong>2.使用PowerDesigner升级维护数据库</strong></p>
<p style="text-indent: 2em;">做项目难免要升级维护之前的数据库，PowerDesigner里的操作稍微比创建时麻烦点，还是继续以上面会员为例子，假如我现在已经创建好了数据库，但是需求的变化我需要在会员表上面增加一个区域编号，并引用新建的区域表，那用PowerDesigner模型该如何操作呢？首先开打pdm工程文件，在以前模型基础上直接进行修改，这里的操作就是新建一个区域表在再会员表添加一个区域字段引用它的外键，所有的修改完成后在Database工具栏Modify Database里面进行生成修改后的SQL语句，仍然建议设置生成sql语句的目录放在之前建立的sql目录下面，但是现在的文件名应该叫update2.0.sql，或者加在后面加上括号简要描述，如update2.0(add area).sql。注意记得指定Backup tables和Automatic archive选项，选中Backup tables将在修改表结构之前把原表改名加个tmp_前缀，创建好新的表结构后再insert into from select tmp_表插入以前表内的数据，起到备份以前表内数据功能，这就是为什么有时候用PowerDesigner升级数据库后会多一些tmp开头的临时表了，Automatic archive是在生成升级sql语句后提示保存当前记录的选项。由于这次修改是针对上创建数据库时候的修改，注意指定Get database schema选项里的Using a archive model文件，这里这个文件的路径应该是log目录下面的create1.0.apm文件，因为这次升级是针对上次创建数据库时的一次升级，PowerDesigner会自动拿当前模型和create1.0.apm之前保存的历史存档模型比较生成升级的sql语句，并显示确切的修改对比变化，很清晰一目了然，如下图：</p>
<div style="text-indent: 2em;"><a href="/upload/jonllen/article/a_pd_different.gif" target="_blank"><img title="Modify Different" src="/upload/jonllen/article/a_pd_different.gif" alt="Modify Different" width="500" height="406" /></a></div>
<p>&nbsp;</p>
<p style="text-indent: 2em;">最后提示保存Archive Model归档记录模型，这里应该叫update2.0.amp(或加上括号简要描述)并保存到log目录下面，同样与update2.0对照，这样命名条理清晰可读性强。以后的升级依此类推，都是相对之前的归档记录进行升级，升级后记得保存当前记录，如果变化不大可以叫update2.1,update2.2依次递增，如果修改较大可以升级一个版本序号叫update3.0，或者后面加上括号和简要的描述等。但是有时候我们修改的地方很少产生的update修改语句可能不会马上去执行，而是要等到下一次有多个修改的地方合起来一起去更新，这样我们的话我们就有可能有多个update语句文件在服务器数据库上还没有执行，但是和以前的update语句却区分不开来到底有没有升级过的，虽然说PowerDesigner产生的升级语句是可以多次执行的，但不建议这么多，因为这样有可能会出错，有个办法就是在每个已经升级过的sql文件名后加个后缀_ed表示已经升级过的，这样我下次升级后就只执行那些没有_ed还没有升级过的sql文件。当我们几次升级数据库后，会发现保存的数据库归档记录文件排列得很整齐。^_^</p>
<p style="text-indent: 2em;">PowerDesigner的apm归档格式文件也是可以直接打开的，有个时候我们可能需要数据库某个升级版本的结构，那么现在您可以找到那个归档的apm文件用PowerDesigner直接打开，选择Database工具栏的Generate Database选项，那么这时候所产生的sql语句就是那个版本数据库的所有表结构了。</p>
<p style="text-indent: 2em;"><strong>3.使用PowerDesigner的Domain自定义列类型</strong></p>
<p style="text-indent: 2em;">其实sqlserver数据库里面默认就支持用户定义的数据类型，该功能旨在对数据库字段实现通用和统一性，只要自定义一个数据库列类型，多处可以引用，修改自定义数据类型，所有引用处均自动修改，方便统一管理。PowerDesigner吸收这种自定义数据类型功能到模型里面，使用Domain新建一个用户自定义类型，在模型的列类型Domain处可选择用户自定义类型，最后在生成sql语句的时候PowerDesigner会自动将所有选择用户自定义类型的字段类型替换为用户自定义类型里的字段类型(不是所有的数据库都支持自定义数据类型)，一般来说我们至少会把表的主键字段做成一个用户自定义类型autoId，在autoId用户自定义类型里面我们设置它的类型Data type为int然后选中Identity，那么所有的引用表的主键就是int类型并自动增长，假如有一天我们要移植数据库或更换所有的表主键的类型那么只要修改用户自定义类型所有引用的表主键字段便会跟着被修改。还有一些字段为了做到通用性也建议使用用户自定义类型，如表的标识字段flag表示这行记录的状态，建议使用一个int类型的用户自定义类型并可设置默认值，还有当前时间字段也建议新建一个用户自定义类型，在sqlserver数据库里面我们可以设置它的默认值为getdate()，当我们更换成oracle或mysql数据库时候就只需要修改的默认值为SYSDATE或CURDATE()即可。</p>
<p style="text-indent: 2em;"><strong>4.使用PowerDesigner的Reverse反向工程生成模型</strong></p>
<p style="text-indent: 2em;">我们以前一些项目的数据库可能没有用PowerDesigner进行建模管理，那怎么办呢？没有关系，PowerDesigner的Reverse反向工程帮您重新生成模型，选择Database工具栏Reverse Engineer Database菜单，Using script files是使用sql脚本文件来反向生成模型(不建议使用，如果sql语句太复杂生成的模型可能将与你期待的有所差异，毕竟PowerDesigner也不能全智能来识别)，使用下面的Using a data source选项是使用现有的数据库来生成，我们可以先在Configure Connections菜单里面新建立一个数据库连接，选择好要连接的数据库驱动类型，如果是Access数据库则指定本地mdb文件的路径，如果是连mysql数据库需要从网上下载一个ODBC For Mysql的驱动，Oracle和Sqlserver有默认的连接驱动程序，输入正确的数据库用户名和密码后列出数据库内所有表结构如下图：</p>
<div style="text-indent: 2em;"><a href="/upload/jonllen/article/a_pd_reverse.gif" target="_blank"><img title="Reverse Database" src="/upload/jonllen/article/a_pd_reverse.gif" alt="Reverse Database" width="500" height="338" /></a></div>
<p style="text-indent: 2em;">可以看到我们从数据库反向生成模型的时候可以设置指定生成那些表、视图、用户自定义类型、触发器、存储过程、表主外键关系、索引等等，一般默认值就好，生成后我们可以看到数据库的结构原模原样的被复制到物理模型里面，E-R图如下：</p>
<div style="text-indent: 2em;"><a href="/upload/jonllen/article/a_pd_er.gif" target="_blank"><img title="PowerDesigner E-R图" src="/upload/jonllen/article/a_pd_er.gif" alt="PowerDesigner E-R图" width="500" height="445" /></a></div>
<p style="text-indent: 2em;">这样，使用PowerDesigner的Reverse反向工程功能便能"同步"到当前的数据库，先保存一份create1.0.amp创建时候的数据库存档，之后在此基础上进行修改操作，生成出来的sql语句就是针对当前服务器上数据库的更新脚本。</p>
<p style="text-indent: 2em;">当我们创建的是PowerDesigner的面向对象模型(Object Oriented Model)的时候同样也能使用Reverse反向工程功能，选择C#语言则指定cs文件的路径，这里一般为数据库映射的实体模型类，然后PowerDesigner便能生成对应的面向对象模型。</p>
<p style="text-indent: 2em;"><strong>5.使用PowerDesigner的物理模型生成不同的数据库<strong></strong>和转换成OOM模型生成CS实体类代码</strong></p>
<p style="text-indent: 2em;">PowerDesigner的物理模型保存的文件是用XML来描述模型结构的格式，所以它不会受任何数据库类型的影响。假如我们刚开始的例子是使用sql2000数据库创建的物理模型，那么现在使用PowerDesigner能马上生成一份Oracle、DB2、Mysql或Access数据库的创建脚本。选择Database工具栏中的Change Current DBMS菜单，将以前的Microsoft SQL Server 2000改为MySQL 5.0，以前sql2000数据库的模型摇身一变成了MySQL，在Preview选项卡里面我们就能看到MySql的drop table if exists的sql语法了 ，这里需要注意的是转换过程中可能会出现一些错误，可能是因为你在模型里使用了某种数据库特有的一些语法或功能，在新选择数据库内不能被支持使用，所以建议从一开始就使用规范的一些SQL语法建立数据库为后面有可能移植转换做考虑，之前还提到了使用Domian自定义类型，这里就能很好的应用，如修改当前时间的自定义类型的默认值为CURDATE()即可修改所有引用字段以支持MySql数据库，或修改autoId自定义类型为其他非int类型为表的主键等等。</p>
<p style="text-indent: 2em;">PowerDesigner里面各种模型是能实现无缝隙进行相互转换的。还是以刚开始会员为例子，我现在建好了物理模型需要转换为OOM模型，并把数据库所有表映射生成cs代码实体类。点击Tools工具栏选择Generate Object-Oriented Model菜单，选择生成OOM对象的语言，这里以C# 2.0为例，如果物理模型表里的Name为中文转换生成的OOM类对象字段里面也全是中文的话，请确保在转换时OOM Generation Options里的Detail选项卡内的Convert names to into codes没有被选中。转换成功后我们可以在OOM里面看到会员对象的一些关系和生成cs代码如下图：</p>
<div style="text-indent: 2em;"><a href="/upload/jonllen/article/a_pd_oom.gif" target="_blank"><img title="PowerDesigner OOM" src="/upload/jonllen/article/a_pd_oom.gif" alt="PowerDesigner OOM" width="500" height="441" /></a></div>
<p style="text-indent: 2em;">从图片可以看出，会员与会员类型是1对1关系，而会员类型可以对应多个会员。所以生成的cs代码里会员表没有会员类型编号字段，而有一个FA_MemberType类型的属性，代表当前会员的会员类型，而会员类型表里面会多一个System.Collections.Generic.List&lt;FA_Member&gt;属性，代表当前会员类型的所有会员列表集合，PowerDesigner把这些面向对象的思想真的表现得淋漓尽致。但有时候我们需要的实体类是数据库内原分不动的字段映射过来，而不需要FA_MemberType类型的属性只要一个包含memberTypeId字段的完整会员表实体怎么办？我这里介绍一个简单的办法，在物理模型转换为OOM对象模型前先把表之间的所有References主外键关系全部删除掉，可能删除表的主外键关系时会PowerDesigner也会把主从表的主外键列也全部删除去，设置Tools工具栏Model Options里Reference选项里的Auto-migrate columns勾去掉即可。删除后不保存之前的物理模型直接转换成OOM后再Ctrl+Z恢复之前删除的References，这时可以看到OOM模型里面的会员类对象便是数据库会员表所有字段原分不变的映射。另外，OOM模型可以直接生成VS的工程文件带所有cs实体类文件，那么，我们使用PowerDesigner建立好数据库的物理模型后，又可转换成OOM对象模型轻松生成cs代码实体类。</p>
<p style="text-indent: 2em;">可能有些朋友的PowerDesigner打开工程Preview里看到的不是我这样的cs代码，而是一些public int MemberId之类的字段，这是因为PowerDesigner将物理模型转换到OOM对象模型的时候表的所有字段是被变成类模型里面的Attributes，而Attributes配置生成的模板默认是不带有get和set访问器的，修改Language工具栏Edit Current Object Language菜单找到Profile &gt; Attribute &gt; Templates &gt; definition修改模板即可。我的C#2.0模板如下：</p>
<div style="padding-left: 5px;">
<div style="padding-right: 20px; padding-left: 20px; padding-bottom: 5px; margin: 10px; padding-top: 5px; background-color: #eee; border: #ccc 1px solid;"><span style="color: #000000;">.</span><span style="color: #0000ff;">if</span><span style="color: #000000;">&nbsp;(</span><span style="color: #000000;">%</span><span style="color: #000000;">isGenerated</span><span style="color: #000000;">%</span><span style="color: #000000;">)&nbsp;and&nbsp;(</span><span style="color: #000000;">%</span><span style="color: #000000;">isValidAttribute</span><span style="color: #000000;">%</span><span style="color: #000000;">)<br />[</span><span style="color: #000000;">%</span><span style="color: #000000;">comment</span><span style="color: #000000;">%</span><span style="color: #000000;">\n]\<br />[</span><span style="color: #000000;">%</span><span style="color: #000000;">oidDocTag</span><span style="color: #000000;">%</span><span style="color: #000000;">\n]\<br />[</span><span style="color: #000000;">%</span><span style="color: #000000;">customAttributes</span><span style="color: #000000;">%</span><span style="color: #000000;">\n]\<br />&nbsp;&nbsp;&nbsp;.</span><span style="color: #0000ff;">if</span><span style="color: #000000;">&nbsp;(</span><span style="color: #000000;">%</span><span style="color: #000000;">Multiple</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">==</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000ff;">false</span><span style="color: #000000;">)&nbsp;and&nbsp;(</span><span style="color: #000000;">%</span><span style="color: #000000;">isIndexer</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">==</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000ff;">false</span><span style="color: #000000;">)<br /><br />private&nbsp;[</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;]</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">[&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">InitialValue</span><span style="color: #000000;">%</span><span style="color: #000000;">];<br /><br />[</span><span style="color: #000000;">%</span><span style="color: #000000;">visibility</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;][</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;]</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;<br />.convert_name(</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">,,</span><span style="color: #000000;">"</span><span style="color: #000000;">_</span><span style="color: #000000;">"</span><span style="color: #000000;">,FirstUpperChar)<br />{<br />&nbsp;&nbsp;&nbsp;get&nbsp;{&nbsp;</span><span style="color: #0000ff;">return</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">;&nbsp;}<br />&nbsp;&nbsp;&nbsp;set&nbsp;{&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;value;&nbsp;}<br />}<br /><br />&nbsp;&nbsp;&nbsp;.</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br /><br />private&nbsp;[</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;]</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">[</span><span style="color: #000000;">%</span><span style="color: #000000;">arraySize</span><span style="color: #000000;">%</span><span style="color: #000000;">]&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">[&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">InitialValue</span><span style="color: #000000;">%</span><span style="color: #000000;">];<br /><br />[</span><span style="color: #000000;">%</span><span style="color: #000000;">visibility</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;][</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;]</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;<br />.convert_name(</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">,,</span><span style="color: #000000;">"</span><span style="color: #000000;">_</span><span style="color: #000000;">"</span><span style="color: #000000;">,FirstUpperChar)<br />{<br />&nbsp;&nbsp;&nbsp;get&nbsp;{&nbsp;</span><span style="color: #0000ff;">return</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">;&nbsp;}<br />&nbsp;&nbsp;&nbsp;set&nbsp;{&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;value;&nbsp;}<br />}<br /><br />&nbsp;&nbsp;&nbsp;.endif<br />.endif</span></div>
</div>
<p style="text-indent: 2em;">Java 5.0带get和set访问规则Bean对象生成模板如下：</p>
<div style="padding-left: 5px;">
<div style="padding-right: 20px; padding-left: 20px; padding-bottom: 5px; margin: 10px; padding-top: 5px; background-color: #eee; border: #ccc 1px solid;"><span style="color: #000000;">.</span><span style="color: #0000ff;">if</span><span style="color: #000000;">&nbsp;(</span><span style="color: #000000;">%</span><span style="color: #000000;">Multiple</span><span style="color: #000000;">%</span><span style="color: #000000;">)<br />[</span><span style="color: #000000;">%</span><span style="color: #000000;">javaDocComment</span><span style="color: #000000;">%</span><span style="color: #000000;">\n]\<br />private&nbsp;[</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;]</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">\[\]&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">[&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">initialValue</span><span style="color: #000000;">%</span><span style="color: #000000;">];<br /><br /></span><span style="color: #000000;">%</span><span style="color: #000000;">visibility</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">\[\]&nbsp;get<br />.convert_name(</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">,,</span><span style="color: #000000;">"</span><span style="color: #000000;">_</span><span style="color: #000000;">"</span><span style="color: #000000;">,FirstUpperChar)<br />()<br />{<br />&nbsp;&nbsp;&nbsp;</span><span style="color: #0000ff;">return</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">;<br />}<br /></span><span style="color: #000000;">%</span><span style="color: #000000;">visibility</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">\[\]&nbsp;set<br />.convert_name(</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">,,</span><span style="color: #000000;">"</span><span style="color: #000000;">_</span><span style="color: #000000;">"</span><span style="color: #000000;">,FirstUpperChar)<br />&nbsp;(</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">)<br />{<br />&nbsp;&nbsp;&nbsp;</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">;<br />}<br />.</span><span style="color: #0000ff;">else</span><span style="color: #000000;"><br />[</span><span style="color: #000000;">%</span><span style="color: #000000;">javaDocComment</span><span style="color: #000000;">%</span><span style="color: #000000;">\n]\<br />private&nbsp;[</span><span style="color: #000000;">%</span><span style="color: #000000;">flags</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;]</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">[&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">initialValue</span><span style="color: #000000;">%</span><span style="color: #000000;">];<br /><br /></span><span style="color: #000000;">%</span><span style="color: #000000;">visibility</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;get<br />.convert_name(</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">,,</span><span style="color: #000000;">"</span><span style="color: #000000;">_</span><span style="color: #000000;">"</span><span style="color: #000000;">,FirstUpperChar)<br />()<br />{<br />&nbsp;&nbsp;&nbsp;</span><span style="color: #0000ff;">return</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">;<br />}<br /></span><span style="color: #000000;">%</span><span style="color: #000000;">visibility</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #0000ff;">void</span><span style="color: #000000;">&nbsp;set<br />.convert_name(</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">,,</span><span style="color: #000000;">"</span><span style="color: #000000;">_</span><span style="color: #000000;">"</span><span style="color: #000000;">,FirstUpperChar)<br />&nbsp;(</span><span style="color: #000000;">%</span><span style="color: #000000;">dataType</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">)<br />{<br />&nbsp;&nbsp;&nbsp;</span><span style="color: #0000ff;">this</span><span style="color: #000000;">.</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">=</span><span style="color: #000000;">&nbsp;</span><span style="color: #000000;">%</span><span style="color: #000000;">fieldCode</span><span style="color: #000000;">%</span><span style="color: #000000;">;<br />}<br />.endif</span></div>
</div>
<p style="text-indent: 2em;">PowerDesigner几乎所有模型转换生成都可以使用模板来配置，这样能充分的让用户自定义来实现想要的功能。</p>
<p style="text-indent: 2em;">PowerDesigner的OOM功能远远不只这一些，最重要的是使用UML建用例图了，在面向对象里面的继承、多态，面向接口编程，对象之间的依赖、包含等关系也能在这里一一体现，不同的箭头线条各自代表着不同的意思，也能够生成一些cs伪代码，由于本文主要将PDM物理模型，这里就不再赘述。不知那些大师也会不会使用PowerDesigner或Rose来画画图呢？</p>
<p style="text-indent: 2em;"><strong>6.使用Report导出生成HTML格式的数据库表结构数据字典</strong></p>
<p style="text-indent: 2em;">对于一个有着很多个表的庞大的数据库，直接去查看数据库的结构显得很费力，比如我们在编程的时候要从几百个表里面找到表然后再从几十个列里去找到列的注释说明，很麻烦，使用PowerDesigner的Report功能自动生成所有表列的html的树状菜单结构，也可以作为数据库的帮助文档，使得我们找什么东西再也不需要跑到数据库内去看。选择Report工具栏选择Generate Report菜单使用Full Physical Report全部生成即可，生成后html效果图如下：</p>
<div style="text-indent: 2em;"><a href="/upload/jonllen/article/a_pd_report.png" target="_blank"><img title="PowerDesigner Report" src="/upload/jonllen/article/a_pd_report.png" alt="PowerDesigner Report" width="500" height="350" /></a></div>
<p style="text-indent: 2em;">这样，PowerDesigner对数据库管理升级操作的全攻略到此为止，以后发现新的功能再补上。相比Rose我觉得PowerDesigner它的功能更方便实用，而Rose可谓身出名门D调华丽，为Java量身打造很多功能，现在归属于IBM。PowerDesigner也历经风波最终被美国的Sybase所收购，这里值得一提的是PowerDesigner最初是由一个中国人开发创建，中国软件加油!!!</p>
<p style="text-indent: 2em;">以上PowerDesigner事例下载：<a href="http://files.cnblogs.com/Jonllen/PDCase.rar" title="源码下载">Case下载</a> 版本：PowerDesigner 12.5</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/aspnet/">Asp.Net</a> PowerDesigner
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-07-11 22:52</li>
				<li>update@ 2010-02-11 16:40:32</li>
				<li>阅读(<span id="articleClick">23039</span>)</li>
				<li>评论(0)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href="/jonllen/aspnet/26.aspx">门户网站的形成—CMS内容管理系统</a></li>
<li>下一篇：<a href="/jonllen/aspnet/59.aspx">IIS虚拟目录调用主网站Bin内类库方法</a></li></ul>
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=40&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/aspnet/pd.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=40";
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