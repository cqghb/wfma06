package com.cjsf.wfma.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjsf.wfma.bean.User;
import com.cjsf.wfma.dao.UserDao;
import com.cjsf.wfma.service.UserService;

/**
 * @author Administrator
 * @category 用户业务逻辑处理接口
 * @version v1.0
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	/**
	 * @author Administrator
	 * @category 用户登录
	 * @param u
	 * @return User 
	 */
	@Override
	public User login(User u) {
		return userDao.login(u);
	}

	/**
	 * @category 导航测试
	 */
	@Override
	public User TestS() {
		return userDao.TestD();
	}

	/***
	 * @category 首页校长信息查询
	 */
	@Override
	public User selectPresidentS() {
		return userDao.selectPresidentD();
	}
	/**
	 * @category 查询前10名教练信息
	 * @return 返回教练集合
	 */
	@Override
	public List<User> selectJLS() {
		return userDao.selectJLD();
	}
	
	/**
	 * @category 查询最新加入的10名学员的信息
	 * @return 返回一个学员集合
	 */
	@Override
	public List<User> selectNewXYS() {
		return userDao.selectNewXYD();
	}

}
