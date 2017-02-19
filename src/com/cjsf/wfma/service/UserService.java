package com.cjsf.wfma.service;

import java.util.List;

import com.cjsf.wfma.bean.User;

/**
 * @author Administrator
 * @see 用户业务逻辑处理接口
 * @version v1.0
 */
public interface UserService {

	/**
	 * @see 用户登录
	 * @param u
	 * @return User
	 */
	public User login(User u);
	/***
	 * 导航测试
	 * @return
	 */
	public User TestS();
	/**
	 * 首页校长信息查询
	 * @return
	 */
	public User selectPresidentS();
	
	/**
	 * @category 查询前10名教练信息
	 * @return 返回教练集合
	 */
	public List<User> selectJLS();
	
	/**
	 * @category 查询最新加入的10名学员的信息
	 * @return 返回一个学员集合
	 */
	public List<User> selectNewXYS();
}
