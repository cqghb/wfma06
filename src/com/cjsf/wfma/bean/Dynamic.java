package com.cjsf.wfma.bean;

import java.util.Date;

/**
 * @author ws
 * @category 新闻实体类
 */
public class Dynamic {

	private int dyid;//新闻编号
	private String dyname;//新闻标题
	private String dyimgurl;//配图地址
	private String dydetails;//新闻文字内容
	private Date dytime;//发稿时间
	public Dynamic() {
		
	}
	public Dynamic(int dyid, String dyname, String dyimgurl, String dydetails, Date dytime) {
		this.dyid = dyid;
		this.dyname = dyname;
		this.dyimgurl = dyimgurl;
		this.dydetails = dydetails;
		this.dytime = dytime;
	}
	public int getDyid() {
		return dyid;
	}
	public void setDyid(int dyid) {
		this.dyid = dyid;
	}
	public String getDyname() {
		return dyname;
	}
	public void setDyname(String dyname) {
		this.dyname = dyname;
	}
	public String getDyimgurl() {
		return dyimgurl;
	}
	public void setDyimgurl(String dyimgurl) {
		this.dyimgurl = dyimgurl;
	}
	public String getDydetails() {
		return dydetails;
	}
	public void setDydetails(String dydetails) {
		this.dydetails = dydetails;
	}
	public Date getDytime() {
		return dytime;
	}
	public void setDytime(Date dytime) {
		this.dytime = dytime;
	}
	@Override
	public String toString() {
		return "Dynamic [dyid=" + dyid + ", dyname=" + dyname + ", dyimgurl=" + dyimgurl + ", dydetails=" + dydetails
				+ ", dytime=" + dytime + "]";
	}
	
}
