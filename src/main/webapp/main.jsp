<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>Home</title>
</head>
<style>
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

/* 칼럼 */
.cls_column img {
	width: 100%;
	height: 600px;
}

/* 목록 타이틀 */
.title {
	height: 100px;
	background-color: #BFFFF0;
	color: #97C4B8;
	text-align: center;
	font-size: 50px;
	padding: 15px;
	font-family: '양진체';
}

/* 근육별 운동 텍스트 효과 */
@import
	url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap')
	;

.waviy {
	position: relative;
	-webkit-box-reflect: below -20px
		linear-gradient(transparent, rgba(142, 168, 159, 0.377));
	font-size: 40px;
}

.waviy span {
	position: relative;
	display: inline-block;
	color: #97C4B8;
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
/* 근육별 운동 텍스트 효과 끝 */

/*그림자 효과*/
.title_promo .title-part {
	font-family: "양진체";
	text-transform: uppercase;
	display: block;
	color: #ffffd9;
}
/* .title .title-part.line-1 {
        text-shadow: #ff6239 1px 1px, #ff6339 2px 2px, #ff643a 3px 3px, #ff663a 4px 4px, #ff673b 5px 5px, #ff683c 6px 6px, #ff693c 7px 7px, #ff6a3d 8px 8px, #ff6b3d 9px 9px, #ff6c3e 10px 10px, #ff6e3f 11px 11px, #ff6f3f 12px 12px, #ff7040 13px 13px, #ff7140 14px 14px, #ff7241 15px 15px, #ff7342 16px 16px, #ff7442 17px 17px, #ff7643 18px 18px, #ff7743 19px 19px, #ff7844 20px 20px, #ff7945 21px 21px, #ff7a45 22px 22px, #ff7b46 23px 23px, #ff7c46 24px 24px, #ff7e47 25px 25px, #ff7f48 26px 26px, #ff8048 27px 27px, #ff8149 28px 28px, #ff8249 29px 29px, #ff834a 30px 30px, #ff844b 31px 31px, #ff864b 32px 32px, #ff874c 33px 33px, #ff884c 34px 34px, #ff894d 35px 35px, #ff8a4e 36px 36px, #ff8b4e 37px 37px, #ff8c4f 38px 38px, #ff8e4f 39px 39px, #ff8f50 40px 40px, #ff9051 41px 41px, #ff9151 42px 42px, #ff9252 43px 43px, #ff9352 44px 44px, #ff9453 45px 45px, #ff9654 46px 46px, #ff9754 47px 47px, #ff9855 48px 48px, #ff9955 49px 49px, #ff9a56 50px 50px, #ff9b57 51px 51px, #ff9c57 52px 52px, #ff9e58 53px 53px, #ff9f58 54px 54px, #ffa059 55px 55px, #ffa15a 56px 56px, #ffa25a 57px 57px, #ffa35b 58px 58px, #ffa45b 59px 59px, #ffa65c 60px 60px, #ffa75d 61px 61px, #ffa85d 62px 62px, #ffa95e 63px 63px, #ffaa5e 64px 64px, #ffab5f 65px 65px, #ffac60 66px 66px, #ffad60 67px 67px, #ffaf61 68px 68px, #ffb061 69px 69px, #ffb162 70px 70px, #ffb263 71px 71px, #ffb363 72px 72px, #ffb464 73px 73px, #ffb564 74px 74px, #ffb765 75px 75px, #ffb866 76px 76px, #ffb966 77px 77px, #ffba67 78px 78px, #ffbb67 79px 79px, #ffbc68 80px 80px, #ffbd69 81px 81px, #ffbf69 82px 82px, #ffc06a 83px 83px, #ffc16a 84px 84px, #ffc26b 85px 85px, #ffc36c 86px 86px, #ffc46c 87px 87px, #ffc56d 88px 88px, #ffc76d 89px 89px, #ffc86e 90px 90px, #ffc96f 91px 91px, #ffca6f 92px 92px, #ffcb70 93px 93px, #ffcc70 94px 94px, #ffcd71 95px 95px, #ffcf72 96px 96px, #ffd072 97px 97px, #ffd173 98px 98px, #ffd273 99px 99px, #ffd374 100px 100px, #ffd475 101px 101px, #ffd575 102px 102px, #ffd776 103px 103px, #ffd876 104px 104px, #ffd977 105px 105px, #ffda78 106px 106px, #ffdb78 107px 107px, #ffdc79 108px 108px, #ffdd79 109px 109px, #ffdf7a 110px 110px, #ffe07b 111px 111px, #ffe17b 112px 112px, #ffe27c 113px 113px, #ffe37c 114px 114px, #ffe47d 115px 115px, #ffe57e 116px 116px, #ffe77e 117px 117px, #ffe87f 118px 118px, #ffe97f 119px 119px, #ffea80 120px 120px, #ff6138 0px 0px;
    }
    .title .title-part.line-2 {
        text-shadow: #ffb502 1px 1px, #ffb604 2px 2px, #ffb706 3px 3px, #ffb809 4px 4px, #ffb90b 5px 5px, #ffb90d 6px 6px, #ffba0f 7px 7px, #ffbb11 8px 8px, #ffbc13 9px 9px, #ffbd15 10px 10px, #ffbe17 11px 11px, #ffbf1a 12px 12px, #ffc01c 13px 13px, #ffc11e 14px 14px, #ffc220 15px 15px, #ffc222 16px 16px, #ffc324 17px 17px, #ffc426 18px 18px, #ffc529 19px 19px, #ffc62b 20px 20px, #ffc72d 21px 21px, #ffc82f 22px 22px, #ffc931 23px 23px, #ffca33 24px 24px, #ffcb35 25px 25px, #ffcb37 26px 26px, #ffcc3a 27px 27px, #ffcd3c 28px 28px, #ffce3e 29px 29px, #ffcf40 30px 30px, #ffd042 31px 31px, #ffd144 32px 32px, #ffd246 33px 33px, #ffd349 34px 34px, #ffd44b 35px 35px, #ffd44d 36px 36px, #ffd54f 37px 37px, #ffd651 38px 38px, #ffd753 39px 39px, #ffd855 40px 40px, #ffd957 41px 41px, #ffda5a 42px 42px, #ffdb5c 43px 43px, #ffdc5e 44px 44px, #ffdd60 45px 45px, #ffdd62 46px 46px, #ffde64 47px 47px, #ffdf66 48px 48px, #ffe069 49px 49px, #ffe16b 50px 50px, #ffe26d 51px 51px, #ffe36f 52px 52px, #ffe471 53px 53px, #ffe573 54px 54px, #ffe675 55px 55px, #ffe677 56px 56px, #ffe77a 57px 57px, #ffe87c 58px 58px, #ffe97e 59px 59px, #ffea80 60px 60px, #ffb400 0px 0px;
    }
    .title .title-part.line-3 {
        text-shadow: #03a488 1px 1px, #05a488 2px 2px, #08a588 3px 3px, #0aa688 4px 4px, #0da788 5px 5px, #0fa788 6px 6px, #12a887 7px 7px, #14a987 8px 8px, #17a987 9px 9px, #1aaa87 10px 10px, #1cab87 11px 11px, #1fac87 12px 12px, #21ac87 13px 13px, #24ad87 14px 14px, #26ae87 15px 15px, #29ae87 16px 16px, #2baf87 17px 17px, #2eb087 18px 18px, #30b086 19px 19px, #33b186 20px 20px, #36b286 21px 21px, #38b386 22px 22px, #3bb386 23px 23px, #3db486 24px 24px, #40b586 25px 25px, #42b586 26px 26px, #45b686 27px 27px, #47b786 28px 28px, #4ab886 29px 29px, #4db886 30px 30px, #4fb986 31px 31px, #52ba85 32px 32px, #54ba85 33px 33px, #57bb85 34px 34px, #59bc85 35px 35px, #5cbd85 36px 36px, #5ebd85 37px 37px, #61be85 38px 38px, #63bf85 39px 39px, #66bf85 40px 40px, #69c085 41px 41px, #6bc185 42px 42px, #6ec285 43px 43px, #70c284 44px 44px, #73c384 45px 45px, #75c484 46px 46px, #78c484 47px 47px, #7ac584 48px 48px, #7dc684 49px 49px, #80c784 50px 50px, #82c784 51px 51px, #85c884 52px 52px, #87c984 53px 53px, #8ac984 54px 54px, #8cca84 55px 55px, #8fcb84 56px 56px, #91cb83 57px 57px, #94cc83 58px 58px, #96cd83 59px 59px, #99ce83 60px 60px, #9cce83 61px 61px, #9ecf83 62px 62px, #a1d083 63px 63px, #a3d083 64px 64px, #a6d183 65px 65px, #a8d283 66px 66px, #abd383 67px 67px, #add383 68px 68px, #b0d482 69px 69px, #b3d582 70px 70px, #b5d582 71px 71px, #b8d682 72px 72px, #bad782 73px 73px, #bdd882 74px 74px, #bfd882 75px 75px, #c2d982 76px 76px, #c4da82 77px 77px, #c7da82 78px 78px, #c9db82 79px 79px, #ccdc82 80px 80px, #cfdd82 81px 81px, #d1dd81 82px 82px, #d4de81 83px 83px, #d6df81 84px 84px, #d9df81 85px 85px, #dbe081 86px 86px, #dee181 87px 87px, #e0e181 88px 88px, #e3e281 89px 89px, #e6e381 90px 90px, #e8e481 91px 91px, #ebe481 92px 92px, #ede581 93px 93px, #f0e680 94px 94px, #f2e680 95px 95px, #f5e780 96px 96px, #f7e880 97px 97px, #fae980 98px 98px, #fce980 99px 99px, #ffea80 100px 100px, #00a388 0px 0px;
    } */
.title_promo .title-part.line-4 {
	text-shadow: #035bb2 1px 1px, #055db2 2px 2px, #085eb1 3px 3px, #0a60b1
		4px 4px, #0d61b0 5px 5px, #0f63b0 6px 6px, #1264af 7px 7px, #1466af
		8px 8px, #1767ae 9px 9px, #1a68ae 10px 10px, #1c6aad 11px 11px,
		#1f6bad 12px 12px, #216dac 13px 13px, #246eac 14px 14px, #2670ab 15px
		15px, #2971ab 16px 16px, #2b72aa 17px 17px, #2e74aa 18px 18px, #3075a9
		19px 19px, #3377a9 20px 20px, #3678a8 21px 21px, #387aa8 22px 22px,
		#3b7ba7 23px 23px, #3d7da7 24px 24px, #407ea6 25px 25px, #427fa6 26px
		26px, #4581a5 27px 27px, #4782a5 28px 28px, #4a84a4 29px 29px, #4d85a4
		30px 30px, #4f87a3 31px 31px, #5288a3 32px 32px, #548aa2 33px 33px,
		#578ba2 34px 34px, #598ca1 35px 35px, #5c8ea1 36px 36px, #5e8fa0 37px
		37px, #6191a0 38px 38px, #63929f 39px 39px, #66949f 40px 40px, #69959e
		41px 41px, #6b969e 42px 42px, #6e989d 43px 43px, #70999d 44px 44px,
		#739b9c 45px 45px, #759c9c 46px 46px, #789e9b 47px 47px, #7a9f9b 48px
		48px, #7da19a 49px 49px, #80a29a 50px 50px, #82a399 51px 51px, #85a598
		52px 52px, #87a698 53px 53px, #8aa897 54px 54px, #8ca997 55px 55px,
		#8fab96 56px 56px, #91ac96 57px 57px, #94ae95 58px 58px, #96af95 59px
		59px, #99b094 60px 60px, #9cb294 61px 61px, #9eb393 62px 62px, #a1b593
		63px 63px, #a3b692 64px 64px, #a6b892 65px 65px, #a8b991 66px 66px,
		#abba91 67px 67px, #adbc90 68px 68px, #b0bd90 69px 69px, #b3bf8f 70px
		70px, #b5c08f 71px 71px, #b8c28e 72px 72px, #bac38e 73px 73px, #bdc58d
		74px 74px, #bfc68d 75px 75px, #c2c78c 76px 76px, #c4c98c 77px 77px,
		#c7ca8b 78px 78px, #c9cc8b 79px 79px, #cccd8a 80px 80px, #cfcf8a 81px
		81px, #d1d089 82px 82px, #d4d289 83px 83px, #d6d388 84px 84px, #d9d488
		85px 85px, #dbd687 86px 86px, #ded787 87px 87px, #e0d986 88px 88px,
		#e3da86 89px 89px, #e6dc85 90px 90px, #e8dd85 91px 91px, #ebde84 92px
		92px, #ede084 93px 93px, #f0e183 94px 94px, #f2e383 95px 95px, #f5e482
		96px 96px, #f7e682 97px 97px, #fae781 98px 98px, #fce981 99px 99px,
		#ffea80 100px 100px, #005ab3 0px 0px;
}
/* .title .title-part.line-5 {
        text-shadow: #8202fe 1px 1px, #8405fc 2px 2px, #8507fb 3px 3px, #8609fa 4px 4px, #870cf9 5px 5px, #890ef7 6px 6px, #8a10f6 7px 7px, #8b13f5 8px 8px, #8c15f4 9px 9px, #8e17f2 10px 10px, #8f1af1 11px 11px, #901cf0 12px 12px, #911eee 13px 13px, #9321ed 14px 14px, #9423ec 15px 15px, #9525eb 16px 16px, #9628e9 17px 17px, #982ae8 18px 18px, #992ce7 19px 19px, #9a2fe6 20px 20px, #9b31e4 21px 21px, #9d33e3 22px 22px, #9e36e2 23px 23px, #9f38e1 24px 24px, #a13bdf 25px 25px, #a23dde 26px 26px, #a33fdd 27px 27px, #a442db 28px 28px, #a644da 29px 29px, #a746d9 30px 30px, #a849d8 31px 31px, #a94bd6 32px 32px, #ab4dd5 33px 33px, #ac50d4 34px 34px, #ad52d3 35px 35px, #ae54d1 36px 36px, #b057d0 37px 37px, #b159cf 38px 38px, #b25bcd 39px 39px, #b35ecc 40px 40px, #b560cb 41px 41px, #b662ca 42px 42px, #b765c8 43px 43px, #b867c7 44px 44px, #ba69c6 45px 45px, #bb6cc5 46px 46px, #bc6ec3 47px 47px, #bd70c2 48px 48px, #bf73c1 49px 49px, #c075c0 50px 50px, #c177be 51px 51px, #c37abd 52px 52px, #c47cbc 53px 53px, #c57eba 54px 54px, #c681b9 55px 55px, #c883b8 56px 56px, #c985b7 57px 57px, #ca88b5 58px 58px, #cb8ab4 59px 59px, #cd8cb3 60px 60px, #ce8fb2 61px 61px, #cf91b0 62px 62px, #d093af 63px 63px, #d296ae 64px 64px, #d398ac 65px 65px, #d49aab 66px 66px, #d59daa 67px 67px, #d79fa9 68px 68px, #d8a1a7 69px 69px, #d9a4a6 70px 70px, #daa6a5 71px 71px, #dca8a4 72px 72px, #ddaba2 73px 73px, #deada1 74px 74px, #e0b0a0 75px 75px, #e1b29e 76px 76px, #e2b49d 77px 77px, #e3b79c 78px 78px, #e5b99b 79px 79px, #e6bb99 80px 80px, #e7be98 81px 81px, #e8c097 82px 82px, #eac296 83px 83px, #ebc594 84px 84px, #ecc793 85px 85px, #edc992 86px 86px, #efcc91 87px 87px, #f0ce8f 88px 88px, #f1d08e 89px 89px, #f2d38d 90px 90px, #f4d58b 91px 91px, #f5d78a 92px 92px, #f6da89 93px 93px, #f7dc88 94px 94px, #f9de86 95px 95px, #fae185 96px 96px, #fbe384 97px 97px, #fce583 98px 98px, #fee881 99px 99px, #ffea80 100px 100px, #8100ff 0px 0px;
    } */
/* 그림자 효과 */

/* 프로모션 타이틀 */
.title_promo {
	height: 100px;
	background-color: #d9eca2;
	padding: 15px;
	text-align: center;
	font-size: 3rem;
	padding: 15px;
	font-family: '양진체';
}

.title_promo_gym {
	height: 100px;
	background-color: #ffea80;
	color: #1f6bad;
	text-align: center;
	font-size: 3rem;
	padding: 15px;
	font-family: '양진체';
	text-shadow: -1px 0px #ffea80, 0px 1px #ffea80, 1px 0px #ffea80, 0px
		-1px #ffea80;
}
/* 헬스장 목록 */
.promo_gym {
	overflow: hidden; -
	-bs-gutter-x: 0px;
	margin-top: 20px;
	margin-bottom: 100px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.promo_gym .card-body {
	padding: 0px;
	padding-left: 10px;
	padding-top: 10px;
}

.card_gym {
	border: 1px solid #97C4B8;
	margin-bottom: 10px;
}

.list-group-item {
	border: none;
	padding: 2px;
	margin-left: 10px;
}
/* 헬스장 목록 끝 */
/* 식품 목록*/
.title_promo_food {
	height: 100px;
	background-color: #FFE4C0;
	color: #e2b34e;
	text-align: center;
	font-size: 3rem;
	padding: 15px;
	font-family: '양진체';
}

.promo_food {
	margin-top: 20px;
	margin-bottom: 100px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.card-title {
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}
/* 음식 프로모션 텍스트 효과 */
@import url("https://fonts.googleapis.com/css?family=Baloo+Thambi");

.title_promo_food>span {
	text-transform: uppercase;
	animation: glow 2s ease-in-out infinite;
}

@
keyframes glow { 0%, 100% {
	color: #e65b49;
	text-shadow: 0 0 10px #fdde30;
	/* , 0 0 50px #f8ede0, 0 0 100px #fac585; */
}

10
%
,
90
%
{
color
:
#e2b34e;
text-shadow
:
none;
}
}
.text-container>span:nth-child(2) {
	animation-delay: 0.25s;
}
/* 음식 프로모션 텍스트 효과 끝 */
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

<body>

        <!-- 헤더 -->


	<div class="container">
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
        <div class="empty"> </div>
        <!-- 칼럼 -->
        <div class="row cls_column">
            <div class="col">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <a href="#"><img id="calumn_src" name="calumn_src" src="/imgs/man-g2cdda0662_1920.jpg" class="d-block w-100"></a>
                            <div class="carousel-caption d-none d-md-block">
                                <h5 id="calumn_title" name="calumn_title">함께 하는 운동</h5>
                                <p>Some representative placeholder content for the first slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <a href="#"><img id="calumn_src" name="calumn_src" src="/imgs/crossfit-gee1621d57_1920.jpg" class="d-block w-100"></a>
                            <div class="carousel-caption d-none d-md-block">
                                <h5 id="calumn_title" name="calumn_title">근력 운동의 모든 것</h5>
                                <p>Some representative placeholder content for the second slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <a href="#"><img id="calumn_src" name="calumn_src" src="/imgs/sports-g92109f57b_1920.jpg" class="d-block w-100"></a>
                            <div class="carousel-caption d-none d-md-block">
                                <h5 id="calumn_title" name="calumn_title">개구리</h5>
                                <p>Some representative placeholder content for the third slide.</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </div>
        <!-- 칼럼 끝 -->
        <div class="empty"> </div>
        <!-- 부위별 운동-->
        <div class="title">
            <div class="waviy">
                <span style="--i:1">오늘은</span>
                <span style="--i:2">어떤&nbsp;</span>
                <span style="--i:3">운동을&nbsp;</span>
                <span style="--i:4">할까&nbsp;</span>
                <span style="--i:5">?</span>
            </div>
        </div>
        <div class="row cls_partEx">
            <div class="col-6 d-flex justify-content-center">
                <a href="#"><img style="width:100%;" src="/My/imgs/부위별01.jpg"></a>
            </div>
            <div class="col-6 d-flex justify-content-center">
                <a href="#"><img style="width:100%;" src="/My/imgs/부위별05.jpg"></a>
            </div>
        </div>
        <!-- 부위별 운동 끝 -->
        <div class="empty"></div>
        <div class="title_promo">
            <div class="content">
                  <span class="title-part line-4">6월 프로모션</span>
            </div>
        </div>
        <!-- 프로모션 -->
        <div class="title_promo_gym">
            여름대비 할인 진행 중!
        </div>
        <!-- 헬스장 -->
        <div class="row promo_gym">
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title" id="gym_name" name="gym_name">MCT GYM</h5>
                        </div>
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title" id="gym_name" name="gym_name">MCT GYM</h5>
                        </div>
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title" id="gym_name" name="gym_name">MCT GYM</h5>
                        </div>
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">MCT GYM</h5>
                        </div>
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title" id="gym_name" name="gym_name">MCT GYM</h5>
                        </div>
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title" id="gym_name" name="gym_name">MCT GYM</h5>
                        </div>
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title" id="gym_name" name="gym_name">MCT GYM</h5>
                        </div>
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card card_gym" style="width: 18rem;">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="gym_src" name="gym_src" src="/My/imgs/gym01.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title" id="gym_name" name="gym_name">MCT GYM</h5>
                        </div>
                        
                    </a>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" id="gym_month" name="gym_month">3개월</li>
                        <li class="list-group-item" id="gym_price" name="gym_price">250,000원</li>
                        <li class="list-group-item">O.T 1회 무료</li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 헬스장 끝 -->
        <!-- 식품 -->
        <div class="title_promo_food">
            식단관리도
            <span>맛있게!</span>
        </div>
        <div class="row promo_food">
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="food_src" name="food_src" src="/My/imgs/닭01.jpg" class="card-img-top"></a>
                    <div class="card-body">
                        <h5 class="card-title" id="food_title" name="food_title">부드러운 식단관리</h5>
                        <p class="card-text" id="food_name" name="food_name">닭가슴살 안심 스테이크</p>
                        <p class="card-text"><small class="text-muted" id="food_price" name="food_price">10팩 9,900원</small></p>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="food_src" name="food_src" src="/My/imgs/닭01.jpg" class="card-img-top"></a>
                    <div class="card-body">
                        <h5 class="card-title" id="food_title" name="food_title">부드러운 식단관리</h5>
                        <p class="card-text" id="food_name" name="food_name">닭가슴살 안심 스테이크</p>
                        <p class="card-text"><small class="text-muted" id="food_price" name="food_price">10팩 9,900원</small></p>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="food_src" name="food_src" src="/My/imgs/닭01.jpg" class="card-img-top"></a>
                    <div class="card-body">
                        <h5 class="card-title" id="food_title" name="food_title">부드러운 식단관리</h5>
                        <p class="card-text" id="food_name" name="food_name">닭가슴살 안심 스테이크</p>
                        <p class="card-text"><small class="text-muted" id="food_price" name="food_price">10팩 9,900원</small></p>
                    </div>
                </div>
            </div>
            <div class="col-6 col-sm-3 d-flex justify-content-center">
                <div class="card">
                    <a href="#" style="text-decoration: none; color:black;">
                        <img id="food_src" name="food_src" src="/My/imgs/닭01.jpg" class="card-img-top"></a>
                    <div class="card-body">
                        <h5 class="card-title" id="food_title" name="food_title">부드러운 식단관리</h5>
                        <p class="card-text" id="food_name" name="food_name">닭가슴살 안심 스테이크</p>
                        <p class="card-text"><small class="text-muted" id="food_price" name="food_price">10팩 9,900원</small></p>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- 식품 끝 -->
        <!-- 프로모션 끝 -->
        <div class="empty"> </div>
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