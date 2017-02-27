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

	public Integer getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(Integer pageIndex) {
		this.pageIndex = pageIndex;
	}

	public Integer getPageSize() {
		return pageSize;
	}

	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}

	public Integer getRowTotal() {
		return rowTotal;
	}

	public void setRowTotal(Integer rowTotal) {
		this.rowTotal = rowTotal;
	}

	public Integer getPageTotal() {
		return pageTotal;
	}

	public void setPageTotal(Integer pageTotal) {
		this.pageTotal = pageTotal;
	}

	public Integer getStartRow() {
		return startRow;
	}

	public void setStartRow(Integer startRow) {
		this.startRow = startRow;
	}

	@Override
	public String toString() {
		return "Page [pageIndex=" + pageIndex + ", pageSize=" + pageSize + ", rowTotal=" + rowTotal + ", pageTotal="
				+ pageTotal + ", startRow=" + startRow + "]";
	}
	
}
