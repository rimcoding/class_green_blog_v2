<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../layout/header.jsp" %>
	
	<div class="container">
	<form action="#" method="post">
 	<div class="form-group">
 	<label for ="username">username : </label>
 	<input type = "text" name = "username" id = "username" value = "소닉"  class ="form-control">
 	</div>
 	<div class="form-group">
 	<label for ="password">password : </label>
 	<input type = "password" name = "password" id = "password" value="1234" class="form-control">
 	</div>
 	<button type="button" id="btn--login" class="btn btn-primary">로그인</button>
 	</form>
	</div>
	
<script src="/js/user.js"></script>
<%@ include file="../layout/footer.jsp" %>

</body>
</html>