package test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import cn.xdl.ovls.CourseBootApplication;
import cn.xdl.ovls.course.dao.CourseMapper;
import cn.xdl.ovls.course.entity.Course;

@RunWith(SpringRunner.class)
@SpringBootTest(classes={CourseBootApplication.class})
public class TestCourseDao {
	
	@Autowired
	private CourseMapper courseDao;
	
	@Test
	public void test1(){
		Course course = courseDao.selectByPrimaryKey(1);
		System.out.println(course.getName());
	}
	
}
