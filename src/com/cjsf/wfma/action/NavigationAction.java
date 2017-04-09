package com.cjsf.wfma.action;

//import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.cjsf.wfma.bean.Navigation;
import com.cjsf.wfma.service.NavigationService;
import com.cjsf.wfma.util.JsonOrBean;
import com.google.gson.Gson;
/*import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.google.gson.reflect.TypeToken;*/
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
	private List<Navigation> nav;
	private Navigation navi = new Navigation();
	//private Gson gson = new Gson();
	//private JsonOrBean jb = new JsonOrBean();
	//private boolean t = false;//表示是否深入执行代码，如果这个有值，就表示是新增，修改数据执行之后为了不报404而特指定的action,没有其他作用
	private String json;//初始化一个保存json数据的变量
	private int pageNumber=1;//当前页
	private int pageSize=3;//每页显示的行数
	
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
		//t = true;
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
		//t = true;
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
		System.out.println("---------------page"+pageNumber+"---------------------------rows"+pageSize);
		nav = NavigationService.selectAllNaviS(pageNumber,pageSize,navi);
		Map<String,Object> map = new HashMap<String,Object>();
		System.out.println("===================================="+NavigationService.getNaviRowsS(navi));
		map.put("total", NavigationService.getNaviRowsS(navi));
		map.put("rows", nav);
		Gson gson = new Gson();
		json = gson.toJson(map);
		System.out.println(json);
		//JsonOrBean.getList(json);
		//JsonObject jsonObject =new JsonParser().parse(json).getAsJsonObject();
		//System.out.println(jsonObject);
		if(nav != null){
			return "success";
		}else{
			return "error";
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
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getJson() {
		return json;
	}
	public void setJson(String json) {
		this.json = json;
	}
}
