package com.dangpert.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;

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
		String sql = "insert into tbl_user values(user_seq.nextval, ?, ?, ?, ?, sysdate, default, null)";
		
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
	
	public boolean idCheck(String user_id) throws Exception { // 중복 아이디 확인
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
	
	public UserDTO loginOk(String user_id, String user_pw) throws Exception { // 아이디 비밀번호 확인
		String sql = "select * from tbl_user where user_id=? and user_pw=?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_pw);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				int user_seq = rs.getInt("user_seq");
				String user_name = rs.getString("user_name");
				String user_phone = rs.getString("user_phone");
				String signup_date = getStringDate(rs.getDate("signup_date"));
				String user_auth = rs.getString("user_auth");
				String user_memo = rs.getString("user_memo");
				
				return new UserDTO(user_seq, user_id, user_pw, user_name, user_phone, signup_date, user_auth, user_memo);
			} else {
				return null;
			}
		}
	}
	
	public String getStringDate(Date date) {
		// 1900년 02월 02일 00시 00분 00초
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		return sdf.format(date);
	}
	
	public UserDTO selectBySeq(int user_seq) throws Exception {		// 유저 시퀀스를 이용해 해당 유저의 정보 보내기
		String sql = "select * from tbl_user where user_seq = ?";
		try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, user_seq);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String user_id = rs.getString("user_id");
				String user_pw = rs.getString("user_pw");
				String user_name = rs.getString("user_name");
				String user_phone = rs.getString("user_phone");
				String signup_date = rs.getString("user_signup_date");
				String user_auth = rs.getString("user_auth");
				String user_memo = rs.getString("user_memo");
				
				return new UserDTO(user_seq, user_id, user_pw, user_name, user_phone, signup_date, user_auth, user_memo);	
			} else {
				return null;
			}
		}
	}
	
	
}
