package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Course;
import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.service.CourseService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 * @category 课程业务控制类
 */
@Controller("courseAction")
@Scope("prototype")
public class CourseAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Course> coursesList;//轮播课程
	private List<Course> allCurse;//所有课程、分页时保存课程
	private Course course;
	private Page page = new Page();//分页实体类
	private String actionName;//标记jsp分页中在点击上一页下一页首页尾页的时候请求的action是课程分页的action
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
	
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	
	public String getActionName() {
		return actionName;
	}
	public void setActionName(String actionName) {
		this.actionName = actionName;
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
	
	/**
	 * @category 分页查询
	 * @return
	 */
	public String getListCourseAction(){
		allCurse = courseService.getList(page);
		if(allCurse != null){
			return "success";
		}else{
			return "error";
		}
	}
	
}
