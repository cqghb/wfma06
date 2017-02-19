package com.cjsf.wfma.dao;

import com.cjsf.wfma.bean.Logo;

/**
 * @author Administrator
 * @version v1.0
 * @see 用户业务数据处理接口
 */
public interface LogoDao {
	
	/**
	 * @author Administrator
	 * @category 根据导航编号查询logo
	 * @param naid
	 * @return
	 */
	public Logo selectLogoDao(int naid);
	/**
	 * @author Administrator
	 * @category logo查询
	 * @return
	 */
	public Logo selectLogo();
}
