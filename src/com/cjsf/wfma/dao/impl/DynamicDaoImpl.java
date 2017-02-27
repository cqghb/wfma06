package com.cjsf.wfma.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Dynamic;
import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.dao.DynamicDao;

/**
 * @author ws
 * @category 新闻信息数据库访问实现类
 */
@Repository("dynamicDao")
public class DynamicDaoImpl extends SqlSessionDaoSupport implements DynamicDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	
	/***
	 * @category 首页新闻信息查询
	 * @return 返回部分新闻信息
	 */
	@Override
	public List<Dynamic> selectDynamicListD() {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.DynamicMapper.selectDynamicListD");
	}
	/**
	 * @category 新闻分页
	 * @param page 分页实体类
	 * @return 返回一个新闻数组
	 */
	@Override
	public List<Dynamic> newListD(Page page) {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.DynamicMapper.newListD", page);
	}
	/**
	 * @category 查询新闻记录条数
	 * @return 返回新闻总条数
	 */
	@Override
	public int getNewCount() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.DynamicMapper.getNewCount");
	}

}
