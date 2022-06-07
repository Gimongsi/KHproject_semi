<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Column 보기</title>
</head>
<body>
	<!-- Column 보기 -->
	<div class="boxBtn">
		<button type="button" class="btn btn-secondary" id="btnBack">뒤로가기</button>
		<c:if test="${loginSession.user_auth eq 'manager'}">
			<button type="button" class="btn btn-primary" id="modifyBtn">수정하기</button>
			<button type="button" class="btn btn-primary" id="btnDelete">삭제</button>
		</c:if>
	</div>

	<script>
		const btnBack = document.getElementById("btnBack");

		btnBack.addEventListener("click", function(e) {
			location.href = "/toColumnPage.info";
		});

		$("#modifyBtn").on("click", function(e) {
			$("#formModify").submit();
		});

		let btnDelete = document.getElementById("btnDelete");

		btnDelete.addEventListener("click", function(e) {
			let qna_seq = $("#qna_seq").val();
			let answer = confirm("지금 삭제하시면 복구가 불가합니다. 정말 삭제하겠습니까?");
			console.log(answer);
			if (answer) {
				location.href = "/deleteProc.column?qna_seq=${dto.qna_seq}"; //dto 수정할 것
			}
		})
	</script>
	<!-- Column 보기 끝-->
	
</body>
</html>