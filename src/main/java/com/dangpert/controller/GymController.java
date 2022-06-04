package com.dangpert.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dangpert.dao.GymDAO;
import com.dangpert.dto.GymInfoDTO;
import com.dangpert.dto.UserDTO;
import com.dangpert.dto.UsergymInterestDTO;

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
			HttpSession session = request.getSession(); // 지금 가지고있는 세션 가져오기
			UserDTO dto = (UserDTO)session.getAttribute("loginSession"); // 세션에 담겨있는 dto값 받기
			GymDAO dao = new GymDAO(); 
			
			try {
				ArrayList<UsergymInterestDTO> ugi_dto = dao.interestGym(dto.getUser_seq()); // 세션 유저의 즐겨찾기 목록들 불러오기
				ArrayList<GymInfoDTO> gym_dto = dao.selectAllGym();// 모든 gym 불러오기
				
				request.setAttribute("ugi_dto", ugi_dto);
				request.setAttribute("gym_dto", gym_dto);
				
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			request.getRequestDispatcher("/gym/gymList.jsp").forward(request, response);
			
			
			
			
		}else if(uri.equals("/add.gym")) { // 운동시설 신규등록 페이지로 이동
			response.sendRedirect("/gym/gymAdd.jsp");
			
		}else if(uri.equals("/interest.gym")) { // 운동 시설 즐겨찾기에 추가
			HttpSession session = request.getSession();
			UserDTO dto = (UserDTO)session.getAttribute("loginSession");
			int gym_seq = Integer.parseInt(request.getParameter("gym_seq"));
			GymDAO dao = new GymDAO();
			
			try {
				int rs = dao.insertInterestGym(gym_seq, dto.getUser_seq());
				
				if (rs > 0) {
					request.getRequestDispatcher("/gymList.gym");
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
				
		}
	}

}
