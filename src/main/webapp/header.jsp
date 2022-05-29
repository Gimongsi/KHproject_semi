<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<title>Insert title here</title>
</head>
<style>
    /* 폰트 */
    @font-face {
        font-family: '양진체';
        src: url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff') format('woff');
        font-weight: normal;
        font-style: normal;
    }
    /* 폰트 끝 */
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: '양진체';
    }
    .container {
        margin: auto;
    }

    /* 헤더 */
    .cls_header {
        height: 150px;
        width: 100%;
        margin: 0%;
        background-color: #FFBC80;
        align-items: center;
    }
    .cls_header a {
        color: #F76E11;
    }
    .cls_header a:hover {
        color:#FF9F45;
    }
    .dropdownBtn{
        background-color: #FF9F45 !important;
        color:#F76E11;
        border: 1px solid white;
    }
    .dropdownBtn:hover{
        color:#FFBC80;
    }
    .headDropdown{
        background-color: #FF9F45 !important;
    }
    .headMenu{
        justify-content: end;
    }

    /* 로고 */
    .logoImg{
        height: 100%;
        padding: 0%;
        filter: invert(47%) sepia(98%) saturate(2010%) hue-rotate(354deg) brightness(99%) contrast(96%);
    }
    .logoImg:hover {
        filter: invert(58%) sepia(49%) saturate(7359%) hue-rotate(334deg) brightness(100%) contrast(99%);
    }
    /* 로고 이미지 사이즈 */
    .logoImg #logoImg{
        width: 100%;
        height: 100%;
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
    .navbar{
        background-color: #FF9F45 !important;
    }
    .container-fluid a{
        color:#F76E11 !important;
    }
    .container-fluid a:hover{
        color:#FFBC80 !important;
    }
    .container-fluid button{
        background-color: #FFBC80 !important;
        color: #F76E11 !important;
    }
    .navDropdown{
        border: 1px solid white;
        background-color: #FFBC80 !important;
    }
    .container-fluid button:hover{
        background-color: #F76E11 !important;
        color:#FFE4C0 !important;
    }
    .container-fluid span{
        filter: invert(27%) sepia(98%) saturate(3010%) hue-rotate(354deg) brightness(99%) contrast(96%);
    }
    .navSearchInput{
        border: 1px solid white;
    }
    .navSearchInput::placeholder{
        color: #FFE4C0;
    }

    /* 공백 */
    .empty {
        background-color: white;
        height: 20px;
    }

    
</style>

<body>
    <div class="container">
        <!-- 헤더 -->
        <div class="row cls_header">
            <div class="col-3 logoImg">
                <a href="#">
                    <img id="logoImg" src="file:///D:/Workspace_semi/KHproject_semi/src/main/webapp/resources/images/dpt_Logo.png">
                </a>
            </div>
            <div class="d-none d-md-block col-5"> </div>
            <div class="col p-0 headMenu d-flex justify-content-center">
                <a href="#" style="text-decoration: none;">
                    <p style="margin: 0px;">로그인</p>
                </a>
            </div>
            <div class="col p-0 headMenu d-flex justify-content-center">
                <a href="#" style="text-decoration: none;">
                    <p style="margin: 0px;">회원가입</p>
                </a>
            </div>
            <div class="col p-0 headMenu d-flex justify-content-center">
                    <button type="button" class="btn dropdownBtn dropdown-toggle" data-bs-toggle="dropdown"
                        aria-expanded="false">
                        고객센터
                    </button>
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
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link active" aria-current="page" href="#">칼럼</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">내 주변 운동시설</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">특가 식품</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                        근육별 운동법
                                    </a>
                                    <ul class="dropdown-menu navDropdown" aria-labelledby="navbarDropdown">
                                        <li><a class="dropdown-item" href="#">상체</a></li>
                                        <li><a class="dropdown-item" href="#">하체</a></li>
                                        <li><a class="dropdown-item" href="#">몸통</a></li>
                                        <li><a class="dropdown-item" href="#">전체보기</a></li>
                                    </ul>
                                </li>
                            </ul>
                            <form class="d-flex">
                                <input class="form-control navSearchInput me-2" type="search" placeholder="운동시설 검색" aria-label="Search">
                                <button class="btn btn-outline-light" type="submit">Search!</button>
                            </form>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- 네비 끝 -->
        <!-- 헤더 끝 -->
        <div class="empty"> </div>
</body>
</html>