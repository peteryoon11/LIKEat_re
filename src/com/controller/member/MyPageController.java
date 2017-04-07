package com.controller.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.MemberDTO;

@WebServlet("/MyPageController")
public class MyPageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		MemberDTO dto = (MemberDTO) session.getAttribute("loginfo");
		
		System.out.println("넘어온 데이터 : " + dto);
		
		String target = "";
		if(dto != null) {
			target = "mypage.jsp";
		} else {
			target = "LoginFormController";
			request.setAttribute("loginFail", "loginFail");
			request.setAttribute("loginFail", "로그인 후 이용해주세요 :-)");
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
