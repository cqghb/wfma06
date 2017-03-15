package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.WfInformation;
import com.cjsf.wfma.service.WfInformationService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author ws
 * @category 万府企业介绍信息视图模型控制类
 */
@Controller("wfInformationAction")
@Scope("prototype")
public class WfInformationAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Autowired
	private WfInformationService wfInformationService;
	private List<WfInformation> wfInformationList;
	private WfInformation wfInformation = new WfInformation();
	
	/**
	 * @category 后台点击查看万府信息跳转的页面
	 * @return 
	 */
	public String selectWFAction(){
		return "success";
	}
	/**
	 * @category 后台点击万府信息管理跳转的页面
	 * @return 
	 */
	public String wffmtAction(){
		return "success";
	}
	
	/**
	 * @category 首页导航"走进万府"请求的action，为了查询万府简介信息
	 * @return 返回成功或失败
	 */
	public String zjwfAction(){
		wfInformation = wfInformationService.selectWfInformationS();
		if(wfInformation != null){
			return "success";
		}else{
			return "error";
		}
	}
	
	
	/**
	 * @category 首页万府企业介绍信息查询
	 * @return 成功success|失败error
	 */
	public String selectWfInformationA(){
		wfInformation = wfInformationService.selectWfInformationS();
		if(wfInformation != null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public WfInformationService getWfInformationService() {
		return wfInformationService;
	}
	public void setWfInformationService(WfInformationService wfInformationService) {
		this.wfInformationService = wfInformationService;
	}
		
	public List<WfInformation> getWfInformationList() {
		return wfInformationList;
	}
	public void setWfInformationList(List<WfInformation> wfInformationList) {
		this.wfInformationList = wfInformationList;
	}
	
	public WfInformation getWfInformation() {
		return wfInformation;
	}
	public void setWfInformation(WfInformation wfInformation) {
		this.wfInformation = wfInformation;
	}
}
