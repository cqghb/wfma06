package com.cjsf.wfma.service.impl;

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

}
