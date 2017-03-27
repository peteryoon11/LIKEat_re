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
import com.service.StoreService;

@WebServlet("/LikeatMainController")
public class LikeatMainController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		StoreService service = new StoreService();
		List<StoreDTO> list = service.selectAll();
		request.setAttribute("storeList", list);
		
		String target = "main.jsp";
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
