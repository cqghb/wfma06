package com.cjsf.wfma.action;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.bean.User;
import com.cjsf.wfma.service.UserService;
//import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionContext;
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
	private User user = new User();//目前指定为校长
	private List<User> jl;//教练
	private List<User> students;//学生
	private List<User> newXY;//最新加入的10名学员信息
	private Page page = new Page();
	private String actionName;//标记jsp分页中在点击上一页下一页首页尾页的时候请求的action是分页的action
	private User userHT;//用户查询个人信息保存地方
	private ActionContext ac = ActionContext.getContext();
	@Autowired
	private UserService userService;
	
	
	/**
	 * @category 处理修改用户信息事务请求
	 * @return 真或者假
	 */
	public String EditUserAction(){
		System.out.println("usereidtusereidtusereidt---------------");
		if(userService.editUserS(user)){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 点击查看个人(管理员)信息跳转的视图
	 * @return
	 */
	public String adminifmAction(){
		User u = (User) ServletActionContext.getRequest().getSession().getAttribute("user");
		System.out.println("从session中取得用户信息"+u);
		userHT = userService.adminifmS(u);
		if(userHT!=null){
			return "success";
		}else{
			return "success";
		}
	}
	/**
	 * @category 点击个人(管理员)信息管理跳转的视图
	 * @return
	 */
	public String admininfManAction(){
		
		return "success";
	}
	/**
	 * @category 点击查看所有教练跳转的视图
	 * @return
	 */
	public String htSelectAllTeaAction(){
		return "success";
	}
	
	/**
	 * @category 点击教练管理跳转的视图 
	 * @return
	 */
	public String teacherManAction(){
		return "success";
	}
	
	/**
	 * @category 点击查看所有学员跳转的视图 
	 * @return
	 */
	public String HtSelectAllStuAction(){
		students = userService.HtSelectAllStuS(user);
		if(students!=null){
			return "success";
		}else{
			return "error";
		}
		
	}
	/**
	 * @category 处理添加学员的请求 
	 * @return
	 */
	public String HtAddStuAction(){
		if(userService.HtAddStuS(user)){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 处理修改学员的请求 
	 * @return
	 * @throws ParseException 
	 */
	public String HtEditStuAction() throws ParseException{
		if(userService.HtEditStuS(user)){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 处理删除学员的请求 
	 * @return
	 */
	public String HtRemoveStuAction(){
		if(userService.HtRemoveStuS(user)){
			return "success";
		}else{
			return "error";
		}
		
	}
	/**
	 * @category 处理查询学员的请求 
	 * @return
	 */
	public String HtSearchStuAction(){
		return "success";
	}
	/**
	 * @category 点击学员管理跳转的视图
	 * @return
	 */
	public String userManAction(){
		return "success";
	}
	
	/**
	 * @category 这是导航“教练”要查询的教练信息
	 * @return 返回教练列表视图或者异常视图
	 */
	public String jlAction(){
		jl = userService.jlDetailsS(page);
		if(jl!=null){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 这是在“走进万府”要查询的校长信息
	 * @return 返回成功或失败
	 */
	public String zjwfXZInfomationAction(){
		user = userService.selectPresidentS();
		if(user!=null){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 这是在“走进万府”要查询的教练信息
	 * @return 返回成功或失败
	 */
	public String zjwfJLlistAction(){
		jl = userService.selectJLS();
		if(jl!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	/**
	 * @category 新学员分页
	 * @return 返回成功或失败
	 */
	public String xyDetailsAction(){
		newXY = userService.xyDetailsS(page);
		if(newXY!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	/**
	 * @category 教练分页
	 * @return 返回成功或失败
	 */
	public String jlDetailsAction(){
		jl = userService.jlDetailsS(page);
		if(jl!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	/**
	 * @author Administrator
	 * @category 用户登录
	 * @return success 
	 */
	public String login(){
		System.out.println(user);
		//Gson gson = new Gson();
		if(user.getType().equals("管理员") || user.getType()=="管理员"){//管理员登录
			user = userService.login(user);
			//HashMap<String, User> booksMap = gson.fromJson(result, new TypeToken<HashMap>String, User>() { }.getType());
			//String U = gson.toJson(user);
			if(user != null){
				ac.getSession().put("user", user);
				return "admin_success";
			}else{
				return "admin_error";
			}
		}else if(user.getType().equals("教练") || user.getType()=="教练"){//教练登录
			user = userService.login(user);
			if(user != null){
				ac.getSession().put("user", user);
				return "teacher_success";
			}else{
				return "teacher_error";
			}
		}else if(user.getType().equals("学员") || user.getType()=="学员"){//学员登录
			user = userService.login(user);
			if(user != null){
				ac.getSession().put("user", user);
				return "student_success";
			}else{
				return "student_error";
			}
		}else{//登录失败
			return "error";
		}
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

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getActionName() {
		return actionName;
	}

	public void setActionName(String actionName) {
		this.actionName = actionName;
	}
	public User getUserHT() {
		return userHT;
	}
	public void setUserHT(User userHT) {
		this.userHT = userHT;
	}
	public List<User> getStudents() {
		return students;
	}
	public void setStudents(List<User> students) {
		this.students = students;
	}
	
}
