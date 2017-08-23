<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				    left: 206px;
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
			.content{
				    width: 324px;
    				height: 30px;
			}
			.content2{
				width: 324px;
    			height: 483px;
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

* { -webkit-box-sizing:border-box; -moz-box-sizing:border-box; -ms-box-sizing:border-box; -o-box-sizing:border-box; box-sizing:border-box; }
</style>
</head>
    <body>
    	<div onclick="location.href='board'" id="bbstt">
			<span class="ftext">A</span><span>cademy</span>&nbsp;&nbsp;&nbsp;<span class="stext">I</span><span>nfomation</span></a>
		</div>
        <div class="wrapper">
            <div class="table">
                <form action="boardwrite" method="post">
                    <div class="row header blue">
                        <span id="bbsw">게시글 작성 페이지</span>
                    </div>
                    <div class="row">
                        <div class="cell">
                            작성자 : ${sessionScope.loginId}
                        </div>
                    </div>
                    <div class="row">
                        <div class="cell">
                            제목
                        </div>
                        <div class="cell">
                            <input class="content" type="text" name="subject" placeholder="글 제목 입력란"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="cell">
                            글 내용
                        </div>
                        <div class="cell">
                            <textarea class="content2" rows="35" name="content" placeholder="글 내용 입력란"></textarea>
                        </div>
                    </div>
                    <div id="sub">
                        <input type="submit" value="작성완료" class="btn btn-primary btn-block btn-large"/>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
