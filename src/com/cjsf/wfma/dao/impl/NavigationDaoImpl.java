package com.cjsf.wfma.dao.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cjsf.wfma.bean.Navigation;
import com.cjsf.wfma.dao.NavigationDao;

/**
 * @author Administrator
 * 导航信息 与数据库的交互
 */
@Repository("NavigationDao")
public class NavigationDaoImpl extends SqlSessionDaoSupport implements NavigationDao {

	@Autowired
	@Override
	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		super.setSqlSessionFactory(sqlSessionFactory);
	}
	/**
	 * 获取导航信息
	 */
	@Override
	public List<Navigation> wfmaDao() {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.NavigationMapper.selectNavigation");
	}
	/**
	 * @category 查询所有导航信息
	 * @return 返回导航列表
	 */
	@Override
	public List<Navigation> selectAllNaviD() {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.NavigationMapper.selectAllNaviD");
	}
	/**
	 * @category 添加导航信息
	 * @param navi 导航对象
	 * @return 添加成功放回真反之返回假
	 */
	@Override
	public boolean AddNaivD(Navigation navi) {
		int i = this.getSqlSession().insert("com.cjsf.wfma.bean.mappingxml.NavigationMapper.AddNaivD",navi);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * @category 处理分发后台修改导航信息的请求
	 * @param navi
	 * @return
	 */
	@Override
	public boolean EditNaviD(Navigation navi) {
		int i = this.getSqlSession().update("com.cjsf.wfma.bean.mappingxml.NavigationMapper.EditNaviD", navi);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * @category 处理后台删除导航信息的请求
	 * @return
	 */
	@Override
	public boolean RemoveNaviD(Navigation navi) {
		int i = this.getSqlSession().delete("com.cjsf.wfma.bean.mappingxml.NavigationMapper.RemoveNaviD", navi);
		if(i>0){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * @category 处理后台查询导航信息的请求
	 * @param navi
	 * @return
	 */
	@Override
	public List<Navigation> SearchNaviD(Navigation navi) {
		return this.getSqlSession().selectList("com.cjsf.wfma.bean.mappingxml.NavigationMapper.SearchNaviD",navi);
	}

}
