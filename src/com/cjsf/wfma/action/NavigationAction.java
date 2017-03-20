package com.cjsf.wfma.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Navigation;
import com.cjsf.wfma.service.NavigationService;
import com.cjsf.wfma.util.JsonOrBean;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;

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
	private List<Navigation> nav;
	private Navigation navi = new Navigation();
	//private Gson gson = new Gson();
	private JsonOrBean jb = new JsonOrBean();
	
	/**
	 * @category 处理后台查询导航信息的请求
	 * @return
	 */
	public String SearchNaviAction(){
		nav = NavigationService.SearchNaviS(navi);
		if(nav!=null){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 处理后台删除导航信息的请求
	 * @return
	 */
	public String RemoveNaviAction(){
		if(NavigationService.RemoveNaviS(navi)){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 处理分发后台修改导航信息的请求
	 * @return
	 */
	public String EditNaviAction(){
		if(NavigationService.EditNaviS(navi)){
			return "success";
		}else{
			return "error";
		}
		
	}
	
	/**
	 * @category 处理后台添加导航信息的请求
	 * @return
	 */
	public String addNaviAction(){
		if(NavigationService.AddNaivS(navi)){
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * @category 处理后台查看导航信息的请求 
	 * @return
	 */
	public String selectAllNaviAction(){
		nav = NavigationService.selectAllNaviS();
		//HashMap<String,Navigation> navJson = gson.fromJson(result, new TypeToken<HashMap>String, Navigation>() { }.getType())；
		//String navJson = jb.javaList2JsonList(nav);
		if(nav != null){
			return "success";
		}else{
			return "success";
		}
		
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
	public List<Navigation> getNav() {
		return nav;
	}
	public void setNav(List<Navigation> nav) {
		this.nav = nav;
	}
	public Navigation getNavi() {
		return navi;
	}
	public void setNavi(Navigation navi) {
		this.navi = navi;
	}
	
}
