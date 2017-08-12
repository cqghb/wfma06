package com.cjsf.wfma.service;

import java.util.List;

import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.bean.User;

/**
 * @author Administrator
 * @see 用户业务逻辑处理接口
 * @version v1.0
 */
public interface UserService {

	/**
	 * @category 用户登录
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
	 * @category 首页校长信息查询
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
	/**
	 * @category 教练分页
	 * @param page分页实体类
	 * @return 返回一个教练数组
	 */
	public List<User> jlDetailsS(Page page);
	/**
	 * @category 查询教练的总数
	 * @return 返回一个整型数字
	 */
	public int getJLCountS();
	/**
	 * @category 学员分页
	 * @param page分页实体类
	 * @return 返回一个学员数组
	 */
	public List<User> xyDetailsS(Page page);
	/**
	 * @category 查询学员的总数
	 * @return 返回一个整型数字
	 */
	public int getXYCountS();
	/**
	 * @category 根据提供的用户信息查询用户所有信息
	 * @param u 用户对象
	 * @return 返回一个用户的所有信息
	 */
	public User adminifmS(User u);
	/**
	 * @category 处理修改用户信息事务请求
	 * @param user 用户新的信息
	 * @return 真或者假
	 */
	public boolean editUserS(User user);
	
	/**
	 * @category 根据用户类型查询所有学员
	 * @param string 用户类型
	 * @return 学员列表
	 */
	public List<User> HtSelectAllStuS(User user);
	/**
	 * @category 修改学员信息
	 * @param user 新的学员信息
	 * @return
	 */
	public boolean HtEditStuS(User user);
	/**
	 * @category 添加学员信息
	 * @param user 学员信息参数
	 * @return 返回成功与失败
	 */
	public boolean HtAddStuS(User user);
	/**
	 * @category 删除学员
	 * @param user 学员编号信息
	 * @return
	 */
	public boolean HtRemoveStuS(User user);
	/**
	 * @category 用户注册
	 * @param user
	 * @return
	 * @author Administrator
	 * @time 2017/08/10
	 */
	public boolean registerS(User user);
}
