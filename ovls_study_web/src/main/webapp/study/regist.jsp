<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>

<head>
<title>登录页面</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/login2.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="login" style="margin-top:50px;">
    
    <div class="header">
        <div class="switch" id="switch"><a class="switch_btn" id="switch_qlogin" href="javascript:void(0);" tabindex="7">快速登录</a>
			<a class="switch_btn_focus" id="switch_login" href="javascript:void(0);" tabindex="8" >快速注册</a>
			<div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; right: 0px;"></div>
        </div>
    </div>    

  <!--注册-->
    <div class="qlogin" id="qlogin">
    <div class="web_login" >
	      <input type="hidden" name="to" value="reg"/> 
		      		       <input type="hidden" name="did" value="0"/> 
        <ul class="reg_form" id="reg-ul">
        		<div id="userCue" class="cue">
        		快速注册请注意格式	
        		</div> 
                <li>
                    <label for="user"  class="input-tips2">用户名：</label>
                    <div class="inputOuter2">
                        <input type="text" id="user"  name="username" value="${username }" maxlength="16" class="inputstyle2"/>
                    </div>
                    
                </li>
                
                <li>
                <label for="passwd" class="input-tips2">密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd"  name="password" value="${password }" maxlength="16" class="inputstyle2"/>
                        
                    </div>
                    
                </li>
                <li>
                <label for="passwd2" class="input-tips2">确认密码：</label>
                    <div class="inputOuter2">
                        <input type="password" id="passwd2" name="password2" value="${password2 }" maxlength="16" class="inputstyle2" />
                        <span id="register_error1" style="color: red"></span>
                        <span id="register_error2" style="color: red"></span>
                        <span id="register_error3" style="color: green"></span>
                    </div>
                    
                </li>
                
               <!--  <li>
                 <label for="qq" class="input-tips2">QQ：</label>
                    <div class="inputOuter2">
                       
                        <input type="text" id="qq" name="qq" maxlength="10" class="inputstyle2"/>
                    </div>
                   
                </li> -->
                
                <li>
                    <div class="inputArea">
                        <input type="button" id="reg"  style="margin-top:10px;margin-left:85px;width:150px;" class="button_blue" value="马上注册" onclick="register()" /> 
                    </div>
                    
                </li><div class="cl"></div>
            </ul> 
    </div>
   
    
    </div>
    <!--注册end-->
</div>

</body>
</html>