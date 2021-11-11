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
//DOM Load Event
//1. load: 모두 다(DOM, CSSOM, Image) 로딩
//2. DOMContentLoaded: DOM만 로딩(CSSOM x, Image x)
window.addEventListener("DOMContentLoaded", function(){
	document
		.getElementsByTagName("button")[0]
		.addEventListener('click', function(){
			console.log("click");
			var xhr = null;
			
			//1. ActiveXObject ,XMLHttpRequest 생성하기 
			if(window.ActiveXObject){
				// IE8 이하에서 사용가능
				xhr = new ActiveXObject('Microsoft.XMLHTTP');
			}else if(window.XMLHttpRequest){ //Other Standard Browser
				xhr = new XMLHttpRequest();
			}else{
				console.log("Ajax 기능을 사용할 수 없습니다.");
				return;
			}
			
			
			//2.데이터 통신하기
			xhr.addEventListener('readystatechange', function(){
				if(this.readyState == XMLHttpRequest.UNSENT){
					//readyState 0
					//request 초기화 되기 전
					console.log("State: UNSENT")
				}else if(this.readyState == XMLHttpRequest.OPENED){
					console.log("State: OPENED")
					//readyState 1
					//서버와 연결이 성공
					
				}else if(this.readyState == XMLHttpRequest.HEADERS_RECEIVED){
					console.log("State:HEADERS_RECEIVED ")
					//readyState 2
					//서버가 request를 받음
				}else if(this.readyState == XMLHttpRequest.LOADING){
					console.log("State: LOADING")
					//readyState 3
					//response 처리중
				}else if(this.readyState == XMLHttpRequest.DONE){
					console.log("State: DONE")
					//readyState 4
					//response 처리가 끝남
					
					if(this.status != 200){
						console.error(this.state);
						return;
					}
					
					//console.log(this.responseText, typeof(this.responseText));
					//this.responseText는 String 타입이다
					//Object로 변환한다.
					var response= JSON.parse(this.responseText);
					console.log(response, typeof(response));
					
					
					var html = "";
					html += ("<h2>"+ response.data.no +"</h2>");
					html += ("<h2>"+ response.data.name +"</h2>");
					html += ("<h2>"+ response.data.message +"</h2>");
					
					document.getElementById("data").innerHTML = html;
					
					
				}
				
			});	
			
			//3. 데이터를 받을 주소 작성하기
			xhr.open("get",'${pageContext.request.contextPath }/api/json', true);
			xhr.send();
		});


});
</script>
</head>
<body>	
	<h1>AJAX Test - JSON Format Data</h1>
	
	<button>데이터가져오기</button>
	<div id="data">
			
	</div>
	
</body>
</html>