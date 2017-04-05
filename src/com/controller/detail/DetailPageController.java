package com.controller.detail;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.MemberDTO;
import com.entity.SreplyDTO;
import com.entity.StoreDTO;
import com.service.SreplyService;
import com.service.StoreService;

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
		/*
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
				,"37.001","127.001"
				);
		*/
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
		
		
	//	request.setAttribute("Rdata", dto);
		
		String sDTO= request.getParameter("sid");
		System.out.println(sDTO);
	
		StoreService service = new StoreService();
		SreplyService rservice = new SreplyService();
		
		
		
		
		StoreDTO sdto = service.selectOne(sDTO);
//		List<StoreDTO> slist= service.selectAll();
		List<SreplyDTO> rlist=rservice.selectSID(sDTO);
		
		int recount =rservice.countReview(sDTO);
		int recountLow=0;
		int recountMiddle=0;
		int recountHigh=0;
		
		//int relowcount=rservice.
		for (SreplyDTO sreplyDTO : rlist) {
			System.out.println(sreplyDTO);
			if(sreplyDTO.getRappr().equals("1"))
			{
				recountLow++;
			
			}
			else if(sreplyDTO.getRappr().equals("3"))
			{
				recountMiddle++;
			}
			else if(sreplyDTO.getRappr().equals("5"))
			{
				recountHigh++;
			}
			
			
				
		}
		
		HashMap<String, Integer> countcarr=new HashMap<>();
		countcarr.put("recountLow",recountLow );
		countcarr.put("recountMiddle",recountMiddle );
		countcarr.put("recountHigh",recountHigh );
		
		request.setAttribute("storeOne", sdto);
		request.setAttribute("sreplylist", rlist);
	//	request.setAttribute("storelist", slist);
		request.setAttribute("recount", recount);
		request.setAttribute("countcarr", countcarr);
		
	//	System.out.println(request.getAttribute("rdata"));
		
		String target="detail.jsp";
		
		RequestDispatcher dis = request.getRequestDispatcher(target);
		
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
