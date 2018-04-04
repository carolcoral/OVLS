package cn.xdl.ovls.video.remote;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.xdl.ovls.common.entity.OvlsResult;

@FeignClient(name="USER-SERVICE")//指定注册服务名
public interface UserServiceRemote {
	//多个参数，显示加上@RequestParam标记
	@RequestMapping(value="/user/token",method=RequestMethod.POST)
	public OvlsResult checkToken(@RequestParam("userId")String userId,@RequestParam("token")String token);
	
}
