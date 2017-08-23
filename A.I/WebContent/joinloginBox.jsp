<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			div{
				font-size:20px;
			}
		</style>
	</head>
	<body>
		<div id="login"></div>
	</body>
	<script>
		<%-- var loginId = "<%=session.getAttribute("loginId")%>"; --%>
		var loginId = "${sessionScope.loginId}";
		
		if(loginId ==""){
			alert("로그인이 필요한 서비스 입니다.");
			location.href="index.jsp";
		}else{
			var content = loginId+" 님 반갑 습니다.";
			content += " <a href='logout'>logout</a>";
			$("#login").html(content);
		}
	</script>
</html>