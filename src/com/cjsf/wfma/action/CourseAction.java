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

	private List<Course> coursesList;//轮播课程
	private List<Course> allCurse;//所有课程
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
	
	public List<Course> getAllCurse() {
		return allCurse;
	}
	public void setAllCurse(List<Course> allCurse) {
		this.allCurse = allCurse;
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
	/**
	 * @category 查询所有的课程
	 * @return 返回课程集合
	 */
	public String selectAllCourseAction(){
		allCurse = courseService.selectAllCourseS();
		if(allCurse!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
}
