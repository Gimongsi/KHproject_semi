<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Column 수정</title>
</head>
<body>
	<!-- Column 수정 -->
	<div class="title">
		<h3>Column 수정</h3>
	</div>
	<form id="modifyForm" action="/modifyProc.info" method="post">
		<div class="container">
			<div class="row">
				<div class="col-2 d-flex justify-content-center align-items-center">
					<h4>제목</h4>
				</div>
				<div class="col-10 p-2">
					<input type="text" class="form-control" id="title" name="title"
						value="${dto.qna_title}">
				</div>
			</div>
			<div class="row">
				<div class="col-2 d-flex justify-content-center align-items-center">
					<h4>내용</h4>
				</div>
				<div class="col-10 p-2">
					<textarea id="content" class="form-control" id="content"
						name="content" value="${dto.qna_content}"></textarea>
				</div>
			</div>
		</div>
	</form>
	<div class="boxBtn">
		<button type="button" class="btn btn-secondary" id="btnBack">뒤로가기</button>
		<button type="button" class="btn btn-primary" id="btnComplete">수정</button>
	</div>

	<script>
    $("#btnComplete").on("click", function(){
		if($("#title").val() === ""){
			$("#title").val("제목없음");
		}
		
		if($("#content").val() === ""){
			alert("내용을 입력하세요.");
			$("#content").focus();
			return;
		}
		$("#modifyForm").submit();
	})
	
	const btnBack = document.getElementById("btnBack");
    
            btnBack.addEventListener("click", function(e){
                location.href="/manager/information/information.jsp"; // 경로 수정할 것 view로
            });
    </script>
    <!-- Column 수정 끝 -->
</body>
</html>