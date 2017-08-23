<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			.title{
				border:2px solid #3498db;
				text-align: center;
				width: 958px;
				margin-bottom: 10px;
				height:150px;
				background-color: #3498db;
				color:white;
				font-family: arial;
			}
			
			.search{
				display:inline-block;
				margin-left: 237px;
				margin-top: 50px;
			}
			.tsearch{
				margin-left: 70px;
			}
			.gps{
				display:inline-block;
				margin-left:100px;
			}
			.tgps{
				margin-left: 108px;
			}
			.star{
				display:inline-block;
				margin-left:125px;
			}
			.tstar{
				margin-left:65px;
			}
			.review{
				display:inline-block;
				margin-left: 70px;
				margin-top: 50px;
			}
			.treview{
				margin-left: 50px;
			}
			.recommend{
				display:inherit;
				margin-left:425px;
				margin-top:-240px;
			}
			.trecommend{
				margin-left:60px;
			}
			.resist{
				display:inherit;
				margin-left:723px;
				margin-top:-240px;
			}
			.tresist{
				margin-left:72px;
			}
			.all{
				
				width:958px;
			}
			.ftext{
				display:inline-block;
				font-size: 70px;
			}
			.stext{
				font-size:70px;
			}
			span{
				margin-top:30px;
				font-size:30px;
			}
		</style>
	</head>
	<body>
	<div class="title">
	<span class="ftext">A</span><span>cademy</span>&nbsp;&nbsp;&nbsp;<span class="stext">I</span><span>nfomation</span>
	</div>
	<jsp:include page="joinloginBox.jsp"/>
	<div class="all">
	
	<div class="search">
	<a href="search.jsp">
	<img src="search.png" alt="SEARCH" width="200" height="200"/>
	</a>
	<h3 class="tsearch">Search</h3>
	</div>
	
	<div class="star">
	<a href="companyfavoritelist">
	<img src="star.jpg" alt="즐겨찾기" width="200" height="200"/>
	</a>
	<h3 class="tstar">즐겨찾기</h3>
	</div>
	<br>
	<div class="review">
	<a href="board">
	<img src="review.jpg" alt="리뷰게시판" width="200" height="200"/>
	</a>
	<h3 class="treview">리뷰 게시판</h3>
	</div>
	
	<div class="recommend">
	<a href="recommend.jsp">
	<img src="recommend.png" alt="내주변 찾기" width="160" height="160"/>
	</a>
	<h3 class="trecommend">추천</h3>
	</div>
	
	<div class="resist">
	<a href="confirmnum">
	<img src="plus.png" alt="학원등록" width="180" height="180"/>
	</a>
	<h3 class="tresist">등록</h3>
	</div>
	
	</div>
	</body>
	<script>
	/* function btn(){
		location.href='confirmnum';
		var msg="${confmsg}";
		if(msg != null){
			alert(msg);
		}
	} */
	/* var msg="${confmsg}";
	if(msg != null){
		alert(msg);
	} */
	</script>
</html>