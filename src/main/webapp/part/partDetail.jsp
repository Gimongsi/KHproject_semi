<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<title>근육별 상세페이지</title>
<style>
/* 폰트 */
@font-face {
    font-family: 'LeferiPoint-WhiteObliqueA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteObliqueA.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
/* 폰트 끝 */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'LeferiPoint-WhiteObliqueA';
}

.container {
	margin: auto;
}

/* 헤더 */
.cls_header {
	height: 150px;
	width: 100%;
	margin: 0%;
	background-color: #BFFFF0;
	color: #97C4B8;
	align-items: center;
	font-family: '양진체';
	text-align: center;
}

.cls_header a {
	color: #97C4B8;
}

.cls_header a:hover {
	color: #c9d4a9;
}

.dropdownBtn {
	background-color: #F0FFC2 !important;
	color: #97C4B8;
	border: 1px solid white;
}

.dropdownBtn:hover {
	color: #9be5d2;
}

.headDropdown {
	background-color: #F0FFC2 !important;
}

.headMenu {
	justify-content: end;
}

/* 로고 */
.logoImg {
	padding: 0%;
	filter: invert(87%) sepia(8%) saturate(806%) hue-rotate(113deg)
		brightness(86%) contrast(86%);
}

.logoImg:hover {
	filter: invert(75%) sepia(12%) saturate(803%) hue-rotate(52deg)
		brightness(99%) contrast(80%);
}
/* 로고 이미지 사이즈 */
.logoImg #logoImg {
	width: 50%;
	height: 50%;
}
/* 로고 효과 */
@import
	url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap')
	;

.logoImg {
	position: relative;
	display: inline-block;
	color: #fff;
	text-transform: uppercase;
	animation: waviy 1s infinite;
	animation-delay: calc(.1s * var(- -i));
}

@
keyframes waviy { 0%, 40%, 100% {
	transform: translateY(0)
}

20
%
{
transform
:
translateY(
-20px
)
}
}
/* 로고 효과 끝 */
/* 네비바 */
.navbar {
	background-color: #F0FFC2 !important;
}

.container-fluid a {
	color: #97C4B8 !important;
}

.container-fluid a:hover {
	color: #9be5d2 !important;
}

.container-fluid button {
	background-color: #F0FFC2 !important;
	color: #97C4B8 !important;
}

.navDropdown {
	border: 1px solid white;
	background-color: #d5fcf3 !important;
}

.container-fluid button:hover {
	background-color: #97C4B8 !important;
	color: #F0FFC2 !important;
}

.container-fluid span {
	filter: invert(40%) sepia(4%) saturate(3907%) hue-rotate(113deg)
		brightness(103%) contrast(66%);
}

.navSearchInput {
	border: 1px solid white;
}

.navSearchInput::placeholder {
	color: #FFE4C0;
}

/* 공백 */
.empty {
	background-color: white;
	height: 20px;
}
.empty1{
background-color: white;
	height: 10px;
}
.emptyTop{
	background-color: white;
	height: 50px;
}
/*컨텐츠*/


.partImg{
	height:300px;
	width:720px;
	margin:10px;
	padding:10px;
	
}

.partTltle{
	width:300px;
}

input{
	width:100%;
}

.partContents{
	width:800px;
	height:300px;
}

textarea{
		width: 100%;
        height: 100%;
		resize: none;
	}

/*버튼*/
#btnList{
		background-color: #73b1a1;
        border: 1px solid #F0FFC2;
        border-radius: 0.25rem;
        padding: 3px;
        padding-left: 10px;
        padding-right: 10px;
        font-family: 'LeferiPoint-WhiteObliqueA';
        font-size: medium;
        color: white;
        margin: 5px;
}
#btnModify{
		border: 1px solid #F0FFC2;
        border-radius: 0.25rem;
        padding: 3px;
        padding-left: 10px;
        padding-right: 10px;
        font-family: 'LeferiPoint-WhiteObliqueA';
        font-size: medium;
        color: white;
        margin: 5px;
}
#btnDelete{
		border: 1px solid #F0FFC2;
        border-radius: 0.25rem;
        padding: 3px;
        padding-left: 10px;
        padding-right: 10px;
        font-family: 'LeferiPoint-WhiteObliqueA';
        font-size: medium;
        color: white;
        margin: 5px;
}

