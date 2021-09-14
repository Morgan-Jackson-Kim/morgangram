<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

  <link rel="stylesheet" href="/static/css/style.css">
<title>인별 - 로그인</title>
</head>
<body>
	<div id="wrap">
		<section style="padding-top: 200px; padding-bottom: 200px"  class=" d-flex justify-content-center">
			<div>
				<img src="https://cdn.pixabay.com/photo/2021/08/20/23/49/plant-6561467_960_720.jpg" width="400">
			</div>
			
			<div class="login-box d-flex justify-content-center align-items-start bg-white  border rounded">
				<div class="w-100 p-4">
					<form id="loginForm">
						<h1 class="text-center">로그인</h1>
						<input type="text" id="loginIdInput" class="form-control mt-3" placeholder="아이디">
						<input type="text" id="passwordInput" class="form-control mt-3" placeholder="패스워드">
						<button type="submit" id="loginBtn" class="btn btn-primary btn-block mt-3">로그인</button>
						<div class="text-right mt-3">아직 계정이 없으시다면. <a href="/user/signup_view" mt-3">회원가입</a></div>
					</form>
				</div>
			</div>
		</section>
		<c:import url="/WEB-INF/jsp/include/footer.jsp"/>

	</div>
	
	<script>
		$(document).ready(function(){
			$("#loginBtn").on("click",function(){
				var loginId = $("#loginIdInput").val();
				var password = $("#passwordInput").val();
				
				if(loginId == null || loginId ==  ""){
					alert("아이디를 입력해주세요");
					return;
				}
				if(password == null || password ==  ""){
					alert("비밀번호를를 입력해주세요");
					return;
				}
				
			});
		});
	</script>

</body>
</html>