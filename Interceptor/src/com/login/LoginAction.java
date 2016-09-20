package com.login;

public class LoginAction {
	private String username;
	private String pwd;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String execute1(){					//自定义execute1函数
		LoginService ls=new LoginService();
		boolean flag=ls.login(username, pwd);
		if(flag){
			return "success";
		}else{
			return "fail";
		}
	}
}
