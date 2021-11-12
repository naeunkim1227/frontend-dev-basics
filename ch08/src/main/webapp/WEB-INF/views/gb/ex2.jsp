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
<script type="text/javascript" src="${pageContext.request.contextPath }/ejs/ejs.js"></script>
<script>
var listEJS = new EJS({
	url: '${pageContext.request.contextPath }/ejs/list-template.ejs'
});

var startNo = -1;
var fetch = function(){
	var url = '${pageContext.request.contextPath }/api/guestbook/list' + (startNo ? ('?sn=' + startNo) : '');
	console.log(url)
	
	$.ajax({
		url: '${pageContext.request.contextPath }/api/guestbook/list' + (startNo ? ('?sn=' + startNo) : ''),
		dataType: 'json',
		type: 'get',
		success: function(response){
			console.log(response);
			
			var html = listEJS.render(response);
			$("#list-guestbook").append(html);
			
			startNo = $("#list-guestbook li").last().data('no')  || 0;
			//업으면 0으로 반환
			console.log();
		}
	});
	
}


$(function(){
	// ..
	// ..
	
	//최초 리스트 가져오기
	fetch();
	
});
</script>
</head>
<body>	
	<h1>AJAX Test - GuestBook</h1>
	<div id="guestbook">
				<h1>방명록</h1>
				<form id="add-form" action="" method="post">
					<input type="text" id="input-name" placeholder="이름">
					<input type="password" id="input-password" placeholder="비밀번호">
					<textarea id="tx-content" placeholder="내용을 입력해 주세요."></textarea>
					<input type="submit" value="보내기" />
				</form>
				<ul id="list-guestbook">
									
				</ul>
			</div>
	
</body>
</html>