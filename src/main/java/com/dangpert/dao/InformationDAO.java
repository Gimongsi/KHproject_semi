package com.dangpert.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.dangpert.dto.InfomationDTO;

public class InformationDAO {
	private BasicDataSource bds;

	public InformationDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int getNewSeq() throws Exception{
		String sql = "select infomation_seq.nextval from dual";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			int qna_seq = rs.getInt(1);
			return qna_seq;			
		}
	}

	public ArrayList<InfomationDTO> searchByTitle(String searchKeyword) throws Exception{
		String sql = "select * from tbl_infomation where title like '%'||?||'%' order by 1 desc";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setString(1, searchKeyword);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<InfomationDTO> list = new ArrayList<>();
			while(rs.next()) {
				int qna_seq = rs.getInt("qna_seq");
				String qna_title = rs.getString("qna_title");
				String qna_content = rs.getString("qna_content");
				list.add(new InfomationDTO(qna_seq,qna_title,qna_content));
			}
			return list;
		}
	}

	public ArrayList<InfomationDTO> selectAll() throws Exception{
		String sql = "select * from tbl_infomation order by infomation_seq desc";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<InfomationDTO> list = new ArrayList<>();
			while(rs.next()) {
				int qna_seq = rs.getInt("qna_seq");
				String qna_title = rs.getString("qna_title");
				String qna_content = rs.getString("qna_content");
				list.add(new InfomationDTO(qna_seq,qna_title,qna_content));
			}
			return list;
		}
	}

	public int delete(int qna_seq) throws Exception{
		String sql = "delete from tbl_infomation where infomation_seq = ?";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setInt(1, qna_seq);
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int modify(InfomationDTO dto) throws Exception{
		String sql = "update tbl_infomation set qna_title=?, qna_content=? where infomation_seq=?";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setInt(3, dto.getQna_seq());
			pstmt.setString(1, dto.getQna_title());
			pstmt.setString(2, dto.getQna_content());
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int write(InfomationDTO dto) throws Exception{
		String sql = "insert into tbl_infomation values(infomation_seq.nextval,?,?)";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, dto.getQna_title());
			pstmt.setString(2, dto.getQna_content());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public InfomationDTO selectBySeq(int seq_board) throws Exception{
		String sql = "select * from tbl_infomation where infomation_seq = ?";

		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){

			pstmt.setInt(1, seq_board);
			ResultSet rs = pstmt.executeQuery();

			if(rs.next()) {
				int qna_seq = rs.getInt("qna_seq");
				String qna_title = rs.getString("qna_title");
				String qna_content = rs.getString("qna_content");
				InfomationDTO dto = new InfomationDTO(qna_seq, qna_title, qna_content);
				return dto;
			}
			return null;
		}
	}

	public HashMap<String, Object> getPageNavi(int curPage) throws Exception{
		String sql = "select count(*) as totalCnt from tbl_infomation";
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

