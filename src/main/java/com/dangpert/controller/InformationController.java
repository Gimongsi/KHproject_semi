package com.dangpert.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dangpert.dao.InformationDAO;
import com.dangpert.dto.InfomationDTO;

@WebServlet("*.info")
public class InformationController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("요청 uri : " + uri);
		request.setCharacterEncoding("utf-8");
		
		
		
		if(uri.equals("/information/information.jsp")) { //게시판페이지 요청
			InformationDAO dao = new InformationDAO();
			try {
				ArrayList<InfomationDTO> list = dao.selectAll(0, 0);
				request.setAttribute("list", list);
			}catch(Exception e) {
				e.printStackTrace();
			}			
			request.getRequestDispatcher("/manager/information/information.jsp").forward(request, response);
		}else if(uri.equals("/write.info")) { // 글쓰기페이지 요청
			response.sendRedirect("/information/write.jsp");
		}else if(uri.equals("/writeProc.info")) { // 글쓰기 요청
			InfomationDTO dto = (InfomationDTO)request.getSession().getAttribute("loginSession");
			String qna_title = request.getParameter("qna_title");
			String qna_content = request.getParameter("qna_content");

			System.out.println(qna_title + " : " + qna_content);

			InformationDAO dao = new InformationDAO();
			try {
				int rs = dao.write(new InfomationDTO(0,qna_title,qna_content));
				if(rs > 0) {
					response.sendRedirect("/information.info");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}			
			
		}else if(uri.equals("/modify.info")) {// 수정 페이지 요청
			int qna_seq = Integer.parseInt(request.getParameter("qna_seq"));
			System.out.println("qna_seq : " + qna_seq);

			InformationDAO dao = new InformationDAO();
			try {
				InfomationDTO dto = dao.selectBySeq(qna_seq);
				request.setAttribute("dto", dto);
			}catch(Exception e) {
				e.printStackTrace();
			}

			request.getRequestDispatcher("/manager/information/modify.jsp").forward(request, response);
		}else if(uri.equals("/modifyProc.info")) { // 수정 요청
			int qna_seq = Integer.parseInt(request.getParameter("qna_seq"));
			String qna_title = request.getParameter("qna_title");
			String qna_content = request.getParameter("qna_content");

			InformationDAO dao = new InformationDAO();
			try {
				int rs = dao.modify(new InfomationDTO(0,qna_title,qna_content));
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/deleteProc.info")) {// 삭제 요청
			int qna_seq = Integer.parseInt(request.getParameter("qna_seq"));
			System.out.println("qna_seq :" + qna_seq);

			InformationDAO dao = new InformationDAO();
			
			try {
				int rs = dao.delete(qna_seq);
				if(rs > 0) {
					// 삭제완료 후에는 게시글 목록을 요청
					response.sendRedirect("/information.info");
				}
			}catch(Exception e) {	
				e.printStackTrace();
			}
		}
	}
}