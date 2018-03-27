package cn.xdl.ovls.common.config;

import javax.sql.DataSource;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.alibaba.druid.pool.DruidDataSource;

@Configuration
public class DruidDataSourceConfig {

	@Bean("dataSource")
	@ConfigurationProperties(prefix="spring.datasource")
	public DataSource druid(){
		DruidDataSource ds = new DruidDataSource();
		return ds;
	}
	
}
