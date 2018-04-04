package cn.xdl.ovls.user.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.xdl.ovls.common.entity.OvlsResult;
import cn.xdl.ovls.user.service.UserService;

@RestController
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/user/login",method=RequestMethod.POST)
	public OvlsResult login(String name,String password){
		OvlsResult result = new OvlsResult();
		try{
			Map<String, Object> data = userService.checkUser(name, password);
			int ret = (Integer)data.get("status");
			if(ret==1){
				result.setStatus(1);
				result.setMsg("登录成功");
				result.setData(data);
			}else if(ret==2){
				result.setStatus(2);
				result.setMsg("账号不存在");
			}else if(ret==3){
				result.setStatus(3);
				result.setMsg("密码错误");
			}
		}catch(Exception ex){
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("登录异常");
		}
		return result;
	}
	
	
	@RequestMapping(value="/user/regist",method=RequestMethod.POST)
	public OvlsResult regist(String name,String password){
		OvlsResult result = new OvlsResult();
		try{
			int ret = userService.addUser(name, password);
			if(ret==1){
				result.setStatus(1);
				result.setMsg("注册成功");
			}else if(ret==2){
				result.setStatus(2);
				result.setMsg("账号已存在");
			}
		}catch(Exception ex){
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("注册异常");
		}
		return result;
	}
	
	@RequestMapping(value="/user/token",method=RequestMethod.POST)
	public OvlsResult checkToken(String userId,String token){
		OvlsResult result = new OvlsResult();
		try{
			boolean ok = userService.checkToken(token, userId);
			if(ok){
				result.setStatus(1);
				result.setMsg("合法用户");
			}else{
				result.setStatus(2);
				result.setMsg("未授权用户");
			}
		}catch(Exception ex){
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("注册异常");
		}
		return result;
	}
	
}
