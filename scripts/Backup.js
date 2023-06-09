// MasterPage.master页面  顶部输出日期脚本

var today = new Date(),day = ["日","一","二","三","四","五","六"];
document.write( today.getUTCFullYear()+"年" + (today.getUTCMonth() + 1 ) + "月" + today.getUTCDate() + "日&nbsp;");
document.write( "&nbsp;星期" +  day[today.getDay()]);

// MasterPage.master页面  导航判断选中、top头部输出flash脚本

var select ,navlist = document.getElementById('navigation').getElementsByTagName('li');
for(var i=0;i<navlist.length;i++)
{
    if ( navlist[i].className=='preview') continue;
    var link = navlist[i].getElementsByTagName('a')[0];
    if ( link && window.location.href.toLowerCase().indexOf(link.href.toLowerCase())>-1 )
    {
        select = link;
    }
}
if( select==undefined )
{
    navlist[0].className = "on";
}else
{
   select.parentNode.className = "on";
}

var flashWidth = 700, flashHeight =  255, flashSrc = '/style/blog/mobile.swf',  nowHours = new Date().getHours(), dayWeather = ['sunny','cloudy'];
var parameterVal = 'currentState=' + dayWeather[parseInt(Math.random()*(dayWeather.length-0)+0)] + '&tempVar=83&daytime=' + (nowHours >= 6 && nowHours <18 ? 'yes' : 'no') + '&time=' + nowHours;
var tempDiv = document.createElement('div');
tempDiv.innerHTML = '<object id="mobile" classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" height="' + flashHeight + '" width="' + flashWidth + '" ><param name="menu" value="false" /><param name="wmode" value="transparent" /><param name="flashvars" value="' + parameterVal + '" /><param name="movie" value="' + flashSrc + '" /><embed src="' + flashSrc + '" width="' + flashWidth + '" height="' + flashHeight + '" wmode="transparent" flashvars="' + parameterVal + '" type="application/x-shockwave-flash"></embed></object>';
document.getElementById('top').insertBefore(tempDiv.childNodes[0],document.getElementById('top').childNodes[0]);


// MasterPage.master页面  日历控件初始化
var archive = new Array();
archive.push('2008-12-30');archive.push('2008-04-24');archive.push('2008-06-15');archive.push('2008-06-02');archive.push('2009-01-03');archive.push('2009-01-05');archive.push('2009-01-07');archive.push('2009-03-28');archive.push('2009-04-25');archive.push('2009-06-18');archive.push('2009-06-25');archive.push('2009-06-26');archive.push('2009-06-28');archive.push('2009-07-01');archive.push('2009-07-11');archive.push('2009-07-12');archive.push('2009-07-16');archive.push('2009-07-17');archive.push('2009-07-18');archive.push('2009-07-22');archive.push('2009-07-24');archive.push('2009-07-31');archive.push('2009-07-04');archive.push('2009-07-06');archive.push('2009-07-08');archive.push('2009-08-01');archive.push('2009-08-10');archive.push('2009-08-12');archive.push('2009-08-16');archive.push('2009-08-20');archive.push('2009-08-23');archive.push('2009-08-26');archive.push('2009-09-01');archive.push('2009-09-04');archive.push('2009-09-05');
var archiveUrlPrefix = '/Index.aspx?day=';
function ePicked(dp)
{
    for(var i=0;i<archive.length;i++)
    {
        if(archive[i]==dp.cal.getDateStr())
            window.location = archiveUrlPrefix + dp.cal.getDateStr();
    }
}
WdatePicker( { eCont :'calendar', firstDayOfWeek :1, specialDates :archive.length > 0 ? archive : null, onpicked :ePicked } );

// Index.aspx页面  添加文章摘要和列表模式
var preview = document.createElement('li');
preview.innerHTML = '<input type="radio" name="preview" ' + (listMode=='0' ? 'checked="checked" disabled="disabled"' : '') + ' value="0" />摘要模式<input type="radio" name="preview" ' + (listMode=='1' ? 'checked="checked" disabled="disabled"' : '') + ' value="1" />列表模式';
preview.className = 'preview';
var previewList = preview.getElementsByTagName('input');
for(var i=0;i<previewList.length;i++)
{
    previewList[i].onclick = function (){
        if(this.disabled == "disabled") return false;
        var url = location.pathname + '?';
        var paraString = location.search.substring(1).split('&');
        for (i=0; j=paraString[i]; i++){
            var key = j.substring(0,j.indexOf("=")).toLowerCase(),val = j.substring(j.indexOf("=")+1,j.length);
            if (key!='' && key!='listmode')
                url += key + '=' + val + '&';
        }
        url += 'listmode=' + this.value;
        var date = new Date();
        date.setTime(date.getTime() + 1000 * 60 * 60);
        document.cookie = 'ListMode=' + this.value + '; expires=' + date.toGMTString();
        location = url;
    }
}
document.getElementById("navigation").appendChild(preview);



