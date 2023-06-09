var validate = {
	require : "require",
	errmsg : "errmsg",
	equalid : "equalid",
	datatype : "datatype",
	group : "group",
	sucmsg : "　√输入正确",
	list : null,
	level : 1,
	tagName : "div",
	errFocus : true,
	hasError : false,
	initHtml : "",
	buttonId : "",
	sucClass : "",
	errClass : "",
	ajaxLoading : "loading…",
	pattern : "pattern",
	ajaxurl : "ajaxurl",
	ajaxsucData : "ajaxsucdata",
	ajaxsucMsg : "ajaxsucmsg",
	ajaxerrData : "ajaxerrdata",
	ajaxerrMsg : "ajaxerrmsg",
	bind : function (){
		var list = document.getElementsByTagName("input");
		this.list = new Array();
		
		var validateGroup = false;
		
		for(var i=0;i<list.length;i++)
		{
			var target = list[i],
			require = target.getAttribute(this.require),
			errmsg = target.getAttribute(this.errmsg);
			if ( require!=null || target.getAttribute(this.datatype)!=null || target.getAttribute(this.pattern)!=null ) 
			{
				this.list.push(target);
				var elem = document.createElement(this.tagName);
				elem.innerHTML = this.initHtml;
				if (this.level==0)
					target.parentNode.insertBefore(elem,target.nextSibling);
				else
					target.parentNode.parentNode.insertBefore(elem,target.parentNode.nextSibling);
				
				target.onfocus = this.eFocus;
				target.onblur = this.eBlur;
				
				var validateGroupName = target.getAttribute(this.group);
				if (validateGroupName != null) validateGroup=true;
			}
		}
		
		if (this.list.length==0) return;
		
		if (this.buttonId!="")
		{
			this.addEvent(document.getElementById(this.buttonId),"click",function (){
				return validate.checkAll();
			});
		}
		else
		{
		
		    if( validateGroup) {
		        // 绑定单个提交按钮
		        for(var i=0;i<this.list.length;i++)
		        {
		            var target = this.list[i];
		            var validateGroupName = target.getAttribute(this.group);
		            if (validateGroupName!= null) {
		                (function (target){
		                        validate.addEvent(document.getElementById(validateGroupName),"click",function (e){
					                    var isValidate = validate.check(target);
					                    return isValidate;
				                    });
		                    })(target);
		                
		            }
		            else {
		                (function(target){
		                        validate.addEvent(document.forms[0],"submit",function (e){
					                    var isValidate = validate.check(target);
					                    if (document.all) return isValidate;
					                    else if (!isValidate) e.preventDefault();
				                    });
		                    })(target);
		                
		            }
		        }
		    }
			//默认绑定表单
			else if (document.forms[0])
			{
				this.addEvent(document.forms[0],"submit",function (e){
					var isValidate = validate.checkAll();
					if (document.all) return isValidate;
					else if (!isValidate) e.preventDefault();
				});
			}
			
		}
		
	},
	check : function (target)
	{
		target.style.backgroundColor = "";
		var elem =  validate.getMsgElem(target);
		var require = target.getAttribute(this.require),
		errmsg = target.getAttribute(this.errmsg),
		pattern = target.getAttribute(this.pattern),
		datatype = target.getAttribute(this.datatype),
		equalid = target.getAttribute(this.equalid),
		ajaxurl = target.getAttribute(this.ajaxurl);
		
		if (target.type=="checkbox" && require!=null)
		{
			var isValidate = target.checked;
			elem.className = isValidate? validate.sucClass : validate.errClass;
			elem.innerHTML = isValidate? this.sucmsg : errmsg;
			if (elem.className == "")
				elem.style.color = isValidate?"green":"red";
			if (!isValidate)
			{
				validate.hasError = true;
				if (validate.errFocus && !validate.hasError) target.focus();
				return false;
			}
		}
		else if ( require!=null && (validate.trim(target.value)=="" || target.value.length<require) )
		{
			elem.className = validate.errClass;
			elem.innerHTML = errmsg != null ? errmsg : "　×请输入";
			if ( target.value.length<require )
			    elem.innerHTML = errmsg != null ? errmsg : "　×输入的不能少于"+require+"个字符";
			if (elem.className == "")
				elem.style.color = "red";
			if (validate.errFocus && !validate.hasError)
			{
				target.focus();
				target.select();
			}
			this.hasError = true;
			return false;
		}
		else if(equalid!=null && target.value!=document.getElementById(equalid).value)
		{
			elem.className = validate.errClass;
			elem.innerHTML = errmsg;
			if (elem.className == "")
				elem.style.color = "red";
			if (validate.errFocus && !validate.hasError)
			{
				target.focus();
				target.select();
			}
			this.hasError = true;
			return false;
		}
		else if(pattern!=null && new RegExp(pattern).test(target.value)==false)
		{
			elem.className = validate.errClass;
			elem.innerHTML = errmsg;
			if (elem.className == "")
				elem.style.color = "red";
			if (validate.errFocus && !validate.hasError)
			{
				target.focus();
				target.select();
			}
			this.hasError = true;
			return false;
		}
		else if(target.value!="" && datatype!=null )
		{
			//debugger;
			var isValidate = true;
			for(type in validate.dataType)
			{
				if(type==datatype && validate.dataType[type].test(target.value)==false )
				{
					isValidate = false;
					break;
				}
			}
			if (isValidate==true )
			{
				if (elem.innerHTML!=target.getAttribute(validate.ajaxerrMsg) && elem.innerHTML!=target.getAttribute(validate.ajaxsucMsg))
				{
					validate.hasError = false;
					elem.className = validate.sucClass;
					elem.innerHTML = this.sucmsg;
					if (elem.className == "")
						elem.style.fontColor = "green";
				}
			}else
			{
				elem.className = validate.errClass;
				elem.innerHTML = errmsg;
				if (elem.className == "")
					elem.style.color = "red";
				if (validate.errFocus && !validate.hasError)
				{
					target.focus();
					target.select();
				}
				this.hasError = true;
				return false;
			}
		}
		else
		{
			//排除掉之前有异步Ajax显示信息
			if (elem.innerHTML!=target.getAttribute(validate.ajaxsucMsg) && elem.innerHTML!=target.getAttribute(validate.ajaxerrMsg))
			{
				validate.hasError = false;
				elem.className = validate.sucClass;
				elem.innerHTML = validate.sucmsg;
				if (elem.className == "")
					elem.style.color = "green";
			}
		}
		
		//ajax
		if(target.value!="" && ajaxurl!=null && target.value!=target.getAttribute("history"))
		{
			var url = ajaxurl+encodeURI(target.value)+"&rd="+Math.random();
			validate.getMsgElem(target).innerHTML = validate.ajaxLoading;
			
			validate.ajax(target,url,function (target,data){
				var elem = validate.getMsgElem(target);
				if (data==target.getAttribute(validate.ajaxsucData) )
				{
					elem.className = validate.sucClass;
					elem.innerHTML = target.getAttribute(validate.ajaxsucMsg);
					validate.hasError = false;
					if (elem.className == "")
						elem.style.color = "green";
				}
				else //if( data==target.getAttribute(validate.ajaxerrData) )
				{
					elem.className = validate.errClass;
					elem.innerHTML = target.getAttribute(validate.ajaxerrMsg);
					if (validate.errFocus && !validate.hasError)
					{
						target.focus();
						target.select();
						validate.hasError = true;
					}
					if (elem.className == "")
						elem.style.color = "red";
					return false;
				}
			});
			target.setAttribute("history",target.value);
		}
		
		validate.hasError = false;
		return true;
	},
	checkAll :function (){
		var isValidate = true;
		for(var i=0;i<this.list.length;i++)
		{
			if (this.check(this.list[i])==false) isValidate = false;
		}
		return isValidate;
	},
	getMsgElem : function (target)
	{
		if (this.level==0)
			return target.nextSibling;
		else
			return target.parentNode.nextSibling;
	},
	setError : function (target,msg)
	{
		var elem = this.getMsgElem(target);
		elem.className = validate.errClass;
		elem.innerHTML = msg ? msg : (target.getAttribute(validate.ajaxerrMsg)!=null?target.getAttribute(validate.ajaxerrMsg):target.getAttribute(validate.errmsg));
		validate.hasError = true;
		if (validate.errFocus && !validate.hasError)
		{
			target.focus();
			target.select();
		}
	},
	setErrorById : function (id){
		var target = document.getElementById(id);
		return this.setError(target);
	},
	eFocus : function (){
		this.style.backgroundColor = "#f9fbdb";
	},
	eBlur : function (){
		validate.check(this);
	},
	dataType : {
		account : /^[A-Za-z][A-Za-z0-9]{3,20}$/,
		comaccount : /^[A-Za-z0-9]{4,20}$/,
		adminpsw : /^[A-Za-z][A-Za-z0-9]{3,20}$/,
		domain2	: /^[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/,
		domain	: /^([a-zA-Z0-9]|[-]){4,16}$/,
		email	: /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/,
		phone	: /^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}$/,
		mobile	: /^((\(\d{3}\))|(\d{3}\-))?1[3|5]\d{9}$/
	},
	ajax: function(target,url,fn)
    {
        var xhr = window.ActiveXObject ? new ActiveXObject("Microsoft.XMLHTTP") : new XMLHttpRequest();
        xhr.open("get",url,true);
        xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
        xhr.onreadystatechange = function (){ if(xhr.readyState==4) if(xhr.status==200) fn(target,xhr.responseText); };
        xhr.send(null);
     },
     trim : function (str)
     {
     	return str.replace(/(^\s*)|(\s*$)/g, "");
     },
     addEvent : function(target,eventType,func){
		if(target.attachEvent)
		{
			target.attachEvent("on"+eventType,func);
			
		}else if(target.addEventListener)
		{
			target.addEventListener(eventType,func,false);
		}
		return this;
	 }
};

validate.addEvent(window,"load",function (){validate.bind()});