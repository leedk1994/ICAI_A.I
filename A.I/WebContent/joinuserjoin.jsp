<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
	<head>
		<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/3.1.1/css/font-awesome.css" rel="stylesheet">
		<style>
			body, div, dl, dt, dd, ul, ol, li, h1, h2, h3, h4, h5, h6, 
pre, form, fieldset, input, textarea, p, blockquote, th, td { 
  padding:0;
  margin:0;}

fieldset, img {border:0}

ol, ul, li {list-style:none}

:focus {outline:none}

body,
input,
textarea,
select {
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  color: #4c4c4c;
}

p {
  font-size: 12px;
  width: 150px;
  display: inline-block;
  margin-left: 18px;
}
h1 {
  font-size: 50px;
  font-weight: 300;
  color: #4c4c4c;
  text-align: center;
  padding-top: 10px;
  margin-bottom: 10px;
}

html{
  background-color: #ffffff;
}

.testbox {
  margin: 20px auto;
  width: 900px; 
  height: 1303px; 
  -webkit-border-radius: 8px/7px; 
  -moz-border-radius: 8px/7px; 
  border-radius: 8px/7px; 
  background-color: #3498db;
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.31); 
  border: solid 1px #cbc9c9;
  margin-left: 38px;
}

input[type=radio] {
  visibility: hidden;
}

form{
  margin: 0 30px;
}

label.radio {
	cursor: pointer;
  text-indent: 35px;
  overflow: visible;
  display: inline-block;
  position: relative;
  margin-bottom: 15px;
}

label.radio:before {
  background: #3a57af;
  content:'';
  position: absolute;
  top:2px;
  left: 0;
  width: 20px;
  height: 20px;
  border-radius: 100%;
}

label.radio:after {
	opacity: 0;
	content: '';
	position: absolute;
	width: 0.5em;
	height: 0.25em;
	background: transparent;
	top: 7.5px;
	left: 4.5px;
	border: 3px solid #ffffff;
	border-top: none;
	border-right: none;

	-webkit-transform: rotate(-45deg);
	-moz-transform: rotate(-45deg);
	-o-transform: rotate(-45deg);
	-ms-transform: rotate(-45deg);
	transform: rotate(-45deg);
}

input[type=radio]:checked + label:after {
	opacity: 1;
}

hr{
  color: #a9a9a9;
  opacity: 0.3;
}

input[type=text],input[type=password]{
  width: 426px; 
  height: 72px; 
  -webkit-border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  -moz-border-radius: 0px 4px 4px 0px/0px 0px 4px 4px; 
  border-radius: 0px 4px 4px 0px/5px 5px 4px 4px; 
  background-color: #fff; 
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 1px #cbc9c9;
  margin-left: 243px;
  margin-top: 13px; 
  padding-left: 10px;
  margin-bottom: 35px;
}

input[type=password]{
  margin-bottom: -2px;
}

#icon {
  display: inline-block;
  width: 140px;
  height:77px;
  background-color: #3a57af;
  padding: 8px 0px 8px 15px;
  margin-left: 105px;
  -webkit-border-radius: 4px 0px 0px 4px; 
  -moz-border-radius: 4px 0px 0px 4px; 
  border-radius: 4px 0px 0px 4px;
  color: white;
  -webkit-box-shadow: 1px 2px 5px rgba(0,0,0,.09);
  -moz-box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  box-shadow: 1px 2px 5px rgba(0,0,0,.09); 
  border: solid 0px #cbc9c9;
}

.gender {
  margin-left: 30px;
  margin-bottom: 30px;
}

.accounttype{
  margin-left: 8px;
  margin-top: 20px;
}

a.button {
  font-size: 14px;
  font-weight: 600;
  color: white;
  padding: 6px 25px 0px 20px;
  margin: 10px 8px 20px 0px;
  display: inline-block;
  float: right;
  text-decoration: none;
  width: 50px; height: 27px; 
  -webkit-border-radius: 5px; 
  -moz-border-radius: 5px; 
  border-radius: 5px; 
  background-color: #3a57af; 
  -webkit-box-shadow: 0 3px rgba(58,87,175,.75); 
  -moz-box-shadow: 0 3px rgba(58,87,175,.75); 
  box-shadow: 0 3px rgba(58,87,175,.75);
  transition: all 0.1s linear 0s; 
  top: 0px;
  position: relative;
}

