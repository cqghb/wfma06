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
	/**
	 * @category 根据提供的用户信息查询用户所有信息
	 * @param u 用户对象
	 * @return 返回一个用户的所有信息
	 */
	public User adminifmD(User u);
	/**
	 * @category 处理修改用户信息事务请求
	 * @param user 用户新的信息
	 * @return 真或者假
	 */
	public boolean editUserD(User user);
	/**
	 * @category 根据用户类型查询所有学员
	 * @param string 用户类型
	 * @return 学员列表
	 */
	public List<User> HtSelectAllStuD(User user);
	/**
	 * @category 修改学员信息
	 * @param user 新的学员信息
	 * @return
	 */
	public boolean HtEditStuD(User user);
	/**
	 * @category 添加学员信息
	 * @param user 学员信息参数
	 * @return 返回成功与失败
	 */
	public boolean HtAddStuD(User user);
	/**
	 * @category 删除学员
	 * @param user 学员编号信息
	 * @return
	 */
	public boolean HtRemoveStuD(User user);
	/**
	 * @category 用户注册
	 * @param user
	 * @return
	 * @author Administrator
	 * @time 2017/08/10
	 */
	public boolean registerD(User user);
}
