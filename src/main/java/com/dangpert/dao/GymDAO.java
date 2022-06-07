package com.dangpert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.dangpert.dto.FoodDTO;
import com.dangpert.dto.FoodFolderDTO;
import com.dangpert.dto.GymFolderDTO;
import com.dangpert.dto.GymInfoDTO;
import com.dangpert.dto.UserDTO;
//import com.dangpert.dto.UsergymInterestDTO;

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
	
	public int getNewSeq() throws Exception{
		String sql = "select gym_seq.nextval from dual";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			return rs.getInt(1);
		}
	}
	
	
	public int delete(int gym_seq) throws Exception{
		String sql = "delete from tbl_gym where gym_seq=?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, gym_seq);
			return pstmt.executeUpdate();
		}
	}
	
	/* 구현 중 */
	public int modifyInfo(GymInfoDTO gymInfoDTO) throws Exception{
		String sql = "update tbl_gym_info set where=? ";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			
			pstmt.setString(3, gymInfoDTO.getGym_name());
			pstmt.setString(4, gymInfoDTO.getGym_phone());
			pstmt.setString(5, gymInfoDTO.getGym_postcode());
			pstmt.setString(6, gymInfoDTO.getGym_roadAddr());
			pstmt.setString(7, gymInfoDTO.getGym_detailAddr());
			pstmt.setString(8, gymInfoDTO.getGym_extraAddr());
			pstmt.setString(9, gymInfoDTO.getGym_time());
			pstmt.setString(10, gymInfoDTO.getGym_comment());
			pstmt.setString(11, gymInfoDTO.getGym_src_main());
			pstmt.setString(12, gymInfoDTO.getGym_month());
			pstmt.setInt(13, gymInfoDTO.getGym_price());
			
			pstmt.setInt(2, gymInfoDTO.getGym_seq());
			
			return pstmt.executeUpdate();
		}
	}
	
	public ArrayList<GymInfoDTO> selectLocationList(String searchLocation) throws Exception{
		String sql= "select * from tbl_gym_info join tbl_gym_price using(gym_seq) where gym_roadAddr like '%'||?||'%'";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setString(1, searchLocation);
			ResultSet rs = pstmt.executeQuery();
			
			ArrayList<GymInfoDTO> list = new ArrayList<>();
			while(rs.next()) {
				int gym_seq = rs.getInt("gym_seq");
				String gym_name = rs.getString("gym_name");
				String gym_phone = rs.getString("gym_phone");
				String gym_postcode = rs.getString("gym_postcode");
				String gym_roadAddr = rs.getString("gym_roadAddr");
				String gym_detailAddr = rs.getString("gym_detailAddr");
				String gym_extraAddr = rs.getString("gym_extraAddr");
				String gym_time = rs.getString("gym_time");
				String gym_comment = rs.getString("gym_comment");
				String gym_src_main = rs.getString("gym_src_main");
				String gym_month = rs.getString("gym_month");
				int gym_price = rs.getInt("gym_price");
				
				list.add(new GymInfoDTO(gym_seq, gym_name,gym_phone, gym_postcode, gym_roadAddr, gym_detailAddr, gym_extraAddr, gym_month, gym_price, gym_time, gym_comment, gym_src_main));
			}
			return list;
		}
	}
	
	public ArrayList<GymInfoDTO> selectSeqList(int gym_seq) throws Exception{
		String sql = "select * from tbl_gym_info g join tbl_gym_price p on g.gym_seq = p.gym_seq join tbl_gym_folder f on g.gym_seq = f.gym_seq where g.gym_seq=?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, gym_seq);
			ResultSet rs = pstmt.executeQuery();
			
			ArrayList<GymInfoDTO> list = new ArrayList<>();
			while(rs.next()) {
				String gym_name = rs.getString("gym_name");
				String gym_phone = rs.getString("gym_phone");
				String gym_postcode = rs.getString("gym_postcode");
				String gym_roadAddr = rs.getString("gym_roadAddr");
				String gym_detailAddr = rs.getString("gym_detailAddr");
				String gym_extraAddr = rs.getString("gym_extraAddr");
				String gym_time = rs.getString("gym_time");
				String gym_comment = rs.getString("gym_comment");
				String gym_src_main = rs.getString("gym_src_main");
				String gym_month = rs.getString("gym_month");
				int gym_price = rs.getInt("gym_price");
				
				list.add(new GymInfoDTO(gym_seq, gym_name,gym_phone, gym_postcode, gym_roadAddr, gym_detailAddr, gym_extraAddr, gym_month, gym_price, gym_time, gym_comment, gym_src_main));

			}
			return list;
		}
	}
	
	public GymInfoDTO selectSeq(int gym_seq) throws Exception{
		String sql = "select * from tbl_gym_info g join tbl_gym_price p on g.gym_seq = p.gym_seq where g.gym_seq = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, gym_seq);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				String gym_name = rs.getString("gym_name");
				String gym_phone = rs.getString("gym_phone");
				String gym_postcode = rs.getString("gym_postcode");
				String gym_roadAddr = rs.getString("gym_roadAddr");
				String gym_detailAddr = rs.getString("gym_detailAddr");
				String gym_extraAddr = rs.getString("gym_extraAddr");
				String gym_time = rs.getString("gym_time");
				String gym_comment = rs.getString("gym_comment");
				String gym_src_main = rs.getString("gym_src_main");
				String gym_month = rs.getString("gym_month");
				int gym_price = rs.getInt("gym_price");
				
				return new GymInfoDTO(gym_seq, gym_name,gym_phone, gym_postcode, gym_roadAddr, gym_detailAddr, gym_extraAddr, gym_month, gym_price, gym_time, gym_comment, gym_src_main);
			}
			return null;
		}
	}
	
	public int addInfo(UserDTO userDTO, GymInfoDTO gymInfoDTO) throws Exception { // info insert
		String sql = "insert all into tbl_gym values(?, ?) into tbl_gym_info values(gym_seq.currval, ?, ?, ?, ?, ?, ?, ?, ?, ?) into tbl_gym_price values(gym_seq.currval, ?, ?) select * from dual";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, gymInfoDTO.getGym_seq());
			pstmt.setInt(2, userDTO.getUser_seq());
			pstmt.setString(3, gymInfoDTO.getGym_name());
			pstmt.setString(4, gymInfoDTO.getGym_phone());
			pstmt.setString(5, gymInfoDTO.getGym_postcode());
			pstmt.setString(6, gymInfoDTO.getGym_roadAddr());
			pstmt.setString(7, gymInfoDTO.getGym_detailAddr());
			pstmt.setString(8, gymInfoDTO.getGym_extraAddr());
			pstmt.setString(9, gymInfoDTO.getGym_time());
			pstmt.setString(10, gymInfoDTO.getGym_comment());
			pstmt.setString(11, gymInfoDTO.getGym_src_main());
			pstmt.setString(12, gymInfoDTO.getGym_month());
			pstmt.setInt(13, gymInfoDTO.getGym_price());
			
			return pstmt.executeUpdate();
		}
	}
	
	public int addPic(GymFolderDTO dto) throws Exception{
		String sql = "insert into tbl_food_folder values(?, ?)";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, dto.getGym_seq());
			pstmt.setString(2, dto.getGym_src());
			
			return pstmt.executeUpdate();
		}
	}
	
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
	
//	public ArrayList<UsergymInterestDTO> interestGym(int user_seq) throws Exception{
//		String sql = "select * from user_gym_interest where user_seq=? ";
//		
//		try(Connection con = bds.getConnection();
//				PreparedStatement pstmt = con.prepareStatement(sql)){
//			
//			pstmt.setInt(1, user_seq);
//			ResultSet rs = pstmt.executeQuery();
//			ArrayList<UsergymInterestDTO> list = new ArrayList<UsergymInterestDTO>();
//			
//			while(rs.next()){
//				int gym_seq = rs.getInt("gym_seq");
//				
//				list.add(new UsergymInterestDTO(gym_seq, user_seq));
//			}
//			return list;
//		}
//	}
	
	public ArrayList<GymInfoDTO> selectAllGym() throws Exception {
		String sql = "select * from tbl_gym_info g join tbl_gym_price p on g.gym_seq = p.gym_seq";
		
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
				String gym_src_main = rs.getString("gym_src_main");
					
				list.add(new GymInfoDTO(gym_seq, gym_name,gym_phone, gym_postcode, gym_roadAddr, gym_detailAddr, gym_extraAddr, gym_month, gym_price, gym_time, gym_comment, gym_src_main));
			}
			return list;
		}
	}
	
}
