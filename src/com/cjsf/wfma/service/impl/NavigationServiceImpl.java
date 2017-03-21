package com.cjsf.wfma.service.impl;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjsf.wfma.bean.Navigation;
import com.cjsf.wfma.dao.NavigationDao;
import com.cjsf.wfma.service.NavigationService;

/**
 * @author Administrator
 * 导航信息
 */
@Service("NavigationService")
public class NavigationServiceImpl implements NavigationService {

	@Autowired
	private NavigationDao NavigationDao;
	public void setNavigationDao(NavigationDao navigationDao) {
		NavigationDao = navigationDao;
	}
	/**
	 * 获取导航信息
	 */
	@Override
	public List<Navigation> wfmaService() {
		return NavigationDao.wfmaDao();
	}
	/**
	 * @category 查询所有导航信息
	 * @return 返回导航列表
	 */
	@Override
	public List<Navigation> selectAllNaviS(int page,int rows,Navigation navi) {
		HashMap<String,Object> params = new HashMap<String,Object>();
		params.put("page", (page-1)*rows);
		params.put("rows", rows);
		params.put("navi", navi);
		System.out.println("params"+params);
		return NavigationDao.selectAllNaviD(params);
	}
	/**
	 * @category 添加导航信息
	 * @param navi 导航对象
	 * @return 添加成功放回真反之返回假
	 */
	@Override
	public boolean AddNaivS(Navigation navi) {
		return NavigationDao.AddNaivD(navi);
	}
	
	/**
	 * @category 处理分发后台修改导航信息的请求
	 * @param navi
	 * @return
	 */
	@Override
	public boolean EditNaviS(Navigation navi) {
		return NavigationDao.EditNaviD(navi);
	}
	/**
	 * @category 处理后台删除导航信息的请求
	 * @return
	 */
	@Override
	public boolean RemoveNaviS(Navigation navi) {
		return NavigationDao.RemoveNaviD(navi);
	}
	/**
	 * @category 处理后台查询导航信息的请求
	 * @param navi
	 * @return
	 */
	@Override
	public List<Navigation> SearchNaviS(Navigation navi) {
		return NavigationDao.SearchNaviD(navi);
	}
	/**
	 * @category 根据条件返回符合条件的记录数
	 * @param navi
	 * @return
	 */
	@Override
	public int getNaviRowsS(Navigation navi) {
		return NavigationDao.getNaviRowsD(navi);
	}

}
