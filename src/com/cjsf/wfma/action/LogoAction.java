package com.cjsf.wfma.action;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Logo;
import com.cjsf.wfma.service.LogoService;
import com.opensymphony.xwork2.ActionSupport;


/**
 * @author Administrator
 * @category logo 模型视图控制类
 * @version v1.0
 */
@Controller("logoAction")
@Scope("prototype")
public class LogoAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Logo logo;
	private int naid;
	@Autowired
	private LogoService logoService;

	/**
	 * @author Administrator
	 * @category 根据导航编号获取logo图片
	 * @param naid 导航编号
	 * @return
	 */
	public String selectLogoByNaId(){
		
		System.out.println("导航编号为:"+naid);
		if(naid==0){
			naid = 1;
		}
		logo = logoService.selectLogoService(naid);
		if(logo != null){
			return "success";
		}else{
			return "error";
		}
	}
	/***
	 * @author Administrator
	 * @category 查询logo图片 暂时不用
	 * @return
	 */
	public String selectLogo(){
		logo = logoService.selectLogo();
		if(logo != null){
			return "success";
		}else{
			return "error";
		}
	}
	
	public Logo getLogo() {
		return logo;
	}

	public void setLogo(Logo logo) {
		this.logo = logo;
	}

	public int getNaid() {
		return naid;
	}
	public void setNaid(int naid) {
		this.naid = naid;
	}
	
	public LogoService getLogoService() {
		return logoService;
	}

	public void setLogoService(LogoService logoService) {
		this.logoService = logoService;
	}
}
