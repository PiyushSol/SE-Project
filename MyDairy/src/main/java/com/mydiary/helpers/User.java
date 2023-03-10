package com.mydiary.helpers;

public class User {
  private String fname,lname,password ,email , answer,ques;

public String getQues() {
	return ques;
}

public void setQues(String ques) {
	this.ques = ques;
}

public User(String fname, String lname, String password, String email, String answer,String ques) {
	super();
	this.fname = fname;
	this.lname = lname;
	this.password = password;
	this.email = email;
	this.answer = answer;
	this.ques = ques;
}

public User() {
	super();
}

public String getFname() {
	return fname;
}

public void setFname(String fname) {
	this.fname = fname;
}

public String getLname() {
	return lname;
}

public void setLname(String lname) {
	this.lname = lname;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getAnswer() {
	return answer;
}

public void setAnswer(String answer) {
	this.answer = answer;
}
  
	
}
