package com.cjsf.wfma.dao.impl;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Logo;
import com.cjsf.wfma.dao.LogoDao;

/**
 * @author Administrator
 * @category logo信息与数据库的交互
 */
@Repository("logoDao")
public class LogoDaoImpl extends SqlSessionDaoSupport implements LogoDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		// TODO Auto-generated method stub
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	/***
	 * @author Administrator
	 * @category 根据导航编号查询网站logo
	 * @param naid 导航编号
	 */
	@Override
	public Logo selectLogoDao(int naid) {
		// TODO Auto-generated method stub
		System.out.println("dao  id"+naid);
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.LogoMapper.selectlogo", naid);
	}
	/***
	 * @author Administrator
	 * @category 查询网站logo
	 * @param naid 导航编号
	 */
	@Override
	public Logo selectLogo() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.LogoMapper.selectlogo");
	}

}
