package com.cjsf.wfma.service;

import java.util.List;

import com.cjsf.wfma.bean.Course;
import com.cjsf.wfma.bean.Page;
/**
 * @author Administrator
 * @category 课程业务处理接口
 */
public interface CourseService {

	/**
	 * @category 根据课程状态查询课程
	 * @return 返回几门课程
	 */
	public List<Course> selectByCourseStateService();
	
	/**
	 * @category 查询所有课程
	 * @return 返回课程集合
	 */
	public List<Course> selectAllCourseS();
	
	/**
	 * @category 分页
	 * @param page 页面实体类
	 * @return
	 */
	public List<Course> getList(Page page);
	
	/**
	 * @category 获取数据总条数
	 * @return 返回数据总的条数
	 */
	public int getCount();
}
