package com.mydiary.helpers;

import java.sql.*;
public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con = con;
	}
	
	public boolean saveUser(User user) {
		boolean f= false;
		
		try {
			
			String query = "INSERT INTO account(fname ,lname ,email , password, sec_answer,sec_que) values(?,?,?,?,?,?)";
			PreparedStatement pstmt =this.con.prepareStatement(query);
			pstmt.setString(1,user.getFname());
			pstmt.setString(2,user.getLname());
			pstmt.setString(3,user.getEmail());
			pstmt.setString(4,user.getPassword());
			pstmt.setString(5,user.getAnswer());
			pstmt.setString(6, user.getQues());
			
			pstmt.executeUpdate();
			f =true;
		}
		catch(Exception e) {
		 e.printStackTrace();	
		}
		return f;
	}
	
	public User getUser(String email , String password) {
		User user =null;
		try {
			String query ="SELECT * FROM account WHERE email =? AND password =?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1,email);
			pstmt.setString(2,password);
			
			ResultSet set =pstmt.executeQuery();
			if(set.next()) {
				user = new User();
				String fname = set.getString("fname");
				user.setId(set.getInt("user_id"));
				user.setFname(fname);
				user.setLname(set.getString("lname"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setDateTime(set.getTimestamp("dateofcreation"));
				user.setProfile(set.getString("profiepic"));
				user.setStatus(set.getString("status"));
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return user;
	}
	
	
	public boolean updateUser(User user) {
		boolean f=false;
		try {
			String query="UPDATE account SET email =? ,password =? , status =? , profiepic =? WHERE user_id =?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1,user.getEmail());
			pstmt.setString(2,user.getPassword());
			pstmt.setString(3,user.getStatus());
			pstmt.setString(4,user.getProfile());
			pstmt.setInt(5,user.getId());
			
			pstmt.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return f;
	}
	
	
}
