<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FAQ 보기</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
	/* 버튼 */
.btnSpace {
	margin-bottom: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.btnAdd {
	background-color: #73b1a1;
	border: 1px solid #F0FFC2;
	border-radius: 0.25rem;
	padding: 3px;
	padding-left: 10px;
	padding-right: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-size: small;
	color: white;
	margin: 5px;
}

.btnAdd:hover {
	background-color: #F0FFC2;
	border: 1px solid #73b1a1;
	color: #73b1a1;
}

/* 폰트 */
@font-face {
	font-family: '양진체';
	src:
		url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'SuncheonB';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2202-2@1.0/SuncheonB.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'LeferiPoint-WhiteObliqueA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteObliqueA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

/* 폰트 끝 */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
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
	height: 100%;
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
	width: 100%;
	height: 100%;
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
	font-family: '양진체';
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
    
    /* footer */
.footer {
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
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

/* footer 끝 */
</style>
</head>
<body>
<div class="container">
		<!-- 헤더 -->
		<div class="row cls_header">
			<div class="col-3 logoImg">
				<a href="#"> <img id="logoImg" src="../imgs/dpt_Logo.png">
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
					<li>
						<hr class="dropdown-divider">
					</li>
					<li><a class="dropdown-item" href="#">로그아웃</a></li>
				</ul>
			</div>
		</div>

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
								<li class="nav-item"><a class="nav-link" href="#">내 주변
										운동시설</a></li>
								<li class="nav-item"><a class="nav-link" href="#">특가 식품</a>
								</li>
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
	</div>
	<!-- 네비 끝 -->
	<!-- 헤더 끝 -->
	<div class="empty"></div>
    <!-- 게시글 영역 -->
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
    
    <div class="empty"></div>
	<!-- footer -->
	<div class="container footer">
		<div class="row footerInfo">
			<div class="col-6">
				제휴 및 서비스 이용문의<br>
				<h3 style="margin-top: 10px; font-weight: 600;">1588-0000</h3>
				AM 09:00 - PM 06:00<br> 토 일 공휴일 휴무
			</div>
			<div class="col-6">
				(주)당퍼트<br> 서울특별시 영등포구 선유동2로 57<br> 대표 : 홍신영<br> 사업자번호
				: 123-45-67890<br> 통신판매번호 : 제2000-서울영등포구-0000호<br>
				kh.projectmail@gmail.com<br>
			</div>
		</div>
		<div class="row footerMenu">
			<div class="col">
				<a href="">이용약관</a>
			</div>
			<div class="col">
				<a href="">개인정보처리방침</a>
			</div>
			<div class="col">
				<a href="">위치정보이용약관</a>
			</div>
			<div class="col">
				<a href="">센터등록요청하기</a>
			</div>
			<div class="col">
				<a href="">문의하기</a>
			</div>
		</div>
		<p>Copyright ⓒ Dangpert Co., Ltd. All rights reserved.</p>
	</div>
	<!-- footer 끝 -->
    <script>
    
    const btnBack = document.getElementById("btnBack");
    
    	btnBack.addEventListener("click", function(e){
        	location.href="/user/information_user.jsp";
    	});
	</script>
	
</body>
</html>