package com.controller.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.PageDTO;
import com.entity.StoreDTO;
import com.exception.LikeatException;
import com.service.StoreService;

@WebServlet("/LikeatMainController")
public class LikeatMainController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String curPageS = request.getParameter("curPage");
		int curPage = 1;
		if(curPageS != null) {
			curPage = Integer.parseInt(curPageS);
		}		
		
		String target = "";

		StoreService service = new StoreService();
		
		try {
			PageDTO pageDTO = service.selectPage(curPage);
			
			List<StoreDTO> topList = service.selectTop();
			List<StoreDTO> newList = service.selectNew();
			
			
			request.setAttribute("pageDTO", pageDTO);
			request.setAttribute("topList", topList);
			request.setAttribute("newList", newList);
			target = "main.jsp";
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error.jsp";
			request.setAttribute("errorMsg", "목록 불러오기에 실패했어요 :-( ");
			request.setAttribute("linkMsg", "메인 다시 불러오기!");
			request.setAttribute("link", "LikeatMainController");
		}
		
//		List<StoreDTO> list = service.selectAll();
//		request.setAttribute("storeList", list);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
