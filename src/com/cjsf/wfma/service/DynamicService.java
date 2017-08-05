package com.cjsf.wfma.service;

import java.util.List;

import com.cjsf.wfma.bean.Dynamic;
import com.cjsf.wfma.bean.Page;

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
	/**
	 * @category 新闻分页
	 * @param page 分页实体类
	 * @return 返回一个新闻数组
	 */
	public List<Dynamic> newListS(Page page);
	/**
	 * @category 查询新闻记录条数
	 * @return 返回新闻总条数
	 */
	public int getNewCountS();
	/**
	 * @category 根据新闻编号查询新闻详细信息
	 * @param dynamic
	 * @return  Dynamic
	 */
	public Dynamic DetailsDyS(Dynamic dynamic);
}
