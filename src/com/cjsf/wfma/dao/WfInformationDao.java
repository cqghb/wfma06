package com.cjsf.wfma.dao;

import com.cjsf.wfma.bean.WfInformation;

/**
 * @author ws
 * @category 万府企业信息数据库访问接口
 */
public interface WfInformationDao {
	/**
	 * @category 查询首页显示的部分介绍信息
	 */
	public WfInformation selectWfInformationD();	
}
