package com.cjsf.wfma.dao;

import java.util.List;

import com.cjsf.wfma.bean.Dynamic;

/**
 * @author Administrator
 * @category 新闻信息数据库访问接口
 */
public interface DynamicDao {

	/**
	 * @category 首页新闻信息查询
	 * @return 返回部分新闻信息
	 */
	public List<Dynamic> selectDynamicListD();
}
