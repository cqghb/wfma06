package com.cjsf.wfma.bean;

/**
 * @author ws
 * @category 万府武术介绍实体类
 */
public class WfInformation {

	private int wfid;//介绍编号
	private String wfimgurl;//配图地址
	private String wfexplain;//文字介绍
	private String wfstate;//是否显示在首页[显示|不显示]默认不显示
	public WfInformation() {
		
	}
	public WfInformation(int wfid, String wfimgurl, String wfexplain, String wfstate) {
		this.wfid = wfid;
		this.wfimgurl = wfimgurl;
		this.wfexplain = wfexplain;
		this.wfstate = wfstate;
	}
	public int getWfid() {
		return wfid;
	}
	public void setWfid(int wfid) {
		this.wfid = wfid;
	}
	public String getWfimgurl() {
		return wfimgurl;
	}
	public void setWfimgurl(String wfimgurl) {
		this.wfimgurl = wfimgurl;
	}
	public String getWfexplain() {
		return wfexplain;
	}
	public void setWfexplain(String wfexplain) {
		this.wfexplain = wfexplain;
	}
	public String getWfstate() {
		return wfstate;
	}
	public void setWfstate(String wfstate) {
		this.wfstate = wfstate;
	}
	@Override
	public String toString() {
		return "WfInformation [wfid=" + wfid + ", wfimgurl=" + wfimgurl + ", wfexplain=" + wfexplain + ", wfstate="
				+ wfstate + "]";
	}
	
}
