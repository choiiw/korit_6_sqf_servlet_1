<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	boolean isSuccess = (boolean)request.getAttribute("isSuccess");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	html, body {
		height: 100%;
	}
	
	.container {
		display: flex;
		justify-content: center;
		align-items: center;
		
		width: 100%;
		height: 100%
	}
	
	.msg-box {
		display: flex;
		flex-direction:column;
		justify-content: center;
		align-items: center;
		box-sizing: border-box;
		border: 2px solid #dbdbdb;
		width: 400px;
		height: 500px;
	}
</style>
</head>
<body>
	<div class="container">
		<div class="msg-box">
			<%
				if(isSuccess) {
					
			%>
				<h1>발행사 추가 완료</h1>
			<%
				}else{
			%>
				<h1>발행사 추가 실패</h1>
			<%
				}	
			%>
				<button onclick="location.href = 'http://localhost:8080/dvd/publisher/add'">확인</button>	
				<button onclick="history.back()">뒤로가기</button>	
		</div>
	</div>
</body>
</html>