<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<title>로그인 페이지</title>
<style>
<<<<<<< HEAD
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
            filter: invert(87%) sepia(8%) saturate(806%) hue-rotate(113deg) brightness(86%) contrast(86%);
        }

        .logoImg:hover {
            filter: invert(75%) sepia(12%) saturate(803%) hue-rotate(52deg) brightness(99%) contrast(80%);
        }

        /* 로고 이미지 사이즈 */
        .logoImg #logoImg {
            width: 50%;
            height: 50%;
        }

        /* 로고 효과 */
        @import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap');

        .logoImg {
            position: relative;
            display: inline-block;
            color: #fff;
            text-transform: uppercase;
            animation: waviy 1s infinite;
            animation-delay: calc(.1s * var(--i));
        }

        @keyframes waviy {

            0%,
            40%,
            100% {
                transform: translateY(0)
            }

            20% {
                transform: translateY(-20px)
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
            filter: invert(40%) sepia(4%) saturate(3907%) hue-rotate(113deg) brightness(103%) contrast(66%);
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

        .emptyTop {
            background-color: white;
            height: 50px;
        }

        /*로그인*/
        .LoginBox {
            width: 600px;
            height: 600px;

        }

        #loginLogo {
            width: 100px;
            height: 100px;
            margin-top: 20px;


        }

        input {
            width: 400px;
        }

        /*버튼*/
        #loginBtn {
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
            width: 410px;
        }

        #searchIdBtn {
            margin-right: 15px;
            border-radius: 0.25rem;
            padding: 3px;
            padding-left: 10px;
            padding-right: 10px;
            font-family: 'LeferiPoint-WhiteObliqueA';
            font-size: medium;
            margin: 5px;
        }

        #searchPwBtn {
            margin-right: 15px;
            border-radius: 0.25rem;
            padding: 3px;
            padding-left: 10px;
            padding-right: 10px;
            font-family: 'LeferiPoint-WhiteObliqueA';
            font-size: medium;
            margin: 5px;
        }

        #signupBtn {
            margin-right: 15px;
            background-color: white;
            border: 1px solid #73b1a1;
            border-radius: 0.25rem;
            padding: 3px;
            padding-left: 10px;
            padding-right: 10px;
            font-family: 'LeferiPoint-WhiteObliqueA';
            font-size: medium;
            color: gray;
            margin: 5px;
            width: 200px;
        }

        #kakaoImg {
            margin-right: 15px;
            margin: 5px;
            height:33px;
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
=======
/* 폰트 */
@font-face {
	font-family: 'LeferiPoint-WhiteObliqueA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteObliqueA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
@font-face {
	font-family: '양진체';
	src:
		url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff')
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
translateY
(
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
	height: 50px;
}
.emptyTop {
	background-color: white;
	height: 50px;
}
/*로그인*/
.LoginBox {
	width: 600px;
	height: 600px;
}
#loginLogo {
	width: 100px;
	height: 100px;
	margin-top: 20px;
}
input {
	width: 400px;
}
/*버튼*/
#loginBtn {
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
	width: 410px;
}
#searchIdBtn {
	margin-right: 15px;
	border-radius: 0.25rem;
	padding: 3px;
	padding-left: 10px;
	padding-right: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-size: medium;
	margin: 5px;
}
#searchPwBtn {
	margin-right: 15px;
	border-radius: 0.25rem;
	padding: 3px;
	padding-left: 10px;
	padding-right: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-size: medium;
	margin: 5px;
}
#signupBtn {
	margin-right: 15px;
	background-color: white;
	border: 1px solid #73b1a1;
	border-radius: 0.25rem;
	padding: 3px;
	padding-left: 10px;
	padding-right: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-size: medium;
	color: gray;
	margin: 0;
	margin-right: 10px;
	width: 200px;
	height: 49.17px;
	width: 200px;
}
#kakaoImg {
	margin-right: 15px;
	margin: 5px;
	height: 33px;
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
>>>>>>> 24b8eb43811c9604a21e05747ad0af658dc5a2ee
</style>
</head>
<body>
	<div class="container">
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
		<div class="empty"></div>

        <div class="emptyTop"></div>
		<form action="/loginOk.user" method="post" id="loginForm">
        <!-- body -->
        <div class="row">
            <div class="col-12 d-flex justify-content-center">
                <div class="LoginBox">
                    <div class="row">
                        <div class="col-3 p-1 d-flex justify-content-end">
                            <img id="loginLogo" src="/imgs/dpt_Logo.png">
                        </div>
                        <div class="col-9 p-5 d-flex justify-content-start">
                            <h5>안녕하세요 :) <br> 당신의 퍼스털 트레이너입니다.</h5>
                        </div>
                    </div>
                    <div class="empty"></div>
                    <div class="row">
                        <div class="col-12 m-1 d-flex justify-content-center">
                            <input type="text" placeholder="이메일을 입력하세요" id="user_id" name="user_id">
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-12 m-1 d-flex justify-content-center">
                            <input type="password" id="user_pw" name="user_pw" placeholder="비밀번호를 입력하세요">
                        </div>
                    </div>
                    <div class="row m-2">
                        <div class="col-12 d-flex justify-content-center">
                            <button type="button" id="loginBtn">로그인</button>
                        </div>

                    </div>

                    <div class="row m-2">
                        <div class="col-11 d-flex justify-content-end">
                            <button type="button" class="btn btn-light" id="searchIdBtn">로그인 이메일 찾기</button>
                            <button type="button" class="btn btn-light" id="searchPwBtn">비밀번호 찾기</button>
                        </div>
                    </div>
                    <div class="empty"></div>
                    <div class="row m-2">
                        <div class="col-11 d-flex justify-content-end">
                            <button type="button" id="signupBtn">회원가입 하기</button>
                            <img id="kakaoImg" src="../imgs/kakao_login_medium_narrow.png">
                        </div>
                    </div>
                </div>
            </div>
        </div>
		</form>
		
		<script>
			$("#loginBtn").on("click", function(){
				
				if($("#user_id").val() === ""){
					alert("아이디를 입력해주세요.")
					return;
				} else if ($("#user_pw").val() === ""){
					alert("비밀번호를 입력해주세요.")
					return;
				}
				
				$("#loginForm").submit();
			});
		
			$("#signupBtn").on("click", function(){
				location.href = "/toSignup.user";
			})
				
			
		</script>



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