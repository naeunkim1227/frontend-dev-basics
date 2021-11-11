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
	vo = {
		name: "뽀로로",
		password: "1234",
		message: "노는게 제일 좋아.."
	};
	$("button").click(function(){
			$.ajax({
				url: "${pageContext.request.contextPath }/api/post02" ,
				async: true,
				type: 'post', //요청 method 
				datatype: 'json',	//받을 포맷
				contentType: 'application/json', 
				data: JSON.stringify(vo),
				success: function(response){
					console.log(response);
					var html = "";
					html += ("<h2>"+ response.data.no +"</h2>");
					html += ("<h2>"+ response.data.name +"</h2>");
					html += ("<h2>"+ response.data.message +"</h2>");
					
					$("#data").append(html);
					
				}
				
			});
	});
	
});
</script>
</head>
<body>	
	<h1>AJAX Test - JSON Format Data</h1>
	
	<button>데이터보내기(post, delete, put) : json 포맷</button>
	<div id="data">
			
	</div>
	
</body>
</html>