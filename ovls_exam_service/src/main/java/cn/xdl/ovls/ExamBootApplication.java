package cn.xdl.ovls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@MapperScan(basePackages={"cn.xdl.ovls.exam.dao"})
@ServletComponentScan
public class ExamBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(ExamBootApplication.class, args);
	}

}
