package com.cjsf.wfma.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjsf.wfma.bean.Course;
import com.cjsf.wfma.dao.CourseDao;
import com.cjsf.wfma.service.CourseService;

/**
 * @author Administrator
 * @category 课程业务处理类，实现了CourseService接口
 */
@Service("courseService")
public class CourseServiceImpl implements CourseService {

	@Autowired
	private CourseDao courseDao;
	
	public CourseDao getCourseDao() {
		return courseDao;
	}


	public void setCourseDao(CourseDao courseDao) {
		this.courseDao = courseDao;
	}

	/**
	 * @category 根据课程状态查询轮播课程
	 */
	@Override
	public List<Course> selectByCourseStateService() {
		return courseDao.selectByCourseState();
	}

	/**
	 * @category 查询所有课程
	 * @return 返回课程集合
	 */
	@Override
	public List<Course> selectAllCourseS() {
		return courseDao.selectAllCourseD();
	}

}
