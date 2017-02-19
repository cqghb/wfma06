package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Course;
import com.cjsf.wfma.service.CourseService;

/**
 * @author Administrator
 * @category 课程业务控制类
 */
@Controller("courseAction")
@Scope("prototype")
public class CourseAction {

	private List<Course> coursesList; 
	@Autowired
	private CourseService courseService;
	
	public List<Course> getCoursesList() {
		return coursesList;
	}
	public void setCoursesList(List<Course> coursesList) {
		this.coursesList = coursesList;
	}
	public CourseService getCourseService() {
		return courseService;
	}
	public void setCourseService(CourseService courseService) {
		this.courseService = courseService;
	}
	/**
	 * @category 查询轮播课程
	 * @return
	 */
	public String selectByCourseStateAction(){
		coursesList = courseService.selectByCourseStateService();
		if(coursesList != null){
			return "success";
		}else{
			return "error";
		}
	}
	
	
}
