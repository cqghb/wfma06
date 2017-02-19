package com.cjsf.wfma.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Dynamic;
import com.cjsf.wfma.dao.DynamicDao;
import com.cjsf.wfma.service.DynamicService;

/**
 * @author ws
 * @category 新闻信息数据库访问实现类
 */
@Repository("dynamicService")
public class DynamicServiceImpl implements DynamicService {

	@Autowired
	private DynamicDao dynamicDao;
	
	public DynamicDao getDynamicDao() {
		return dynamicDao;
	}
	public void setDynamicDao(DynamicDao dynamicDao) {
		this.dynamicDao = dynamicDao;
	}

	/***
	 * @category 首页新闻信息查询业务
	 * @return 返回部分信息数据
	 */
	@Override
	public List<Dynamic> selectDynamicListS() {
		return dynamicDao.selectDynamicListD();
	}

}
