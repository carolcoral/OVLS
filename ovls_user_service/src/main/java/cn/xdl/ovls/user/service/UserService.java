package cn.xdl.ovls.user.service;

import java.util.Map;

public interface UserService {
	/**
	 * 用户注册
	 * @param name 账号
	 * @param password 密码
	 * @return 1:表示成功;2:表示账号已存在
	 */
	public int addUser(String name,String password);
	
	/**
	 * 登录登录
	 * @param name 账号
	 * @param password 密码
	 * @return 1:登录成功,token;2:账号不存在;3:密码错误
	 */
	public Map<String, Object> checkUser(String name,String password);
	
	public boolean checkToken(String token,String userId);
}
