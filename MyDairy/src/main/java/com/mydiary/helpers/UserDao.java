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
	
}
