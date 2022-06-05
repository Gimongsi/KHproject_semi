package com.dangpert.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dangpert.dao.UserDAO;
import com.dangpert.dto.UserDTO;
import com.google.gson.Gson;

@WebServlet("*.manager")
public class ManagerController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		
		if(uri.equals("/userSerch.manager")) { // 유저 검색 페이지
			
			UserDAO dao = new UserDAO();
			int curPage = Integer.parseInt(request.getParameter("curPage"));
			
			try {
				HashMap map = dao.getPageNavi(curPage);
				
				ArrayList<UserDTO> list = dao.selectAll(curPage*10-9,curPage*10);
				request.setAttribute("list", list);
				request.setAttribute("naviMap", map);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/manager/search.jsp").forward(request, response);
			
			
		} else if (uri.equals("/managerUpdate.user")) { //회원 수정버튼 눌렀을때 ajax 실행
			
			int user_seq = Integer.parseInt(request.getParameter("user_seq"));
			System.out.println(user_seq);
			UserDAO dao = new UserDAO();
			try {
				UserDTO dto = dao.selectBySeq(user_seq);
				Gson gson = new Gson();
				String rs = gson.toJson(dto);
				response.getWriter().append(rs);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		} else if (uri.equals("/toSendmail.manager")) { // 유저 메일보내기 페이지 이동
			response.sendRedirect("/manager/sendmail.jsp");
		} else if (uri.equals("")) { //  유저 메일 보내기
			
		}
	
	
	
	}

}
