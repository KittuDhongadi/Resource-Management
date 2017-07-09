package com.jlcindia.to;

public class UserTO {
	private int userId;
	private String Fname;
	private String Lname;
	private String Email;
	private String Phone;
	private String UserId;
	private String Dep;


	public UserTO(String id,String fname, String lname,String dep,String phone, String email,String username, String password) {
		super();
		//this.userId = userId;
		UserId=id;
		Fname = fname;
		Lname=lname;
		Dep=dep;
		Phone = phone;
		Email = email;
		Username = username;
		Password = password;
	}
	private String Username;
	private String Password;

	public String getUserId() {
		return this.UserId;
	}
	
	public String getFname() {
		return this.Fname;
	}

	public String getLname() {
		return this.Lname;
	}
	
	public String getDep() {
		return this.Dep;
	}

	public String getPhone() {
		return this.Phone;
	}
	
	public String getEmail() {
		return this.Email;
	}

	public String getUsername() {
		return this.Username;
	}
	
	public String getPassword() {
		return this.Password;
	}

	

	/*public void setUserId(int id) {
		this.userId = id;
	}*/

}
