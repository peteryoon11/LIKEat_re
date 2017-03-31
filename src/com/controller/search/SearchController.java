package com.controller.search;

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

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String searchKeyword = request.getParameter("searchKeyword");
		
		StoreService service = new StoreService();
		String target = "";
		
//		topNav에서 검색했을 때, sname 과 smenu 에서 검색한 결과를 뿌려줄 예정이며
//		첫화면에서 컨텐츠가 뿌려지는 순서는
//		main화면에서 TOP에 뿌려지는 순서와 동일하게 별점순으로 할 예정입니다
//		그리고 order by 기능을 추가하여, [상호명 가나다순] [최신등록순] 으로 정렬해서 볼 수 있게 할 예정입니다
		
		try {
			
			List<StoreDTO> list = service.searchKeyword(searchKeyword);
			// 값 넘겨받고나서, 1건도 없을수도 있고 1건만 있을수도 있고... 케이스따라!
			
			int resultCnt = service.searchCnt(searchKeyword);
			
			if(list == null) {
				System.out.println("검색결과 없음 =========> null");
			} else {
				request.setAttribute("searchList", list);
				request.setAttribute("resultCnt", resultCnt);
				System.out.println("검색결과 not null =========> " + list);
			}
			target = "search.jsp";
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error.jsp";
			request.setAttribute("errorMsg", "찾기에 실패했어요 :-( ");
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
