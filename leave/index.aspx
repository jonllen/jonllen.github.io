

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>
	留言 - 金龙博客
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
	    <h3>留言</h3>
	    <h4>网站留言</h4>
	</div>
</div>
<div class="auto" id="nav" >
	<ul id="navigation">
		<li><a href="/">首页</a></li>

<li><a href="/jonllen/work/"  >工作</a></li>
		<li><a class="up" href="/album/">相册</a></li>
		<li><a href="/leave/"><!--留言--></a></li>
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
			<dd>简述：金龙，目前就职于一家软件公司，从事金融系统开发设计。
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
		        var url = "/plugin/web/getArticleArchive.do?coluidpath=579&colutype=6";		        		        
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
			            
			            <a href="/jonllen/" >
			                jonllen<!-- (0)-->
			            </a>
			        </li>
			
			        <li>
			            
			            <a href="/pengfenjun/" >
			                pengfenjun<!-- (0)-->
			            </a>
			        </li>
			
		</ul>
	</div>
</div>
 
<div id="mod28" class="mod links">
	<div class="head"><strong class="ico">友情链接</strong></div>
	<div class="cont">
		<ul>
                    
		    <li><a href="http://www.thjy.org" title="天河部落教育博客" target="_blank">天河部落</a></li>
                    
		    <li><a href="http://weibo.com/zjj" title="时代财富张静君的微博" target="_blank">张静君</a></li>
                    
		</ul>
	</div>
</div>
 
</div>

	<div class="siderMiddle">
	    <div class="content column column2">

	       <div class="leavecont">
		<div class="leave">
			<div class="position title">
			    <strong>当前位置：</strong>
	            <a href="/">首页</a>
	             > <a href="/leave/">留言</a>
			</div>
			<div class="leavelist" id="leavelist">
				
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-07-12 22:49:54.0</li>
						        </ul>
					            <span class="ico">1.</span>　╅問蕗亾
				            </div>
				            <div class="cont"><p>踩踩</p></div>
				            <div class="reply" ><span>回复：</span>呵呵,谢谢~~（2009-08-02 18:58:45）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-07-27 20:33:29.0</li>
						        </ul>
					            <span class="ico">2.</span>　applezqp
				            </div>
				            <div class="cont"><p>踩一下～</p></div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-08-10 14:56:08.0</li>
						        </ul>
					            <span class="ico">3.</span>　小赖
				            </div>
				            <div class="cont"><p>&nbsp; 加油哦&nbsp; ，祝福你和你的家人，生活中难免会遇到各种各样的挫折，能走过来的是强者，走不过来的是弱者，每个人都想要做前面那个，相信你可以做到</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 顶！！！！！</p></div>
				            <div class="reply" ><span>回复：</span>谢谢!也希望你能成为生活的强者,加油!（2009-08-10 15:06:44）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-08-12 11:57:31.0</li>
						        </ul>
					            <span class="ico">4.</span>　applezqp
				            </div>
				            <div class="cont"><p>间谍今天走了，以后可以你喜欢的Earth幸福的生活在一起，挥泪祝福你。</p>
<p>记得要请雪糕啊。</p></div>
				            <div class="reply" ><span>回复：</span>间谍走了,在这边生活的很好...
挥泪就不必了，留盐就行了.
雪糕就算了,等你发了工资还完钱跟王册还得先请我一餐,你们可不能赖啊!（2009-08-13 16:42:32）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-08-16 22:08:34.0</li>
						        </ul>
					            <span class="ico">5.</span>　Jonllen
				            </div>
				            <div class="cont"><p>加油！！！</p></div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-09-03 18:05:43.0</li>
						        </ul>
					            <span class="ico">6.</span>　小赖
				            </div>
				            <div class="cont"><p>喜羊羊&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 灰太郎</p></div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-09-12 17:51:11.0</li>
						        </ul>
					            <span class="ico">7.</span>　小胡同学
				            </div>
				            <div class="cont">恩，加油啊~~~</div>
				            <div class="reply" ><span>回复：</span>哈哈，静静同学也是~（2009-09-12 21:09:43）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2009-09-18 22:23:55.0</li>
						        </ul>
					            <span class="ico">8.</span>　chyhua
				            </div>
				            <div class="cont">哇哈哈，，你把我的链接搞进来了，，改天我再把你的搞进我那里，，不过要慢慢等待哦。。</div>
				            <div class="reply" ><span>回复：</span>呵呵~~（2009-09-18 22:26:58）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-03-12 10:55:22.0</li>
						        </ul>
					            <span class="ico">9.</span>　jely
				            </div>
				            <div class="cont">你好，我按照你文中写的TinyMCE还是没本地上传图片，你能把整个代码发给我吗，谢谢了.611176565@qq.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-04-04 21:27:52.0</li>
						        </ul>
					            <span class="ico">10.</span>　flex爱好者
				            </div>
				            <div class="cont">你的flex播放器太吸引人了。
请问一下里面的"/flex/bin-debug/song.xml";是怎么样的格式呢？可以的话发给我一份啊，感激涕零啊~~
邮箱：hongyizung@vip.qq.com  QQ:249693520</div>
				            <div class="reply" ><span>回复：</span>哈哈，现在又改版了，等下发到你邮箱里去。（2010-04-05 15:52:59）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-04-07 18:24:22.0</li>
						        </ul>
					            <span class="ico">11.</span>　mimess
				            </div>
				            <div class="cont">你好 ；请问可以
 把你的那个拖动的 保存状态的源码
发给我看看吗  谢谢你了 mayong011@qq.com</div>
				            <div class="reply" ><span>回复：</span>保存状态是用js写在Cookie里的，在我那篇文章的Drag.js里有。（2010-04-07 20:18:43）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-04-23 16:08:16.0</li>
						        </ul>
					            <span class="ico">12.</span>　小赖
				            </div>
				            <div class="cont">看的出你很努力，加油啊，相信你的明天会更精彩的</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-04-29 11:00:26.0</li>
						        </ul>
					            <span class="ico">13.</span>　黄涛
				            </div>
				            <div class="cont">你好！QQ联系：413559836</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-02 09:31:13.0</li>
						        </ul>
					            <span class="ico">14.</span>　moodle爱好者
				            </div>
				            <div class="cont">彭老师：
    你好！您能抽空写出如将tinymce3更新到moodle平台的步骤吗？因为我们是一线的教师，不懂编程和配置，又想用功能强的编辑器，所以只好向您求救，以解我们燃眉之急。非常感谢您！</div>
				            <div class="reply" ><span>回复：</span>天河部落Moodle是开源的PHP系统，但是我对PHP不是很了解，所以不会把tinymce编辑器更新到moodle平台，抱歉！（2010-05-02 18:50:06）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-11 09:02:28.0</li>
						        </ul>
					            <span class="ico">15.</span>　Lcc
				            </div>
				            <div class="cont">你好  你的空间的那个频谱分析能给留下个源码么？？ cttlcc102061@163.com</div>
				            <div class="reply" ><span>回复：</span>我的文章里面有。（2010-05-11 09:55:02）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-15 21:24:53.0</li>
						        </ul>
					            <span class="ico">16.</span>　 喜欢flex的
				            </div>
				            <div class="cont">我想要份flex音乐播放器的源码，我感觉太好了。我感觉这个很牛哎
QQ：1021244989
能不能发一份给我啊。
非常感谢。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-16 20:27:47.0</li>
						        </ul>
					            <span class="ico">17.</span>　喜欢flex的
				            </div>
				            <div class="cont">我真的很想要这个源码学习学习，能不能发一下给我啊拜托了，我是一个初学者，很喜欢flex。
