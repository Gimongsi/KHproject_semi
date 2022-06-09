package com.dangpert.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dangpert.dao.ColumnDAO;
import com.dangpert.dao.InformationDAO;
import com.dangpert.dto.CalumnDTO;
import com.dangpert.dto.InformationDTO;
import com.dangpert.dto.UserDTO;
import com.google.gson.Gson;

@WebServlet("*.column")
public class ColumnController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("요청 uri : " + uri);

		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");

		if (uri.equals("/toColumnPage.column")) { // column 페이지 요청
			ColumnDAO dao = new ColumnDAO();
			try {
				ArrayList<CalumnDTO> list = dao.selectAll();

				request.setAttribute("list", list);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/column/columnPage.jsp").forward(request, response);
		} else if (uri.equals("/write.column")) { // column 글쓰기페이지 요청
			response.sendRedirect("/column/columnWrite.jsp");
		} else if (uri.equals("/register.column")) { // column 글쓰기 요청
			UserDTO dto = (UserDTO) request.getSession().getAttribute("loginSession");
			String calumn_title = request.getParameter("calumn_title");
			String calumn_content = request.getParameter("calumn_content");

			System.out.println(calumn_title + " : " + calumn_content);

			ColumnDAO dao = new ColumnDAO();
			try {
				int rs = dao.write(new CalumnDTO(0, calumn_title, calumn_content, null));

				if (rs > 0) {

					response.sendRedirect("/toColumnPage.column");

				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/view.column")) { // column 내용 요청
			int calumn_seq = Integer.parseInt(request.getParameter("calumn_seq"));

			System.out.println("calumn_seq : " + calumn_seq);

			ColumnDAO dao = new ColumnDAO();
			try {
				CalumnDTO dto = dao.selectBySeq(calumn_seq);
				request.setAttribute("dto", dto);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/column/columnView.jsp").forward(request, response);

		} else if (uri.equals("/modify.column")) {// column 수정 페이지 요청
			int calumn_seq = Integer.parseInt(request.getParameter("calumn_seq"));
			
			System.out.println("calumn_seq : " + calumn_seq);

			ColumnDAO dao = new ColumnDAO();
			try {
				CalumnDTO dto = dao.selectBySeq(calumn_seq);
				System.out.println(dto.toString());
				request.setAttribute("dto", dto);
			}catch(Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("/column/columnView.jsp").forward(request, response);

		} else if (uri.equals("/modifyProc.column")) { // column 수정 요청
			int calumn_seq = Integer.parseInt(request.getParameter("calumn_seq"));
			String calumn_title = request.getParameter("calumn_title");
			String calumn_content = request.getParameter("calumn_content");

			System.out.println("calumn_title : " + calumn_title);

			ColumnDAO dao = new ColumnDAO();
			try {
				int rs = dao.modify(new CalumnDTO(calumn_seq, calumn_title, calumn_content, null));
				if (rs > 0) {
					response.sendRedirect("/view.column?calumn_seq=" + calumn_seq);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/deleteProc.column")) {// column 삭제 요청
			int calumn_seq = Integer.parseInt(request.getParameter("calumn_seq"));
			System.out.println("calumn_seq :" + calumn_seq);

			ColumnDAO dao = new ColumnDAO();

			try {
				int rs = dao.delete(calumn_seq);
				if (rs > 0) {
					// 삭제완료 후에는 게시글 목록을 요청
					response.sendRedirect("/toColumnPage.column");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/searchProc.bo")) { // 제목 검색 요청
			String searchKeyword = request.getParameter("searchKeyword");
			System.out.println("keyword : " + searchKeyword);

			ColumnDAO dao = new ColumnDAO();
			try {
				ArrayList<CalumnDTO> list = dao.searchByTitle(searchKeyword);
				Gson gson = new Gson();
				String rs = gson.toJson(list);
				System.out.println(rs);
				response.setCharacterEncoding("utf-8");
				response.getWriter().append(rs);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
