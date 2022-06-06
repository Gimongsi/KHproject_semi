package com.dangpert.controller;

import java.io.File;
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
import com.google.gson.Gson;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
			HttpSession session = request.getSession(); // 지금 가지고있는 세션 가져오기
			UserDTO dto = (UserDTO)session.getAttribute("loginSession"); // 세션에 담겨있는 dto값 받기
			
			GymDAO dao = new GymDAO(); 
			
			try {
//				ArrayList<UsergymInterestDTO> ugi_dto = dao.interestGym(dto.getUser_seq()); // 세션 유저의 즐겨찾기 목록들 불러오기
				ArrayList<GymInfoDTO> gym_dto = dao.selectAllGym();// 모든 gym 불러오기

				
				System.out.println(gym_dto.toString());
				
//				request.setAttribute("ugi_dto", ugi_dto);
				request.setAttribute("gym_dto", gym_dto);
				
			
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			request.getRequestDispatcher("/gym/gymList.jsp").forward(request, response);
			
		}else if(uri.equals("/add.gym")) { // 운동시설 신규등록 페이지로 이동
			response.sendRedirect("/gym/gymAdd.jsp");
		}else if(uri.equals("/addProc.gym")) { // 운동시설 신규등록 요청
			GymDAO dao = new GymDAO();
			String filePath = request.getServletContext().getRealPath("files");
			File dir = new File(filePath);
			System.out.println(dir);

			if (!dir.exists()) {
				dir.mkdirs();
			}
			int maxSize = 1024 * 1024 * 10;
			
			try {
				MultipartRequest multi = new MultipartRequest(request, filePath, maxSize, "utf-8", new DefaultFileRenamePolicy());
				UserDTO userDTO = (UserDTO) request.getSession().getAttribute("loginSession");
				
				String gym_name = multi.getParameter("gym_name");
				String gym_phone = multi.getParameter("gym_phone");
				String gym_postcode = multi.getParameter("gym_postcode");
				String gym_roadAddr = multi.getParameter("gym_roadAddr");
				String gym_detailAddr = multi.getParameter("gym_detailAddr");
				String gym_extraAddr = multi.getParameter("gym_extraAddr");
				String gym_month = multi.getParameter("gym_month");
				int gym_price = Integer.parseInt(multi.getParameter("gym_price"));
				String gym_time = multi.getParameter("gym_time");
				String gym_comment = multi.getParameter("gym_comment");
				String gym_src_main = multi.getFilesystemName("gym_src_main");
				
				int gym_seq = dao.getNewSeq();
				
				GymInfoDTO gymInfoDTO = new GymInfoDTO(gym_seq, gym_name, gym_phone, gym_postcode, gym_roadAddr, gym_detailAddr, gym_extraAddr, gym_month, gym_price, gym_time, gym_comment, gym_src_main);
				
				int rs = dao.addInfo(userDTO, gymInfoDTO);
				if(rs > 0) {
					System.out.println("저장 성공");
					response.sendRedirect("/detail.gym?gym_seq=" + gym_seq);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}else if(uri.equals("/detail.gym")) { // 운동시설 상세페이지로 이동
			GymDAO dao = new GymDAO();
			int gym_seq = Integer.parseInt(request.getParameter("gym_seq"));
			
			try {
				
//				ArrayList<GymInfoDTO> list = dao.selectSeqList(gym_seq);
//				request.setAttribute("list", list);
				
				GymInfoDTO dto = dao.selectSeq(gym_seq);
				request.setAttribute("dto", dto);
				
			}catch(Exception e) {
				e.printStackTrace();
			}

			request.getRequestDispatcher("/gym/gymDetail.jsp").forward(request, response);
			
		}else if(uri.equals("/modify.gym")) { // 운동시설 수정 페이지 요청
			GymDAO dao = new GymDAO();
			int gym_seq = Integer.parseInt(request.getParameter("gym_seq"));
//			System.out.println("seq" + food_seq);

			try {
				GymInfoDTO dto = dao.selectSeq(gym_seq);
				request.setAttribute("dto", dto);

			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/gym/gymModify.jsp").forward(request, response);
		}else if(uri.equals("/modifyProc.gym")) { // 운동시설 수정 요청
			GymDAO dao = new GymDAO();
			String filePath = request.getServletContext().getRealPath("files");
			File dir = new File(filePath);

			if (!dir.exists()) {
				dir.mkdirs();
			}
			int maxSize = 1024 * 1024 * 10;
			
			try {
				MultipartRequest multi = new MultipartRequest(request, filePath, maxSize, "utf-8", new DefaultFileRenamePolicy());
				UserDTO userDTO = (UserDTO) request.getSession().getAttribute("loginSession");
				
				int gym_seq = Integer.parseInt(multi.getParameter("gym_seq"));
				String gym_name = multi.getParameter("gym_name");
				String gym_phone = multi.getParameter("gym_phone");
				String gym_postcode = multi.getParameter("gym_postcode");
				String gym_roadAddr = multi.getParameter("gym_roadAddr");
				String gym_detailAddr = multi.getParameter("gym_detailAddr");
				String gym_extraAddr = multi.getParameter("gym_extraAddr");
				String gym_month = multi.getParameter("gym_month");
				int gym_price = Integer.parseInt(multi.getParameter("gym_price"));
				String gym_time = multi.getParameter("gym_time");
				String gym_comment = multi.getParameter("gym_comment");
				String gym_src_main = multi.getFilesystemName("gym_src_main");
			
				int rs = dao.modifyInfo(new GymInfoDTO(gym_seq, gym_name, gym_phone, gym_postcode, gym_roadAddr, gym_detailAddr, gym_extraAddr, gym_month, gym_price, gym_time, gym_comment, gym_src_main));
				
				if(rs > 0) {
					System.out.println("수정 성공");
					response.sendRedirect("/detail.gym?gym_seq=" + gym_seq);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		
		}else if(uri.equals("/deleteProc.gym")) { // 운동시설 삭제 요청
			GymDAO dao = new GymDAO();
			int gym_seq = Integer.parseInt(request.getParameter("gym_seq"));
			
			try {
				int rs = dao.delete(gym_seq);
				if(rs > 0) {
					System.out.println("삭제 성공");
					response.sendRedirect("/list.gym");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}else if(uri.equals("/searchProc.gym")) {
			GymDAO dao = new GymDAO();
			String searchLocation = request.getParameter("searchLocation");
			System.out.println("search" + searchLocation);
			
			try {
			ArrayList<GymInfoDTO> locationList = dao.selectLocationList(searchLocation);
				
			Gson gson = new Gson();
			String rs = gson.toJson(locationList);
			System.out.println(rs);
			response.setCharacterEncoding("utf-8");
			response.getWriter().append(rs);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		
		}else if(uri.equals("/interest.gym")) { // 운동 시설 즐겨찾기에 추가
			HttpSession session = request.getSession();
			UserDTO dto = (UserDTO)session.getAttribute("loginSession");
			int gym_seq = Integer.parseInt(request.getParameter("gym_seq"));
			GymDAO dao = new GymDAO();
			
			try {
				int rs = dao.insertInterestGym(gym_seq, dto.getUser_seq());
				
				if (rs > 0) {
					request.getRequestDispatcher("/gym/gymList.jsp");
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
				
		}
	}

}
