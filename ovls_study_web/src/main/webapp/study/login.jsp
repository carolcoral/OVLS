<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="login" style="margin-top:50px;">
    
    <div class="header">
        <div class="switch" id="switch"><a class="switch_btn_focus" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
			<a class="switch_btn" id="switch_login" href="javascript:void(0);" tabindex="8" >快速注册</a><div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>    
  
    
    <div class="web_qr_login" id="web_qr_login" style="display: block; height: 235px;">    

            <!--登录-->
            <div class="web_login" id="web_login">
               <div class="login-box">
			<div class="login_form">
				<input type="hidden" name="did" value="0"/>
               <input type="hidden" name="to" value="log"/>
                <div class="uinArea" id="uinArea">
                <label class="input-tips" for="u">帐号：</label>
                <div class="inputOuter" id="uArea">
                    
                    <input type="text" id="username" name="username"  class="inputstyle"/>
                    <span id="username_error" style="color: red"></span>
                </div>
                </div>
                <div class="pwdArea" id="pwdArea">
               <label class="input-tips" for="p">密码：</label> 
               <div class="inputOuter" id="pArea">
                    
                    <input type="password" id="password" name="password" class="inputstyle"/>
                    <span id="password_error" style="color: red"></span>
                </div>
                </div>
               
                <div style="padding-left:50px;margin-top:20px;">
                <input id="login_form" type="button" value="登 录" onclick="login();" style="width:150px;" class="button_blue" /></div>
           </div>
           
          </div>
               
            </div>
            <!--登录end-->
  </div>
</div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
function login(){
	//清空原有提示信息
	$("#username_error").html("");
	$("#password_error").html("");
	//获取请求参数
	var username = $("#username").val();
	var password = $("#password").val();
	//检查参数格式
	var ok = true;
	if(username==""){
		$("#username_error").html("账号不能为空");
		ok = false;
	}
	if(password==""){
		$("#password_error").html("密码不能为空");
		ok = false;
	}
	//发送ajax请求
	if(ok){
		$.ajax({
			url:"http://localhost:8001/user/login",
			type:"post",
			data:{"name":username,"password":password},
			dataType:"json",
			success:function(result){
				if(result.status==1){
					//获取服务器颁发的登录令牌，存储在浏览器端
					var userId = result.data.userId;
					var token = result.data.token;
					sessionStorage.userId = userId;//h5本地存储
					sessionStorage.token = token;//h5本地存储
					//刷新页面
					alert(result.msg);
					window.parent.location.reload();
				}else if(result.status==2){
					$("#username_error").html(result.msg);
				}else if(result.status==3){
					$("#password_error").html(result.msg);
				}else{
					alert(result.msg);
				}
			}
		});
	}
};
</script>
</html>