<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트입니다</title>
</head>
<body>
	<h3>test</h3>
	<button type="button" id="toSearch">가자</button>
	
	<script>
		document.getElementById("toSearch").onclick = function(){
			location.href="/member/search.jsp";
			
		}
		
		
	</script>
</body>
</html>