/*footer*/
.footer {
	/* font-family: 'SuncheonB';
        font-weight: normal; */
	font-size: small;
	color: #709c91;
	border-top: 1px solid #c9d4a9;
}

.footer .row {
	border-bottom: 1px solid #c9d4a9;
}

.footer .footerInfo {
	padding-block: 3%;
	text-align: center;
}

.footerMenu {
	padding-block: 2%;
	text-align: center;
}

.footerMenu a {
	color: #709c91;
	text-decoration: none;
}
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

		<div class="emptyTop"></div>
		
		
		<form id="partDetailForm" action="/" method="">
		<div class="partDetailContainer">
			<div class="row">
			<div class="col-12 d-flex justify-content-center">
				<div class="partTltle">
				<!--  운동법 제목 -->
				<input type="text" class="form-control text-center" id="part_title" name="part_title">
			</div>
			</div>
		</div>
		<div><div class="empty1"></div></div>
		<hr style="height: 1px; width: 30%; border: none; background-color: gray; text-align: center; margin: auto;">
		<!-- 운동법 내용 -->
		<div class="pertDetailContents">
			<div class="row">
				<div class="col-12 d-flex justify-content-center">
					<div class="partImg col-12 d-flex justify-content-center">이미지 넣는 곳</div>
				</div>
			</div>
			<div class="empty"></div>
			<div class="row">
				<div class="col-12 d-flex justify-content-center">
					<div class="partContents">
						<!-- 내용 넣는 곳 -->
						<textarea id="content" class="form-control" id="part_content" name="part_content"></textarea>
					</div>
					
					
				</div>
			</div>
		</div>
		</div>
		</form>
		
		

		<div class="empty"></div>
		<hr style="height: 1px; width: 100%; border: none; background-color: gray; text-align: center; margin: auto;">
		<div class="empty"></div>
		
		<div class="row">
			<div class="col-6 d-flex justify-content-center">
				<button type="button" class="btnList" id="btnList">전체 목록</button>
			</div>
			<div class="col-3 d-flex justify-content-end">
				<button type="button" class="btn btn-warning" id="btnModify">수정</button>
			</div>
			<div class="col-3 d-flex justify-content-start">
				<button type="button" class="btn btn-danger" id="btnDelete">삭제</button>
			</div>
		</div>
		<div class="empty"></div>

		<!-- footer -->
    <div class="container footer">
        <div class="row footerInfo">
            <div class="col-6">
                제휴 및 서비스 이용문의<br>
                <h3 style="margin-top: 10px; font-weight: 600;">1588-0000</h3>
                AM 09:00 - PM 06:00<br>
                토 일 공휴일 휴무
            </div>
            <div class="col-6">
                (주)당퍼트<br>
                서울특별시 영등포구 선유동2로 57<br>
                대표 : 홍신영<br>
                사업자번호 : 123-45-67890<br>
                통신판매번호 : 제2000-서울영등포구-0000호<br>
                kh.projectmail@gmail.com<br>
            </div>
        </div>
        <div class="row footerMenu">
            <div class="col"><a href="">이용약관</a></div>
            <div class="col"><a href="">개인정보처리방침</a></div>
            <div class="col"><a href="">위치정보이용약관</a></div>
            <div class="col"><a href="">센터등록요청하기</a></div>
            <div class="col"><a href="">문의하기</a></div>
        </div>
        <p>Copyright ⓒ Dangpert Co., Ltd. All rights reserved.</p>
    </div>
    <!-- footer 끝 -->

	</div>

</body>
</html>