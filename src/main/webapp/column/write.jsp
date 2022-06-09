<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Column 등록</title>
</head>
<body>
	<!-- Column 등록 -->
		<div class="title">
			<h3>Column 등록</h3>
		</div>
		<form id="writeForm" action="/writeProc.column" method="post">
			
		</form>
		<div class="boxBtn">
			<button type="button" class="btn btn-secondary" id="btnBack">뒤로가기</button>
			<button type="button" class="btn btn-primary" id="btnSave">등록</button>
		</div>
	</div>
	<script>
		$("#btnSave").on("click", function() {
			if ($("#title").val() === "") {
				$("#title").val("제목없음");
			}

			if ($("#content").val() === "") {
				alert("내용을 입력하세요.");
				$("#content").focus();
				return;
			}
			$("#writeForm").submit();
		})

		const btnBack = document.getElementById("btnBack");

		btnBack.addEventListener("click", function(e) {
			location.href = "/toColumnPage.Column";
		});
	</script>
	<!-- Column 등록 끝 -->
</body>
</html>