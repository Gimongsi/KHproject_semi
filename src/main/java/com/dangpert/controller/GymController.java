package com.dangpert.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.gym")
public class GymController extends HttpServlet {
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
		
		if(uri.equals("/list.gym")) { // 운동시설 리스트로 이동
			response.sendRedirect("/gym/gymList.jsp");
		}else if(uri.equals("/add.gym")) { // 운동시설 신규등록 페이지로 이동
			response.sendRedirect("/gym/gymAdd.jsp");
		}
	}

}