联系方式：
QQ:1021244989
邮箱:xucuicuihappy@163.com
发给我吧
谢谢</div>
				            <div class="reply" ><span>回复：</span>核心代码在我的<a href="/jonllen/flex/sound.aspx">Flex播放器(实现播放、缓冲进度条和音频曲线显示)</a>一文里有。（2010-05-17 20:38:47）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-20 10:32:42.0</li>
						        </ul>
					            <span class="ico">18.</span>　sarsunhao
				            </div>
				            <div class="cont">我最近也在研究igoogle上面的拖拽效果，拖拽的脚本不难 主要是保存的问题 我还是趋向于保存进数据库 lz可以把完整的拖拽加保存的代码发到我邮箱吗？sarsunhao@126.com 谢谢了</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-20 15:39:18.0</li>
						        </ul>
					            <span class="ico">19.</span>　sarsunhao
				            </div>
				            <div class="cont">你好 怎么加你QQ 或者在你博客注册新用户呢 呵呵 想请教下你</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-28 23:08:03.0</li>
						        </ul>
					            <span class="ico">20.</span>　大梦
				            </div>
				            <div class="cont">树菜单怎么展开或关闭指定的节点呢
能给一个参数说明吗，谢谢</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-05-31 11:46:40.0</li>
						        </ul>
					            <span class="ico">21.</span>　yy
				            </div>
				            <div class="cont">我真的很想要这个源码学习学习，能不能发一下给我啊拜托了，我是一个初学者，很喜欢flex, 邮箱:yxk980@163.com谢谢你哦
