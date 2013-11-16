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
	return true;
}
function checkUser(obj){
    if(obj.value==""){
        $("#userMsg").html("请输入用户名");
        return;
    }
    
}