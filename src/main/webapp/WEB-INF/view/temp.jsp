<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<div class="container">
 <h1>form 테스트</h1>
 <form action="/temp/join2" method="post">
 	<div class="form-group">
 	<label for ="username">username : </label>
 	<input type = "text" name = "username" id = "username" value = "항1"  class ="form-control">
 	</div>
 	<div class="form-group">
 	<label for ="password">password : </label>
 	<input type = "password" name = "password" id = "password" value="1234" class="form-control">
 	</div>
 	<div class="form-group">
 	<label for ="email">email : </label>
 	<input type = "text" name = "email" id = "email" value="a@naver.com" class="form-control">
 	</div>
 </form>
 
 	<button id = "join--submit" class="btn btn-primary">회원가입</button>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#join--submit").on("click", () => {
			// MIME TYPE -> application/json
			// js -> json 문자열로 변경하는 방법
			// object --> JSON 문자열로 변경
			let data = {
				username: $("#username").val(),
				password: $("#password").val(),
				email: $("#email").val() 
			};
			
			console.log(JSON.stringify(data));
			
			$.ajax({
				type: 'POST',
				url: '/temp/join2',
				contentType: 'application/json; charset=utf-8',
				data: JSON.stringify(data),
				dataType: 'json'
			}).done(function(response) {
				alert("회원가입성공")
				location.href = "/temp/index";
				console.log(response);
				console.log(typeof response);
			}).fail(function(error){
				alert("서버오류")
			});
		});
	});
	
</script>
</body>
</html>