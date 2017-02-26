package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Dynamic;
import com.cjsf.wfma.service.DynamicService;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author ws
 * @category 新闻信息数据模型视图控制类
 */
@Controller("dynamicAction")
@Scope("prototype")
public class DynamicAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	@Autowired
	private DynamicService dynamicService;
	private List<Dynamic> dynamicList;
	public DynamicService getDynamicService() {
		return dynamicService;
	}
	public void setDynamicService(DynamicService dynamicService) {
		this.dynamicService = dynamicService;
	}
	
	public List<Dynamic> getDynamicList() {
		return dynamicList;
	}
	public void setDynamicList(List<Dynamic> dynamicList) {
		this.dynamicList = dynamicList;
	}
	/***
	 * @category 首页新闻信息查询
	 * @return 成功success|失败error
	 */
	public String selectDynamicListA(){
		dynamicList = dynamicService.selectDynamicListS();
		if(dynamicList != null){
			return "success";
		}else{
			return "error";
		}
	}
}
