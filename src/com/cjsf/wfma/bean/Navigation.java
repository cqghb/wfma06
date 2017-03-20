package com.cjsf.wfma.bean;

/**
 * @author Administrator
 * 导航实体类
 */
//navigation naid naname naurl nastate
public class Navigation {

	private int naid;//编号
	private String naname;//名称
	private String naurl;//链接地址
	private String nastate;//是否启用 {启用|弃用}
	private int pid;//父节点编号
	
	public Navigation(){}
	
	public Navigation(int naid,String naname,String naurl,String nastate,int pid){
		this.naid = naid;
		this.naname = naname;
		this.naurl = naurl;
		this.nastate = nastate;
		this.pid = pid;
		
	}

	public int getNaid() {
		return naid;
	}

	public void setNaid(int naid) {
		this.naid = naid;
	}

	public String getNaname() {
		return naname;
	}

	public void setNaname(String naname) {
		this.naname = naname;
	}

	public String getNaurl() {
		return naurl;
	}

	public void setNaurl(String naurl) {
		this.naurl = naurl;
	}

	public String getNastate() {
		return nastate;
	}

	public void setNastate(String nastate) {
		this.nastate = nastate;
	}
	
	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	@Override
	public String toString() {
		return "Navigation [naid=" + naid + ", naname=" + naname + ", naurl=" + naurl + ", nastate=" + nastate + ", pid=" + pid + "]";
	}
}
