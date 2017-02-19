package com.cjsf.wfma.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjsf.wfma.bean.WfInformation;
import com.cjsf.wfma.dao.WfInformationDao;
import com.cjsf.wfma.service.WfInformationService;

@Service("wfInformationService")
public class WfInformationServiceImpl implements WfInformationService {
	@Autowired
	private WfInformationDao wfInformationDao;
	
	public WfInformationDao getWfInformationDao() {
		return wfInformationDao;
	}

	public void setWfInformationDao(WfInformationDao wfInformationDao) {
		this.wfInformationDao = wfInformationDao;
	}
	
	/**
	 * @category 首页万府企业简介查询
	 * @return 返回6条信息
	 */
	@Override
	public WfInformation selectWfInformationS() {
		return wfInformationDao.selectWfInformationD();
	}

}
