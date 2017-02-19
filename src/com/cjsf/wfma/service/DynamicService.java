package com.cjsf.wfma.service;

import java.util.List;

import com.cjsf.wfma.bean.Dynamic;

/**
 * @author ws
 * @category 新闻信息业务逻辑接口
 */
public interface DynamicService {

	/***
	 * @category 首页新闻信息查询业务
	 * @return 返回部分信息数据
	 */
	public List<Dynamic> selectDynamicListS();
}
