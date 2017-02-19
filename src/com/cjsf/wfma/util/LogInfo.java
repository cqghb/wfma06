package com.cjsf.wfma.util;

/**
 * @author Administrator
 * 自定义类，实现切面日志记录
 */
public class LogInfo {

	//方法执行后调用此方法
	public void after(){
		System.out.println("after执行了");
	}
	//方法执行前调用此方法
	public void before(){
		System.out.println("before执行了");
	}
}
