package com.cjsf.wfma.dao;

import java.util.List;

import com.cjsf.wfma.bean.Navigation;

/**
 * @author Administrator
 * 导航信息获取 接口
 */
public interface NavigationDao {
	//获取导航信息
	public List<Navigation> wfmaDao();
	/**
	 * @category 查询所有导航信息
	 * @return 返回导航列表
	 */
	public List<Navigation> selectAllNaviD();
	/**
	 * @category 添加导航信息
	 * @param navi 导航对象
	 * @return 添加成功放回真反之返回假
	 */
	public boolean AddNaivD(Navigation navi);
	/**
	 * @category 处理分发后台修改导航信息的请求
	 * @param navi
	 * @return
	 */
	public boolean EditNaviD(Navigation navi);
	/**
	 * @category 处理后台删除导航信息的请求
	 * @return
	 */
	public boolean RemoveNaviD(Navigation navi);
	/**
	 * @category 处理后台查询导航信息的请求
	 * @param navi
	 * @return
	 */
	public List<Navigation> SearchNaviD(Navigation navi);

}
