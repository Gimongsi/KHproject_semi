<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<button type="button" id="btn">메일 테스트 버튼</button>
	
	<script>
		document.getElementById("btn").onclick = function() {
			
			location.href = "/test.manager";
			
		}
	</script>
</body>
</html>