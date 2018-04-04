package cn.xdl.ovls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;

@SpringBootApplication
@MapperScan(basePackages={"cn.xdl.ovls.video.dao"})
@ServletComponentScan
@EnableDiscoveryClient
@EnableFeignClients//启用Feign接口模式调用远程服务
public class VideoBootApplication {
	
	public static void main(String[] args) {
		SpringApplication.run(VideoBootApplication.class, args);
	}
	
}
