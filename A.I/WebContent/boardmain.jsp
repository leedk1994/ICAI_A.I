<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="kr">
	<head>
	<script src ="http://code.jquery.com/jquery-2.2.4.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
	<style>
		body {
  font: 12px/20px 'Lucida Grande', Tahoma, Verdana, sans-serif;
  color: #404040;
  background: #3498db;
}

#info{
	text-align:center;
	font-size:15px;
}

.side-nav {
  width: 603px;
  margin: 50px auto;
  padding: 10px;
  background: white;
  border-radius: 5px;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.25), 0 1px rgba(255, 255, 255, 0.5);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.25), 0 1px rgba(255, 255, 255, 0.5);
}

.side-nav-button, .side-nav:active .active {
  display: block;
  position: relative;
  height: 36px;
  line-height: 36px;
  margin-bottom: 10px;
  padding: 0 14px;
  font-size: 13px;
  font-weight: bold;
  color: #597490;
  text-decoration: none;
  text-shadow: 0 1px rgba(255, 255, 255, 0.8);
  background: #3498db;
  background-clip: padding-box;
  border: 1px solid;
  border-color: #b2bcc8 #acb6c0 #97abba;
  border-radius: 3px;
  background-image: -webkit-linear-gradient(top, #f1f6ff, #d3dde7 70%, #3498db);
  background-image: -moz-linear-gradient(top, #f1f6ff, #d3dde7 70%, #3498db);
  background-image: -o-linear-gradient(top, #f1f6ff, #d3dde7 70%, #3498db);
  background-image: linear-gradient(to bottom, #f1f6ff, #d3dde7 70%, #3498db);
  -webkit-box-shadow: inset 0 1px white, inset 0 0 0 1px rgba(255, 255, 255, 0.25), 0 1px 1px rgba(0, 0, 0, 0.06);
  box-shadow: inset 0 1px white, inset 0 0 0 1px rgba(255, 255, 255, 0.25), 0 1px 1px rgba(0, 0, 0, 0.06);
}

.side-nav-button:before, .side-nav-button:after {
  content: '';
  position: absolute;
}
.side-nav-button:before {
  top: 10px;
  right: 12px;
  width: 15px;
  height: 15px;
  background: #59718a;
  border-radius: 3px;
  -webkit-box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.4), 0 1px rgba(255, 255, 255, 0.4);
  box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.4), 0 1px rgba(255, 255, 255, 0.4);
}
.side-nav-button:after {
  top: 14px;
  right: 13px;
  border: 4px solid transparent;
  border-left: 4px solid #ecf1f7;
}
.side-nav-button:hover, .side-nav-button.active, .side-nav-button.active, .side-nav-button.active:active {
  color: #f6fdff;
  text-shadow: 0 1px rgba(0, 0, 0, 0.4);
  background-clip: border-box;
}
.side-nav-button:hover {
  background: #99abb9;
  border-color: #718190;
  background-image: -webkit-linear-gradient(top, #99abb9, #7e93a8);
  background-image: -moz-linear-gradient(top, #99abb9, #7e93a8);
  background-image: -o-linear-gradient(top, #99abb9, #7e93a8);
  background-image: linear-gradient(to bottom, #99abb9, #7e93a8);
  -webkit-box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0 1px rgba(255, 255, 255, 0.15), 0 1px rgba(255, 255, 255, 0.3);
  box-shadow: inset 0 1px rgba(255, 255, 255, 0.3), inset 0 0 0 1px rgba(255, 255, 255, 0.15), 0 1px rgba(255, 255, 255, 0.3);
}
.side-nav-button:active, .side-nav-button.active, .side-nav-button.active:active {
  background: #7d91a9;
  border-color: #708191 #6d8295 #7b8c9e;
  background-image: -webkit-linear-gradient(top, #7d91a9, #92a7bc);
  background-image: -moz-linear-gradient(top, #7d91a9, #92a7bc);
  background-image: -o-linear-gradient(top, #7d91a9, #92a7bc);
  background-image: linear-gradient(to bottom, #7d91a9, #92a7bc);
  -webkit-box-shadow: inset 0 1px 5px rgba(0, 0, 0, 0.2), 0 1px rgba(255, 255, 255, 0.4);
  box-shadow: inset 0 1px 5px rgba(0, 0, 0, 0.2), 0 1px rgba(255, 255, 255, 0.4);
}
.side-nav-button:last-child {
  margin-bottom: 0;
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
				margin-left: 165px;
    margin-top: 22px;
			}
			#ccb{
				position: relative;
			    left: 2px;
			    font-size: 16px;
			    color: black;
			    top: -3px;
			}
	</style>
	</head>
    <body>
    <div id="acd" onclick="location.href='main.jsp'">
	<span class="ftext">A</span><span>cademy</span>&nbsp;&nbsp;&nbsp;<span class="stext">I</span><span>nfomation</span>
	</div>
    <nav class="side-nav">
        <div>
            <div>
                <div id="info">
                   	<span id="ccb">A.I 학원 후기 게시판</span>
                </div>
				<c:forEach items="${list}" var="list" begin="0" end="${end}">
                <div class="row">
                    <div class="cell">
                        <a id="sub" href="boarddetail?bbsno=${list.bbsno}&userId=${list.user_id}" class="side-nav-button">${list.subject}</a>
                    </div>
                    <div class="cell bhit">
                        ${list.user_id } / ${list.date } / 조회수 ${list.bhit } 
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
        <a id="view" href="boardmoreread?end=${end}" class="side-nav-button">더보기</a>
	    <a id="write" href="boardwriteForm.jsp" class="side-nav-button">글쓰기</a>
	</nav>
    </body>
    <script>
    	
    </script>
</html>
