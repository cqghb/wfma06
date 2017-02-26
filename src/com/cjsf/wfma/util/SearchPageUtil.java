package com.cjsf.wfma.util;

import com.cjsf.wfma.bean.Page;

/**
 * @category 分页工具类
 * @author Administrator
 */
public class SearchPageUtil {
	
	/**
	 * @category 计算出总页数
	 * @param page
	 * @return
	 */
	public int getDataRows(Page page){
		int ym = 0;//数据总页码
		if (page.getRowTotal() % page.getPageSize() == 0) {
			ym = page.getRowTotal() / page.getPageSize();
			page.setPageTotal(ym);
        } else {
        	ym = page.getRowTotal() / page.getPageSize() + 1;
			page.setPageTotal(ym);
        }
		return page.getPageTotal();
	}
	/**
	 * @category 处理页码临界值问题
	 * @param page
	 */
	public void bj(Page page){
		//如果点击上一页，上一页页码为1，就设置当前页为最后一页
		if(page.getPageIndex() == 1){
			page.setPageIndex(page.getPageTotal());
		}
		//如果点击下一页，下一页页码大于总页码，设置当前页为第一页
		if(page.getPageIndex() > page.getPageTotal()){
			page.setPageIndex(1);
		}
	}
	/**
	 * @category 设置当前行
	 * @param page
	 */
	public void getStartPage(Page page){
		page.setStartRow((page.getPageIndex() - 1) * page.getPageSize());
	}
    
}
