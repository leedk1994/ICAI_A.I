<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			.ftext{
				font-size: 70px;
				margin-top:31px;
			}
			.stext{
				font-size:70px;
			}
			span{
				font-size:30px;
				text-align: center;
			}
			#bbstt{
				background-color: #3498db;
				color:white;
				text-align: center;
			}
			body {
 				 background: #3498db;
			}
			#ccb{
				    position: relative;
				    left: 378px;
				    font-size: 30px;
				    color: white;
				    top: 30px;
			}
			ol{
				list-style: none;
			}
			#sss{
				    font-size: 30px;
    				color: white;
			}
			#dk1{
				    position: relative;
				    width: 400px;
				    top: 108px;
				    left: 309px;
			}
			#dk2{
				    position: relative;
				    color:white;
				   	top: 80px;
    				left: 150px;
			}
			#dk3{
				    position: relative;
				    color:white:
				    width: 150px;
				    font-size: 25px;
				    top: 52px;
				    right: -720px;
			}
			#ccc{
			text-decoration: none;
			color:white;
			}
			#ccc:link{
			
			color:white;
			}
			#ccc:visited{
			
			color:white;
			}
			#cdetail{
			
			color:white;
			}
			#cdetail:link{
			text-decoration: none;
			color:white;
			}
			#cdetail:visited{
			
			color:white;
			}
		</style>
		<script type="text/javascript">
			function CancleFav(compNum) {
				alert("즐겨찾기에서 삭제 되었습니다.");
				document.location.href="/semipj/companyfavoritecancle?compNum="+compNum;
			}
		</script>
	</head>
	<body>
	<div onclick="location.href='main.jsp'" id="bbstt">
			<span class="ftext">A</span><span>cademy</span>&nbsp;&nbsp;&nbsp;<span class="stext">I</span><span>nfomation</span></a>
		</div>
		<span id="ccb">즐겨찾기 목록</span>
			<c:forEach items="${resultList}" var="list">
					<div id="dk1"><span id="sss">학원명 : ${list.comp_name }</span></div>
					<div id="dk2"><a href="javascript:CancleFav('${list.comp_num }')" id="ccc">즐겨찾기 취소</a></div>
					<div id="dk3"><a href = "favoritedetail?compName=${list.comp_name }" id="cdetail">상세보기</a></div>
			</c:forEach>
	</body>
	<script>
	
	</script>
</html>