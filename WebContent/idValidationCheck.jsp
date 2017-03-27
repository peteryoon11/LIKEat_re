<%@page import="com.dao.MySqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String userid = request.getParameter("userid");
	
	SqlSession sqlSession = MySqlSessionFactory.openMySession();
	int exist = 0;
	try{
		exist = sqlSession.selectOne("com.acorn.MemberMapper.useridCheck", userid);
	} finally {
		sqlSession.close();
	}
	
	String result = null;
	if(exist == 1) {
		result = "존재하는 아이디입니다";
	} else {
		result = "";
	}
%>
<%=result%>