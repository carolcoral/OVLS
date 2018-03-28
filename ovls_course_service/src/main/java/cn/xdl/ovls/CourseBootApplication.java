package cn.xdl.ovls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@SpringBootApplication
@MapperScan(basePackages={"cn.xdl.ovls.course.dao"})
@ServletComponentScan
public class CourseBootApplication {

	public static void main(String[] args) {
		SpringApplication.run(CourseBootApplication.class, args);
	}

}
