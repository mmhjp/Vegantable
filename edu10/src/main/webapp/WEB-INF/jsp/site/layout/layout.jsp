<%@ page import="java.io.File"%>
<%@ page import="org.springframework.beans.factory.annotation.Value"%>
<%@ page import="egovframework.com.cmm.util.EgovProperties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ include file="/WEB-INF/taglib/taglib.jspf"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
	if (request.getProtocol().equals("HTTP/1.1"))
		response.setHeader("Cache-Control", "no-cache");
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">

<!-- 공통 스타일-->
<c:import url="/WEB-INF/jsp/site/layout/css.jsp" />
<!-- 공통 스크립트-->
<c:import url="/WEB-INF/jsp/site/layout/script.jsp" />

</head>

<body>

	<!--공통 위쪽-->
	<c:import url="/WEB-INF/jsp/site/layout/top.jsp" />


	<tiles:insertAttribute name="content" />


	<!--공통 하단-->
	<c:import url="/WEB-INF/jsp/site/layout/footer.jsp" />






</body>
</html>
