package test;

import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.boot.SpringApplication;
import org.springframework.context.ApplicationContext;

import cn.xdl.ovls.UserBootApplication;

public class TestDataSource {
	
	@Test
	public void test1() throws SQLException{
		ApplicationContext ac = 
			SpringApplication.run(UserBootApplication.class);
		
		DataSource ds = ac.getBean("dataSource",DataSource.class);
		System.out.println(ds);
		System.out.println(ds.getConnection());
	}
	
}
