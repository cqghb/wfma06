package com.cjsf.wfma.bean;
/**
 * @category 分页实体类
 * @author Administrator
 */
public class Page {
	  
    private Integer pageIndex = 1;// 第几页  
    private Integer pageSize = 1;// 每页大小 
    private Integer rowTotal;// 数据总条数
    private Integer pageTotal;// 总共多少页
    private Integer startRow;//起始行
	public Page(Integer pageIndex, Integer pageSize, Integer rowTotal, Integer pageTotal, Integer startRow) {
		this.pageIndex = pageIndex;
		this.pageSize = pageSize;
		this.rowTotal = rowTotal;
		this.pageTotal = pageTotal;
		this.startRow = startRow;
	}
    
	public Page(){}
	/**
	 * @category 获取当前页
	 * @return 返回一个整型值(当前页)
	 */
	public Integer getPageIndex() {
		return pageIndex;
	}
	/**
	 * @category 设置当前页
	 * @param pageIndex一个整型值(当前页)
	 */
	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}
	/**
	 * @category 获取每页显示的数据条数
	 * @return 返回一个整型值(每页显示的数据条数)
	 */
	public Integer getPageSize() {
		return pageSize;
	}
	
	/**
	 * @category 设置每页显示数据的条数
	 * @param pageSize一个整型值(每页显示数据条数)
	 */
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	/**
	 * @category 获取总行数
	 * @return 返回一个整型值 (总行数)
	 */
	public Integer getRowTotal() {
		return rowTotal;
	}
	/**
	 * @category 设置总行数
	 * @param rowTotal一个整型数值(总行数)
	 */
	public void setRowTotal(Integer rowTotal) {
		this.rowTotal = rowTotal;
	}
	/**
	 * @category 获取总页数
	 * @return 返回一个整型值(总页数)
	 */
	public Integer getPageTotal() {
		return pageTotal;
	}
	/**
	 * @category 设置总页数
	 * @param pageTotal 一个整型值(总行数)
	 */
	public void setPageTotal(Integer pageTotal) {
		this.pageTotal = pageTotal;
	}
	/**
	 * @category 获取起始行
	 * @return 返回一个整型值(开始行)
	 */
	public Integer getStartRow() {
		return startRow;
	}
	/**
	 * @category 设置起始行
	 * @param startRow 一个整型值(起始行)
	 */
	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}

	@Override
	public String toString() {
		return "Page [pageIndex=" + pageIndex + ", pageSize=" + pageSize + ", rowTotal=" + rowTotal + ", pageTotal="
				+ pageTotal + ", startRow=" + startRow + "]";
	}
	
}
