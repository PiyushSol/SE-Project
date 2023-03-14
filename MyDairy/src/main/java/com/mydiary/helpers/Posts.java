package com.mydiary.helpers;

import java.sql.Timestamp;

public class Posts {
	private  int pid ,userId;
	private String post_title , post_content,post_pic;
	private Timestamp post_date;
	
	public Posts() {
		super();
	}

	public Posts(int pid, String post_title, String post_content, Timestamp post_date,String post_pic , int userId) {
		super();
		this.pid = pid;
		this.userId =userId;
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_date = post_date;
		this.post_pic =post_pic;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public Posts(String post_title, String post_content, Timestamp post_date, String post_pic, int userId ) {
		super();
		this.post_title = post_title;
		this.post_content = post_content;
		this.post_date = post_date;
		this.post_pic=post_pic;
		this.userId = userId;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_content() {
		return post_content;
	}

	public void setPost_content(String post_content) {
		this.post_content = post_content;
	}

	

	public Timestamp getPost_date() {
		return post_date;
	}

	public void setPost_date(Timestamp post_date) {
		this.post_date = post_date;
	}

	public String getPost_pic() {
		return post_pic;
	}

	public void setPost_pic(String post_pic) {
		this.post_pic = post_pic;
	}
	
	
	
}
