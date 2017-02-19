package com.cjsf.wfma.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjsf.wfma.bean.Logo;
import com.cjsf.wfma.dao.LogoDao;
import com.cjsf.wfma.service.LogoService;

/**
 * @author Administrator
 * @category logo 逻辑处理类
 * @version v1.0
 */
@Service("logoService")
public class LogoServiceImpl implements LogoService {

	@Autowired
	private LogoDao logoDao;
	/**
	 * @category 根据导航编号获取 logo图片
	 */
	@Override
	public Logo selectLogoService(int naid) {
		return logoDao.selectLogoDao(naid);
	}

	public LogoDao getLogoDao() {
		return logoDao;
	}

	public void setLogoDao(LogoDao logoDao) {
		this.logoDao = logoDao;
	}
	/**
	 * @category 获取 logo图片
	 */
	@Override
	public Logo selectLogo() {
		return logoDao.selectLogo();
	}
}
