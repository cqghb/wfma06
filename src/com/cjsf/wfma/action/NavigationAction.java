package com.cjsf.wfma.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.service.NavigationService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 * @category 首页导航控制层
 */
@Controller("navigation")
@Scope("prototype")
public class NavigationAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Autowired
	private NavigationService NavigationService;
	
	/**
	 * @category 处理后台查看导航信息的请求 
	 * @return
	 */
	public String selectAllNaviAction(){
		return "success";
	}
	/**
	 * @category 处理后台导航管理的请求
	 * @return
	 */
	public String naviManAction(){
		return "success";
	}
	
	public NavigationService getNavigationService() {
		return NavigationService;
	}
	public void setNavigationService(NavigationService navigationService) {
		NavigationService = navigationService;
	}
	
	

}