</div>
				            <div class="reply" ><span>回复：</span>核心代码在我的<a href="/jonllen/flex/sound.aspx">Flex播放器(实现播放、缓冲进度条和音频曲线显示)</a>一文里有。（2010-05-31 12:55:14）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-06-18 17:09:18.0</li>
						        </ul>
					            <span class="ico">22.</span>　你好，你弄的IGOOGLE的JS请教
				            </div>
				            <div class="cont">请告诉我QQ号，请教你一下</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-07-09 00:05:59.0</li>
						        </ul>
					            <span class="ico">23.</span>　lucky
				            </div>
				            <div class="cont">可以联系一下QQ 568269 有问题请教！谢谢！</div>
				            <div class="reply" ><span>回复：</span>有问题请留言（2010-07-09 17:49:30）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-08-02 17:18:14.0</li>
						        </ul>
					            <span class="ico">24.</span>　雷雨
				            </div>
				            <div class="cont">金龙兄有时间可否请加下QQ:411968088,诚意请教点关于地图搜索的问题,如蒙赐教,不胜感谢!!!!</div>
				            <div class="reply" ><span>回复：</span>有什么问题?（2010-08-02 17:18:58）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-09-16 09:37:38.0</li>
						        </ul>
					            <span class="ico">25.</span>　小河
				            </div>
				            <div class="cont">朋友能不能给分享一下你的那个js 树的代码，我的qq:920767751 你要什么条件可以提出来。</div>
				            <div class="reply" ><span>回复：</span>那个JS代码提供下载的.（2010-09-16 09:41:07）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-09-30 13:29:53.0</li>
						        </ul>
					            <span class="ico">26.</span>　中华E商创业商务网
				            </div>
				            <div class="cont">| 借博主宝地！祝博主人气越来越旺|</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-10-11 13:45:54.0</li>
						        </ul>
					            <span class="ico">27.</span>　Photon
				            </div>
				            <div class="cont">打扰一下，请教怎么在页面实现“贴代码”的功能，用SyntaxHighlighter倒是可以实现，但我要这个效果http://daoger.javaeye.com/blog/503202，这里面样式很不错，很喜欢，请问如何做的，麻烦帮忙看下行不，Many Thanks！</div>
				            <div class="reply" ><span>回复：</span>这种代码高亮的没做过哦~（2010-10-11 14:30:02）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-10-12 20:27:25.0</li>
						        </ul>
					            <span class="ico">28.</span>　周星亮
				            </div>
				            <div class="cont">没想到啊，你混的这么好了~~~~~~想想我们从小玩到大  从高中上网  一起打麻将  大学我们（传世战友）一起通宵玩游戏，一玩就是几天  到广州和你弟弟一起去看你 一起帮你搬家 还出了不少笑话。 没想到以前的（传世战友）现在混的这么好了  还搞出了自己的网站  真是电脑高手啊  做朋友的祝你工作顺利 步步高升  加油~~~~~~~~~</div>
				            <div class="reply" ><span>回复：</span>见笑了~哥们你也是,加油!（2010-10-12 20:29:50）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-10-25 16:02:02.0</li>
						        </ul>
					            <span class="ico">29.</span>　丹丹
				            </div>
				            <div class="cont">是GOOGLE发现上次是你有份升级天河部落的,这次又来了,很不适应升级呀,一次到位不行吗?</div>
				            <div class="reply" ><span>回复：</span>GOOGLE真是太NB了，这你也能找到-_-!!!不过我只有参与这次的天河部落升级的工作，预计明天至少还需要一天时间才能完成。（2010-10-25 20:25:09）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-04 15:59:41.0</li>
						        </ul>
					            <span class="ico">30.</span>　号码
				            </div>
				            <div class="cont">你好，希望你给我回下邮箱，我在做关于TinyMCE的应用，我对几个插件有点疑问，希望得到你的帮助，谢谢。<br /><br />切记要记得哦帮忙哦。</div>
				            <div class="reply" ><span>回复：</span>有什么问题呢？（2010-11-06 11:42:31）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-06 00:49:27.0</li>
						        </ul>
					            <span class="ico">31.</span>　endless
				            </div>
				            <div class="cont">龙大哥，你好，最近我帮需要帮我们学校的一个网站做一个拖动模块的首页，拖动和保存我都会了，就是那些被拖动的模块里面的数据是我们固定写好代码还是动态生成代码的，比如说当我需要为这个网站添加一个模块的时候，这个模块指定要读取数据库里面的某些内容，或者增加一个图片新闻模块的，我们该如何去控制模块的内容的动态显示呢？你的是这样实现吗？还是你的是本来就为这些模块编写好代码的了？？请赐教！！！！！！小弟万分感谢！！！！</div>
				            <div class="reply" ><span>回复：</span>模块的布局数据是保存在数据库内的，控制模块的内容的动态显示是在页面呈现时以加载用户控件形式来实现的。（2010-11-06 11:42:04）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-06 22:23:21.0</li>
						        </ul>
					            <span class="ico">32.</span>　ckai
				            </div>
				            <div class="cont">龙兄您好，经过观看您的一片文章"http://www.jonllen.com/jonllen/js/107.aspx"<br />我已下载了<br />事例：Drag.html<br />源码：(Drag.js下载)<br />两个文件，不知道如何可以把拖拽后的位置保存到数据库呢？望请您指点一二，我最近一周都七上八下的，我是一个小网络公司的程序员。有个客户案例需要使用这个技术，还望您提点下菜鸟。真心求助。不奢求您给做个示范，只望您提点一二</div>
				            <div class="reply" ><span>回复：</span>数据库设计时主要是需要保存模块左右布局、排序号等信息，再在页面呈现时通过加载用户控件的办法把模块组装起来就有了。（2010-11-06 22:26:46）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-06 23:01:05.0</li>
						        </ul>
					            <span class="ico">33.</span>　ckai
				            </div>
				            <div class="cont">这么晚打扰您抱歉，又因为提问刷新您的留言本，看到您的回复就好似抓到救命稻草。这样的.惭愧的说，我现在都不知道怎么保存到cookies里面.我知道光有求知欲是不行的，也需要付出努力。我已经很认真的在查找有关资料了，奈何一切都是自学的，希望龙兄可以进一步提点下。我是个初中毕业的水平.现在也是在小公司给人做网站.拜托了</div>
				            <div class="reply" ><span>回复：</span>建议你自己先去巩固一下基础知识，慢慢来没关系的~（2010-11-07 23:13:44）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-08 22:28:31.0</li>
						        </ul>
					            <span class="ico">34.</span>　ckai
				            </div>
				            <div class="cont">龙兄是否可以提供一个保存到COOKIES的板块移动DEMO呢.很多工作都是被逼的呢，诚心真心请求龙兄帮助！</div>
				            <div class="reply" ><span>回复：</span>我保存到Cookie是用JavaScript做的，代码在你下载的那个Drag.js里有。（2010-11-09 23:44:46）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-13 01:38:05.0</li>
						        </ul>
					            <span class="ico">35.</span>　ckai
				            </div>
				            <div class="cont">龙兄叨扰了，关于上次哪个拖拽保存的问题。<br />想请教下：<br />如何把JS创建COOKIES弄到数据库里呢？谢谢哈</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-16 11:05:20.0</li>
						        </ul>
					            <span class="ico">36.</span>　Jonllen
				            </div>
				            <div class="cont">龙:计算机系统集成项目经理过了吗?我也在考这哩!QQ416162111</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-16 11:06:35.0</li>
						        </ul>
					            <span class="ico">37.</span>　Jonllen
				            </div>
				            <div class="cont">你好:2010年上半年的计算机系统集成项目经理的考试过了么?我也在考这哩QQ416162111</div>
				            <div class="reply" ><span>回复：</span>挂科了，上午成绩48多3分，下午成绩42少三分 ~~>_<~~（2010-11-16 20:52:46）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-11-22 08:49:24.0</li>
						        </ul>
					            <span class="ico">38.</span>　jonllen
				            </div>
				            <div class="cont">那2011年上半年有准备续考计算机系统集成项目经理吧,让我们一起考吧,希望都能过,上次考我早上没过;QQ416162111</div>
				            <div class="reply" ><span>回复：</span>-_-!!!（2010-11-28 22:36:51）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2010-12-13 19:34:23.0</li>
						        </ul>
					            <span class="ico">39.</span>　学生 俞颖丹
				            </div>
				            <div class="cont">老师 我来看你了啊  哈哈</div>
				            <div class="reply" ><span>回复：</span>？？？（2010-12-13 19:49:08）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-01-12 10:30:28.0</li>
						        </ul>
					            <span class="ico">40.</span>　哈哈
				            </div>
				            <div class="cont">能否把这个播放器发一份给我参考参考。。刚学Flex.....邮箱bmf-2030@163.com</div>
				            <div class="reply" ><span>回复：</span><a href="/jonllen/flex/sound.aspx">Flex播放器(实现播放、缓冲进度条和音频曲线显示)</a>（2011-01-12 14:02:55）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-01-14 09:12:19.0</li>
						        </ul>
					            <span class="ico">41.</span>　jonllen
				            </div>
				            <div class="cont">2010年下半年软考成绩出来了,项目经理考得怎么样?416162111</div>
				            <div class="reply" ><span>回复：</span>今年下半年我没有报名考啊~（2011-01-15 23:41:43）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-01-28 15:17:48.0</li>
						        </ul>
					            <span class="ico">42.</span>　俊俊
				            </div>
				            <div class="cont">可以给你音乐播放器源码发我一份吗？万分感谢！我邮箱：760157451@qq.com</div>
				            <div class="reply" ><span>回复：</span>在我“Flex播放器(实现播放、缓冲进度条和音频曲线显示)”一文中有。（2011-01-28 19:40:54）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-03-06 21:10:34.0</li>
						        </ul>
					            <span class="ico">43.</span>　su389847531
				            </div>
				            <div class="cont">还是得麻烦问你，谢谢啊，你的一篇日志《Java和.Net三层架构和MVC》里最后一张图里的箭头代表什么呢？操作关系？依赖关系？还是数据流图呢？有急用，谢谢：）</div>
				            <div class="reply" ><span>回复：</span>：）（2011-03-06 21:54:10）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-03-26 09:16:27.0</li>
						        </ul>
					            <span class="ico">44.</span>　朱同学
				            </div>
				            <div class="cont">老师 求你博客页面音乐播放器全部源码</div>
				            <div class="reply" ><span>回复：</span>在我的Flex栏目的文章里有啊~（2011-03-26 14:15:03）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-05-12 22:33:30.0</li>
						        </ul>
					            <span class="ico">45.</span>　jb_chen
				            </div>
				            <div class="cont">您好，我做的音频，视频播放器在进行一句播放完暂停10秒，再继续播放的时候，总是会往前跳几秒钟，就是播放到8秒，暂停后，再播放就从第6秒开始，我在第八秒设置了时间点，这样就反复播放6-8的内容了，请问这个问题怎么解决呢，谢谢，我qq:4119069</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-07-08 16:43:25.0</li>
						        </ul>
					            <span class="ico">46.</span>　mellon17
				            </div>
				            <div class="cont">能不能给出完整的源码例子，上面讲的比较零散，按照你说的做，很容易缺少包或者变量，而且有些函数也不太明晰，<br />目前主要问题有以下两点：<br />1、getLRCArray在哪里调用<br />2、上面源码中的<br />//同步显示歌词<br />if( lrcArr!=null && lrcArr.length > 0)<br />{……<br /><br />这一段是放在哪个函数里？还是如何处理</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-08-30 08:49:58.0</li>
						        </ul>
					            <span class="ico">47.</span>　阳春三月
				            </div>
				            <div class="cont">你好，我是一名flex的初学者，你做的播放器很好啊，只是我有个疑问，/flex/bin-debug/song.xml的格式是什么样的呢，跪求赐教！<br />邮箱：852296319@qq.com，QQ：852296319</div>
				            <div class="reply" ><span>回复：</span>flex读xml节点比较容易,格式见地址:http://www.jonllen.com/flex/bin-debug/song.xml（2011-08-30 08:53:41）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-10-13 13:38:29.0</li>
						        </ul>
					            <span class="ico">48.</span>　zhengwei
				            </div>
				            <div class="cont">你好，彭先生：<br />     我看了你发布的一篇文章，我很感兴趣，我最近在学习moodle遇到些问题，想向你请教。希望得到你的回复，谢谢！</div>
				            <div class="reply" ><span>回复：</span>您在学习moodle遇到了什么问题呢?我有什么可以帮助您的?（2011-12-22 19:27:59）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-11-16 20:13:47.0</li>
						        </ul>
					            <span class="ico">49.</span>　wq
				            </div>
				            <div class="cont">能不能给我发一份源代码，，song.xml里面的东西我不会弄，到现在还不太会运行程序，感激不尽了</div>
				            <div class="reply" ><span>回复：</span>我博文里面有相关介绍的.（2011-12-22 19:28:22）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2011-11-16 20:18:53.0</li>
						        </ul>
					            <span class="ico">50.</span>　wq
				            </div>
				            <div class="cont">能不能给我发一份源代码，，song.xml里面的东西我不会弄，到现在还不太会运行程序，感激不尽了</div>
				            <div class="reply" ><span>回复：</span>Flex读xml很简单的，读字符串可直接转变为对象获取值。（2012-01-26 20:13:58）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2012-04-22 13:45:11.0</li>
						        </ul>
					            <span class="ico">51.</span>　cenjinlong
				            </div>
				            <div class="cont">咱名字一样，有缘哦！也是做IT的。</div>
				            <div class="reply" ><span>回复：</span>真的有缘~（2012-04-24 21:03:17）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-02-20 11:11:37.0</li>
						        </ul>
					            <span class="ico">52.</span>　wjl
				            </div>
				            <div class="cont">您好！我看了您SM2加解密测试的文章，非常感谢您提供的在线测试工具！但我有个问题想问下，如果我要测试别人的SM2算法正确与否，我怎样才能找到这样的测试数据呢，因为算法里面有随机数，每次都在变化。标准里只是给了一组数据，随机数也是给定的，那这样的数据比较有局限性，应该怎样测试呢？</div>
				            <div class="reply" ><span>回复：</span>SM2加密结果中C1是随机数，可以用私钥解密看SM2公私钥是否匹配。（2014-02-23 22:44:24）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-05-26 11:42:00.0</li>
						        </ul>
					            <span class="ico">53.</span>　泉
				            </div>
				            <div class="cont">你好：<br /><br />在线签名很明显不正确，每次点击“签名”按钮其结果都一样，应该每次点击“签名”后，签名结果不同</div>
				            <div class="reply" ><span>回复：</span>谢谢提醒，我之前测试SM2曲线是使用的固定变量k值签名，应该是要生成随机变量k进行签名的。（2014-06-17 10:06:12）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-06-15 00:51:05.0</li>
						        </ul>
					            <span class="ico">54.</span>　jinlong
				            </div>
				            <div class="cont">去爱站查收录！还把你的域名给搜出来了！同名同姓还是一个地区的！！留个言！我刚学着做blog.求指教</div>
				            <div class="reply" ><span>回复：</span>呵呵，你是哪里的？（2014-06-17 10:05:54）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-06-27 16:51:04.0</li>
						        </ul>
					            <span class="ico">55.</span>　清水
				            </div>
				            <div class="cont">您好，老乡，我湖南长沙呀子一枚http://www.jonllen.com/jonllen/js/167.aspx<br />看了您这篇文章 <br />“我这里的图片延迟加载提供了2种方式，一种是直接使用img的src加载，另外一种是使用自定义属性中的路径加载”<br />请问第一种不许哟改SCR属性的功能代码在哪里有下载 谢谢感激</div>
				            <div class="reply" ><span>回复：</span>我网站里的那个js可以直接下载了：http://www.jonllen.com/scripts/ImgLazy.js（2014-07-02 13:16:25）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-07-18 16:59:47.0</li>
						        </ul>
					            <span class="ico">56.</span>　关于SM2.cer文件解析
				            </div>
				            <div class="cont">您好，最近在研究SM2签发证书，过程中有些问题想请教一下您。我用JAVA生成cer/privatekey/p12文件后用记事本查看都是一堆乱码，请问保存文件时要用二进制的方式吗，还是要相关的加密解密才能看到明文呢？期待您的回复，谢谢！</div>
				            <div class="reply" ><span>回复：</span>P12格式用Asn1编码的，私钥是加密存放的，可以用些工具解析里面的私钥和公钥证书。（2014-07-18 17:06:41）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-07-24 17:57:18.0</li>
						        </ul>
					            <span class="ico">57.</span>　职场菜鸟一枚
				            </div>
				            <div class="cont">搜索SM2的实现特性 就到了博主这来。随便翻了翻其他的，哇塞居然也是在长沙工作的。觉得很神奇就来留言了。我也是信息安全方向，以后会多多打扰的</div>
				            <div class="reply" ><span>回复：</span>：）（2014-07-29 13:56:33）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-09-05 10:57:24.0</li>
						        </ul>
					            <span class="ico">58.</span>　哈利路亚
				            </div>
				            <div class="cont">您好，现在在学习加解密的知识，看到博主的博客，,有介绍SM2算法的，能发给我一份源码吗?1397752639@qq.com,数学学的不好，看不懂那些曲线的含义，小弟不胜感激，谢谢!!</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-09-14 01:27:57.0</li>
						        </ul>
					            <span class="ico">59.</span>　崇拜
				            </div>
				            <div class="cont">你好，我现在入职一家CA公司，看到你写的东西，以后可不可以加我QQ，以后多向你学习</div>
				            <div class="reply" ><span>回复：</span>欢迎交流：）（2014-09-15 21:10:55）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-10-17 16:28:23.0</li>
						        </ul>
					            <span class="ico">60.</span>　锦绣年华
				            </div>
				            <div class="cont">楼主在PKI/CA领域有较深的技术功底！赞一个！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2014-10-17 16:29:51.0</li>
						        </ul>
					            <span class="ico">61.</span>　锦绣年华
				            </div>
				            <div class="cont">楼主在PKI/CA领域有较深的技术功底！赞一个！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-01-01 19:49:54.0</li>
						        </ul>
					            <span class="ico">62.</span>　楚豆
				            </div>
				            <div class="cont">您好！看了您写的东西，受益很深。我正在做基于sm2的数字证书系统。希望您有时间能再给我讲一些知识。很期待您的指导。谢谢。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-01-01 19:50:00.0</li>
						        </ul>
					            <span class="ico">63.</span>　楚豆
				            </div>
				            <div class="cont">您好！看了您写的东西，受益很深。我正在做基于sm2的数字证书系统。希望您有时间能再给我讲一些知识。很期待您的指导。谢谢。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-01-01 19:50:12.0</li>
						        </ul>
					            <span class="ico">64.</span>　楚豆
				            </div>
				            <div class="cont">您好！看了您写的东西，受益很深。我正在做基于sm2的数字证书系统。希望您有时间能再给我讲一些知识。很期待您的指导。谢谢。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-01-09 14:38:06.0</li>
						        </ul>
					            <span class="ico">65.</span>　laughinheart
				            </div>
				            <div class="cont">看了文章，很有收获<br />我已经调通了基于C的SM2签名与验证，但是被SM2加解密难住了<br />希望借鉴一下您C#的SM2加解密代码，非常感谢laughinheart@126.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-01-09 14:38:25.0</li>
						        </ul>
					            <span class="ico">66.</span>　laughinheart
				            </div>
				            <div class="cont">看了文章，很有收获<br />我已经调通了基于C的SM2签名与验证，但是被SM2加解密难住了<br />希望借鉴一下您C#的SM2加解密代码，非常感谢laughinheart@126.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-01-09 14:42:09.0</li>
						        </ul>
					            <span class="ico">67.</span>　laughinheart
				            </div>
				            <div class="cont">看了文章，很有收获<br />我已经调通了基于C的SM2签名与验证，但是被SM2加解密难住了<br />希望借鉴一下您C#的SM2加解密代码，非常感谢laughinheart@126.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-01-09 14:42:26.0</li>
						        </ul>
					            <span class="ico">68.</span>　laughinheart
				            </div>
				            <div class="cont">看了文章，很有收获<br />我已经调通了基于C的SM2签名与验证，但是被SM2加解密难住了<br />希望借鉴一下您C#的SM2加解密代码，非常感谢laughinheart@126.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-03-24 17:50:52.0</li>
						        </ul>
					            <span class="ico">69.</span>　scapegoat
				            </div>
				            <div class="cont">我是信息安全从业者，也对国密算法感兴趣，很希望与你交流学习</div>
				            <div class="reply" ><span>回复：</span>欢迎交流: )（2015-03-24 20:34:39）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-03-31 18:12:21.0</li>
						        </ul>
					            <span class="ico">70.</span>　scapegoat
				            </div>
				            <div class="cont">博主能将sm2证书生成的C#代码发我一份吗？我需要学习一下，谢谢</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-03-31 18:15:34.0</li>
						        </ul>
					            <span class="ico">71.</span>　scapegoat
				            </div>
				            <div class="cont">忘了放上我的邮箱scapegoat2@126.com，Many Thx!</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-08 20:40:38.0</li>
						        </ul>
					            <span class="ico">72.</span>　test
				            </div>
				            <div class="cont">/Tools/Crypto.aspx中的密码加解密，加密出来的文件比原文件大了很多，想问一下博主是用的什么算法和机制加密的，是自定义的还是标准的？</div>
				            <div class="reply" ><span>回复：</span>是用的Aes256Cbc算法加密的（2015-04-08 21:13:26）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-09 21:27:58.0</li>
						        </ul>
					            <span class="ico">73.</span>　test
				            </div>
				            <div class="cont">昨天的留言怎么没发得出来<br />回复：是用的Aes256Cbc算法加密的<br />？<br />继续问一下博主，Aes256Cbc加密出来的文件会比原文大很多吗？是另外做了处理吗？</div>
				            <div class="reply" ><span>回复：</span>请不要重复提交,我这边看了就会显示出来的,你的问题我再去看下回复你.（2015-04-09 21:30:22）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-09 21:28:37.0</li>
						        </ul>
					            <span class="ico">74.</span>　test
				            </div>
				            <div class="cont">昨天的留言怎么没发得出来<br />回复：是用的Aes256Cbc算法加密的<br />？<br />继续问一下博主，Aes256Cbc加密出来的文件会比原文大很多吗？是另外做了处理吗？</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-25 16:38:42.0</li>
						        </ul>
					            <span class="ico">75.</span>　CGK
				            </div>
				            <div class="cont">博主，您好，你能发一份JS实现SM2算法的源码给我吗，最近刚接触加密算法，急需你的帮助，拜托！！！！邮箱地址929623416@qq.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-25 16:38:48.0</li>
						        </ul>
					            <span class="ico">76.</span>　CGK
				            </div>
				            <div class="cont">博主，您好，你能发一份JS实现SM2算法的源码给我吗，最近刚接触加密算法，急需你的帮助，拜托！！！！邮箱地址929623416@qq.com</div>
				            <div class="reply" ><span>回复：</span>JS的SM2算法签名验证的在这里http://www.jonllen.com/upload/jonllen/case/jsrsasign-master/sample-sm2.html（2015-04-28 13:56:57）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-25 16:44:20.0</li>
						        </ul>
					            <span class="ico">77.</span>　CGK
				            </div>
				            <div class="cont">博主，您好我是在校学生，最近在做一个有关信息安全竞赛的项目，想采用国产的SM2算法，<br />您JS实现的该算法对我有十分大的帮助，希望博主能帮帮忙，共享一份源码，万分感谢！！<br />929623416@qq.com</div>
				            <div class="reply" ><span>回复：</span>sm2加密算法的示例在这里http://www.jonllen.com/upload/jonllen/case/jsrsasign-master/sample-sm2_crypt.html（2015-04-28 13:55:51）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-29 11:45:48.0</li>
						        </ul>
					            <span class="ico">78.</span>　huygtt
				            </div>
				            <div class="cont">最近在研究SM2算法，能否提供一份java实现的源程序研究研究，非常感谢</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-04-29 11:45:51.0</li>
						        </ul>
					            <span class="ico">79.</span>　huygtt
				            </div>
				            <div class="cont">最近在研究SM2算法，能否提供一份java实现的源程序研究研究，非常感谢</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-05-07 12:19:35.0</li>
						        </ul>
					            <span class="ico">80.</span>　时光漫步
				            </div>
				            <div class="cont">博主 你好 最近在研究国密算法 SM4算法 请问你有4算法的的js吗？</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-05-07 12:19:57.0</li>
						        </ul>
					            <span class="ico">81.</span>　时光漫步
				            </div>
				            <div class="cont">博主 你好 最近在研究国密算法 SM4算法 请问你有4算法的的js吗？邮箱是632082801@qq.com</div>
				            <div class="reply" ><span>回复：</span>国密SM4算法是软算法公开的吧，这个还没用js写过。（2015-05-08 12:34:52）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-05-24 10:39:32.0</li>
						        </ul>
					            <span class="ico">82.</span>　王誉晓
				            </div>
				            <div class="cont">博主，膜拜您已经很久了，能加个qq号吗，有很多问题想请教您啊，qq：1261634218</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-05-24 10:47:44.0</li>
						        </ul>
					            <span class="ico">83.</span>　王誉晓
				            </div>
				            <div class="cont">不好意思，以为网速不行，提交了好多次没反应，没想到提交重复了那么多次。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-05-26 12:09:37.0</li>
						        </ul>
					            <span class="ico">84.</span>　雪狼
				            </div>
				            <div class="cont">博主，你好。我看了一下你以前的回复，说：采用C1C2C3和C1C3C2标准是可以知道的。我想知道这是如何检测知道的？CSP需要自动检测C1C2C3和C1C3C2标准。望告知.非常感谢。xuelang0204@163.com</div>
				            <div class="reply" ><span>回复：</span>自动检测?加密时应该就知道是用C1C2C3或C1C3C2标准吧?（2015-05-27 20:20:40）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-05-30 20:14:55.0</li>
						        </ul>
					            <span class="ico">85.</span>　Jerry
				            </div>
				            <div class="cont">您好，请教一个问题呢：<br />我在网上下载的c写的sm2源代码（应该就只有这一套，全部使用的国密局文档上面的数据），这里面直接给密码杂凑值e初始化的数据：digest[32] = {0xB5,0x24,0xF5......}，这不是直接省去了从签名m到后来再生成e的流程（e=Hv(ZA||M)）了么？那这个过程当中的算法需要自己写么？</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-05-30 20:15:10.0</li>
						        </ul>
					            <span class="ico">86.</span>　Jerry
				            </div>
				            <div class="cont">您好，请教一个问题呢：<br />我在网上下载的c写的sm2源代码（应该就只有这一套，全部使用的国密局文档上面的数据），这里面直接给密码杂凑值e初始化的数据：digest[32] = {0xB5,0x24,0xF5......}，这不是直接省去了从签名m到后来再生成e的流程（e=Hv(ZA||M)）了么？那这个过程当中的算法需要自己写么？</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-06-13 20:20:39.0</li>
						        </ul>
					            <span class="ico">87.</span>　xbxb
				            </div>
				            <div class="cont">道声感谢，谢博主对SM2算法方面的剖析，还有那在线Demo写的很好，节省了很多工作，有点小不足，纯属个人意见，我用的时候是解密不了密文的。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-06-13 20:20:48.0</li>
						        </ul>
					            <span class="ico">88.</span>　xbxb
				            </div>
				            <div class="cont">道声感谢，谢博主对SM2算法方面的剖析，还有那在线Demo写的很好，节省了很多工作，有点小不足，纯属个人意见，我用的时候是解密不了密文的。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-06-13 20:20:50.0</li>
						        </ul>
					            <span class="ico">89.</span>　xbxb
				            </div>
				            <div class="cont">道声感谢，谢博主对SM2算法方面的剖析，还有那在线Demo写的很好，节省了很多工作，有点小不足，纯属个人意见，我用的时候是解密不了密文的。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-06-13 20:21:14.0</li>
						        </ul>
					            <span class="ico">90.</span>　xbxb
				            </div>
				            <div class="cont">道声感谢，谢博主对SM2算法方面的剖析，还有那在线Demo写的很好，节省了很多工作，有点小不足，纯属个人意见，我用的时候是解密不了密文的。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-06-13 20:21:31.0</li>
						        </ul>
					            <span class="ico">91.</span>　xbxb
				            </div>
				            <div class="cont">道声感谢，谢博主对SM2算法方面的剖析，还有那在线Demo写的很好，节省了很多工作，有点小不足，纯属个人意见，我用的时候是解密不了密文的。</div>
				            <div class="reply" ><span>回复：</span>解密不了要看加密时候用的国密曲线或id等参数是否一致了？（2015-06-13 23:29:39）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-06-18 13:18:26.0</li>
						        </ul>
					            <span class="ico">92.</span>　支持，能否加下QQ，13909912交流
				            </div>
				            <div class="cont">写的不错，希望能多交流。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-06-18 13:18:37.0</li>
						        </ul>
					            <span class="ico">93.</span>　支持，能否加下QQ，13909912交流
				            </div>
				            <div class="cont">写的不错，希望能多交流。</div>
				            <div class="reply" ><span>回复：</span>：）（2015-06-18 21:02:48）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-07-03 17:11:18.0</li>
						        </ul>
					            <span class="ico">94.</span>　qitz
				            </div>
				            <div class="cont">您好，我们正在做商密算法的SSL、证书验证方面的工作。看到您的文章很不错，能否把SM2CryptoServiceProvider发到我的邮箱里呢？qitz (at)sinoinfosec.com。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-07-03 17:15:43.0</li>
						        </ul>
					            <span class="ico">95.</span>　qitz
				            </div>
				            <div class="cont">您好，我们正在做商密算法的SSL、证书验证方面的工作。看到您的文章很不错，能否把SM2CryptoServiceProvider发到我的邮箱里呢？qitz (at)sinoinfosec.com。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-09-30 17:21:59.0</li>
						        </ul>
					            <span class="ico">96.</span>　exlink
				            </div>
				            <div class="cont">你好，你的在线加解密工具，为什么我用国密的数据解密不出来，04已经去掉了。<br />能给我份源码吗？<br />33796533@qq.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2015-11-27 09:22:45.0</li>
						        </ul>
					            <span class="ico">97.</span>　sm2
				            </div>
				            <div class="cont">发现1个问题：SM2根证书下载不了
