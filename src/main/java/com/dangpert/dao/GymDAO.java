package com.dangpert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.dangpert.dto.GymFolderDTO;
import com.dangpert.dto.GymInfoDTO;
import com.dangpert.dto.UserDTO;

public class GymDAO {
	private BasicDataSource bds;
	
	public GymDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int addInfo(GymInfoDTO dto, GymFolderDTO picDTO, UserDTO userDTO) throws Exception {
		String sql="insert into tbl_gym_info values(?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setInt(1, userDTO.getUser_seq());
			pstmt.setString(2, dto.getGym_name());
			pstmt.setString(3, dto.getGym_phone());
			pstmt.setString(4, dto.getGym_postcode());
			pstmt.setString(5, dto.getGym_roadAddr());
			pstmt.setString(6, dto.getGym_detailAddr());
			pstmt.setString(7, dto.getGym_extraAddr());
			pstmt.setString(8, dto.getGym_time());
			pstmt.setString(9, dto.getGym_comment());
			
			return pstmt.executeUpdate();
		}
	}
	
//	public int addPic(GymFolderDTO dto) throws Exception{
//		String sql = "insert into tbl_gym_folder values(, ?)";
//		
//		try(Connection con = bds.getConnection();
//			PreparedStatement pstmt = con.prepareStatement(sql);){
//			
//			pstmt.
//		}
//	}
	
	
}