a.button:hover {
  top: 3px;
  background-color:#2e458b;
  -webkit-box-shadow: none; 
  -moz-box-shadow: none; 
  box-shadow: none;
  
}
#chbtn{
	position:relative;
	left: 25px;
    top: -1px;
    height:58px;
    width:100px;
}
#joinbtn{
	position: relative;
    left: 565px;
    top: 19px;
    width: 103px;
    height: 57px;
}
#refbtn{
	position: relative;
    left: 325px;
    top: 19px;
    width: 100px;
    height: 58px;
}
#compnbtn{
    position: relative;
    width: 425px;
    left: -149px;
    height: 45px;
    top: 28px;
}
#checkPwd{
	position:relative;
	left: 506px;
    top: 7px;
}
#slt{
	width: 426px;
    height: 50px;
    position: relative;
    left: 159px;
}
#title{
	color:white;
	font-family: arial;
}
#sltch{
	position: relative;
    left: 240px;
    top: -51px;
    font-size: 20px;
}
#sltans{
	position: relative;
    left: 240px;
    top: -23px;
    font-size: 20px;
}
#ansarea{
	position: relative;
    left: -89px;
    top: 35px;
}
#comprn{
	position: relative;
    left: 240px;
    font-size: 20px;
    top: -17px;
}
		</style>
	</head>
		<body>
<div class="testbox">
  <h1 id="title">A.I 회원가입</h1>

  <form action="userjoin" method="post" name="frrm">
     
  <hr>
  <!-- <label id="icon" for="name"><i class="icon-user"></i></label> -->
  <input type="text" name="userId" id="name" value="${checkid}" placeholder="Id" required/>
  <input id="chbtn" type="button" onclick="idcheck(1)" value="중복검사"/></br>
  <!-- <label id="icon" for="name"><i class="icon-user"></i></label> -->
  <input type="text" name="userName" id="name" placeholder="Name" required/>
  <!-- <label id="icon" for="name"><i class="icon-shield"></i></label> -->
  <input type="password" name="userPass" id="name" placeholder="Password" required/>
  <!-- <label id="icon" for="name"><i class="icon-shield"></i></label> -->
  <input type="password" name="userPass_check" onkeyup="checkPwd()" id="name" placeholder="Passwordch" required/>
  <div id="checkPwd">암호를 확인해 주세요.</div>
  <!-- <label id="icon" for="name"><i class="icon-envelope "></i></label> -->
  <input type="text" name="userEmail" id="name" placeholder="Email" required/>
   <!-- <label id="icon" for="name"><i class="icon-user"></i></label> -->
  <input type="text" name="userAge" id="name" placeholder="Age" required/>
   <!-- <label id="icon" for="name"><i class="icon-phone"></i></label> -->
  <input type="text" name="userPhone" id="name" placeholder="Phone" required/>
  </br><br>
 	<span id="sltch">질문선택</span> 
 		<select name="userQue" id="slt">
 			<option value='selected'> -- 선택 -- </option>
 			<option value='userlike'>제일 좋아하는 것?</option>
 			<option value='usermost'>제일 안좋아하는 것?</option>
			<option value='useryears'>몇년 생?</option>
 		</select>
 	</br>
 	<span id="sltans">질문의 답</span>
 	<input type="text" name="userQueans" id="ansarea"/>
 	</br><br>
 	<span id="comprn">사업자 등록번호</span>
 	<input id="compnbtn" type="text" name="compNum"/>
  	</br>
   <input id="joinbtn" type="submit" value="가입하기"/>
	<input id="refbtn" type="reset" value="다시쓰기"/>
  </form>
</div>			
		</body>
		<script type="text/javascript">
		
		 function checkPwd(){
			  var f1 = document.forms[0];
			  var pw1 = f1.userPass.value;
			  var pw2 = f1.userPass_check.value;
			  if(pw1!=pw2){
			   document.getElementById('checkPwd').style.color = "red";
			   document.getElementById('checkPwd').innerHTML = "동일한 암호를 입력하세요."; 
			  }else{
			   document.getElementById('checkPwd').style.color = "black";
			   document.getElementById('checkPwd').innerHTML = "암호가 확인 되었습니다."; 
			  }
			 }
		</script>
	<script>
	var msg="${result}";
	
	if(msg != ""){
		alert(msg);
	}	
	
	function idcheck(index){
		if(index==1){
			document.frrm.action = "idcheck";
			
		}
		document.frrm.submit();
	} 
	</script>
</html>

