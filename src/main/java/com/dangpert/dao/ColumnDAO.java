package com.dangpert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.dangpert.dto.ColumnDTO;


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
		String sql = "select column_seq.nextval from dual";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			int column_seq = rs.getInt(1);
			return column_seq;			
		}
	}

	public ArrayList<ColumnDTO> searchByTitle(String searchKeyword) throws Exception{
		String sql = "select * from tbl_column where title like '%'||?||'%' order by 1 desc";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setString(1, searchKeyword);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<ColumnDTO> list = new ArrayList<>();
			while(rs.next()) {
				int column_seq = rs.getInt("column_seq");
				String column_title = rs.getString("column_title");
				String column_content = rs.getString("column_content");
				String column_date = rs.getString("column_date");
				list.add(new ColumnDTO(column_seq,column_title,column_content,column_date));
			}
			return list;
		}
	}

	public ArrayList<ColumnDTO> selectAll() throws Exception{
		String sql = "select * from tbl_column";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<ColumnDTO> list = new ArrayList<>();
			while(rs.next()) {
				int column_seq = rs.getInt("column_seq");
				String column_title = rs.getString("column_title");
				String column_content = rs.getString("column_content");
				String column_date = rs.getString("column_date");
				list.add(new ColumnDTO(column_seq,column_title,column_content,column_date));
			}
			return list;
		}
	}

	public int delete(int column_seq) throws Exception{
		String sql = "delete from tbl_column where column_seq = ?";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setInt(1, column_seq);
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int modify(ColumnDTO dto) throws Exception{
		String sql = "update tbl_column set column_title=?, column_content=? where column_seq=?";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setInt(3, dto.getColumn_seq());
			pstmt.setString(1, dto.getColumn_title());
			pstmt.setString(2, dto.getColumn_content());
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int write(ColumnDTO dto) throws Exception{
		String sql = "insert into tbl_column values(column_seq.nextval,?,?,sysdate)";


		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, dto.getColumn_title());
			pstmt.setString(2, dto.getColumn_content());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public ColumnDTO selectBySeq(int qna_seq) throws Exception{
		String sql = "select * from tbl_column where qna_seq = ?";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){

			pstmt.setInt(1, qna_seq);
			ResultSet rs = pstmt.executeQuery();

			if(rs.next()) {
				int column_seq = rs.getInt("column_seq");
				String column_title = rs.getString("column_title");
				String column_content = rs.getString("column_content");
				String column_date = rs.getString("column_date");
				ColumnDTO dto = new ColumnDTO(column_seq,column_title,column_content,column_date);
				return dto;
			}
			return null;
		}
	}

	public HashMap<String, Object> getPageNavi(int curPage) throws Exception{
		String sql = "select count(*) as totalCnt from tbl_column";
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
