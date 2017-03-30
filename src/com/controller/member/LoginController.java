package com.controller.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.MemberDTO;
import com.exception.LikeatException;
import com.service.MemeberService;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		String userpw = request.getParameter("userpw");
		
		HashMap<String, String> loginfo = new HashMap<>();
		loginfo.put("userid", userid);
		loginfo.put("userpw", userpw);
		
		MemeberService service = new MemeberService();
		String target = "";
		
		try {
			MemberDTO dto = service.login(loginfo);

			if(dto != null) {
				HttpSession session = request.getSession();
				session.setAttribute("loginfo", dto);
				request.setAttribute("SuccessAlert", dto.getUsername() + "님 어서오세요");
				target = "LikeatMainController";
			} else {
				request.setAttribute("loginFail", "아이디나 비밀번호를 다시 확인해주세요");
				target = "LoginFormController";
			}
			
		} catch (LikeatException e) {
			
			e.printStackTrace();
			target = "error.jsp";
			request.setAttribute("errorMsg", "로그인 중 문제가 발생했어요 :-( ");
			request.setAttribute("linkMsg", "로그인 재시도!");
			request.setAttribute("link", "LoginFormController");
			
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(target);
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
