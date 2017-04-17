<%@page import="com.entity.MemberDTO"%>
<%@page import="org.apache.ibatis.session.RowBounds"%>
<%@page import="com.exception.LikeatException"%>
<%@page import="com.entity.PageDTO"%>
<%@page import="com.entity.StoreDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.MySqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
MemberDTO dto = (MemberDTO)session.getAttribute("loginfo");
SqlSession sqlSession = MySqlSessionFactory.openMySession();
try{
	dto = sqlSession.selectOne("com.acorn.MemberMapper.userInfo", dto.getUserid());
} finally {
	sqlSession.close();
}  
System.out.println("무받 =========> " + dto.getEmail());
 %>
<!--  위에서 받은 dto의 정보를, 칸에 삽입해주기 ==> EL쓸려면, 위에서 requestScope에 담아주던가 해야하나... -->
<body>
	<hr/>
	<div class="container">
			<div class="main-login main-center">
				<form id="joinForm" class="form-horizontal" method="post" action="JoinController">
					<div class="form-group">
					  <label class="col-md-5 control-label" for="Name">이름</label>  
					  <div class="col-md-2">
					  <input id="username" name="username" type="text" class="form-control input-md" readonly="readonly" value="<%=dto.getUsername()%>">
					  </div>
					  <span class="formValidation username"></span>
					</div>
					
					<div class="form-group">
					  <label class="col-md-5 control-label" for="Name">아이디</label>  
					  <div class="col-md-2">
					  <input id="userid" name="userid" type="text" class="form-control input-md" readonly="readonly" value="<%=dto.getUserid()%>">
					  </div>
					  <span class="formValidation userid"></span>
					</div>
					
					<div class="form-group">
					  <label class="col-md-5 control-label" for="password">비밀번호</label>
					  <div class="col-md-2">
					    <input id="userpw" name="userpw" type="password" class="form-control input-md">
					  </div>
					  <span class="formValidation"></span>
					</div>
					
					<div class="form-group">
					  <label class="col-md-5 control-label" for="password2">비밀번호 확인</label>
					  <div class="col-md-2">
					    <input id="userpwCheck" name="userpwCheck" type="password" class="form-control input-md">
					  </div>
					  <span class="formValidation userpwCheck"></span>
					</div>


					
					<!-- Text input-->
					<div class="form-group">
					  <label class="col-md-5 control-label" for="emailaddr">Email</label>  
					  <div class="col-md-4">
					  <input id="email" name="email" type="text" placeholder="LIKEat@LIKEat.com" class="form-control">
						<span class="formValidation email"></span>
					  </div>
					</div>
					
					<div class="form-group">
						<label class="col-md-5 control-label" for="Name">전화번호</label>  
						<div class="col-md-6">
							<div class="form-inline">
								<select name="phone1" id="phone1" class="form-control col-xs-1">
									<option value="010" selected="selected">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
									<option value="02">02</option>
								</select>
								 &nbsp;-&nbsp;<input id="phone2" name="phone2" type="text" class="form-control input-md" size="8" maxlength="4">
								-&nbsp;<input id="phone3" name="phone3" type="text" class="form-control input-md" size="8" maxlength="4">
							</div>
						<span class="formValidation phone"></span>
						</div>
					</div>
					
					
					<!-- Button -->
					<div class="form-group">
					  <label class="col-md-5 control-label" for="submit"></label>
					  <div class="col-md-4">
					  	<input type="reset" id="clearForm" name="clearForm" class="btn btn-primary" style="background-color: orange; border: none;" value="다시 작성하기">
					    <button id="submit" name="submit" class="btn btn-primary" style="background-color: white; border-color: orange; color: orange; font-weight: bold;">정보 저장하기</button>
					  </div>
					</div>
				</form>
			</div>
	</div>
</body>