package com.cjsf.wfma.dao;

import java.util.List;

import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.bean.User;

/**
 * @author Administrator
 * @version v1.0
 * @category 用户业务数据处理接口
 */
public interface UserDao {
	/**
	 * @category select user
	 */
	public User login(User u);
	/**
	 * @category 测试导航点击效果
	 * @return User
	 */
	public User TestD();
	/**
	 * @category 首页校长信息查询
	 */
	public User selectPresidentD();
	/***
	 * @category 首页查询校长和教练信息
	 * @return
	 */
	public List<Object> selectObjectD();
	
	/**
	 * @category 查询前10个教练信息
	 * @return 返回教练集合
	 */
	public List<User> selectJLD();
	/**
	 * @category 查询最后10名学员的信息
	 * @return 返回一个学员集合
	 */
	public List<User> selectNewXYD();
	/**
	 * @category 教练分页
	 * @param page分页实体类
	 * @return 返回一个教练数组
	 */
	public List<User> jlDetailsD(Page page);
	/**
	 * @category 查询教练的总数
	 * @return 返回一个整型数字
	 */
	public int getJLCountD();
	/**
	 * @category 学员分页
	 * @param page分页实体类
	 * @return 返回一个学员数组
	 */
	public List<User> xyDetailsD(Page page);
	/**
	 * @category 查询学员的总数
	 * @return 返回一个整型数字
	 */
	public int getXYCountD();
}
