package com.cjsf.wfma.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Dynamic;
import com.cjsf.wfma.bean.Page;
import com.cjsf.wfma.dao.DynamicDao;
import com.cjsf.wfma.service.DynamicService;
import com.cjsf.wfma.util.SearchPageUtil;
import com.opensymphony.xwork2.ActionContext;

/**
 * @author ws
 * @category 新闻信息数据库访问实现类
 */
@Repository("dynamicService")
public class DynamicServiceImpl implements DynamicService {

	@Autowired
	private DynamicDao dynamicDao;
	
	private SearchPageUtil spu = new SearchPageUtil();
	
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
	/**
	 * @category 新闻分页
	 * @param page 分页实体类
	 * @return 返回一个新闻数组
	 */
	@Override
	public List<Dynamic> newListS(Page page) {
		page.setRowTotal(dynamicDao.getNewCount());//获取新闻总的记录数
		spu.getDataRows(page);//获取新闻总页数
		spu.getStartPage(page);//设置起始行
		ActionContext acNew = ActionContext.getContext();
		acNew.getSession().put("page", page);//将新闻分页信息存入值栈中
		return dynamicDao.newListD(page);
	}
	/**
	 * @category 查询新闻记录条数 暂不用
	 * @return 返回新闻总条数
	 */
	@Override
	public int getNewCountS() {
		return dynamicDao.getNewCount();
	}

}
