<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/jquery/jquery-3.6.0.js"></script>
<script>
$(function(){
	$("button").click(function(){
		$("p").load("${pageContext.request.contextPath }/api/html h1");
		//load할 문서 태그를 표시하면 해당 태그 내용만 로드한다.
	});
	
});
</script>
</head>
<body>	
	<h1>AJAX Test - Text Format Data</h1>
	
	<button>변경</button>
	<p>변경전</p>
	
</body>
</html>