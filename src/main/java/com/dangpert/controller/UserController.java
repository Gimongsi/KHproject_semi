package com.dangpert.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dangpert.dao.UserDAO;
import com.dangpert.dto.UserDTO;
import com.dangpert.utils.EncryptionUtils;

@WebServlet("*.user")
public class UserController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		
		if(uri.equals("/signup.mem")) { // 회원가입 요청
			String user_id = request.getParameter("user_id");
			String user_pw = request.getParameter("user_pw");
			String user_name = request.getParameter("user_name");
			String user_phone = request.getParameter("user_phone");
			
			UserDAO dao = new UserDAO();
			try {
				user_pw = EncryptionUtils.getSHA512(user_pw);
				System.out.println("user 암호화 비밀번호 :" + user_pw);
				int rs = dao.insert(new UserDTO(0, user_id, user_pw, user_name, user_phone, null, null));
				
				if (rs > 0) {
					response.sendRedirect("/login.jsp");
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
		} else if (uri.equals("/idCheckPopup.user")) {
			response.sendRedirect("/user/popup.jsp");
		} else if (uri.equals("/idCheck.user")) {
			String user_id = request.getParameter("user_id");
			System.out.println(user_id);
			UserDAO dao = new UserDAO();
			try {
				boolean rs = dao.idCheck(user_id);
				if (rs) {
					request.setAttribute("rs","ok");
				} else {
					request.setAttribute("rs", "no");
				}
				
				request.setAttribute("user_id", user_id);
				request.getRequestDispatcher("/user/popup.jsp").forward(request, response);
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			
		}
		
		
		
		
	}

}