</div>
				            <div class="reply" ><span>回复：</span>linux下文件名区分大小写，现在可以下了。（2015-11-27 20:01:16）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-01-27 11:19:01.0</li>
						        </ul>
					            <span class="ico">98.</span>　Justin
				            </div>
				            <div class="cont">你好，最近在搞SM2数字证书，看了你的文章觉得很有用，能把你的制作SM2数字证书源码发给我一份吗？我的邮箱是1009056028@qq.com</div>
				            <div class="reply" ><span>回复：</span>已发送到你邮箱，请查收。（2016-01-27 16:09:23）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-02-23 14:20:09.0</li>
						        </ul>
					            <span class="ico">99.</span>　1289714862@qq.com
				            </div>
				            <div class="cont">你好： 
  我发现sm2 js加密 有10%的可能性加密成功 但不能解密  这个是什么原因啊</div>
				            <div class="reply" ><span>回复：</span>纯js做sm2加密效率比较低，换Chrome比较快的现代浏览器试下。（2016-02-23 14:44:13）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-02-24 09:47:14.0</li>
						        </ul>
					            <span class="ico">100.</span>　1289714862@qq.com
				            </div>
				            <div class="cont">你好: 纯js做sm2加密 我试了一下chrome,firefox（都是最新版的）都存在这个问题（加密是成功的，但不能解密）如果是加密效率比较低的话 应该不会出现这个问题的啊 我测试了一下 解密不成功时 加密速度和成功加密的速度一样的
