package com.login;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;

public class InterceptorTest implements Interceptor{		//�Զ�����������    ��������������������д UID������
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public void init(){}
	public void destroy(){}
	public String intercept (ActionInvocation ai) throws Exception{
		System.out.println("Interceptortest is ok!Action's name is:"+ai.getAction().getClass().getName());
		ai.invoke();
		return null;
	}
}
