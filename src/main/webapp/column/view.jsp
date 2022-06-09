<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Column 보기</title>
</head>
<body>
	<!-- 헤더 -->
	<div class="row cls_header">
			<div class="col-3 logoImg">
				<a href="/home"> <img id="logoImg" src="../imgs/dpt_Logo.png">
				</a>
			</div>
			<c:choose>
				<c:when
					test="${loginSession.user_auth eq 'member' || loginSession.user_auth eq 'admin'}">
					<div class="d-none d-md-block col-2"></div>
					<div class="col-3 p-0 headMenu d-flex justify-content-center">
						<span>${loginSession.user_name} 님 환영합니다!</span>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toMypage.user" style="text-decoration: none;"> <span>마이페이지</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/logout.user" style="text-decoration: none;"> <span>로그아웃</span>
						</a>
					</div>
				</c:when>
				<c:when test="${loginSession.user_auth eq 'manager'}">
					<div class="d-none d-md-block col-2"></div>
					<div class="col-3 p-0 headMenu d-flex justify-content-center">
						<span>관리자님 환영합니다!</span>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toSendmail.manager" style="text-decoration: none;">
							<span>메일보내기</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/userSerch.manager?curPage=1"
							style="text-decoration: none;"> <span>회원 검색</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/logout.user" style="text-decoration: none;"> <span>로그아웃</span>
						</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-none d-md-block col-5"></div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/login.user" style="text-decoration: none;"> <span>로그인</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toSignup.user" style="text-decoration: none;"> <span>회원가입</span>
						</a>
					</div>
				</c:otherwise>
			</c:choose>
			<div class="col p-0 headMenu d-flex justify-content-center">
				<button type="button" class="btn dropdownBtn dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false">고객센터</button>
				<ul class="dropdown-menu headDropdown">
					<li><a class="dropdown-item" href="/toInformation.info">자주
							묻는 질문</a></li>
					<li><a class="dropdown-item" href="#">이벤트</a></li>
					<c:if test="${loginSession.user_auth eq 'manager'}">
						<li><a class="dropdown-item"
							href="/modifyList.food?curPage=1">음식 프로로션</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<!-- 헤더 끝 -->
		<!-- 네비 -->
		<div class="row cls_nav">
			<div class="col">
				<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">칼럼</a></li>
								<c:choose>
									<c:when
										test="${loginSession.user_auth eq 'member' || loginSession.user_auth eq 'admin' || loginSession.user_auth eq 'manager'}">
										<li class="nav-item"><a class="nav-link"
											href="/listLogin.gym">내 주변 운동시설</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/listLogin.food">특가 식품</a></li>
									</c:when>
									<c:otherwise>
										<li class="nav-item"><a class="nav-link" href="/list.gym">내
												주변 운동시설</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.food">특가 식품</a></li>
									</c:otherwise>
								</c:choose>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-bs-toggle="dropdown" aria-expanded="false">
										근육별 운동법 </a>
									<ul class="dropdown-menu navDropdown"
										aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" href="#">상체</a></li>
										<li><a class="dropdown-item" href="#">하체</a></li>
										<li><a class="dropdown-item" href="#">몸통</a></li>
										<li><a class="dropdown-item" href="#">전체보기</a></li>
									</ul></li>
							</ul>
							<form action="search.gym" method="post" class="d-flex searchForm">
								<input class="form-control navSearchInput me-2" type="search"
									placeholder="운동시설 검색" aria-label="Search">
								<button class="btn btn-outline-light" type="button">Search!</button>
							</form>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<!-- 네비 끝 -->
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