是不是这个js代码有问题啊？</div>
				            <div class="reply" ><span>回复：</span>纯js做sm2加密解密没有问题，你需要提前生成sm2密钥对，最后做sm2解密才可以。http://www.jonllen.com/upload/jonllen/case/jsrsasign-master/sample-sm2_crypt.html（2016-02-24 11:35:12）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-03-07 10:02:48.0</li>
						        </ul>
					            <span class="ico">101.</span>　1289714862@qq.com
				            </div>
				            <div class="cont">大神 帮忙看一下 我用你的那个例子写了一个js sm2 加解密demo 
发现重复调用加解密 有概率解密不成功 
demo地址： http://pan.baidu.com/s/1jGZe7d0</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-03-07 17:23:52.0</li>
						        </ul>
					            <span class="ico">102.</span>　郭青山
				            </div>
				            <div class="cont">你好，最近在搞SM2数字证书，看了你的文章觉得很有用，能把你的制作SM2数字证书源码发给我一份吗？我的邮箱是704299375@qq.com。SM2CryptoServiceProvider类和SM2X509V3CertificateGenerator 的源码能发给我吗？</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-03-22 18:05:05.0</li>
						        </ul>
					            <span class="ico">103.</span>　rwanfff
				            </div>
				            <div class="cont">你好，在使用 SM2Cipher中的解密方法时，InitDecipher函数时常会出现异常：Invalid point，请问你遇到过吗？</div>
				            <div class="reply" ><span>回复：</span>没有哇~（2016-04-24 21:54:08）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-03-31 17:55:21.0</li>
						        </ul>
					            <span class="ico">104.</span>　邹华秋
				            </div>
				            <div class="cont">你好，看了您的文章，我试着用java写了一份了，发现很难加解密成功（和你的在线测试对比），但是又有概率性的成功，很想要您的SM2加解密部分的代码，用于验证，不知道能不能发给我看看</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-03-31 19:49:19.0</li>
						        </ul>
					            <span class="ico">105.</span>　邹华秋
				            </div>
				            <div class="cont">试着用java写了一个，但是还会出错，不知道哪里出现了问题，能不能把SM2相关加解密设置的代码发给我，感激不尽！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-05-06 14:24:53.0</li>
						        </ul>
					            <span class="ico">106.</span>　路人甲
				            </div>
				            <div class="cont">找到了有用的资料 谢谢</div>
				            <div class="reply" ><span>回复：</span>：）（2016-05-07 08:52:50）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-05-12 14:27:54.0</li>
						        </ul>
					            <span class="ico">107.</span>　young
				            </div>
				            <div class="cont">你好，最近在做关于SM2数字签名的毕业设计，有些代码方面和算法方面的知识不懂，可否教一下我。企鹅：313387234</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-05-17 18:01:50.0</li>
						        </ul>
					            <span class="ico">108.</span>　郭青山
				            </div>
				            <div class="cont">你好！
    我们是做电子印章的，看你研究了很久国密算法。想跟你合作，我们有传统印章的渠道，做电子印章相对容易。704299375@qq.com，我的QQ邮箱，方便的话加一下QQ或发邮件。
                         此致，期盼回复</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-05-17 18:07:12.0</li>
						        </ul>
					            <span class="ico">109.</span>　筱楠
				            </div>
				            <div class="cont">你好，最近在研究SM2的证书制作及签验章，看了你的文章感觉很有用，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱983937055@qq.com，谢谢啦</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-05-20 17:39:08.0</li>
						        </ul>
					            <span class="ico">110.</span>　黑色的云
				            </div>
				            <div class="cont">你好：
   我看了你博文，你对信息安全比较精通。能加一下你的qq吗？
