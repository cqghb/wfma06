package com.cjsf.wfma.dao;

import java.util.List;

import com.cjsf.wfma.bean.Course;

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
}
