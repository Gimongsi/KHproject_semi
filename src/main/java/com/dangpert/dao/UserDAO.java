package com.dangpert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.dangpert.dto.UserDTO;

public class UserDAO {

private BasicDataSource bds;
	
	public UserDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	public int insert(UserDTO dto) throws Exception { // 회원가입
		String sql = "insert into tbl_user values(user_seq.nextval, ?, ?, ?, ?, sysdate, default)";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, dto.getUser_id());
			pstmt.setString(2, dto.getUser_pw());
			pstmt.setString(3, dto.getUser_name());
			pstmt.setString(4, dto.getUser_phone());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	
	public boolean idCheck(String user_id) throws Exception {
		String sql = "select count(*) from tbl_user where user_id=?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, user_id);
			
			ResultSet rs = pstmt.executeQuery();
			int result = 0;
			if (rs.next()) {
				result = rs.getInt(1);
			}
			if(result == 0) {
				return true;
			} else {
				return false;
			}
			
		}
		
		
	}
	
}