我的qq为317949407.</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-05-24 15:29:38.0</li>
						        </ul>
					            <span class="ico">111.</span>　SM2证书制作求指导
				            </div>
				            <div class="cont">您的SM2证书制作程序http://www.jonllen.com/jonllen/work/174.aspx，中类SM2CryptoServiceProvider能不能发我一下，我是新手学习SM2证书制作，求指导谢谢！邮箱：jbai1989@163.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-07-30 21:56:46.0</li>
						        </ul>
					            <span class="ico">112.</span>　大海QQ2669680329
				            </div>
				            <div class="cont">
国网SM2签名验签任务，酬劳1万元。说明：有1段16进制报文：原文+时间戳或随机数（情况未知） + 签名的报文（原文长度确定，原文长度后面的字节数为80个），需要对这段报文进行验签。有1个ID,无私钥有两个公钥。有SM2C源码例子。
需要测试明白签名是对原文+原文后面多少长度字节进行的签名，那些字节是签名，用哪个公钥验签。用现有C源码例子验签通过。加QQ时标明：国网SM2签名验签任务</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-07-30 21:58:07.0</li>
						        </ul>
					            <span class="ico">113.</span>　大海QQ269680329
				            </div>
				            <div class="cont">前一个QQ发错了</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-07-30 21:59:03.0</li>
						        </ul>
					            <span class="ico">114.</span>　大海正确QQ2696980329
				            </div>
				            <div class="cont">国网SM2签名验签任务，酬劳1万元。说明：有1段16进制报文：原文+时间戳或随机数（情况未知） + 签名的报文（原文长度确定，原文长度后面的字节数为80个），需要对这段报文进行验签。有1个ID,无私钥有两个公钥。有SM2C源码例子。
需要测试明白签名是对原文+原文后面多少长度字节进行的签名，那些字节是签名，用哪个公钥验签。用现有C源码例子验签通过。加QQ时标明：国网SM2签名验签任务</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-08-16 20:12:53.0</li>
						        </ul>
					            <span class="ico">115.</span>　田绍华
				            </div>
				            <div class="cont">您好：
您的SM2加密解密是用javascript实现的，请问有没有用java实现SM2的加密解密？我发现用网上下载的java实现的SM2加密解密算法不能解密您的javascript加密出来的密文。
如果有能不能发我邮箱
谢谢</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-08-27 14:09:26.0</li>
						        </ul>
					            <span class="ico">116.</span>　小龙闯天下
				            </div>
				            <div class="cont">您好，我目前正在弄国家密码这方面的东西，您可以把您证书这块的代码发给我吗？
