package com.cjsf.wfma.bean;

/**
 * @author ws
 * @category 课程类别
 */
public class Coursetype {

	private int coursetypeid;
	private String coursetypename;
	
	public Coursetype() {
		
	}

	public Coursetype(int coursetypeid, String coursetypename) {
		this.coursetypeid = coursetypeid;
		this.coursetypename = coursetypename;
	}

	public int getCoursetypeid() {
		return coursetypeid;
	}

	public void setCoursetypeid(int coursetypeid) {
		this.coursetypeid = coursetypeid;
	}

	public String getCoursetypename() {
		return coursetypename;
	}

	public void setCoursetypename(String coursetypename) {
		this.coursetypename = coursetypename;
	}

	@Override
	public String toString() {
		return "Coursetype [coursetypeid=" + coursetypeid + ", coursetypename=" + coursetypename + "]";
	}
	
	
}