//切换风格实现
var skinlist = document.getElementById('skin').getElementsByTagName('a');
for(var i=0;i<skinlist.length;i++)
{
    skinlist[i].onclick = function (){
        var skinsrc = this.href.substring(this.href.indexOf('#')+1);
        for(var j=0;j<skinlist.length;j++)
        {
            skinlist[j].style.borderWidth = skinlist[j].href.indexOf( skinsrc ) > -1  ? '2px' : '1px';
        }
        document.getElementById('currskin').href = '';
        document.getElementById('currskin').href = skinsrc;
        var date = new Date();
        date.setTime(date.getTime() + 1000 * 60 * 60);
        document.cookie = 'Skin=' + escape(skinsrc) + '; path=/; expires=' + date.toGMTString();
        this.blur();
        setTimeout(function (){
            var full = (skinsrc.indexOf('full') > -1 || skinsrc.indexOf('christmas') > -1);
            var siderHeight = Math.max( document.getElementById('left').clientHeight, document.getElementById('right').clientHeight);
            document.getElementById('main').style.height = (full && siderHeight > document.getElementById('middle').clientHeight) ? siderHeight + 'px' : 'auto';
            document.getElementById('mainContent').style.marginRight = !full ? '0px' : (document.getElementById('right').style.display == 'none' || document.getElementById('right').clientWidth == 0 ? '10px' : (document.getElementById('right').clientWidth + 20 + 'px'));
        },1000);
    };
    if ( document.getElementById('currskin').href.indexOf( skinlist[i].href.substring(skinlist[i].href.indexOf('#')+1) ) > -1 )
    {
        skinlist[i].onclick();
    }
}

//右边栏隐藏开关
(function (){
    var rightElem = document.getElementById('right');
    if ( rightElem.innerHTML == '') return;
    var loadScript = function (url, callback) {
        var script=document.createElement('script');
        script.type='text/javascript';
        if (callback) {
            script.onload=script.onreadystatechange=function(){
                if(script.readyState&&script.readyState!='loaded'&&script.readyState!='complete') return;
                script.onreadystatechange=script.onload=null;
                callback();
            };
        }
        script.src=url;
        document.getElementsByTagName('head')[0].appendChild(script);
    };
    var createSwitch = function () {
        var switchElem = document.createElement('a');
        switchElem.href = 'javascript:;';
        switchElem.className = 'switch';
        switchElem.setAttribute('tooltip',-1);
        switchElem.innerHTML = '开关';
        switchElem.title = '隐藏右边栏';
        switchElem.onclick = function (){
            var full = (document.cookie.indexOf('full') != -1 || document.cookie.indexOf('christmas') != -1);
            if( !full ) return;
            var off = this.className.indexOf('off') == -1;
            this.title = off ? '显示右边栏' : '隐藏右边栏';
            this.className = off ? 'switch-off' : 'switch';
            this.blur();
            var date = new Date();
            date.setTime(date.getTime() + (off ? 1000 * 60 * 60 : -1000) );
            document.cookie = 'Switch=off; path=/; expires=' + date.toGMTString();
            document.getElementById('right').style.display = off ? 'none' : 'block';
            document.getElementById('mainContent').style.marginRight = off ? '10px' : (document.getElementById('right').clientWidth == 0 ? '10px' : (document.getElementById('right').clientWidth + 20 + 'px'));
        };
        document.body.insertBefore(switchElem, document.body.childNodes[0]);
        Popup.init({
            target : switchElem,
		    autoOpen : true,
		    createOverlay : false,
		    align : 'right',
		    alignSlant : -2,
		    vertical : 'middle',
		    verticalSlant : 100,
		    listenEsc : false
        });
        if( document.cookie.indexOf('Switch') != -1 ) switchElem.onclick();
    };
    if( typeof(Popup) == 'undefined' )
    {
        loadScript('/scripts/popup.js',createSwitch);
        return;
    }
    createSwitch();
})();


(function (){
    var timespan = 1;
    var interval = setInterval( 
        function (){
            if ( document.body.style.opacity != 1 || document.body.style.filter != 'alpha(opacity=100)' )
            {
                var add = 0.1;
                var opacity = ( parseFloat(document.body.style.opacity) || document.body.style.filter.match(/\d+/i)/100 || 0 );
                opacity += add;
                if( opacity > 1) opacity = 1;
                document.body.style.opacity = opacity;
                document.body.style.filter = 'alpha(opacity='+(opacity*100)+')';
            }else
            {
                clearInterval(interval);
            }
        }
        ,timespan
    );
})();