2639417228@qq.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-10-15 21:16:18.0</li>
						        </ul>
					            <span class="ico">117.</span>　epcdiy
				            </div>
				            <div class="cont">你好，最近在研究SM2的证书制作及签验章，看了你的文章感觉很有用，方便的话帮忙把SM2CryptoServiceProvider和SM2X509V3CertificateGenerator这两个的实现放到我邮箱epcdiy@qq.com，谢谢啦</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-10-19 11:47:12.0</li>
						        </ul>
					            <span class="ico">118.</span>　你是个有想法的人
				            </div>
				            <div class="cont">Jollen,你好： 因为公安业务，最近看了你的SM2的博文。感觉文章逻辑和思路是我看到SM2介绍中少有的。顺便看了你的几篇年度总结，感觉博主是有个人理想的人。
又到年底，如果不介意，我们联系一下，一方面请教国密算法，另一方方面了了你的新想法。
我的QQ：3206166032 
邮箱：charyj2000@yahoo.com
-Kevin</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-10-20 16:15:00.0</li>
						        </ul>
					            <span class="ico">119.</span>　小何
				            </div>
				            <div class="cont">你好，看了关于你写的SM2算法相关的文章，受益匪浅，最近也在做这块的项目，遇到个难题，请问SM2算法下怎么读取sm2私钥证书文件，C#语言开发的，能有代码提供一下吗？谢谢，我的邮箱 25370035@qq.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2016-11-10 17:24:57.0</li>
						        </ul>
					            <span class="ico">120.</span>　CryptoJS.SM3("abc").toString()
				            </div>
				            <div class="cont">大师您好，最近在学习sm3，有个问题就是用CryptoJS.SM3("abc").toString()这样算和java计算的结果不一样，js计算出来的是错误的，能否指点一下我，网上的资料实在是太少了，谢谢，希望能得到您的帮助</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-01-05 10:18:26.0</li>
						        </ul>
					            <span class="ico">121.</span>　sm2证书生成请教
				            </div>
				            <div class="cont">能加个qq么？我的是815871396，谢谢
有问题咨询，也可以商业合作。
谢谢</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-01-14 22:40:20.0</li>
						        </ul>
					            <span class="ico">122.</span>　jsflzhong
				            </div>
				            <div class="cont">您好,学习了您的关于sm2签名验签和证书的文章. 还请麻烦您能否帮忙发一份基于sm2的生成数字证书的全部源码(包含所有相关的工具类)?最好是java的. 感谢! 邮箱:jsflzhong@163.com  如果实在没有java的,其他的也可以参考学习. 再次感谢! 祝新年快乐!</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-01-19 16:01:07.0</li>
						        </ul>
					            <span class="ico">123.</span>　树荫
				            </div>
				            <div class="cont">你好博主,能否受累给一份较全java或C#版本的SM2证书生成的代码?特别是 SM2X509V3CertificateGenerator 以及他的相关类,谢谢!祝新年快乐.
邮箱:jsflzhong@163.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-01-23 15:59:29.0</li>
						        </ul>
					            <span class="ico">124.</span>　小山
				            </div>
				            <div class="cont">您好博主，看了您SM2证书生成，我已经生成cer的文件，但不知道如何生成sm2的私钥文件，麻烦指导一下，谢谢!347243943@qq.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-02-09 17:53:27.0</li>
						        </ul>
					            <span class="ico">125.</span>　LCS
				            </div>
				            <div class="cont">你好博主，能发个证书的样板给我研究下么，不介意的话再发个证书的ASN.1结构。或者之前的不要，能点关于证书的资料么</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-02-15 13:58:18.0</li>
						        </ul>
					            <span class="ico">126.</span>　赫格腾尔
				            </div>
				            <div class="cont">正在做项目需要用到SM2公钥算法，希望能您空闲之余指点一二，有偿指点！联系方式QQ527553784，希望您能联系我！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-02-16 21:38:50.0</li>
						        </ul>
					            <span class="ico">127.</span>　咨询SM2签名和验证
				            </div>
				            <div class="cont">希望加下我的QQ号527553784，咨询SM2签名和验证问题，也可以有偿帮助！</div>
				            <div class="reply" ><span>回复：</span>要我帮什么忙的？（2017-02-22 10:48:41）</div>
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-04-18 20:45:33.0</li>
						        </ul>
					            <span class="ico">128.</span>　花生
				            </div>
				            <div class="cont">可否联系，请教些国密的技术问题？</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-04-30 11:01:30.0</li>
						        </ul>
					            <span class="ico">129.</span>　被宠溺的丫头
				            </div>
				            <div class="cont">你可以加我吗？</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-05-20 10:51:51.0</li>
						        </ul>
					            <span class="ico">130.</span>　SM2证书生成及解析
				            </div>
				            <div class="cont">jonllen,你好，最近在做SM2，需要制作SM2证书及解析证书，你能把相关代码发给我邮箱么6339159@qq.com,或者上传到csdn，用积分换也可，</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-07-21 15:44:05.0</li>
						        </ul>
					            <span class="ico">131.</span>　树荫
				            </div>
				            <div class="cont">加油，希望越来越好</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-08-08 14:30:07.0</li>
						        </ul>
					            <span class="ico">132.</span>　rnc
				            </div>
				            <div class="cont">你好，最近在做SM2，需要制作SM2证书及解析证书，你能把相关代码发给我邮箱么ruannaichun@163.com,或者上传到csdn，用积分换也可，</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-08-14 22:52:31.0</li>
						        </ul>
					            <span class="ico">133.</span>　我爱正则表达式
				            </div>
				            <div class="cont">博主继续坚持哦！事业有成！！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-08-15 11:09:36.0</li>
						        </ul>
					            <span class="ico">134.</span>　sm2
				            </div>
				            <div class="cont">jonllen,你好，发联系方式到我邮件88562438@qq.com 我近来需要做js的sm2，可以用付费方式帮我完成js的sm2的算法</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-08-15 13:56:11.0</li>
						        </ul>
					            <span class="ico">135.</span>　sm2
				            </div>
				            <div class="cont">onllen,你好，最近在js的SM2， 加我qq号88562438,咨询SM2签名和验证问题，也可以有偿帮助！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-08-15 13:57:19.0</li>
						        </ul>
					            <span class="ico">136.</span>　咨询sm2
				            </div>
				            <div class="cont">jonllen,你好，最近在做js的SM2， 加我qq号88562438,咨询SM2签名和验证问题，也可以有偿帮助！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-08-17 09:38:27.0</li>
						        </ul>
					            <span class="ico">137.</span>　Joe
				            </div>
				            <div class="cont">博主。在么。我用js前端加密后台java解密，解密结果总是一小段乱码。但用js加密解密就ok，用java加密解密也ok。博主能答复一下么</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-08-17 09:44:49.0</li>
						        </ul>
					            <span class="ico">138.</span>　Joe
				            </div>
				            <div class="cont">博主，您好：我和115楼一样的情况  您的SM2加密解密是用javascript实现的，请问有没有用java实现SM2的加密解密？我发现用网上下载的java实现的SM2加密解密算法不能解密您的javascript加密出来的密文。 如果有能不能发我邮箱1160156324@qq.com 谢谢  </div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-09-29 11:24:19.0</li>
						        </ul>
					            <span class="ico">139.</span>　wind
				            </div>
				            <div class="cont">有空给我发个电话，可以聊一聊技术开发方面的事情！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-09-29 11:26:54.0</li>
						        </ul>
					            <span class="ico">140.</span>　wind
				            </div>
				            <div class="cont">楼主对C或java实现简单的web服务器有没有做过，有兴趣的话可以联系我</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-10-15 00:40:00.0</li>
						        </ul>
					            <span class="ico">141.</span>　java后台如何解决JS版本sm3withsm2的签名
				            </div>
				            <div class="cont">你好，最近在弄一个国密算法，在网上找一堆例子参考，终于找到你提供JS版本的SM签名算法，研究了两天，始终无法在Java后台完成验签。请问你实现了java后台的验签了吗，是否可以提供参考一下了，万分感激！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-10-15 00:51:30.0</li>
						        </ul>
					            <span class="ico">142.</span>　java后台如何解决JS版本sm3withsm2的签名
				            </div>
				            <div class="cont">你好，最近在弄一个国密算法，在网上找一堆例子参考，终于找到你提供JS版本的SM签名算法，研究了两天，始终无法在Java后台完成验签。请问你实现了java后台的验签了吗，是否可以提供参考一下了，万分感激！xwzengaostar@126.com</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2017-11-24 10:08:04.0</li>
						        </ul>
					            <span class="ico">143.</span>　求教SM2
				            </div>
				            <div class="cont">博主，您好！我最新刚刚接触SM2算法，向请教一下签名结果求得的两个32位大数S和R该如果组装成常规的签名值呢。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2019-12-06 14:45:19.0</li>
						        </ul>
					            <span class="ico">144.</span>　求js版本sm2签名验签bug解决
				            </div>
				            <div class="cont">使用的是sm2的签名验签，sm3withsm2,和别的语言是可以互通的，但是报文长度超过60左右的时候就不行了，望回复</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2020-01-09 18:21:13.0</li>
						        </ul>
					            <span class="ico">145.</span>　微信：qq1142013568
				            </div>
				            <div class="cont">sm2 可以根据私钥算出公钥吗</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2020-01-17 09:33:40.0</li>
						        </ul>
					            <span class="ico">146.</span>　小马
				            </div>
				            <div class="cont">哥，我从csdn上下载你的sm2js加密跑不起来，求帮助。</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2020-03-21 18:39:45.0</li>
						        </ul>
					            <span class="ico">147.</span>　王小虎
				            </div>
				            <div class="cont">请教一下，我有sm2的公钥和私钥字符串，怎么能生成java.security.PrivateKey或org.bouncycastle.jcajce.provider.asymmetric.ec.BCECPrivateKey的实例，谢谢！</div>
				            
			            </div>
				    
				        <div class="item">
				            <div class="desc">
					            <ul class="options">
						            <li>2020-10-22 14:30:34.0</li>
						        </ul>
					            <span class="ico">148.</span>　韦小可
				            </div>
				            <div class="cont">厉害的博主，怎么不更新啦，有在其他平台吗</div>
				            <div class="reply" ><span>回复：</span>最近做其他事情去了。。。（2021-01-12 19:59:20）</div>
			            </div>
				    
			</div>
		</div>
		<!--postcomment样式为获得公共submit按扭样式-->
		<div class="postcomment postleave">
			<form method="post" action="#">
			    <div class="title">给我留言</div>
			    <div class="box">
				    <div class="fi">
			            <label>名　　称：</label>
			            <input type="text" id="leaveUserName" name="leaveUserName" class="text" />
			            <span class="note">*必填</span>
			        </div>
			        <div class="fi">
			            <label>邮　　箱：</label>
			            <input type="text" id="leaveEmail" name="leaveEmail" class="text" />
			        </div>
			        <div class="fi">
			            <label>网站链接：</label>
			            <input type="text" id="leaveWebSite" name="leaveWebSite" class="text" />
			        </div>
			        <div class="fi">
			            <label>留言内容：</label>
			            <textarea id="leaveContent" name="leaveContent" class="textarea"></textarea>
			            <span class="note">*必填</span>
			        </div>
			        <div class="btn">
			            <input type="submit" onclick="return sumbitLeave();" class="submit" value="提交" />
			            <span id="leaveprompt"></span>
			        </div>
			    </div>
			</form>
		</div>
		<script type="text/javascript">
		    function sumbitLeave() {
		        var ajaxUrl = '/plugin/web/doSaveLeave.do';
		        var parms = new Array();
		        parms.push('username='+ encodeURIComponent(document.getElementById('leaveUserName').value));
		        parms.push('content='+encodeURIComponent(document.getElementById('leaveContent').value));
		        parms.push('userId=500');
		        parms.push('columnId=579');
		        parms.push('siteId=1');
		        parms.push('email='+document.getElementById('leaveEmail').value);
		        parms.push('webSite='+document.getElementById('leaveWebSite').value);
		        document.getElementById('leaveprompt').innerHTML = 'Loading...';
		        Ajax.post(
		            ajaxUrl
		            ,parms.join('&')
		            ,function (data){
		                document.getElementById('leaveprompt').innerHTML = '';
		                var rs;
		                try{rs=eval("rs="+data);}catch(e){alert(e);return;}

		                var leavelist = document.getElementById('leavelist');
		                if( rs.success) {
		                    appendLeave();
		                    document.getElementById('leaveContent').value = '';
		                    //if( rs.message) {
		                        alert('提交留言成功!');		                    //}
		                }else {
		                    alert(rs.error);
		                }
		            });
		        return false;
		    }


