package cn.xdl.ovls.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import cn.xdl.ovls.common.entity.OvlsResult;
import cn.xdl.ovls.user.service.UserService;

@RestController
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user/login", method = RequestMethod.POST)
	public OvlsResult login(String name, String password) {
		OvlsResult result = new OvlsResult();
		int ret = userService.checkUser(name, password);
		if (ret == 1) {
			result.setStatus(1);
			result.setMsg("success login");
		} else if (ret == 2) {
			result.setStatus(2);
			result.setMsg("login failed");
		} else if (ret == 3) {
			result.setStatus(3);
			result.setMsg("password not current");
		}
		return result;
	}

	@RequestMapping(value = "/user/regist", method = RequestMethod.POST)
	public OvlsResult regist(String name, String password) {
		OvlsResult result = new OvlsResult();
		try {
			int ret = userService.addUser(name, password);
			if (ret == 1) {
				result.setStatus(1);
				result.setMsg("success regist");
			} else if (ret == 2) {
				result.setStatus(2);
				result.setMsg("failed regist");
			}
		} catch (Exception ex) {
			ex.printStackTrace();
			result.setStatus(0);
			result.setMsg("unkown failed");
		}
		return result;
	}

}
