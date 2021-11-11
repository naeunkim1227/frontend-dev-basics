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
			$.ajax({
				url: "${pageContext.request.contextPath }/api/xml" ,
				datatype: "xml",
				success: function(response){
					//console.log(response);
					var $data = $("data",response);
					//<data>안의 데이터 가져오기
					var $no = $("no", $data)
					var $name = $("name", $data)
					var $message = $("message", $data)
					//<data>안의 no, name데이터 가져오기
					
					var html = "";
					html += ("<h2>"+ $no.text() +"</h2>");
					html += ("<h2>"+ $name.text() +"</h2>");
					html += ("<h2>"+ $message.text() +"</h2>");
					
					$("#data").html(html);
					
				}
				
			});
	});
	
});
</script>
</head>
<body>	
	<h1>AJAX Test - Text Format Data</h1>
	
	<button>데이터가져오기</button>
	<div id="data">
			
	</div>
	
</body>
</html>