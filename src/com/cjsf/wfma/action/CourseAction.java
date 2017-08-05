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
	private Course course = new Course();
	private Page page = new Page();//分页实体类
	private String actionName;//标记jsp分页中在点击上一页下一页首页尾页的时候请求的action是课程分页的action
	@Autowired
	private CourseService courseService;
	
	
	/**
	 * @category 根据课程编号查询课程详细信息
	 * @return
	 */
	public String DetailsCourseBYId(){
		course = courseService.DetailsCourseBYIdS(course);
		if(course!=null){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 导航栏中课程查询
	 * @return 返回课程列表视图或失败视图
	 */
	public String kcAction(){
		allCurse = courseService.getList(page);
		if(allCurse != null){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 查询轮播课程
	 * @return 返回主页视图或失败视图
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
	 * @return 返回成功或失败
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
	 * @return 返回课程列表视图或失败视图
	 */
	public String getListCourseAction(){
		allCurse = courseService.getList(page);
		if(allCurse != null){
			return "success";
		}else{
			return "error";
		}
	}
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
}
