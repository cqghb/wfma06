package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Navigation;
import com.cjsf.wfma.service.NavigationService;
import com.opensymphony.xwork2.ActionContext;

/**
 * @author Administrator
 * @category 控制类get首页数据
 * 
 */

@Controller("wfma")
@Scope("prototype")
public class AllDataAction {

	private List<Navigation> navList;
	@Autowired
	private NavigationService NavigationService;
	
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