function appendLeave()
		    {
var itemComment = document.createElement('div');
itemComment.className = 'item';
var username = document.getElementById("leaveUserName").value;
var index = document.getElementById('leavelist').getElementsByTagName('ul').length + 1;
var content =  document.getElementById("leaveContent").value;
itemComment.innerHTML = '<div class="desc"><ul class="options"><li></li></ul><span class="ico">'+index+'.</span> '+username+'</div><div class="cont">'+content+'</div>';
document.getElementById('leavelist').appendChild(itemComment);
}

		</script>
	     </div>
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
		    

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

<li><a href="/jonllen/js/178.aspx#comment"><b>zlc</b>：你好，你https://github.com/lifesreason/SM2 这个库中除了一个test.html和test.aes-sm.html 的示例其他的 都没有 ，你方便挂上去吗？签名验签的这个我用https://www.npmjs.com/package/sm-crypto  这个库 后端无法签签，老的项目是用的你现在的这个库 可我并没有在你的例子中看到签名的方法，如果方便能提供一下嘛？</a></li>

	    </ul>
    </div>
</div>
 
<div id="mod31" class="mod recent">
    <h4 class="head">最近发表</h4>
    <div class="cont">
	    <ul>

                    
		    <li><a href="/jonllen/work/800.aspx">2015年度工作总结</a>(2015-12-31)</li>
                    
		    <li><a href="/jonllen/travel/801.aspx">靖港古镇游</a>(2015-11-29)</li>
                    
		    <li><a href="/jonllen/js/179.aspx">使用ECharts报表统计公司考勤加班，大家加班多吗？</a>(2015-06-05)</li>
                    
		    <li><a href="/jonllen/js/178.aspx">JavaScript实现SM2算法加解密</a>(2014-10-28)</li>
                    
		    <li><a href="/jonllen/breast/177.aspx">2014年国庆</a>(2014-10-04)</li>
                    
	    </ul>
    </div>
</div>
 
<div id="mod36" class="mod search">
	<h4 class="head">搜索</h4>
	<div class="cont">
		<form action="/search/" method="get">
	        <input type="text" name="key" class="text" value="" placeholder="输入搜索内容" />
	        <input type="submit" class="btn" value="搜索" />
	    </form>
	</div>
</div>
 
<div id="mod32" class="mod click">
    <h4 class="head">关注最多</h4>
    <div class="cont">
	    <ul>
                    
		    <li><a href="/jonllen/work/164.aspx">SM2非对称算法加解密</a>(47354)</li>
                    
		    <li><a href="/jonllen/work/162.aspx">国密算法SM2证书制作</a>(40615)</li>
                    
		    <li><a href="/jonllen/aspnet/tinymce.aspx">TinyMce在线编辑器完美打造成Asp.Net服务器自定义控件</a>(33064)</li>
                    
		    <li><a href="/jonllen/work/174.aspx">SM2国密算法证书解析</a>(28317)</li>
                    
		    <li><a href="/jonllen/js/js-popup.aspx">摆脱JQuery—之自定义模拟弹窗层功能。</a>(27067)</li>
                    
	    </ul>
    </div>
</div>
 
</div>
</div>
 
<div class="auto" id="foot">
    <div class="wrapper">
	Powered By ：Jonllen  <a href="https://beian.miit.gov.cn" target="_blank">粤ICP备10049366号</a>
	</div>
</div>
 
<script type="text/javascript" src="/styles/index/scripts/Drag.js"></script>
<script type="text/javascript" src="/styles/index/scripts/Tooltip.js" ></script>
<div style="display:none"> 
    <script type="text/javascript" src="/styles/index/scripts/statistics.js"></script>
</div>

</body>
</html>