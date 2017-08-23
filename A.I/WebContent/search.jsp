<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<script src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			table,td{
				border: 1px solid lightblue;
				border-collapse: collapse;
				width:958px;
				text-align: center;
				border-bottom: none;
				border-top:none;
			}
			.ml-btn-13 {
				/*General*/
				display: inline-block;
				text-decoration: none;
				
				/*Text*/
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				font-size:13px;
				font-weight:bold;
				line-height:240%;
				color:rgb(52,103,221);
				text-align:center;
				text-shadow:0px 1px 0px rgba(255,255,255,0.25);
				
				/*Button*/
				background-color: #7BBDFF;
				background-image:-moz-linear-gradient(53% 100% 90deg,rgb(115,185,255) 0%,rgb(153,204,255) 100%); 
				background-image:-webkit-gradient(linear,53% 100%,53% 3%,color-stop(0, rgb(115,185,255)),color-stop(1, rgb(153,204,255)));
				background-image:-webkit-linear-gradient(90deg,rgb(115,185,255) 0%,rgb(153,204,255) 100%);
				background-image:-o-linear-gradient(90deg,rgb(115,185,255) 0%,rgb(153,204,255) 100%);
				background-image:-ms-linear-gradient(90deg,rgb(115,185,255) 0%,rgb(153,204,255) 100%);
				background-image:linear-gradient(90deg,rgb(115,185,255) 0%,rgb(153,204,255) 100%);
				width:120px;
				height:30px;
				border-color:rgb(73,136,225);
				border-width:1px;
				-moz-border-radius:3px;
				-webkit-border-radius:3px;
				border-radius:3px;
				border-style:solid;
				-moz-box-shadow:0px 0px 0px 3px rgba(0,0,0,0.1) ,inset 0px 1px 0px rgba(255,255,255,0.25);
				-webkit-box-shadow:0px 0px 0px 3px rgba(0,0,0,0.1) ,inset 0px 1px 0px rgba(255,255,255,0.25);
				box-shadow:0px 0px 0px 3px rgba(0,0,0,0.1) ,inset 0px 1px 0px rgba(255,255,255,0.25);
				-ms-filter:"progid:DXImageTransform.Microsoft.gradient(startColorstr=#ff99ccff,endColorstr=#ff73b9ff,GradientType=0)
					progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,Strength=3)";
				filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#ff99ccff,endColorstr=#ff73b9ff,GradientType=0)
					progid:DXImageTransform.Microsoft.Glow(Color=#ff000000,Strength=3);
				}
			
				.rounded {
					-moz-border-radius:100px;
					-webkit-border-radius:100px;
					border-radius:100px;
				}
				.spantext{
					font-size:15px;
					font-family: arial;
				}
				body {
				  font: 13px/20px 'Lucida Grande', Tahoma, Verdana, sans-serif;
				  color: #404040;
				  background: #3498db;
				}
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
					color: gray;
					font-size: 15px;
				}
				#h1{
					color: white;
				}
				#text{
					text-align: center;
					color: gray;
				}
				.spantext{color:black; font-size: 20px;}
				#spantext{color:white; font-size: 20px; }
				#search{color:white; font-size; 30px;}
				h2{color:white;}
				#bbsw{
					position: relative;
				    left: 415px;
				    color: white;
				    font-size: 30px;
				    top: 20px;
			}
			.container{
				position:relative;
				top: 90px;
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
				#dkdk123{
					position: relative;
				    top: 129px;
				    height: 39px;
				    left: 10px;
				}
				#dk1234{
					position:relative;
					top:200px;
					font-size:20px;
				}
				.spantext1{
					color:white;
					font-size:20px;
				}
				tr{
					border-bottom-style: solid;
					border:1px solid white;
				}
		</style>
	</head>
	<body>
	<jsp:include page="title.jsp"/>
	<span id="bbsw">학원검색</span>
	<form action="search" method="post">
	<section class="container">
			<div class="dropdown">
		<span class="spantext">주소 :</span> 
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
		<span class="spantext">주소(구) : </span> 
		<select id="select2" name="compSaddress">
		</select><br><br>
		</div>
		</section>
		<section class="container">
			<div class="dropdown">
		<span class="spantext">분야 :</span> 
		<select name="compField" id="select3">
			<option value="예체능">예체능</option>
			<option value="보습">보습</option>
			<option value="외국어">외국어</option>
			<option value="기타">기타</option>
		</select>
		</div>
		</section>
		<div id="dkdk123">
		<span class="spantext1">학원명 : </span><input type="text" name="compName"/>
		<input class="ml-btn-13 rounded" type="submit" value="검색하기"/></div>
		</form>
		
		<table id="dk1234">
			<tr>
				<td id="search">분야</td>
				<td id="search">학원명</td>
				<td id="search">상세보기</td>
			</tr>
			<c:forEach items="${list }" var = "companys">
				<tr>
					<td><p id="search">${companys.comp_field }</p></td>
					<td><p id="search">${companys.comp_name }<br>
					위치 : ${companys.comp_faddress } ${companys.comp_saddress }</p>
					<input type="hidden" value="${companys.user_id }"/>
					</td>
					<td>
						<form action="companydetail" method="get">
							<input type="hidden" name="compName" value="${companys.comp_name }"/>
							<input type="hidden" name="user_id" value="${companys.user_id }"/>
							<input type="submit" value="상세보기" id="dkch"/>
						</form>
						<%-- <a href = "companydetail?compName=${companys.comp_name } & user_id=${companys.user_id }" class="ml-btn-13 rounded">상세보기</a> --%>
					</td>
				</tr>
			</c:forEach>
		</table>
	
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