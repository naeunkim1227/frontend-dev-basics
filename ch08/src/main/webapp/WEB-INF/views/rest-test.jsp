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
	$("#create").click(function(){
		var vo = {
			name: "에디",
			password: "1234",
			email: "eddy@gamd.com",
			gender: "male"
		}
		
			$.ajax({
				url: "${pageContext.request.contextPath }/api/user" ,
				type: 'post', //요청 method 
				datatype: 'json',	//받을 포맷
				contentType: 'application/json', 
				data: JSON.stringify(vo), 
				success: function(response){
					console.log(response);
					//controller에서 설정한 vo 데이터를 가져온다
				}
				
			});
	});

	$("#read").click(function(){
			$.ajax({
				url: "${pageContext.request.contextPath }/api/user/10" ,
				type: 'get', //요청 method 
				datatype: 'json',	//받을 포맷
				success: function(response){
					console.log(response);
				}
				
			});
	});
	
	$("#update").click(function(){
		var vo = {
			name: "에디22222",
			password: "12345555",
			gender: "female"
		}
		
			$.ajax({
				url: "${pageContext.request.contextPath }/api/user/10" ,
				type: 'put', //요청 method 
				datatype: 'json',	//받을 포맷
				contentType: 'application/json',
				data: JSON.stringify(vo),
				success: function(response){
					console.log(response);
				}
				
			});
	});
	
	$("#delete").click(function(){
			$.ajax({
				url: "${pageContext.request.contextPath }/api/user/10" ,
				type: 'delete', //요청 method 
				datatype: 'json',	//받을 포맷
				contentType: 'application/x-www-form-urlencoded', 
				data: "password=1234",
				success: function(response){
					console.log(response);
				}
				
			});
	});
	
});
</script>
</head>
<body>	
	<h1>AJAX Test - Restful API</h1>
	
	<button id="create">Create(post)</button>
	<br><br>
	
	<button id="read">Read(get)</button>
	<br><br>
	
	<button id="update">Update(put)</button>
	<br><br>
	
	<button id="delete">Delete(delete)</button>
	<br><br>
	
</body>
</html>