package com.cjsf.wfma.service;

import com.cjsf.wfma.bean.Logo;

/**
 * @author Administrator
 * @category logo 数据处理接口
 * @version v1.0
 */
public interface LogoService {

	/**
	 * @author Administrator
	 * @category 数据处理接口
	 * @param naid 导航编号
	 * @return Logo 一张logo图像
	 */
	public Logo selectLogoService(int naid);
	/**
	 * @author Administrator
	 * @category 数据处理接口
	 * @return Logo 一张logo图像
	 */
	public Logo selectLogo();
}
