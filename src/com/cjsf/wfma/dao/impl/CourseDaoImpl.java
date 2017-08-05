package com.cjsf.wfma.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Course;
import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.dao.CourseDao;

/**
 * @author Administrator
 * @category 课程数据与数据库交互类实现了CourseDao接口
 */
@Repository("courseDao")
public class CourseDaoImpl extends SqlSessionDaoSupport implements CourseDao {
	
	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	/**
	 * @category 查询轮播课程
	 */
	@Override
	public List<Course> selectByCourseState() {		
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.CourseMapper.selectcourselb");
	}
	
	/**
	 * @category 查询所有课程
	 * @return 返回课程集合
	 */
	@Override
	public List<Course> selectAllCourseD() {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.CourseMapper.selectAllCourseD");
	}
	/**
	 * @category 分页
	 * @return
	 */
	@Override
	public List<Course> getList(Page page) {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.CourseMapper.getList",page);
	}
	/**
	 * @category 根据条件获取总数
	 * @param course
	 * @return
	 */
	@Override
	public int getCount() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.CourseMapper.getCount");
	}
	/**
	 * @category 根据课程编号查询课程详细信息
	 * @return
	 */
	@Override
	public Course DetailsCourseBYIdD(Course course) {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.CourseMapper.DetailsCourseBYIdD", course);
	}

}
