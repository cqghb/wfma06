package com.cjsf.wfma.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjsf.wfma.bean.Course;
import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.dao.CourseDao;
import com.cjsf.wfma.service.CourseService;
import com.cjsf.wfma.util.SearchPageUtil;
import com.opensymphony.xwork2.ActionContext;

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

	/**
	 * @category 根据条件获取
	 * @param course 课程实体类
	 * @param page 页面实体类
	 * @return
	 */
	@Override
	public List<Course> getList(Page page) {
		SearchPageUtil spu = new SearchPageUtil();
		page.setRowTotal(courseDao.getCount());//获取课程表中总的数据条数
		spu.getDataRows(page);//计算出总的页数
		spu.getStartPage(page);//设置起始行
		//将页面信息存入值栈中
		ActionContext acPage = ActionContext.getContext();
		acPage.getSession().put("page", page);
		return courseDao.getList(page);
	}

	/**
	 * @category 根据条件获取总数
	 * @param course 课程实体类
	 * @return
	 */
	@Override
	public int getCount() {
		return courseDao.getCount();
	}

}
