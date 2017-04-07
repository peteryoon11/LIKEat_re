package com.controller.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.StoreDTO;
import com.exception.LikeatException;
import com.service.StoreService;

@WebServlet("/CategoryFController")
public class CategoryFController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String searchKeyword = "양식";
		
		StoreService service = new StoreService();
		String target = "";
		
		try {
//			List<StoreDTO> list = service.searchKeyword(searchKeyword);
			List<StoreDTO> list = service.searchCategory(searchKeyword);
			
			int resultCnt = service.searchCnt(searchKeyword);
			
			if(list == null) {
				System.out.println("검색결과 없음 =========> null");
			} else {
				request.setAttribute("searchList", list);
				request.setAttribute("resultCnt", resultCnt);
				System.out.println("검색결과 not null =========> " + list);
			}
			target = "foreign.jsp";
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error.jsp";
			request.setAttribute("errorMsg", "한식 목록불러오기 실패했어요 :-( ");
			request.setAttribute("linkMsg", "메인으로 돌아가기!");
			request.setAttribute("link", "LikeatMainController");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
