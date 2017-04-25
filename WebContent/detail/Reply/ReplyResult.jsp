<%@page import="java.util.Arrays"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="com.service.SreplyService"%>
<%@page import="com.entity.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String v1 = request.getParameter("v1");
	String v2 = request.getParameter("v2");

	String sid = request.getParameter("sid");
	String rid = request.getParameter("rid");
	String userid=request.getParameter("userid");
	
	String rcontent = request.getParameter("rcontent");
	String rappr = request.getParameter("rappr");

	System.out.println(sid + "\t" + rid + "\t" + rcontent + "\t" + rappr + "\t"+userid);
	// System.out.println(sid+" ddd");

	SreplyDTO rdto = new SreplyDTO();
	rdto.setSid(sid);
	rdto.setRid(rid);
	rdto.setUserid(userid);
	
	rdto.setRcontent(rcontent);
	rdto.setRappr(rappr);
	
	//int result = Integer.parseInt(v1) + Integer.parseInt(v2);
	SreplyService service = new SreplyService();
	service.insertReply(rdto);
	
	List<SreplyDTO> sreplylist = service.selectSID(sid);
	
	//	System.out.println(request.getParameter("v4"));
	 for (SreplyDTO dto : sreplylist) {
		System.out.println(dto);
	} 
	System.out.println("끝나고 난후 ");
%>
<c:forEach items="<%=sreplylist%>" var="abc">

	<!-- value="Hello World" var="msg"
			 -->
	<%-- <div>${abc.sid }</div>
				 --%>

	<div class="row">
		<div class="col-sm-2">
			<div>
				<img src="detail/image/prosam.png" width="100px" height="100px">
			</div>
			<div>프로맛집러</div>
			<span class="glyphicon glyphicon-pencil"></span> <input type="hidden"
				value="리뷰"> :30
			<div></div>
		</div>
		<div class="col-sm-7">
			<div>날짜 ${abc.rwrda }</div>
			내용 <br>${abc.rcontent}

		</div>

		<div class="col-sm-3">
			<c:if test="${abc.rappr eq '1'}">
				<img class=" col-sm-6" src="detail/image/low.png" width="100px"
					height="100px">

				<br>
			</c:if>
			<c:if test="${abc.rappr eq '3'}">
				<img class=" col-sm-6" src="detail/image/avr.png" width="100px"
					height="100px">
				<br>
			</c:if>
			<c:if test="${abc.rappr eq '5'}">
				<img class=" col-sm-6" src="detail/image/good.png" width="100px"
					height="100px">
				<br>
			</c:if>

		</div>
	</div>
	<hr>
</c:forEach>

