
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>JavaScript无限级Select下拉列表联动 - JavaScript - 金龙博客</title>
<meta name="description" content="使用数组，支持无限级别，一次性从服务器输出所有数据，最好的例子就是省市select联动，代码如下..." />
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
		     > <a href="/jonllen/js/">JavaScript</a>
		     > <a href="/jonllen/js/19.aspx">JavaScript无限级Select下拉列表联动</a>
		</div>
        <div class="article">
			<div class="title"><h2>JavaScript无限级Select下拉列表联动</h2></div>
			<div class="category">分类：<a href="/jonllen/js/">JavaScript</a></div>
			<div class="fontZoom"><a href="javascript:zoom(20);" style="font-size:large; font-weight:700">大</a><a href="javascript:zoom(14);" style="font-size:14px; font-weight:500;">中</a><a href="javascript:zoom(10);">小</a></div>
			<div class="cont" id="content">
				<div style="font-size:18px; line-height:30px;">
	<p style="text-indent:2em">实现效果：<select id="drpProvince"></select> - <select id="drpCity"></select> - <select id="drpArea"></select></p>
	<script type="text/javascript">
		//联动select数组
		var arrSelect = new Array(document.getElementById("drpProvince"), document.getElementById("drpCity"), document.getElementById("drpArea"));
		//多围数组数据，四围分别保存id、父级id、显示文本、文本值
		var arrData = new Array(
			/*[999999,0,'--请选择--',''],[999998,999999,'--请选择--',''],[999997,999998,'--请选择--',''],*/
			[1,0,'北京','1'],[2,1,'北京','2']
			,[3,0,'湖南','3'],[4,3,'长沙','4'],[5,3,'株洲','5'],[6,3,'湘潭','6'],[7,6,'岳塘区','7'],[8,6,'雨湖区','8'],[9,6,'河塘区','9']
			,[10,0,'广东','10'],[11,10,'广州','11'],[12,10,'佛山','12'],[13,11,'天河区','13'],[14,11,'番禺区','14'],[15,11,'越秀区','15'],[16,12,'南山区','16'],[17,12,'蝉城区','17']
		);
		//默认值数组
		var arrDefault = new Array('10' ,'11' ,'13');
		//初始化主函数
		function arrInit(strInitID, arrSelect, arrMatrix, arrDefValue) {
			function doChange(iIndex) {
				var iCount = 0;
				var sParentID = strInitID;
				if (iIndex > 0) sParentID = arrSelect[iIndex - 1].options[arrSelect[iIndex - 1].selectedIndex].ID;
				with (arrSelect[iIndex]) {
					length = 0;
					options[iCount++] = new Option('--所有--', '0', false, true);
					for (var i = 0; i < arrMatrix.length; i++) {
						if (String(arrMatrix[i][1]) == String(sParentID)) {
							var oNewOption = new Option(arrMatrix[i][2], arrMatrix[i][3], false, false);
							oNewOption.ID = arrMatrix[i][0];
							options[iCount++] = oNewOption;
							if(arrMatrix[i][3] == arrDefValue[iIndex])options[iCount - 1].selected = true;
						};
					};
					/* if (iCount == 0) { //列表数为0则新增默认项
						var oNull = new Option("--", null, false, true);
						oNull.ID = "_0x" + (new Date()).getTime();
						options[0] = oNull;
					};*/
					
					//联动改变所有子select
					if (++iIndex < arrSelect.length) doChange(iIndex);
				};
			};
			if (!arrDefValue) arrDefValue = [];
			for (var i = 0; i < arrSelect.length - 1; i++) {
				eval("arrSelect[" + i + "].onchange = function(){ doChange(" + (i + 1) + "); };");
			}
			doChange(0);
			//只有第一次调用初始化主函数arrInit才使用默认值，之后手动选择不受默认值限制，因此清空。
			arrDefValue = [];
		};
		arrInit(0,arrSelect,arrData,arrDefault);
		function runCode(target)
		{
			var newwin=window.open('','',''); //打开一个窗口并赋给变量newwin。
			newwin.opener = null // 防止代码对论谈页面修改
			newwin.document.write(target.previousSibling.previousSibling.value); //向这个打开的窗口中写入代码code，这样就实现了运行代码功能。
			newwin.document.close();
		}
	</script>
	<p style="text-indent:2em">代码如下：</p>
	<pre><div class="code"><div><span style="color: #000000;">地区：</span><span style="color: #000000;">&lt;</span><span style="color: #000000;">select id</span><span style="color: #000000;">=</span><span style="color: #000000;">"</span><span style="color: #000000;">drpProvince</span><span style="color: #000000;">"</span><span style="color: #000000;">&gt;&lt;</span><span style="color: #000000;">/</span><span style="color: #000000;">select&gt; - &lt;select id="drpCity"&gt;&lt;</span><span style="color: #000000;">/</span><span style="color: #000000;">select</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #000000;">&lt;</span><span style="color: #000000;">select id</span><span style="color: #000000;">=</span><span style="color: #000000;">"</span><span style="color: #000000;">drpArea</span><span style="color: #000000;">"</span><span style="color: #000000;">&gt;&lt;</span><span style="color: #000000;">/</span><span style="color: #000000;">select&gt;</span><span style="color: #000000;"><br /></span><span style="color: #000000;">&lt;</span><span style="color: #000000;">script type</span><span style="color: #000000;">=</span><span style="color: #000000;">"</span><span style="color: #000000;">text/javascript</span><span style="color: #000000;">"</span><span style="color: #000000;">&gt;</span><span style="color: #000000;"><br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">联动select数组</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000FF;">var</span><span style="color: #000000;"> arrSelect </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000FF;">new</span><span style="color: #000000;"> Array(document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">drpProvince</span><span style="color: #000000;">"</span><span style="color: #000000;">), document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">drpCity</span><span style="color: #000000;">"</span><span style="color: #000000;">), document.getElementById(</span><span style="color: #000000;">"</span><span style="color: #000000;">drpArea</span><span style="color: #000000;">"</span><span style="color: #000000;">));<br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">多围数组数据，四围分别保存id、父级id、显示文本、文本值</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000FF;">var</span><span style="color: #000000;"> arrData </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000FF;">new</span><span style="color: #000000;"> Array(<br />        </span><span style="color: #000000;">&lt;!--</span><span style="color: #000000;">[</span><span style="color: #000000;">999999</span><span style="color: #000000;">,</span><span style="color: #000000;">0</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">--请选择--</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">''</span><span style="color: #000000;">],[</span><span style="color: #000000;">999998</span><span style="color: #000000;">,</span><span style="color: #000000;">999999</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">--请选择--</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">''</span><span style="color: #000000;">],[</span><span style="color: #000000;">999997</span><span style="color: #000000;">,</span><span style="color: #000000;">999998</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">--请选择--</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">''</span><span style="color: #000000;">],</span><span style="color: #000000;">--&gt;</span><span style="color: #000000;"><br />        [</span><span style="color: #000000;">1</span><span style="color: #000000;">,</span><span style="color: #000000;">0</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">北京</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">1</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">2</span><span style="color: #000000;">,</span><span style="color: #000000;">1</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">北京</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">2</span><span style="color: #000000;">'</span><span style="color: #000000;">]<br />        ,[</span><span style="color: #000000;">3</span><span style="color: #000000;">,</span><span style="color: #000000;">0</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">湖南</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">3</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">4</span><span style="color: #000000;">,</span><span style="color: #000000;">3</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">长沙</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">4</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">5</span><span style="color: #000000;">,</span><span style="color: #000000;">3</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">株洲</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">5</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">6</span><span style="color: #000000;">,</span><span style="color: #000000;">3</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">湘潭</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">6</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">7</span><span style="color: #000000;">,</span><span style="color: #000000;">6</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">岳塘区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">7</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">8</span><span style="color: #000000;">,</span><span style="color: #000000;">6</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">雨湖区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">8</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">9</span><span style="color: #000000;">,</span><span style="color: #000000;">6</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">河塘区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">9</span><span style="color: #000000;">'</span><span style="color: #000000;">]<br />        ,[</span><span style="color: #000000;">10</span><span style="color: #000000;">,</span><span style="color: #000000;">0</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">广东</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">10</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">11</span><span style="color: #000000;">,</span><span style="color: #000000;">10</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">广州</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">11</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">12</span><span style="color: #000000;">,</span><span style="color: #000000;">10</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">佛山</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">12</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">13</span><span style="color: #000000;">,</span><span style="color: #000000;">11</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">天河区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">13</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">14</span><span style="color: #000000;">,</span><span style="color: #000000;">11</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">番禺区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">14</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">15</span><span style="color: #000000;">,</span><span style="color: #000000;">11</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">越秀区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">15</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">16</span><span style="color: #000000;">,</span><span style="color: #000000;">12</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">南山区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">16</span><span style="color: #000000;">'</span><span style="color: #000000;">],[</span><span style="color: #000000;">17</span><span style="color: #000000;">,</span><span style="color: #000000;">12</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">蝉城区</span><span style="color: #000000;">'</span><span style="color: #000000;">,</span><span style="color: #000000;">'</span><span style="color: #000000;">17</span><span style="color: #000000;">'</span><span style="color: #000000;">]<br />    );<br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">默认值数组</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000FF;">var</span><span style="color: #000000;"> arrDefault </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000FF;">new</span><span style="color: #000000;"> Array(</span><span style="color: #000000;">'</span><span style="color: #000000;">10</span><span style="color: #000000;">'</span><span style="color: #000000;"> ,</span><span style="color: #000000;">'</span><span style="color: #000000;">11</span><span style="color: #000000;">'</span><span style="color: #000000;"> ,</span><span style="color: #000000;">'</span><span style="color: #000000;">13</span><span style="color: #000000;">'</span><span style="color: #000000;">);<br />    </span><span style="color: #008000;">//</span><span style="color: #008000;">初始化主函数</span><span style="color: #008000;"><br /></span><span style="color: #000000;">    </span><span style="color: #0000FF;">function</span><span style="color: #000000;"> arrInit(strInitID, arrSelect, arrMatrix, arrDefValue) {<br />        </span><span style="color: #0000FF;">function</span><span style="color: #000000;"> doChange(iIndex) {<br />            </span><span style="color: #0000FF;">var</span><span style="color: #000000;"> iCount </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">;<br />            </span><span style="color: #0000FF;">var</span><span style="color: #000000;"> sParentID </span><span style="color: #000000;">=</span><span style="color: #000000;"> strInitID;<br />            </span><span style="color: #0000FF;">if</span><span style="color: #000000;"> (iIndex </span><span style="color: #000000;">&gt;</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">) sParentID </span><span style="color: #000000;">=</span><span style="color: #000000;"> arrSelect[iIndex </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">].options[arrSelect[iIndex </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">].selectedIndex].ID;<br />            </span><span style="color: #0000FF;">with</span><span style="color: #000000;"> (arrSelect[iIndex]) {<br />                length </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">;<br />                options[iCount</span><span style="color: #000000;">++</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000FF;">new</span><span style="color: #000000;"> Option(</span><span style="color: #000000;">'</span><span style="color: #000000;">--所有--</span><span style="color: #000000;">'</span><span style="color: #000000;">, </span><span style="color: #000000;">'</span><span style="color: #000000;">0</span><span style="color: #000000;">'</span><span style="color: #000000;">, </span><span style="color: #0000FF;">false</span><span style="color: #000000;">, </span><span style="color: #0000FF;">true</span><span style="color: #000000;">);<br />                </span><span style="color: #0000FF;">for</span><span style="color: #000000;"> (</span><span style="color: #0000FF;">var</span><span style="color: #000000;"> i </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">; i </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> arrMatrix.length; i</span><span style="color: #000000;">++</span><span style="color: #000000;">) {<br />                    </span><span style="color: #0000FF;">if</span><span style="color: #000000;"> (String(arrMatrix[i][</span><span style="color: #000000;">1</span><span style="color: #000000;">]) </span><span style="color: #000000;">==</span><span style="color: #000000;"> String(sParentID)) {<br />                        </span><span style="color: #0000FF;">var</span><span style="color: #000000;"> oNewOption </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000FF;">new</span><span style="color: #000000;"> Option(arrMatrix[i][</span><span style="color: #000000;">2</span><span style="color: #000000;">], arrMatrix[i][</span><span style="color: #000000;">3</span><span style="color: #000000;">], </span><span style="color: #0000FF;">false</span><span style="color: #000000;">, </span><span style="color: #0000FF;">false</span><span style="color: #000000;">);<br />                        oNewOption.ID </span><span style="color: #000000;">=</span><span style="color: #000000;"> arrMatrix[i][</span><span style="color: #000000;">0</span><span style="color: #000000;">];<br />                        options[iCount</span><span style="color: #000000;">++</span><span style="color: #000000;">] </span><span style="color: #000000;">=</span><span style="color: #000000;"> oNewOption;<br />                        </span><span style="color: #0000FF;">if</span><span style="color: #000000;">(arrMatrix[i][</span><span style="color: #000000;">3</span><span style="color: #000000;">] </span><span style="color: #000000;">==</span><span style="color: #000000;"> arrDefValue[iIndex])options[iCount </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">].selected </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #0000FF;">true</span><span style="color: #000000;">;<br />                    };<br />                };<br />                </span><span style="color: #008000;">/*</span><span style="color: #008000;"> if (iCount == 0) { //列表数为0则新增默认项<br />                    var oNull = new Option("--", null, false, true);<br />                    oNull.ID = "_0x" + (new Date()).getTime();<br />                    options[0] = oNull;<br />                };</span><span style="color: #008000;">*/</span><span style="color: #000000;"><br />                <br />                </span><span style="color: #008000;">//</span><span style="color: #008000;">联动改变所有子select</span><span style="color: #008000;"><br /></span><span style="color: #000000;">                </span><span style="color: #0000FF;">if</span><span style="color: #000000;"> (</span><span style="color: #000000;">++</span><span style="color: #000000;">iIndex </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> arrSelect.length) doChange(iIndex);<br />            };<br />        };<br />        </span><span style="color: #0000FF;">if</span><span style="color: #000000;"> (</span><span style="color: #000000;">!</span><span style="color: #000000;">arrDefValue) arrDefValue </span><span style="color: #000000;">=</span><span style="color: #000000;"> [];<br />        </span><span style="color: #0000FF;">for</span><span style="color: #000000;"> (</span><span style="color: #0000FF;">var</span><span style="color: #000000;"> i </span><span style="color: #000000;">=</span><span style="color: #000000;"> </span><span style="color: #000000;">0</span><span style="color: #000000;">; i </span><span style="color: #000000;">&lt;</span><span style="color: #000000;"> arrSelect.length </span><span style="color: #000000;">-</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">; i</span><span style="color: #000000;">++</span><span style="color: #000000;">) {<br />            eval(</span><span style="color: #000000;">"</span><span style="color: #000000;">arrSelect[</span><span style="color: #000000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> i </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">].onchange = function(){ doChange(</span><span style="color: #000000;">"</span><span style="color: #000000;"> </span><span style="color: #000000;">+</span><span style="color: #000000;"> (i </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #000000;">1</span><span style="color: #000000;">) </span><span style="color: #000000;">+</span><span style="color: #000000;"> </span><span style="color: #000000;">"</span><span style="color: #000000;">); };</span><span style="color: #000000;">"</span><span style="color: #000000;">);<br />        }<br />        doChange(</span><span style="color: #000000;">0</span><span style="color: #000000;">);<br />        </span><span style="color: #008000;">//</span><span style="color: #008000;">只有第一次调用初始化主函数arrInit才使用默认值，之后手动选择不受默认值限制，因此清空。</span><span style="color: #008000;"><br /></span><span style="color: #000000;">        arrDefValue </span><span style="color: #000000;">=</span><span style="color: #000000;"> [];<br />    };<br />    arrInit(</span><span style="color: #000000;">0</span><span style="color: #000000;">,arrSelect,arrData,arrDefault);<br /></span><span style="color: #000000;">&lt;</span><span style="color: #000000;">/</span><span style="color: #000000;">script&gt;</span></div></div></pre>
	<p style="text-indent:2em">这是我以前在网上看到一个NB人物写的代码，感觉用起来很方便，于是便记录了下来，自己在它之上进行了一些修改，使在添加子项的时候不管有没有子项都添加一个为--所有--的默认项，这样做的用意就不用多说了吧，就像上面省市区3级联动的例子来说，我要表示一个市的地区，但不一定会要是精确到市下面的某一个区，这时候在所有的市下面加个所有就很要必要了。以上select联动实现有如下功能：</p>
	<p style="text-indent:2em">1.支持无限级的select层次嵌套。</p>
	<p style="text-indent:2em">首先，使用数组方式存储数据结构使它之能支持无限级。其实话说无限级的话只不过是说不受限制，这些数据都是后台程序动态输出，比如从数据库内取出来，一般使用id,父id这种表结构就能很好的存储无限级层次结构，所以在js里面使用这种结构的数组也能存储无限级别，即[id,父id,显示文本，文本值]，这样程序处理的时候直接用一条sql语句取出所有的数据一次性输出，这样每选择一个项也就不必要使用Ajax去服务器端取下一级的子项了，全部放在客户端处理。</p>
	<p style="text-indent:2em">2.支持初始化默认选择值设定。</p>
	<p style="text-indent:2em">这一点很重要，程序里面编辑的功能就一定会用到，就是在初始化的时候除开加载所有数据，一定还要能根据指定值设置默认选择项，上面就是为arrDefault数组，它分别对应arrSelect数组的默认选择项，应该和arrSelect围数相同，由于初始化列表项和指定默认值是在<span style="color: #000000;">doChange</span>函数里执行的，而且<span style="color: #000000;">select的onchange事件也是调用doChange</span>函数，所以在调用<span style="color: #000000;">doChange(</span><span style="color: #000000;">0</span><span style="color: #000000;">)</span>从第0个select初始化后重值默认值为[]，为了使后面的手动选择的一定不会是选中默认值项，所以设置为[]长度为0的数组，使用索引取得的值都是undefined，所以等式<span style="color: #000000;">arrMatrix[i][</span><span style="color: #000000;">3</span><span style="color: #000000;">] </span><span style="color: #000000;">==</span><span style="color: #000000;"> arrDefValue[iIndex]</span>就不会成立。</p>
	<p style="text-indent:2em">3.代码简洁。</p>
	<p style="text-indent:2em">使用闭包申明内部函数调用外部的变量，用eval来动态绑定select的onchange事件，使之把所有的逻辑处理都交给doChange函数，而不是初始化、设定默认值、change事件分别一个函数。doChange函数接受一个参数为arrSelect数组的索引号，即是从那一个select开始改变，在arrInit初始化函数当然是从第0个开始，触发onchange事件的时候是从当前select的下一个开始改变，使用++iIndex &lt; arrSelect.length将循环到最后一个select改变。sParentID父id默认为strInitID即是0(所有1级的select父id全为0)，当iIndex&gt;0即是2级或以下select时sParentID父id就不可能再是0了，而是arrSelect[iIndex - 1].options[arrSelect[iIndex - 1].selectedIndex].ID上一级select选择项的id(初始化时已指定)，根据父id循环arrMatrix数据数组找出父id为此值的所有列表，再依次循环到子级select。</p>
	<p style="text-indent:2em">语法点：</p>
	<p style="text-indent:2em">1.with使用。with使用{}包括的作用域设置为后面()包括的对象，所以{}里使用的属性或方法就会去()包括的对象上下文里找，而不需要使用对象.去访问，上面代码里的length = 0实际就等于arrSelect[iIndex].length = 0，但是w3c提示我们：with 语句是运行缓慢的代码块，尤其是在已设置了属性值时。大多数情况下，如果可能，最好避免使用它。</p>
	<p style="text-indent:2em">2.Option使用。指定select.options数组直接赋值，w3c说明里面讲到options[]集合并非一个普通的 HTMLcollection。为了和早期的浏览器向后兼容，这个集合有某种特殊的行为：允许通过 Select   对象来改变显示的选项，所以直接使用索引指定一个Option能起到动态添加或设置select列表项功能。为什么不使用select.add呢？因为在ie里面add方法只接受一个参数就是新增加的Option，而w3c标准是有2个参数，参数2为before必需，在选项数组的该元素之前增加新的元素。如果该参数是null，元素添加到选项数组的末尾。虽然使用try、catch能做到兼容，但为了取同不多做无味判断舍弃add方法。而new Option(text, value, defaultSelected, selected)四个参数的构造函数是从Navigator 3.0起添加的，defaultSelected是指定是否默认选择，selected则指定当前Option是否能被选择。</p>
	<p>
		<TEXTAREA rows="8" style="width:80%" cols="80">地区：<select id="drpProvince"></select> - <select id="drpCity"></select> - <select id="drpArea"></select>
	<script type="text/javascript">var arrSelect = new Array(document.getElementById("drpProvince"), document.getElementById("drpCity"), document.getElementById("drpArea"));var arrData = new Array([1,0,'北京','1'],[2,1,'北京','2']        ,[3,0,'湖南','3'],[4,3,'长沙','4'],[5,3,'株洲','5'],[6,3,'湘潭','6'],[7,6,'岳塘区','7'],[8,6,'雨湖区','8'],[9,6,'河塘区','9']        ,[10,0,'广东','10'],[11,10,'广州','11'],[12,10,'佛山','12'],[13,11,'天河区','13'],[14,11,'番禺区','14'],[15,11,'越秀区','15'],[16,12,'南山区','16'],[17,12,'蝉城区','17']    );var arrDefault = new Array('10' ,'11' ,'13');function arrInit(strInitID, arrSelect, arrMatrix, arrDefValue) {        function doChange(iIndex) {            var iCount = 0;            var sParentID = strInitID;            if (iIndex > 0) sParentID = arrSelect[iIndex - 1].options[arrSelect[iIndex - 1].selectedIndex].ID;            with (arrSelect[iIndex]) {                length = 0;                options[iCount++] = new Option('--所有--', '0', false, true);                for (var i = 0; i < arrMatrix.length; i++) {                    if (String(arrMatrix[i][1]) == String(sParentID)) {                        var oNewOption = new Option(arrMatrix[i][2], arrMatrix[i][3], false, false);                        oNewOption.ID = arrMatrix[i][0];                        options[iCount++] = oNewOption;                        if(arrMatrix[i][3] == arrDefValue[iIndex])options[iCount - 1].selected = true;                    };                };                if (++iIndex < arrSelect.length) doChange(iIndex);            };        };        if (!arrDefValue) arrDefValue = [];        for (var i = 0; i < arrSelect.length - 1; i++) {            eval("arrSelect[" + i + "].onchange = function(){ doChange(" + (i + 1) + "); };");        }        doChange(0);                arrDefValue = [];    };    arrInit(0,arrSelect,arrData,arrDefault);
	</script>
	</TEXTAREA><BR><INPUT onclick="runCode(this)" type="button" value="运行代码" />
	</p>
