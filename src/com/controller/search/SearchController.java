package com.controller.search;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.StoreDTO;
import com.exception.LikeatException;
import com.service.StoreService;

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String searchKeyword = request.getParameter("searchKeyword");
		
		StoreService service = new StoreService();
		String target = "";
		
		try {
			List<StoreDTO> list = service.searchKeyword(searchKeyword);
			// 값 넘겨받고나서, 1건도 없을수도 있고 1건만 있을수도 있고... 케이스따라!
		} catch (LikeatException e) {
			e.printStackTrace();
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
