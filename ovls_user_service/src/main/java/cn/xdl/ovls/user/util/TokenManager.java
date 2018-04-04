package cn.xdl.ovls.user.util;

import java.util.UUID;

import org.springframework.stereotype.Component;

@Component
public class TokenManager {
	
	public String createToken(int userId){
		//使用UUID生成一个编号
		UUID uuid = UUID.randomUUID();
		long createTime = System.currentTimeMillis();
		return uuid+"-"+createTime+"-"+userId;
	}
	
	public static void main(String[] args){
		TokenManager tm = new TokenManager();
		System.out.println(tm.createToken(10));
	}
	
}