</div>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ImgLazy.js"></script>
	        <script type="text/javascript">new ImgLazy( { selector : 'content', maxWidth : document.getElementById('content').offsetWidth, 'loadSrc' : '/styles/index/css/default/images/lazyloading.gif' });</script>

			<div class="tags">标签：<a href="/jonllen/js/">JavaScript</a> 
			    
			    
			</div>

			<div class="desc">
			  <ul>
				<li>posted@ 2009-06-28 14:46</li>
				<li>update@ 2009-11-04 01:56:45</li>
				<li>阅读(<span id="articleClick">13073</span>)</li>
				<li>评论(3)</li>
				
			  </ul>
			</div>
			<script type="text/javascript" src="/styles/index/scripts/ad.js"></script>

		</div>
<div class="context">
			<ul>
				<li>上一篇：<a href=""></a></li>
<li>下一篇：<a href="/jonllen/js/16.aspx">tiny_mce在线编辑器内JavaScript实现Ctrl+S无刷新保存。</a></li></ul>
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
							        <li><a href="javascript:;" onclick="quote(this,'applezqp')">引用</a></li>

						        </ul>
						        <a>1楼</a> applezqp 2009-11-04 11:51:46
					        </div><div class="cont">代码给个易读的版本，我再来拜读一下。</div>
					        <div class="reply" ><span>回复：</span>呃…… 看来我写的东西易读性很差~~（2009-11-05 10:06:10）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'applezqp')">引用</a></li>

						        </ul>
						        <a>2楼</a> applezqp 2009-11-04 11:52:51
					        </div><div class="cont">评论被隐藏了。呃……上次我发的一条评论直接就没了，什么原因呢？</div>
					        <div class="reply" ><span>回复：</span>现在我设置提交的评论前台默认不显示,至于不见没有吧?（2009-11-05 10:11:41）</div>
				        </div>




				        <div class="item">
					        <div class="desc">
						        <ul class="options">
							        <li><a href="javascript:;" onclick="quote(this,'布布在线')">引用</a></li>

						        </ul>
						        <a>3楼</a> 布布在线 2011-04-12 14:58:48
					        </div><div class="cont">如果是所有地区铺开，然后鼠标移到显示省下2级地区浮动块，让选择，这个效果很好的。3个下拉框太单调。。</div>
					        
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
		        var url = "/plugin/web/doSaveComment.do?sourcetype=1&sourceid=19&siteId=1";
		        var data = "username="+encodeURIComponent(document.getElementById("txtUserName").value);
		        data += '&sourceurl=/jonllen/js/19.aspx';
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
		        var url = "/plugin/web/doAddClick.do?columnType=1&documentId=19";
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