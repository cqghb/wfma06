package com.cjsf.wfma.bean;

/**
 * @author Administrator
 * @category logo实体类
 */
public class Logo {

	private int logoid;//logo编号
	private String logoname;//名称
	private String logourl;//图片地址
	private String logotarget;//链接地址
	private String logostate;//状态 启用|弃用
	private int naid;//导航编号
	
	public Logo(){}
	
	public Logo(int logoid,String logoname,String logourl,String logotarget,String logostate,int naid){
		this.logoid = logoid;
		this.logoname = logoname;
		this.logourl = logourl;
		this.logotarget = logotarget;
		this.logostate = logostate;
		this.naid = naid;
	}

	public int getLogoid() {
		return logoid;
	}

	public void setLogoid(int logoid) {
		this.logoid = logoid;
	}

	public String getLogoname() {
		return logoname;
	}

	public void setLogoname(String logoname) {
		this.logoname = logoname;
	}

	public String getLogourl() {
		return logourl;
	}

	public void setLogourl(String logourl) {
		this.logourl = logourl;
	}

	public String getLogostate() {
		return logostate;
	}
	
	public String getLogotarget() {
		return logotarget;
	}

	public void setLogotarget(String logotarget) {
		this.logotarget = logotarget;
	}

	public void setLogostate(String logostate) {
		this.logostate = logostate;
	}

	public int getNaid() {
		return naid;
	}

	public void setNaid(int naid) {
		this.naid = naid;
	}

	@Override
	public String toString() {
		return "Logo [logoid=" + logoid + ", logoname=" + logoname + ", logourl=" + logourl + ", logotarget="
				+ logotarget + ", logostate=" + logostate + ", naid=" + naid + "]";
	}

}
