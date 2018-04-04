package cn.xdl.ovls.user.service;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.alibaba.druid.sql.dialect.oracle.ast.expr.OracleSizeExpr.Unit;

import cn.xdl.ovls.common.util.Md5Utils;
import cn.xdl.ovls.user.dao.UserMapper;
import cn.xdl.ovls.user.entity.User;
import cn.xdl.ovls.user.util.TokenManager;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userDao;
	
	@Autowired
	private TokenManager tm;
	
	@Autowired
	private StringRedisTemplate redis;
	
	public int addUser(String name, String password) {
		//检查账号是否存在,存在返回2
		User user = userDao.selectByName(name);
		if(user!=null){
			return 2;
		}
		//不存在再进行插入,返回1
		user = new User();
		user.setName(name);
		//TODO 密码加密处理
		//获取盐值
		String salt = Md5Utils.randomSalt();
		//md5(密码+salt)
		String md5Password = Md5Utils.md5(password+salt);
		user.setPassword(md5Password);
		user.setSalt(salt);
		user.setRegtime(new Date());
		userDao.insertSelective(user);
		return 1;
	}

	public Map<String, Object> checkUser(String name, String password) {
		Map<String,Object> map = new HashMap<String, Object>();
		//检查账号是否正确
		User user = userDao.selectByName(name);
		if(user != null){
			//检查密码是否正确
			String md5Password = Md5Utils.md5(password+user.getSalt());
			if(md5Password.equals(user.getPassword())){
				//生成一个登陆令牌,给用户返回
				String token = tm.createToken(user.getId());
				//将令牌在服务器端存储（redis）,24小时内有效
				redis.opsForValue().set(user.getId().toString(), token);
				redis.expire(user.getId().toString(), 24, TimeUnit.HOURS);//expire key n
				map.put("status", 1);
				map.put("token", token);//登录成功
				map.put("userId", user.getId());
				return map;
			}else {
				map.put("status", 3);//密码错误
				return map;
			}
		}
		map.put("status", 2);
		return map;//账号不存在
	}

	public boolean checkToken(String token, String userId) {
		if(token!=null&&!"".equals(token)
			&&userId!=null&&!"".equals(userId)){
			//检查正确性
			String redisToken = redis.opsForValue().get(userId);//从redis获取令牌
			if(redisToken != null && redisToken.equals(token)){//未过期，取出token，比对一致性
				return true;
			}
		}
		return false;
	}

}
