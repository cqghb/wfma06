package com.cjsf.wfma.dao.impl;


import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.dao.WfInformationDao;
import com.cjsf.wfma.bean.WfInformation;
/**
 * @author ws
 * @category 万府企业信息数据库访实现类
 */
@Repository("wfInformationDao")
public class WfInformationImpl extends SqlSessionDaoSupport implements WfInformationDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}

	/**
	 * @category 查询首页显示的部分介绍信息
	 */
	@Override
	public WfInformation selectWfInformationD() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.WfInformationMapper.selectWfInformation");
	}
	
}
