package com.mydiary.helpers;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class PostDao {
  Connection con;
  
  public PostDao(Connection con) {
	super();
	this.con = con;
}

public boolean savePost(Posts p) {
		boolean f= false;
		try {
			String q= "insert into posts (post_title , post_content ,post_pic , userId) values(?,?,?,?)";
			PreparedStatement pstmt =con.prepareStatement(q);
			pstmt.setString(1,p.getPost_title());
			pstmt.setString(2,p.getPost_content());
			pstmt.setString(3,p.getPost_pic());
			pstmt.setInt(4,p.getUserId());
			
			pstmt.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			
		}
		
		return f;
	}


//get all the posts from database
public List<Posts> getAllPosts(){
	List<Posts> list = new ArrayList<>();
	try {
		PreparedStatement p = con.prepareStatement("select * from posts order by postid desc");
		ResultSet set = p.executeQuery();
		
		while(set.next()) 
		{
			String post_title =set.getString("post_title");
			String post_content = set.getString("post_content");
			String post_pic = set.getString("post_pic");
			Timestamp post_date =set.getTimestamp("post_date");
			int userId = set.getInt("userID");
			Posts post = new Posts(post_title,post_content ,post_date , post_pic , userId);
			list.add(post);
		}
		
	}
	
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return list;
}
}
