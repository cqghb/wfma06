package com.cjsf.wfma.dao;

import java.util.List;

import com.cjsf.wfma.bean.Course;
import com.cjsf.wfma.bean.Page;

/**
 * @author Administrator
 * @category 课程数据库交互接口类
 */
public interface CourseDao {

	/**
	 * @category 查询轮播的课程 一个隐含条件coursestate='轮播'
	 * @return
	 */
	public List<Course> selectByCourseState();
	/**
	 * @category 查询所有课程
	 * @return 返回课程集合
	 */
	public List<Course> selectAllCourseD();
	
	/**
	 * @category 分页
	 * @return
	 */
	public List<Course> getList(Page page);
	
	/**
	 * @category 获取数据总条数
	 * @return 返回数据总的条数
	 */
	public int getCount();
	/**
	 * @category 根据课程编号查询课程详细信息
	 * @return
	 */
	public Course DetailsCourseBYIdD(Course course);
}
