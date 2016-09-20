package com.login;

public class LoginService {
	public boolean login(String username,String pwd){
		if(username.equals("wjz") && pwd.equals("520")){
			return true;
		}else{
			return false;
		}
	}
}
