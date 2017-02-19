package com.cjsf.wfma.bean;

/**
 * @author Administrator
 * @category 课程实体
 */
public class Course {

	private int courseid;//课程编号
	private String coursename;//课程名称
	private String courseimg;//课程图片
	private String courseexplain;//课程说明
	private String coursedirectory;//课程安排
	private String coursestate;//课程状态[轮播 非轮播]
	private String courseurl;//课程链接地址
	private int coursetypeid;//课程类别编号
	public Course(){}
	
	public Course(int courseid,String coursename,String courseimg,String courseexplain,String coursedirectory,String coursestate,String courseurl,int coursetypeid){
		this.courseid = courseid;
		this.coursename = coursename;
		this.courseimg = courseimg;
		this.courseexplain = courseexplain;
		this.coursedirectory = coursedirectory;
		this.coursestate = coursestate;
		this.courseurl = courseurl;
		this.coursetypeid = coursetypeid;
	}

	public int getCourseid() {
		return courseid;
	}

	public void setCourseid(int courseid) {
		this.courseid = courseid;
	}

	public String getCoursename() {
		return coursename;
	}

	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}

	public String getCourseimg() {
		return courseimg;
	}

	public void setCourseimgimg(String courseimg) {
		this.courseimg = courseimg;
	}

	public String getCourseexplain() {
		return courseexplain;
	}

	public void setCourseexplain(String courseexplain) {
		this.courseexplain = courseexplain;
	}

	public String getCoursedirectory() {
		return coursedirectory;
	}

	public void setCoursedirectory(String coursedirectory) {
		this.coursedirectory = coursedirectory;
	}

	public String getCoursestate() {
		return coursestate;
	}

	public void setCoursestate(String coursestate) {
		this.coursestate = coursestate;
	}

	public String getCourseurl() {
		return courseurl;
	}

	public void setCourseurl(String courseurl) {
		this.courseurl = courseurl;
	}

	public int getCoursetypeid() {
		return coursetypeid;
	}

	public void setCoursetypeid(int coursetypeid) {
		this.coursetypeid = coursetypeid;
	}

	@Override
	public String toString() {
		return "Course [courseid=" + courseid + ", coursename=" + coursename + ", courseimg=" + courseimg
				+ ", courseexplain=" + courseexplain + ", coursedirectory=" + coursedirectory + ", coursestate="
				+ coursestate + ", courseurl=" + courseurl +",coursetypeid="+coursetypeid+"]";
	}
	
}
