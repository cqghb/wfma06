package com.cjsf.wfma.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Course;
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
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	/**
	 * @category 查询轮播课程
	 */
	@Override
	public List<Course> selectByCourseState() {		
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.CourseMapper.selectcourselb");
	}

}
