<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="login" style="margin-top: 50px;">

		<div class="header">
			<div class="switch" id="switch">
				<a class="switch_btn_focus" id="switch_qlogin"
					href="javascript:void(0);" tabindex="7">快速登录</a> <a
					class="switch_btn" id="switch_login" href="javascript:void(0);"
					tabindex="8">快速注册</a>
				<div class="switch_bottom" id="switch_bottom"
					style="position: absolute; width: 64px; left: 0px;"></div>
			</div>
		</div>


		<div class="web_qr_login" id="web_qr_login"
			style="display: block; height: 235px;">

			<!--登录-->
			<div class="web_login" id="web_login">
				<div class="login-box">
					<div class="login_form">
						<input type="hidden" name="did" value="0" /> <input type="hidden"
							name="to" value="log" />
						<div class="uinArea" id="uinArea">
							<label class="input-tips" for="u">帐号：</label>
							<div class="inputOuter" id="uArea">

								<input type="text" id="username" name="username"
									class="inputstyle" /> <span id="username_error"></span>
							</div>
						</div>
						<div class="pwdArea" id="pwdArea">
							<label class="input-tips" for="p">密码：</label>
							<div class="inputOuter" id="pArea">

								<input type="password" id="password" name="password"
									class="inputstyle" /> <span id="password_error"
									style="color: green"></span> <span id="password_error1"
									style="color: red"></span>
							</div>
						</div>

						<div style="padding-left: 50px; margin-top: 20px;">
							<input id="login_form" type="button" value="登 录"
								style="width: 150px;" class="button_blue" />
						</div>
					</div>

				</div>

			</div>
			<!--登录end-->
		</div>
	</div>

</body>
<script type="text/javascript">
	function login() {
		var ok = true;
		var username = $("#username").val();
		var password = $("#password").val();
		if (username == "") {
			$("#username_error").html("账户不能为空");
			ok = false;
		}
		if (password == "") {
			$("#password_error").html("密码不能为空");
			ok = false;
		}
		/* 
		 * 发送 ajax 
		 * 1:success
		 * 2:failed
		 * 3:password not current
		 */
		if (ok) {
			$.ajax({
				url:"",
				type:"post",
				data:{"name":username,"password":password},
				dataType:"json",
				success:function(){
					if(result.status == 1){
						alert("登录成功");
						window.parent.location.reload();
					}else if(result.status == 2){
						$("#username_error").html(result.msg);
					}else if(result.status == 3){
						$("#password_error").html(result.msg);
					}else{
						alert(result.msg);
					}
				}
			});
		}
	}
</script>






</html>