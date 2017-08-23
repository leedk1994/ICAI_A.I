<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			/* body {margin-top:20px;
				      margin-left:30px;
				     font-family:맑은 고딕,돋움,굴림;
				     color:#888888;
				     font-size:8pt;
    		} */
    		table {border-collapse:collapse;
				       font-size:9pt;
				      margin-left:0;
     		}
/* 		    select {font-size:8pt
		        		font-family:맑은 고딕,돋움,굴림;
		     			height:18px
		    } */
		    
				/*셀렉트디자인-----------------------------------------------------------------------  */
				body {
				  font: 13px/20px 'Lucida Grande', Tahoma, Verdana, sans-serif;
				  color: #404040;
				  background: #3498db;
				}
/* 				.container {
				  margin: 50px auto;
				  width: 500px;
				  text-align: center;
				} */
				/* .container > .dropdown {
					float: left;
				  margin: 0 50px;
				  vertical-align: top;
				} */
				
 				.dropdown {
				  display: inline-block;
				  position: relative;
				  overflow: hidden;
				  height: 50px;
				  width: 456px;
				      margin-left: 250px;
   					margin-bottom: 10px;
				  background: #f2f2f2;
				  border: 1px solid;
				  border-color: white #f7f7f7 #f5f5f5;
				  border-radius: 3px;
				  background-image: -webkit-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
				  background-image: -moz-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
				  background-image: -o-linear-gradient(top, transparent, rgba(0, 0, 0, 0.06));
				  background-image: linear-gradient(to bottom, transparent, rgba(0, 0, 0, 0.06));
 				  -webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08);
				  box-shadow: 0 1px 1px rgba(0, 0, 0, 0.08); 
				} 
	/* 			.dropdown:before, .dropdown:after {
				  content: '';
				  position: absolute;
				  z-index: 2;
				  top: 9px;
				  right: 10px;
				  width: 0;
				  height: 0;
				  border: 4px dashed;
				  border-color: #888 transparent;
				  pointer-events: none;
				} */
				.dropdown:before {
				  border-bottom-style: solid;
				  border-top: none;
				}
				.dropdown:after {
				  margin-top: 7px;
				  border-top-style: solid;
				  border-bottom: none;
				}
				
				.dropdown-select {
				  position: relative;
				  width: 130%;
				  margin: 0;
				  padding: 6px 8px 6px 10px;
				  height: 28px;
				  line-height: 14px;
				  font-size: 12px;
				  color: #62717a;
				  text-shadow: 0 1px white;
				  background: #f2f2f2;
				  background: rgba(0, 0, 0, 0) !important;
				  border: 0;
				  border-radius: 0;
				  -webkit-appearance: none;
				}
				.dropdown-select:focus {
				  z-index: 3;
				  width: 100%;
				  color: #394349;
				  outline: 2px solid #49aff2;
				  outline: 2px solid -webkit-focus-ring-color;
				  outline-offset: -2px;
				}
				.dropdown-select > option {
				  margin: 3px;
				  padding: 6px 8px;
				  text-shadow: none;
				  background: #f2f2f2;
				  border-radius: 3px;
				  cursor: pointer;
				}
				
				.lt-ie9 .dropdown {
				  z-index: 1;
				}
				.lt-ie9 .dropdown-select {
				  z-index: -1;
				}
				.lt-ie9 .dropdown-select:focus {
				  z-index: 3;
				}
				#p{
					position: relative;
    				top: 10px;
					color: black;
				    font-size: 22px;
				    text-align: center;
				}
				#h1{
					color: white;
					text-align: center;
    				font-size: 35px;
				}
				#ttt{
					    text-align: center;
					    color: black;
					    width: 456px;
					    height: 40px;
					    margin-bottom: 10px;
					    margin-left: 250px;
					    font-size:20px;
				}
				#select1{
					width: 150px;
				    height: 28px;
				    position: relative;
				    top: 8px;
				}
				#select2{
					width: 150px;
				    height: 28px;
				    position: relative;
				    top: 8px;
				}
				#select3{
					width: 150px;
				    height: 28px;
				    position: relative;
				    top: 8px;
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
.dkdk{
	    position: relative;
    left: 217px;
    width: 119px;
    height: 56px;
    top: -25px;
    font-size: 20px;
}
.dkdkdk{
	position: relative;
	width: 119px;
    height: 56px;
    font-size: 20px;
    top: -96px;
    left: 85px;
}
		</style>
	</head>
	<body>
	<jsp:include page="title.jsp"/>
		<h1 id="h1">A.I 학원등록</h1>
		<form action="resist" method="post">
		<section class="container">
			<div class="dropdown">
			<span id="p">등록자 </span>
			</div>
			</section>
			<input id="ttt" type="text" value="${sessionScope.loginId}" readonly/>	
			<section class="container">
				<div class="dropdown">
					<span id="p">학원명</span>
				</div>
			</section>
					<td><input id="ttt" type="text" name="compName"/></td>
			<section class="container">
				<div class="dropdown">
					<span id="p">사업자 등록 번호 </span>
				</div>
			</section>
					<td><input id="ttt" type="text" name="compNum"/></td>
			<section class="container">
				<div class="dropdown">
					<td><span id="p">학원 번호 </span> </td>
				</div>
			</section>
					<td><input id="ttt" type="text" name="compPhone"/></td>
				</tr>
			<br>
			<section class="container">
			<div class="dropdown">
			<span id="p">분야 </span> 
			<select name="compField" id="select3">
				<option value=""></option>
				<option value="예체능">예체능</option>
				<option value="보습">보습</option>
				<option value="외국어">외국어</option>
				<option value="기타">기타</option>
			</select>
			</div>
			</section>
			<section class="container">
			<div class="dropdown">
			<span id="p">연령대 </span> <select name="compAge" id="select3">
				<option value=""></option>
				<option value="10대이하">10대이하</option>
				<option value="10~20대">10~20대</option>
				<option value="20~30대">20~30대</option>
				<option value="30~40대">30~40대</option>
				<option value="연령무관">연령무관</option>
			</select><br><br>
			</div>
			</section>
			<section class="container">
				<div class="dropdown">
			<span id="p">과정 </span> 
			</div>
			</section>
			<input id="ttt" type="text" name="compProccess"/>
			<section class="container">
				<div class="dropdown">
			<span id="p">원비 </span>
			</div>
			</section>
			 <input id="ttt" type="text" name="compCost"/>
			
			<section class="container">
			<div class="dropdown">
			<span id="p">주소 </span> 
			<select id="select1" onchange="itemChange()" name="compFaddress">
			<option value="seoul">서울특별시</option>
			<option value="busan">부산광역시</option>
			<option value="daegu">대구광역시</option>
			<option value="incheon">인천광역시</option>
			<option value="gwangju">광주광역시</option>
			<option value="daejun">대전광역시</option>
			<option value="ulsan">울산광역시</option>
			</select>
			</div>
			</section>
			<section class="container">
			<div class="dropdown">
			<select id="select2" name="compSaddress"></select><br><br>
			</div>
			</section>
			<section class="container">
			<div class="dropdown">
			<span id="p">상세주소 </span>
			</div>
			</section> 
			<input id="ttt" type="text" name="compSubaddress"/><br><br>
			<input class="btn btn-primary btn-block btn-large dkdk" type="submit" value="등록하기"/>
			<input class="btn btn-primary btn-block btn-large dkdkdk" type="button" onclick="main.jsp" value="취소하기"/>
		</form>
	</body>
	<script>
	function itemChange(){
		var seoul = ["강북구","광진구","노원구","도봉구","동대문구","마포구","서대문구","성동구"
							,"성북구","용산구","은평구","종로구","중구","중량구","강남구","강동구","강서구",
							"관악구","구로구","금천구","동작구","서초구","송파구","양천구","영등포구"];
		var busan = ["중구","서구","동구","영도구","부산진구","동래구","남구","북구","해운대구","사하구",
							"금정구","연제구","수영구","사상구","기장군"];
		var daegu = ["중구","동구","서구","남구","북구","수성구","달서구","달성군"];
		var incheon = ["중구","동구","남구","연수구","남동구","부평구","계양구"];
		var gwangju = ["동구","서구","남구","북구","광산구"];
		var daejun = ["동구","중구","서구","유성구","대덕구"];
		var ulsan = ["중구","남구","동구","북구","울주군"];
		 
		var selectItem = $("#select1").val();
			 console.log(selectItem); 
		var changeItem;
		  
		if(selectItem == "seoul"){
		  changeItem = seoul;
		}
		else if(selectItem == "busan"){
		  changeItem = busan;
		}
		else if(selectItem == "daegu"){
		  changeItem =  daegu;
		}
		else if(selectItem == "incheon"){
			changeItem = incheon;
		}
		else if(selectItem == "gwangju"){
			changeItem = gwangju;
		}
		else if(selectItem == "daejun"){
			changeItem = daejun;
		}
		else if(selectItem == "ulsan"){
			changeItem = ulsan;
		}
		
		$("#select2").empty();
		
		for(var count = 0;count<changeItem.length;count++){                
			var option = $("<option>"+changeItem[count]+"</option>");
			$("#select2").append(option);
		}
	}
	</script>
</html>