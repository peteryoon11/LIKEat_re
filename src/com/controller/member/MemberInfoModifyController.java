package com.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.entity.MemberDTO;
import com.exception.LikeatException;
import com.service.MemeberService;

@WebServlet("/MemberInfoModifyController")
public class MemberInfoModifyController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("utf-8");
		
		String username = request.getParameter("username");
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		String email = request.getParameter("email");
		String phone1 = request.getParameter("phone1");
		String phone2 = request.getParameter("phone2");
		String phone3 = request.getParameter("phone3");
		
		MemberDTO dto = new MemberDTO(username, userid, userpw, email, phone1, phone2, phone3);
		
		String target = "";
		
		MemeberService service = new MemeberService();
		try {
			service.modifyMember(dto);
			target = "MyPageController";
			/*request.setAttribute("SuccessAlert", "가입을 축하드립니다");*/
		} catch (LikeatException e) {
			e.printStackTrace();
			target = "error.jsp";
			request.setAttribute("errorMsg", "회원정보 수정 중 문제가 발생했어요 :-( ");
			request.setAttribute("linkMsg", "마이페이지로 이동!");
			request.setAttribute("link", "MyPageController");
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
