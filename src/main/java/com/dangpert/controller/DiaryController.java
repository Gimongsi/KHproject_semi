package com.dangpert.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.taglibs.standard.lang.jstl.test.beans.PublicBean1;

import com.dangpert.dao.DiaryDAO;
import com.dangpert.dto.DiaryDTO;
import com.dangpert.dto.UserDTO;


@WebServlet("*.diary")
public class DiaryController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		
		if(uri.equals("/diaryWrite.diary")) {	// 다이어리 작성
			HttpSession session = request.getSession();
			UserDTO dto = (UserDTO)session.getAttribute("loginSession");
			
			int user_seq = dto.getUser_seq();			
			String diary_content = request.getParameter("diary_content");
			String diary_part = request.getParameter("diary_part");
			int diary_weight = Integer.parseInt(request.getParameter("diary_weight"));
			
			DiaryDAO dao = new DiaryDAO();
			
			try {
				int rs = dao.insert(dto.getUser_seq(), diary_content, diary_part, diary_weight);
				
				if(rs > 0) {
					response.sendRedirect("/userDiary.user");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if(uri.equals("/toDiarypage.diary")) {		// 다이어리 목록 띄우기
			HttpSession session = request.getSession();
			UserDTO user_dto = (UserDTO)session.getAttribute("loginSession");
			DiaryDAO dao = new DiaryDAO();
			
			try {
				ArrayList<DiaryDTO> list = dao.select(user_dto.getUser_seq());
				request.setAttribute("list", list);
								
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			request.getRequestDispatcher("/user/myPage_diary.jsp").forward(request, response);
		}
	}
	
	
}
