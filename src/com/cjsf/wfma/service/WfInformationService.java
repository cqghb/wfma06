package com.cjsf.wfma.service;


import com.cjsf.wfma.bean.WfInformation;

/**
 * @author ws
 * @category 万府企业介绍信息查询业务处理接口
 */
public interface WfInformationService {

	/**
	 * @category 首页万府企业简介查询
	 * @return 返回6条信息
	 */
	public WfInformation selectWfInformationS();
}
