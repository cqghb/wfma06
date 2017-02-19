package com.cjsf.wfma.service;

import java.util.List;

import com.cjsf.wfma.bean.Course;

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
}
