// JavaScript Document
function check(obj){
	if(obj.UserName.value==""){
		alert("用户名不能为空!");
		obj.UserName.focus();
		obj.UserName.select();
		return false;
	}
	if(obj.UserName.value.length<2 || obj.UserName.value.length>20){
		alert("用户名2-20个字符!");
		obj.UserName.focus();
		obj.UserName.select();
		return false;
	}	
	if(obj.PassWord.value==""){
		alert("密码不能为空!");
		obj.PassWord.focus();
		obj.PassWord.select();
		return false;
	}
	if(obj.PassWord.value.length<4 || obj.PassWord.value.length>20){
		alert("密码4-20个字符!");
		obj.PassWord.focus();
		obj.PassWord.select();
		return false;
	}	
	if(obj.PassWord.value!=obj.RePassWord.value){
		alert("两次输入的密码不同!");
		obj.PassWord.focus();
		obj.PassWord.select();
		return false;
	}
	if(!checkemail(obj.Email.value)){
			alert("请填写正确的邮箱地址！");
			obj.Email.focus();
			obj.Email.select();
			return false;
	}
	if(obj.CheckCode.value==""){
		alert("验证码不能为空!");
		obj.CheckCode.focus();
		obj.CheckCode.select();
		return false;
	}
	return true;
}
function checkemail(semail){
	var pattern = /^([\.a-zA-Z0-9_-]){3,}@([\.a-zA-Z0-9_-]){2,}(\.([a-zA-Z0-9]){2,4}){1,2}$/; 
	return pattern.test(semail);
}
function checkUser(obj){
    if(obj.value==""){
        $("#userMsg").html("请输入用户名");
        return;
    }
    $.ajax({
		    type: "get",
		    url: "/Member/User.aspx?uid="+obj.value,
		    beforeSend: function(XMLHttpRequest){
			    //ShowLoading();
		    },
		    success: function(data, textStatus){
			    $("#userMsg").html(data);
		    },
		    complete: function(XMLHttpRequest, textStatus){
			    //HideLoading();
		    },
		    error: function(){
			    //请求出错处理
		    }
    });	
}

function checkEmailExits(obj){
    $.ajax({
		    type: "get",
		    url: "/Member/Email.aspx?email="+obj.value,
		    beforeSend: function(XMLHttpRequest){
			    //ShowLoading();
		    },
		    success: function(data, textStatus){
			    $("#emailMsg").html(data);
		    },
		    complete: function(XMLHttpRequest, textStatus){
			    //HideLoading();
		    },
		    error: function(){
			    //请求出错处理
		    }
    });	
}