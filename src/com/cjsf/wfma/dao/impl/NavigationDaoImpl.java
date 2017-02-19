package com.cjsf.wfma.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Navigation;
import com.cjsf.wfma.dao.NavigationDao;

/**
 * @author Administrator
 * 导航信息 与数据库的交互
 */
@Repository("NavigationDao")
public class NavigationDaoImpl extends SqlSessionDaoSupport implements NavigationDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	/**
	 * 获取导航信息
	 */
	@Override
	public List<Navigation> wfmaDao() {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.NavigationMapper.selectNavigation");
	}

}
