<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 보기</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
	/* 게시글 스타일 영역*/
	.container-board{
		width: 80%;
	}
	.container-board div[class*=row]:not(:first-child){
	    border: 1px solid lightgrey;
	}
	.container-board div[class*=col-2]{
	    display: flex;
	    justify-content: center;
	    align-items: center;
	    font-weight: bold;
	    border-left: 1px solid lightgrey;
	    border-right: 1px solid lightgrey;
	}
	.container-board div[class*=col]:not(.content-board:last-child){
	    display: flex;
	    align-items: center;
	}
	.container-board div[class*=col] > p{
	    margin: 0;
	    padding: 5px;
	}
	.title-board{
	    height: 50px;
	}
	.header-board{
	    height: 50px;
	}
	.content-board{
	    height: 600px;
	}
	/* 게시글 스타일 끝*/
	  /* 버튼 영역 */
     .boxBtn{
        height: 10%;
    }
	.container{
		width: 80%;
        height: 100%;
		padding: 10px;
	}
    form, table{
        height: 100%;
        text-align: center;
    }
    tr:first-child{
        height: 10%;
    }
    input{
        width: 100%;
        height: 100%;
    }
	textarea{
		width: 100%;
        height: 100%;
		resize: none;
	}
    .boxBtn{
        text-align: center;
    }
    /* 버튼 영역 끝 */
</style>
</head>
<body>
	    <div class="container">
        <!-- 헤더 -->
		<c:choose>
			<c:when test="${loginSession.user_auth eq 'member' || loginSession.user_auth eq 'admin'}">
				<div class="row cls_header">
					<div class="col-3 logoImg">
						<a href="/home"> <img id="logoImg" src="imgs/dpt_Logo.png">
						</a>
					</div>
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
					<div class="col p-0 headMenu d-flex justify-content-center">
						<button type="button" class="btn dropdownBtn dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">고객센터</button>
						<ul class="dropdown-menu headDropdown">
							<li><a class="dropdown-item" href="/toInformation.info">자주 묻는 질문</a></li>
							<li><a class="dropdown-item" href="#">이벤트</a></li>
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
								<div class="collapse navbar-collapse"
									id="navbarSupportedContent">
									<ul class="navbar-nav me-auto mb-2 mb-lg-0">
										<li class="nav-item"><a class="nav-link active"
											aria-current="page" href="#">칼럼</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.gym">내 주변 운동시설</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.food">특가 식품</a></li>
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
				<div class="empty"></div>
			</c:when>
			<c:when test="${loginSession.user_auth eq 'manager'}">
				<div class="row cls_header">
					<div class="col-3 logoImg">
						<a href="/home"> <img id="logoImg" src="imgs/dpt_Logo.png">
						</a>
					</div>
					<div class="d-none d-md-block col-2"></div>
					<div class="col-3 p-0 headMenu d-flex justify-content-center">
						<span>관리자님 환영합니다!</span>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="#" style="text-decoration: none;"> <span>메일보내기</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/search.user?curPage=1" style="text-decoration: none;"> <span>회원 검색</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/logout.user" style="text-decoration: none;"> <span>로그아웃</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<button type="button" class="btn dropdownBtn dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">고객센터</button>
						<ul class="dropdown-menu headDropdown">
							<li><a class="dropdown-item" href="#">자주 묻는 질문</a></li>
							<li><a class="dropdown-item" href="#">이벤트</a></li>
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
								<div class="collapse navbar-collapse"
									id="navbarSupportedContent">
									<ul class="navbar-nav me-auto mb-2 mb-lg-0">
										<li class="nav-item"><a class="nav-link active"
											aria-current="page" href="#">칼럼</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.gym">내 주변 운동시설</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.food">특가 식품</a></li>
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
				<div class="empty"></div>
			</c:when>
			<c:otherwise>
				<!-- 헤더 -->
				<div class="row cls_header">
					<div class="col-3 logoImg">
						<a href="/home"> <img id="logoImg" src="imgs/dpt_Logo.png">
						</a>
					</div>
					<div class="d-none d-md-block col-5"></div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/login.user" style="text-decoration: none;"> <span>로그인</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toSignup.user" style="text-decoration: none;"> <span>회원가입</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<button type="button" class="btn dropdownBtn dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">고객센터</button>
						<ul class="dropdown-menu headDropdown">
							<li><a class="dropdown-item" href="#">자주 묻는 질문</a></li>
							<li><a class="dropdown-item" href="#">이벤트</a></li>
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
								<div class="collapse navbar-collapse"
									id="navbarSupportedContent">
									<ul class="navbar-nav me-auto mb-2 mb-lg-0">
										<li class="nav-item"><a class="nav-link active"
											aria-current="page" href="#">칼럼</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.gym">내 주변 운동시설</a></li>
										<li class="nav-item"><a class="nav-link"
											href="/list.food">특가 식품</a></li>
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
									<form class="d-flex">
										<input class="form-control navSearchInput me-2" type="search"
											placeholder="운동시설 검색" aria-label="Search">
										<button class="btn btn-outline-light" type="submit">Search!</button>
									</form>
								</div>
							</div>
						</nav>
					</div>
				</div>
				<!-- 네비 끝 -->
				<div class="empty"></div>
			</c:otherwise>
		</c:choose>
        <!-- 헤더 끝 -->
        <div class="empty"> </div>
        
    <!-- FAQ 내용 보기 -->
    <div class="container container-board">
        <div class="row p-5">
            <h3 class="text-center">FAQ 보기</h3>
        </div>
        <div class="row">
            <div class="col-2 title-board">
                <p>제목</p>
            </div>
            <div class="col-10 title-board">
                <p>${dto.qna_title}</p>
            </div>
        </div>
        <div class="row">
            <div class="col-2 content-board">
                <p>내용</p>
            </div>
            <div class="col-10 content-board">
                <p>${dto.qna_content}</p>
            </div>
        </div>
    </div>
	<!-- 게시글 영역 끝-->
	<div class="boxBtn">
        <button type="button" class="btn btn-secondary" id="btnBack">뒤로가기</button>
    </div>
    <script>
    
    const btnBack = document.getElementById("btnBack");
    
    	btnBack.addEventListener("click", function(e){
        	location.href="/member/information/information_user.jsp";
    	});
	</script>
	
</body>
</html>