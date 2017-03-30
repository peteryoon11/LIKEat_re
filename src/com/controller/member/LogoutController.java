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

@WebServlet("/LogoutController")
public class LogoutController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDTO dto = (MemberDTO) session.getAttribute("loginfo");
		
		String target = "";
		
		if(dto != null) {
			session.invalidate();
			request.setAttribute("SuccessAlert", dto.getUsername() + "님 다시 만나요 :-)");
			target = "LikeatMainController";
		} else {
			request.setAttribute("loginFail", "로그인부터 시도해주세요 :-)");
			target = "LoginFormController";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
