package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.User;
import com.cjsf.wfma.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 * @category 用户登录控制类
 * @version v1.0
 */
@Controller("userAction")
@Scope("prototype")
public class UserAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private User user;//目前指定为校长
	private List<User> jl;//教练
	private List<User> newXY;//最新加入的10名学员信息
	@Autowired
	private UserService userService;
	/**
	 * @author Administrator
	 * @category 用户登录
	 * @return success 
	 */
	public String login(){
		user = userService.login(user);
		return "success";
	}
	/***
	 * 测试导航
	 * @return
	 */
	public String Test(){
		user = userService.TestS();
		return "success";
	}
	/**
	 * 查询校长信息
	 * @return
	 */
	public String selectPresident(){
		user = userService.selectPresidentS();//查询校长
		jl = userService.selectJLS();//查询前10名教练信息(首页显示用)
		newXY = userService.selectNewXYS();//查询最新加入的10名学员信息
		if(user!=null && jl!=null && newXY!=null){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 查询前10 名教练信息(这个方法暂时还不用)
	 * @return 成功或者失败
	 */
	public String selectJLAction(){
		jl = userService.selectJLS();
		if(jl!=null){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 查询最新加入的10名学员信息(此方法暂时不用)
	 * @return 成功或者失败
	 */
	public String selectNewXYAction(){
		newXY = userService.selectNewXYS();
		if(newXY!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public UserService getUserService() {
		return userService;
	}
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	public List<User> getJl() {
		return jl;
	}
	public void setJl(List<User> jl) {
		this.jl = jl;
	}
	public List<User> getNewXY() {
		return newXY;
	}
	public void setNewXY(List<User> newXY) {
		this.newXY = newXY;
	}
	
}
