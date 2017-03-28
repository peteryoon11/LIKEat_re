package com.controller.detail;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.StoreDTO;

/**
 * Servlet implementation class DetailPageController
 */
@WebServlet("/DetailPageController")
public class DetailPageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
		/*RestauInfoDTO dto = new RestauInfoDTO();
		dto.setRname("TestRestaurantName");
		dto.setRaddress("서울시 강남구");
		dto.setRscore("4.5");
		*/
		
		StoreDTO dto=new StoreDTO(
				"s0002","아이엠어버거" ,
				1130,2100, 
				"000", "000", 
				"서울특별시", 
				"마포구 창전동 5-78", "양식", "02", "338", "8507", "햄버거, 수제버거", 
				9000,
				'n',
				0, 0,
				
				"https://mp-seoul-image-production-s3.mangoplate.com/184317/90579_1442431968699109058",
				"https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/301291_1487603652546346.jpg",
				"https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/301291_1487603653475364.jpg",
				"https://mp-seoul-image-production-s3.mangoplate.com/184317/725763_1487384004579_9918"
				
				);
		
				//new StoreDTO();
		//dto.setSid("s0002");
		
		
		
		/*
		(select concat('s', lpad((max(ltrim(substr(sid, 2),0)) + 1), 4, 0)) from store),
		'아이엠어버거' , '1130', '2100', '000', '000', '서울특별시', '마포구 창전동 5-78', '양식', '02', '338', '8507', '햄버거, 수제버거', '9000', 'n', 0, 0,
		'https://mp-seoul-image-production-s3.mangoplate.com/184317/90579_1442431968699109058',
		'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/301291_1487603652546346.jpg',
		'https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/301291_1487603653475364.jpg',
		'https://mp-seoul-image-production-s3.mangoplate.com/184317/725763_1487384004579_9918'
		);*/
		request.setAttribute("Rdata", dto);
		System.out.println("1");
		RequestDispatcher dis = request.getRequestDispatcher("TestSource/Detailtest/Detail.jsp");
		dis.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
