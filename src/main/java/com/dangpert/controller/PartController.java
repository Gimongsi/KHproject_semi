package com.dangpert.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.part")
public class PartController extends HttpServlet {
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
		
		if(uri.equals("/toPartAllPage.part")) {		// 근육별 운동법 전체 페이지 요청
			response.sendRedirect("/part/partList.jsp");
			
		} else if(uri.equals("/toPartPage.part")) {		// 각 근육별 운동법 페이지 요청
			response.sendRedirect("/part/partListSign.jsp");
			
		} else if(uri.equals("/writePart.part")) {		// 근육별 운동법 작성 페이지 요청
			response.sendRedirect("/part/partDetail.jsp");
		}
	}
}
