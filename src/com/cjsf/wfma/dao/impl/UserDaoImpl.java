package com.cjsf.wfma.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.bean.User;
import com.cjsf.wfma.dao.UserDao;

/**
 * @author Administrator
 * @version 1.0
 * @category 用户业务数据处理实现类
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
	 * @category 首页校长信息查询
	 */
	@Override
	public User selectPresidentD() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.UserMapper.selectPresidentD");
	}
	/***
	 * @category 首页查询校长和教练信息
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
	/**
	 * @category 教练分页
	 * @param page分页实体类
	 * @return 返回一个教练数组
	 */
	@Override
	public List<User> jlDetailsD(Page page) {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.UserMapper.jlDetailsD", page);
	}
	/**
	 * @category 查询教练的总数
	 * @return 返回一个整型数字
	 */
	@Override
	public int getJLCountD() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.UserMapper.getJLCountD");
	}
	/**
	 * @category 学员分页
	 * @param page分页实体类
	 * @return 返回一个学员数组
	 */
	@Override
	public List<User> xyDetailsD(Page page) {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.UserMapper.xyDetailsD", page);
	}
	/**
	 * @category 查询学员的总数
	 * @return 返回一个整型数字
	 */
	@Override
	public int getXYCountD() {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.UserMapper.getXYCountD");
	}
	/**
	 * @category 根据提供的用户信息查询用户所有信息
	 * @param u 用户对象
	 * @return 返回一个用户的所有信息
	 */
	@Override
	public User adminifmD(User u) {
		return this.getSqlSession().selectOne("com.cjsf.wfma.bean.mappingxml.UserMapper.adminifmD", u);
	}
	/**
	 * @category 处理修改用户信息事务请求
	 * @param user 用户新的信息
	 * @return 真或者假
	 */
	@Override
	public boolean editUserD(User user) {
		int i = this.getSqlSession().update("com.cjsf.wfma.bean.mappingxml.UserMapper.editUserD", user);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * @category 根据用户类型查询所有学员
	 * @param string 用户类型
	 * @return 学员列表
	 */
	@Override
	public List<User> HtSelectAllStuD(User user) {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.UserMapper.HtSelectAllStuD", user);
	}
	/**
	 * @category 修改学员信息
	 * @param user 新的学员信息
	 * @return
	 */
	@Override
	public boolean HtEditStuD(User user) {
		int i = this.getSqlSession().update("com.cjsf.wfma.bean.mappingxml.UserMapper.editUserD", user);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * @category 添加学员信息
	 * @param user 学员信息参数
	 * @return 返回成功与失败
	 */
	@Override
	public boolean HtAddStuD(User user) {
		int i = this.getSqlSession().insert("com.cjsf.wfma.bean.mappingxml.UserMapper.HtAddStuD", user);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * @category 删除学员
	 * @param user 学员编号信息
	 * @return
	 */
	@Override
	public boolean HtRemoveStuD(User user) {
		int i = this.getSqlSession().delete("com.cjsf.wfma.bean.mappingxml.UserMapper.HtRemoveStuD", user);
		if(i>0){
			return true;
		}else{
			return false;
		}
		
	}

}
