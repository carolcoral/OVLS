package test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import cn.xdl.ovls.VideoBootApplication;
import cn.xdl.ovls.video.dao.ChapterMapper;
import cn.xdl.ovls.video.dao.VideoMapper;
import cn.xdl.ovls.video.entity.Chapter;
import cn.xdl.ovls.video.entity.Video;
import cn.xdl.ovls.video.service.VideoService;

@RunWith(SpringRunner.class)
@SpringBootTest(classes=VideoBootApplication.class)
public class TestVideo {

//	@Autowired
//	private ChapterMapper chapterDao;
//	@Autowired
//	private VideoMapper videoDao;
	
	@Autowired
	private VideoService videoService;
	
//	@Test
//	public void test1(){
//		List<Chapter> chapters = chapterDao.selectByCourseId(1);
//		for(Chapter c:chapters){
//			System.out.println("章节："+c.getName());
//			//查询章节视频
//			List<Video> videos = videoDao.selectByChapterId(c.getId());
//			for(Video v:videos){
//				System.out.println("    视频:"+v.getName());
//			}
//		}
//	}
	
	@Test
	public void test2(){
		List<Chapter> chapters = videoService.loadCourseVideos(1);
		for(Chapter c:chapters){
			System.out.println("章节:"+c.getName());
			for(Video v:c.getVideos()){
				System.out.println("    视频:"+v.getName());
			}
		}
	}
	
}
