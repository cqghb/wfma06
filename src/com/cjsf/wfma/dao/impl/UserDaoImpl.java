package com.cjsf.wfma.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.User;
import com.cjsf.wfma.dao.UserDao;

/**
 * @author Administrator
 * @version 1.0
 * @category用户业务数据处理实现类
 */
@Repository("userDao")
public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {
	
	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	/**
	 * @author Administrator
	 * @param u
	 * @return User
	 * @category 用户登录
	 */
	@Override
	public User login(User u) {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.UserMapper.login", u);
	}
	/**
	 * @category测试导航点击效果
	 */
	@Override
	public User TestD() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.UserMapper.TestD");
	}
	/**
	 * @category首页校长信息查询
	 */
	@Override
	public User selectPresidentD() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.UserMapper.selectPresidentD");
	}
	/***
	 * @category首页查询校长和教练信息
	 */
	@Override
	public List<Object> selectObjectD() {
		return this.getSqlSession().selectList("");
	}
	/**
	 * @category 查询前10个教练信息
	 * @return 返回教练集合
	 */
	@Override
	public List<User> selectJLD() {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.UserMapper.selectJL");
	}
	/**
	 * @category 查询最后10名学员的信息
	 * @return 返回一个学员集合
	 */
	@Override
	public List<User> selectNewXYD() {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.UserMapper.selectNewXYD");
	}

}
