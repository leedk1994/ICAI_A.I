<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
		#bbsw{
					position: relative;
				    left: 415px;
				    color: white;
				    font-size: 30px;
				    top: 20px;
			}
			.ftext{
				display:inline-block;
				font-size: 70px;
				color:white;
			}
			.stext{
				font-size:70px;
				color:white;
			}
			span{
				margin-top:30px;
				font-size:30px;
				color:white;	
			}
			#acd{
				margin-left: 320px;
    			margin-top: 26px;
			}
			body{
				background-color: #3498db;
			}
			#dk1{
				    position: relative;
				    font-size: 30px;
				    color: white;
				    top: 100px;
				    margin-left: 300px;
			}
			#dk2{
				position: relative;
			    font-size: 30px;
			    color: white;
			    top: 100px;
			    margin-left: 300px;
			    margin-top: 50px;
			    border-bottom-style: solid;
			    border-top-style: solid;
			    width: 470px;
			    height: 50px;
			}
			#dk3{
				
			}
			#dkdk{
				    position: relative;
				    top: 58px;
				    width: 100px;
				    height: 30px;
				    left: 670px;
			}
		</style>
	</head>
	<body>
	<div id="acd" onclick="location.href='main.jsp'">
	<span class="ftext">A</span><span>cademy</span>&nbsp;&nbsp;&nbsp;<span class="stext">I</span><span>nfomation</span>
	</div>
	<span id="bbsw">학원추천</span>
	
				<div id="dk1">학원명</div>

			<c:forEach items="${list }" var = "companyrc">
					<div id="dk2"><%-- <a href = "companyrcdetail?compName=${companyrc.comp_name }"> --%>
					${companyrc.comp_name }<!-- </a> --></div>
					<div id="dk3">
						<form action="companyrcdetail" method="get">
							<input type="hidden" name="compName" value="${companyrc.comp_name }"/>
							<input type="hidden" name="user_id" value="${companyrc.user_id }"/>
							<input type="submit" value="상세보기" id="dkdk"/>
						</form>
					</div>
			</c:forEach>

	</body>
	<script>
	
	</script>
</html>