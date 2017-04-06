<%@page import="java.util.HashMap"%>
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
int curPage = Integer.parseInt(request.getParameter("curPage"));

System.out.println("curPage========================>" + curPage);

SqlSession sqlSession = MySqlSessionFactory.openMySession();

int cnt = 0;
List<StoreDTO> list = null;

PageDTO pageDTO = new PageDTO();

int skip = (curPage - 1) * pageDTO.getPerPage();
HashMap<String, String> mapperParam = new HashMap<>();
mapperParam.put("yongsan", "yongsan");

try{
	
	list = sqlSession.selectList("com.acorn.StoreMapper.selectPage", mapperParam, new RowBounds(skip, pageDTO.getPerPage()));
	cnt = sqlSession.selectOne("com.acorn.StoreMapper.totRecord");
	pageDTO.setList(list);
	pageDTO.setCurPage(curPage);
	pageDTO.setTotRecord(cnt);
	
	System.out.println("list========================>" + pageDTO.getList());
	
	request.setAttribute("pageDTO", pageDTO);
} catch(Exception e) {	
	
	e.printStackTrace();
	throw new LikeatException("무한스크롤로 페이지 목록 불러오기 실패!!!!!");
	
} finally {
	
	sqlSession.close();
	
}
%>
    <section class="no-padding neweatList" id="portfolio">
        <div class="container">
            <div class="row popup-gallery">
				<c:forEach items="${pageDTO.list}" var="s" varStatus="i">
					<div class="col-lg-3 col-sm-6">
					    <a href="${s.imgSrc1}" class="portfolio-box">
					        <img src="${s.imgSrc1}" class="img-responsive" alt="" >
					        <div class="portfolio-box-caption">
					            <div class="portfolio-box-caption-content">
					                <div class="project-name">
					                    ${s.sname}
					                </div>
					                <div class="project-category text-faded">
					                    ${s.sid}
					                    <input type="hidden" id="curPage" name="curPage"  value="${pageDTO.curPage}">
					                </div>
					            </div>
					        </div>
					    </a>
					</div>
            	</c:forEach>
 			</div>
        </div>
    </section>
