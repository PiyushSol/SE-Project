package com.mydiary.helpers;

import java.sql.Timestamp;

public class User {
  private String fname,lname,password ,email , answer,ques ,profile , status;
  private Timestamp dateTime;
  private int id;
  
public String getQues() {
	return ques;
}

public void setQues(String ques) {
	this.ques = ques;
}

public User(int id ,String fname, String lname, String password, String email, String answer,String ques, Timestamp dateTime) {
	super();
	this.id =id;
	this.fname = fname;
	this.lname = lname;
	this.password = password;
	this.email = email;
	this.answer = answer;
	this.ques = ques;
	this.dateTime =dateTime;
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

public String getProfile() {
	return profile;
}

public void setProfile(String profile) {
	this.profile = profile;
}

public Timestamp getDateTime() {
	return dateTime;
}

public void setDateTime(Timestamp dateTime) {
	this.dateTime = dateTime;
}

public String getStatus() {
	return status;
}

public void setStatus(String status) {
	this.status = status;
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

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}
  
	
}
