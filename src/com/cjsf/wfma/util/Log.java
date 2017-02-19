package com.cjsf.wfma.util;

import java.lang.reflect.Method;

import org.springframework.aop.AfterReturningAdvice;

/**
 * @author Administrator
 * 日子记录(后置通知)
 */
public class Log implements AfterReturningAdvice{

	@Override
	public void afterReturning(Object returnValue, Method method, Object[] args, Object target) throws Throwable {
		// TODO Auto-generated method stub
		System.out.println(target.getClass().getName()+"的"+method.getName()+"被执行了，返回值是"+returnValue);
	}

}
