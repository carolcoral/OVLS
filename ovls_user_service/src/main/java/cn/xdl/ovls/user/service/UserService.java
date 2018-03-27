package cn.xdl.ovls.user.service;

public interface UserService {
	/**
	 * 用户注册
	 * @param name 用户名
	 * @param password 密码
	 * @return 1：成功 2：账号已存在
	 */
	public int addUser(String name,String password);
	
	/**
	 * 用户登录
	 * @param name 用户名
	 * @param password 密码
	 * @return 1：登录成功 2：登录失败 3：密码错误
	 */
	public int checkUser(String name,String password);
}
