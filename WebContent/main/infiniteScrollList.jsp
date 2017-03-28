<%@page import="org.apache.ibatis.session.RowBounds"%>
<%@page import="com.exception.LikeatException"%>
<%@page import="com.entity.PageDTO"%>
<%@page import="com.entity.StoreDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.MySqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
int curPage = Integer.parseInt(request.getParameter("curPage")) + 1;

System.out.println("curPage========================>" + curPage);


SqlSession sqlSession = MySqlSessionFactory.openMySession();


int cnt = 0;
List<StoreDTO> list = null;

PageDTO pageDTO = new PageDTO();

int skip = (curPage - 1) * pageDTO.getPerPage();

try{
	
	list = sqlSession.selectList("com.acorn.StoreMapper.selectPage", null, new RowBounds(skip, pageDTO.getPerPage()));
	cnt = sqlSession.selectOne("com.acorn.StoreMapper.totRecord");
	pageDTO.setList(list);
	pageDTO.setCurPage(curPage);
	pageDTO.setTotRecord(cnt);
	
	System.out.println("list========================>" + pageDTO.getList());
	
} catch(Exception e) {	
	
	e.printStackTrace();
	throw new LikeatException("무한스크롤로 페이지 목록 불러오기 실패!!!!!");
	
} finally {
	
	sqlSession.close();
	
}


%>
{

 "pageDTO" : <%=pageDTO %>

}