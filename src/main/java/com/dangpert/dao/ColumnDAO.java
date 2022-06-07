package com.dangpert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.dangpert.dto.CalumnDTO;

public class ColumnDAO {
	private BasicDataSource bds;

	public ColumnDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getNewSeq() throws Exception{
		String sql = "select calumn_seq.nextval from dual";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			int calumn_seq = rs.getInt(1);
			return calumn_seq;			
		}
	}

	public ArrayList<CalumnDTO> searchByTitle(String searchKeyword) throws Exception{
		String sql = "select * from tbl_calumn where title like '%'||?||'%' order by 1 desc";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setString(1, searchKeyword);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<CalumnDTO> list = new ArrayList<>();
			while(rs.next()) {
				int calumn_seq = rs.getInt("calumn_seq");
				String calumn_title = rs.getString("calumn_title");
				String calumn_content = rs.getString("calumn_content");
				String calumn_date = rs.getString("calumn_date");
				list.add(new CalumnDTO(calumn_seq,calumn_title,calumn_content,calumn_date));
			}
			return list;
		}
	}

	public ArrayList<CalumnDTO> selectAll() throws Exception{
		String sql = "select * from tbl_calumn";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<CalumnDTO> list = new ArrayList<>();
			while(rs.next()) {
				int calumn_seq = rs.getInt("calumn_seq");
				String calumn_title = rs.getString("calumn_title");
				String calumn_content = rs.getString("calumn_content");
				String calumn_date = rs.getString("calumn_date");
				list.add(new CalumnDTO(calumn_seq,calumn_title,calumn_content,calumn_date));
			}
			return list;
		}
	}

	public int delete(int calumn_seq) throws Exception{
		String sql = "delete from tbl_calumn where calumn_seq = ?";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setInt(1, calumn_seq);
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int modify(CalumnDTO dto) throws Exception{
		String sql = "update tbl_calumn set calumn_title=?, calumn_content=? where calumn_seq=?";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setInt(3, dto.getCalumn_seq());
			pstmt.setString(1, dto.getCalumn_title());
			pstmt.setString(2, dto.getCalumn_content());
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int write(CalumnDTO dto) throws Exception{
		String sql = "insert into tbl_calumn values(infomation_seq.nextval,?,?,?)";


		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, dto.getCalumn_title());
			pstmt.setString(2, dto.getCalumn_content());
			pstmt.setString(3, dto.getCalumn_date());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public CalumnDTO selectBySeq(int qna_seq) throws Exception{
		String sql = "select * from tbl_calumn where qna_seq = ?";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){

			pstmt.setInt(1, qna_seq);
			ResultSet rs = pstmt.executeQuery();

			if(rs.next()) {
				int calumn_seq = rs.getInt("calumn_seq");
				String calumn_title = rs.getString("calumn_title");
				String calumn_content = rs.getString("calumn_content");
				String calumn_date = rs.getString("calumn_date");
				CalumnDTO dto = new CalumnDTO(calumn_seq,calumn_title,calumn_content,calumn_date);
				return dto;
			}
			return null;
		}
	}

	public HashMap<String, Object> getPageNavi(int curPage) throws Exception{
		String sql = "select count(*) as totalCnt from tbl_calumn";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			
			int totalCnt = rs.getInt("totalCnt"); 
			int recordCntPerPage = 10; 
			int naviCntPerPage = 5; 
			int pageTotalCnt = 0; 
		
			if(totalCnt % recordCntPerPage > 0) { 
				pageTotalCnt = totalCnt / recordCntPerPage + 1;
			}else {
				pageTotalCnt = totalCnt / recordCntPerPage;
			}
			
			
			if(curPage < 1) { 
				curPage = 1;
			}else if(curPage > pageTotalCnt) { 
				curPage = pageTotalCnt; 
			}					
		
			int startNavi = ((curPage-1) / naviCntPerPage) * naviCntPerPage + 1;
			int endNavi = startNavi + naviCntPerPage - 1;
			
			
			if(pageTotalCnt < endNavi) {
				endNavi = pageTotalCnt;  
			}
			
			boolean needPrev = true;
			boolean needNext = true;
			
			if(startNavi == 1) {
				needPrev = false;
			}
			if(endNavi == pageTotalCnt) {
				needNext = false;
			}
		
			HashMap<String, Object> map = new HashMap<>();
			map.put("startNavi", startNavi);
			map.put("endNavi", endNavi);
			map.put("needPrev", needPrev);
			map.put("needNext", needNext);
			
			return map;
		}
	}
	
}
