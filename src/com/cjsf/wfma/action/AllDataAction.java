package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Navigation;
import com.cjsf.wfma.service.NavigationService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 * @category 控制类get首页数据
 */

@Controller("wfma")
@Scope("prototype")
public class AllDataAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private List<Navigation> navList;
	@Autowired
	private NavigationService NavigationService;
	
	/***
	 * @author ws
	 * @category 导航信息查询
	 * @return 成功调用轮播课程查询的action，失败到异常的视图
	 */
	public String navigationAction(){
		ActionContext ac = ActionContext.getContext();
		navList = NavigationService.wfmaService();
		ac.getSession().put("NAVList", navList);
		if(navList!=null){
			return "success";
		}else{
			return "error";
		}
	}
	
	/***
	 * @author ws
	 * @category 导航信息查询
	 * @return 返回首页中导航信息
	 */
	public String wfma(){
		ActionContext ac = ActionContext.getContext();
		navList = NavigationService.wfmaService();
		ac.getSession().put("NAVList", navList);
		return "success";
	}
	public List<Navigation> getNavList() {
		return navList;
	}
	public void setNavList(List<Navigation> navList) {
		this.navList = navList;
	}
	public NavigationService getNavigationService() {
		return NavigationService;
	}
	public void setNavigationService(NavigationService navigationService) {
		NavigationService = navigationService;
	}
	
}
