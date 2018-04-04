<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>

<head>
<title>注册页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="login" style="margin-top: 50px;">

		<div class="header">
			<div class="switch" id="switch">
				<a class="switch_btn" id="switch_qlogin" href="javascript:void(0);"
					tabindex="7">快速登录</a> <a class="switch_btn_focus" id="switch_login"
					href="javascript:void(0);" tabindex="8">快速注册</a>
				<div class="switch_bottom" id="switch_bottom"
					style="position: absolute; width: 64px; right: 0px;"></div>
			</div>
		</div>

		<!--注册-->
		<div class="qlogin" id="qlogin">
			<div class="web_login">
				<input type="hidden" name="to" value="reg" /> <input type="hidden"
					name="did" value="0" />
				<ul class="reg_form" id="reg-ul">
					<div id="userCue" class="cue">快速注册请注意格式</div>
					<li><label for="user" class="input-tips2">用户名：</label>
						<div class="inputOuter2">
							<input type="text" id="username" name="username" maxlength="16"
								class="inputstyle2" /> <span id="register_error1"
								style="color: red"></span>
						</div></li>

					<li><label for="passwd" class="input-tips2">密码：</label>
						<div class="inputOuter2">
							<input type="password" id="password" name="password"
								maxlength="16" class="inputstyle2" /> <span id="register_error2"
								style="color: red"></span>
						</div></li>
					<li><label for="passwd2" class="input-tips2">确认密码：</label>
						<div class="inputOuter2">
							<input type="password" id="password2" name="password2"
								maxlength="16" class="inputstyle2" /> <span
								id="register_error3" style="color: red"></span> <span
								id="register_error4" style="color: green"></span>
						</div></li>

					<!--  <li>
                 <label for="qq" class="input-tips2">QQ：</label>
                    <div class="inputOuter2">
                       
                        <input type="text" id="qq" name="qq" maxlength="10" class="inputstyle2"/>
                    </div>
                   
                </li> -->

					<li>
						<div class="inputArea">
							<input type="button" id="reg"
								style="margin-top: 10px; margin-left: 85px; width: 150px;"
								class="button_blue" value="马上注册" onclick="register()" />
						</div>

					</li>
					<div class="cl"></div>
				</ul>
			</div>


		</div>
		<!--注册end-->
	</div>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
	function register() {
		//清空原有提示信息
		$("#register_error1").html("");
		$("#register_error2").html("");
		$("#register_error3").html("");
		$("#register_error4").html("");
		//获取请求参数
		var username = $("#username").val();
		var password = $("#password").val();
		var password2 = $("#password2").val();
		//参数格式检查
		var ok = true;//表单通过检测
		//检测账号
		if (username == "") {
			$("#register_error1").html("账号不能为空");
			ok = false;
		}
		//检测密码
		if (password == "") {
			$("#register_error2").html("密码不能为空");
			ok = false;
		}
		//检测确认密码
		if (password2 == "") {
			$("#register_error3").html("确认密码不能为空");
			ok = false;
		} else if (password2 != password) {
			$("#register_error3").html("两次密码不一致");
			ok = false;
		}
		//发送ajax请求
		if (ok) {

			$.ajax({
				url : "http://localhost:8001/user/regist",
				type : "post",
				data : {
					"name" : username,
					"password" : password
				},
				dataType : "json",
				success : function(result) {
					if (result.status == 1) {
						$("#register_error4").html(result.msg);
					} else if (result.status == 2) {
						$("#register_error1").html(result.msg);
					} else {
						$("#register_error3").html(result.msg);
					}
				}
			});

		}
	};
</script>
</html>