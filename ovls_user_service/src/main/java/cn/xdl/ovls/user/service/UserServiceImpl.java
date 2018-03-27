package cn.xdl.ovls.user.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.xdl.ovls.common.util.Md5Utils;
import cn.xdl.ovls.user.dao.UserMapper;
import cn.xdl.ovls.user.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userDao;

	public int addUser(String name, String password) {
		User user = userDao.selectByName(name);
		if (user != null) {
			return 2;
		}

		user = new User();
		user.setName(name);

		String salt = Md5Utils.randomSalt();

		String md5Password = Md5Utils.md5(password + salt);
		user.setPassword(md5Password);
		user.setSalt(salt);
		user.setRegtime(new Date());
		userDao.insertSelective(user);
		return 1;
	}

	public int checkUser(String name, String password) {
		// 检查账户时候正确
		User user = userDao.selectByName(name);
		if (user == null) {
			return 2;// 登录失败
		} else {
			// 检查密码时候正确
			String md5Password = Md5Utils.md5(password + user.getSalt());
			if (md5Password.equals(user.getPassword())) {
				return 1;// 登录成功
			} else {
				return 3;// 密码错误
			}
		}
	}

}
