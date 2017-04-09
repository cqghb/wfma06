package com.cjsf.wfma.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.bean.User;
import com.cjsf.wfma.dao.UserDao;
import com.cjsf.wfma.service.UserService;
import com.cjsf.wfma.util.SearchPageUtil;
import com.opensymphony.xwork2.ActionContext;

/**
 * @author Administrator
 * @category 用户业务逻辑处理接口
 * @version v1.0
 */
@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	private SearchPageUtil spu = new SearchPageUtil();
	
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
	
	/**
	 * @category 教练分页
	 * @param page分页实体类
	 * @return 返回一个教练数组
	 */
	@Override
	public List<User> jlDetailsS(Page page) {
		page.setRowTotal(userDao.getJLCountD());//获取教练数据总条数
		spu.getDataRows(page);//计算出总页数
		spu.getStartPage(page);//设置起始行
		ActionContext acKC = ActionContext.getContext();
		acKC.getSession().put("page", page);//将分页信息存入 值栈中
		return userDao.jlDetailsD(page);
	}
	
	/**
	 * @category 查询教练的总数 暂时不用
	 * @return 返回一个整型数字
	 */
	@Override
	public int getJLCountS() {
		return userDao.getJLCountD();
	}
	/**
	 * @category 学员分页
	 * @param page分页实体类
	 * @return 返回一个学员数组
	 */
	@Override
	public List<User> xyDetailsS(Page page) {
		page.setRowTotal(userDao.getXYCountD());//获取总的学员记录数
		spu.getDataRows(page);//获取总页面数
		spu.getStartPage(page);//获取起始行
		ActionContext acXY = ActionContext.getContext();
		acXY.getSession().put("page", page);//将分页信息存入值栈中
		return userDao.xyDetailsD(page);
	}
	/**
	 * @category 查询学员的总数 暂时不用
	 * @return 返回一个整型数字
	 */
	@Override
	public int getXYCountS() {
		return userDao.getXYCountD();
	}
	/**
	 * @category 根据提供的用户信息查询用户所有信息
	 * @param u 用户对象
	 * @return 返回一个用户的所有信息
	 */
	@Override
	public User adminifmS(User u) {
		return userDao.adminifmD(u);
	}
	
	/**
	 * @category 处理修改用户信息事务请求
	 * @param user 用户新的信息
	 * @return 真或者假
	 */
	@Override
	public boolean editUserS(User user) {
		return userDao.editUserD(user);
	}
	/**
	 * @category 根据用户类型查询所有学员
	 * @param string 用户类型
	 * @return 学员列表
	 */
	@Override
	public List<User> HtSelectAllStuS(User user) {
		return userDao.HtSelectAllStuD(user);
	}
	/**
	 * @category 修改学员信息
	 * @param user 新的学员信息
	 * @return
	 */
	@Override
	public boolean HtEditStuS(User user) {
		return userDao.HtEditStuD(user);
	}
	
	/**
	 * @category 添加学员信息
	 * @param user 学员信息参数
	 * @return 返回成功与失败
	 */
	@Override
	public boolean HtAddStuS(User user) {
		return userDao.HtAddStuD(user);
	}
	/**
	 * @category 删除学员
	 * @param user 学员编号信息
	 * @return
	 */
	@Override
	public boolean HtRemoveStuS(User user) {
		return userDao.HtRemoveStuD(user);
	}

}
