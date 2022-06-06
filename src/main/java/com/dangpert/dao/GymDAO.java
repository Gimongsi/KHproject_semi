package com.dangpert.dao;

import java.security.interfaces.RSAKey;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.dangpert.dto.GymFolderDTO;
import com.dangpert.dto.GymInfoDTO;
import com.dangpert.dto.UserDTO;
import com.dangpert.dto.UsergymInterestDTO;

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
	public int insertInterestGym(int gym_seq, int user_seq) throws Exception {
		String sql = "insert into user_gym_interest values(?, ?)";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setInt(1, gym_seq);
			pstmt.setInt(2, user_seq);
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
		
	}
	
	
	public ArrayList<UsergymInterestDTO> interestGym(int user_seq) throws Exception{
		String sql = "select * from user_gym_interest where user_seq=? ";
		
		try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, user_seq);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<UsergymInterestDTO> list = new ArrayList<UsergymInterestDTO>();
			
			while(rs.next()){
				int gym_seq = rs.getInt("gym_seq");
				
				list.add(new UsergymInterestDTO(gym_seq, user_seq));
			}
			return list;
		}
	}
	
	public ArrayList<GymInfoDTO> selectAllGym() throws Exception {
		String sql = "select * from tbl_gym_info";
		
		try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<GymInfoDTO> list = new ArrayList<GymInfoDTO>();
			while(rs.next()) {
				int gym_seq = rs.getInt("gym_seq");
				String gym_name = rs.getString("gym_name");
				String gym_phone = rs.getString("gym_phone");
				String gym_postcode= rs.getString("gym_postcode");
				String gym_roadAddr = rs.getString("gym_roadAddr");
				String gym_detailAddr = rs.getString("gym_detailAddr");
				String gym_extraAddr = rs.getString("gym_extraAddr");
				String gym_month = rs.getString("gym_month");
				int gym_price = rs.getInt("gym_price");
				String gym_time = rs.getString("gym_time");
				String gym_comment = rs.getString("gym_comment");
					
				list.add(new GymInfoDTO(gym_seq, gym_name,gym_phone, gym_postcode, gym_roadAddr, gym_detailAddr, gym_extraAddr, gym_month, gym_price, gym_time, gym_comment));
			}
			return list;
		}	
	}
	
	public int delInterestGym(int gym_seq, int user_seq) throws Exception {
		String sql = "delete from user_gym_interest values(? , ?)";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, gym_seq);
			pstmt.setInt(2, user_seq);
			
			int rs = pstmt.executeUpdate();
			return rs;
			
		}
		
	}

	
}
