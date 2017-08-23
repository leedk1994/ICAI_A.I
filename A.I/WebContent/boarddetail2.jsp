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
			#bbsw{
				    position: relative;
				    left: 269px;
				    color: white;
				    font-size: 25px;
			}
			html{
				background-color: #3498db; 
			}
			.cell{
				text-align: center;
			    color: white;
			    margin-top: 10px;
			    font-size: 20px;
			}
			@import url(http://fonts.googleapis.com/css?family=Open+Sans);
.btn { display: inline-block; *display: inline; *zoom: 1; padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; color: #333333; text-align: center;text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75); vertical-align: middle; background-color: #f5f5f5; background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6); background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff), to(#e6e6e6)); background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6); background-image: -o-linear-gradient(top, #ffffff, #e6e6e6); background-image: linear-gradient(top, #ffffff, #e6e6e6); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff, endColorstr=#e6e6e6, GradientType=0); border-color: #e6e6e6 #e6e6e6 #e6e6e6; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); border: 1px solid #e6e6e6; -webkit-border-radius: 4px; -moz-border-radius: 4px; border-radius: 4px; -webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); -moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); cursor: pointer; *margin-left: .3em; }
.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] { background-color: #e6e6e6; }
.btn-large { padding: 9px 14px; font-size: 15px; line-height: normal; -webkit-border-radius: 5px; -moz-border-radius: 5px; border-radius: 5px; }
.btn:hover { color: #333333; text-decoration: none; background-color: #e6e6e6; background-position: 0 -15px; -webkit-transition: background-position 0.1s linear; -moz-transition: background-position 0.1s linear; -ms-transition: background-position 0.1s linear; -o-transition: background-position 0.1s linear; transition: background-position 0.1s linear; }
.btn-primary, .btn-primary:hover { text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); color: #ffffff; }
.btn-primary.active { color: rgba(255, 255, 255, 0.75); }
.btn-primary { background-color: #4a77d4; background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4); background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4); background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de), to(#4a77d4)); background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4); background-image: -o-linear-gradient(top, #6eb6de, #4a77d4); background-image: linear-gradient(top, #6eb6de, #4a77d4); background-repeat: repeat-x; filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de, endColorstr=#4a77d4, GradientType=0);  border: 1px solid #3762bc; text-shadow: 1px 1px 1px rgba(0,0,0,0.4); box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.5); }
.btn-primary:hover, .btn-primary:active, .btn-primary.active, .btn-primary.disabled, .btn-primary[disabled] { filter: none; background-color: #4a77d4; }
.btn-block { 
	width: 104px;
    display: block;
    height: 37px;
    margin-bottom: 10px;
    margin-top: 15px;
    margin-left: 368px;
}
#comment{
	width: 256px;
    height: 25px;
}
.dkdk{
	position: relative;
    left: -292px;
}
.dkdkdk{
    position: relative;
    left: 80px;
    top: -49px;
}
.dkdkdkdk{
	position: relative;
    left: 80px;
    top:-49px;
}
</style>
</head>
    <body>
    	<div onclick="location.href='board'" id="bbstt">
			<span class="ftext">A</span><span>cademy</span>&nbsp;&nbsp;&nbsp;<span class="stext">I</span><span>nfomation</span></a>
		</div>
        <div class="wrapper">
            <div class="table">
                <div class="row header blue">
                   <span id="bbsw">게시글</span>
                </div>
                <div class="row">
                    <div id="subject" class="cell">
                        제목 : ${dto.subject }
                    </div>
                </div>
                <div class="row">
                    <div class="cell">
                      작성자 : ${dto.user_id }
                    </div>
                    <div class="cell" id="bhit">
                       등록날짜 : ${dto.date } / 조회수 : ${dto.bhit }
                    </div>
                    <p class="line cell"></p>
                </div>
                <div class="row">
                    <div class="cell" id="content">
                       글 내용<br><br>${dto.content }
                    </div>
                    <form action="boardmodify.jsp" method="post">
                        <input type="hidden" name="subject" value="${dto.subject }"/>
                        <input type="hidden" name="content" value="${dto.content }"/>
                        <input type="hidden" name="bbsno" value="${dto.bbsno }"/>
                        <br/>
                    </form>
                    <p class="line cell"></p>
	                <div class="row">
	                    <div class="cell">
	                        <form action="boardcommentwrite" method="get">
	                            <input id="comment" type="text" name="comments"/>
	                            <input id="commentbutton" class="btn btn-primary btn-block btn-large dkdkdk" type="submit" value="댓글달기"/>
	                            <input type="hidden" name="bbsno" value="${dto.bbsno}"/>
	                            <input type="hidden" name="user_id" value="${sessionScope.loginId }"/>
	                            <input type="hidden" name="bbsId" value="${dto.user_id }"/>
	                        </form>
	                    </div>    
	                </div>
                </div>
                <c:forEach items="${commentlist }" var="list">
	                <div class="row">
	                    <div class="cell">
	                           댓글 작성자 : ${list.user_id }
	                            <br/>
	                            댓글내용 : ${list.comments }
	                    </div>
	                </div>
               	</c:forEach>
            </div>
        </div>
        <button id="board" class="btn btn-primary btn-block btn-large dkdkdkdk" onclick="location.href='board'">목록 보기</button>
    </body>
</html>
