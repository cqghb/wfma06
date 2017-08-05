package com.cjsf.wfma.dao;

import java.util.List;

import com.cjsf.wfma.bean.Dynamic;
import com.cjsf.wfma.bean.Page;

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
	
	/**
	 * @category 新闻分页
	 * @param page 分页实体类
	 * @return 返回一个新闻数组
	 */
	public List<Dynamic> newListD(Page page);
	/**
	 * @category 查询新闻记录条数
	 * @return 返回新闻总条数
	 */
	public int getNewCount();
	
	/**
	 * @category 根据新闻编号查询新闻详细信息
	 * @param dynamic
	 * @return  Dynamic
	 */
	public Dynamic DetailsDyD(Dynamic dynamic);
}
