package com.cjsf.wfma.action;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 * @author Administrator
 * @category 后台主页子页面加载路径
 */
@Controller("Ht")
@Scope("prototype")
public class HtAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	/**
	 * @category 设置后台底部加载的页面
	 * @return 
	 */
	public String buttonjspAction(){
		return "success";
	}
	/**
	 * @category 设置后台顶部加载的页面
	 * @return 
	 */
	public String topjspAction(){
		return "success";
	}
	/**
	 * @category 设置后台右边加载的页面
	 * @return 
	 */
	public String rightjspAction(){
		return "success";
	}
	/**
	 * @category 设置后台左边加载的页面
	 * @return 
	 */
	public String leftjspAction(){
		return "success";
	}
	/**
	 * @category 设置后台中间加载的页面
	 * @return 
	 */
	public String contentjspAction(){
		return "success";
	}
}
