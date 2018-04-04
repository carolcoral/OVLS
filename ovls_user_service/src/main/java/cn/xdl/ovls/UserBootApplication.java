package cn.xdl.ovls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@MapperScan(basePackages="cn.xdl.ovls.user.dao")
@ServletComponentScan
@EnableTransactionManagement
@EnableDiscoveryClient//Ïòeureka×¢²á·þÎñ
public class UserBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(UserBootApplication.class, args);
	}

}
