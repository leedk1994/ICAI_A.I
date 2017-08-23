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
				    left: 395px;
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
			#dktt{
				position: relative;
			    top: 100px;
			    left: 235px;
			}
			#dk1{
				    font-size: 30px;
    				color: white;
			}
			#dk2{
				
			}
			.dk3{
				width: 400px;
			    height: 50px;
			    margin-bottom: 10px;
			    font-size: 23px;
			}
			#dk4{
				width: 100px;
			    height: 40;
			    font-size: 20px;
			    margin-top: 10px;
			}
			#dk5{
				text-decoration: none;
				color:white;
				font-size: 25px;
			}
			#dk5:link{
				color:white;
			}
			#dk5:visited{
				color:white;
			}
			.dkdk{
				        position: relative;
				    top: 90px;
				    width: 100px;
				    height: 40px;
				    font-size: 20px;
				    left: 679px;
			}
		</style>
		
	</head>
	<body>
	<div id="acd" onclick="location.href='recommend.jsp'">
	<span class="ftext">A</span><span>cademy</span>&nbsp;&nbsp;&nbsp;<span class="stext">I</span><span>nfomation</span>
	</div>
	<span id="bbsw">학원상세정보</span>
	<form action="companyrcmodify" method="post">
		<table id="dktt">
			<tr>
				<td id="dk1">학원명 : </td>
				<td id="dk2"><input type="text" class="dk3" name="compName" value="${rccompany.comp_name }"/></td>
			</tr>
			<tr>
				<td id="dk1">분야 : </td>
				<td id="dk2"><input type="text" class="dk3" name="compField" value="${rccompany.comp_field }"/></td>
			</tr>
			<tr>
				<td id="dk1">주소(시) : </td>
				<td id="dk2"><input type="text" class="dk3" name="compFaddress" value="${rccompany.comp_faddress }"/></td>
			</tr>
			<tr>	
				<td id="dk1">주소(구) : </td>
				<td id="dk2"><input type="text" class="dk3" name="compSaddress" value="${rccompany.comp_saddress }"/></td>
			</tr>
			<tr>
				<td id="dk1">상세주소 : </td>
				<td id="dk2"><input type="text" class="dk3" name="compSubaddress" value="${rccompany.comp_subaddress }"/></td>
			</tr>
			<tr>
				<td id="dk1">원비 : </td>
				<td id="dk2"><input type="text" class="dk3" name="compCost" value="${rccompany.comp_cost }"/></td>
			</tr>
			<tr>
				<td id="dk1">과정 : </td>
				<td id="dk2"><input type="text" class="dk3" name="compProccess" value="${rccompany.comp_proccess }"/></td>
			</tr>
			<tr>
				<td id="dk1">연령대 : </td>
				<td id="dk2"><input type="text" class="dk3" name="compAge" value="${rccompany.comp_age }"/></td>
			</tr>
			<tr>
				<td id="dk1">학원번호 : </td>
				<td id="dk2"><input type="text" class="dk3" name="compPhone" value="${rccompany.comp_phone }"/></td>
			</tr>
		</table>
		<input type="hidden" name="userId" value="${rccompany.user_id }"/>
	</form>
	<input type="button" id="btnFav" value="즐겨찾기" class="dkdk"/>
	</body>
	<script>
	
	</script>
</html>