<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<title>회원가입</title>
<style>
.container {
	width: 500px;
	text-align: center;
}

.input {
	margin-top: 10px;
}

.input>p {
	margin: 0;
}

#inputId {
	width: 300px;
	margin: 0;
}

#idCheckBtn {
	width: 150px;
}

.input {
	text-align: left;
}

.input>.row>p {
	margin: 0;
}

#searchPost {
	width: 220px;
}

.row {
	margin-top: 15px;
}

input, button {
	height: 30px;
	font-size: 12px;
}

.btn {
	padding: 0;
}
#submitBtn,#cancleBtn{
	width: 150px;
}

</style>
</head>
<body>
	<div class="container">
		<form id="signupForm" action="/signup.mem" method="post">
			<div class="title">
				<h4>회원가입</h4>
			</div>
			<div class="input" id="id">
				<p>아이디(ID)</p>
				<div class="row">
					<div class="col">
						<input type="text" class="form-control" id="inputId" name="id"
							readonly>
					</div>
					<div class="col">
						<button type="button" class="btn btn-warning" id="idCheckBtn">아이디
							확인</button>
					</div>
				</div>

			</div>
			<div class="input" id="pw">
				<p>비밀번호</p>
				<input type="password" class="form-control" id="inputPw" name="pw">
			</div>
			<div class="input" id="pwCheck">
				<p>비밀번호 확인</p>
				<input type="password" class="form-control" id="inputPwCheck">
			</div>
			<div class="input" id="nickname">
				<p>닉네임</p>
				<input type="text" class="form-control" id="inputNickname" name="nickname">
			</div>
			<div class="input" id="phone">
				<div class="row">
					<p>핸드폰 번호</p>
				</div>
				<div class="row">
					<div class="col-4">
						<select class="form-select" id="phone1" name="phone1">
							<option value="010" selected>010</option>
							<option value="011">011</option>
							<option value="019">019</option>
							<option value="018">018</option>
							<option value="017">017</option>
							<option value="016">016</option>
						</select>
					</div>
					<div class="col-4 inputPohne">
						<input type="text" class="form-control phoneNum" id="phone2" name="phone2">
					</div>
					<div class="col-4">
						<input type="text" class="form-control phoneNum" id="phone3" name="phone3">
					</div>
					<div class="col d-none">
						<input type="text" id="phoneAll" name="phoneAll">
					</div>
				</div>
			</div>
			<div class="input post">
				<div class="row">
					<div class="col-6">
						<input type="text" class="form-control" id="postNum" name="postNum"
							placeholder="우편번호">
					</div>
					<div class="col-6">
						<button type="button" class="btn btn-primary" id="searchPost" onclick="sample4_execDaumPostcode()">우편번호
							찾기</button>
					</div>
				</div>
				<div class="row">
					<div class="col-12">
						<input type="text" class="form-control" id="roadAddress" name="roadAddress"
							placeholder="도로명주소">
					</div>
				</div>
				<div class="row">
					<div class="col-6">
						<input type="text" class="form-control" id="detailAddr" name="detailAddr"
							placeholder="상세주소">
					</div>
					<div class="col-6">
						<input type="text" class="form-control" id="extraAddr" name="extraAddr"
							placeholder="읍/면/동">
					</div>
				</div>
			</div>
			<div>
				<div class="row">
					<div class="col-4 d-flex justify-content-end">
						<button type="button" class="btn btn-primary" id="submitBtn">가입</button>
					</div>
					<div class="col-4">
						<button type="button" class="btn btn-secondary" id="cancleBtn">취소</button>
					</div>
				</div>
			</div>
		</form>
	</div>


	<script>
		// 아이디 확인 버튼 누르면 팝업창 띄우기
		document.getElementById("idCheckBtn").onclick = function() {
			// 팝업창을 띄우기 위해 필요한 3가지 값
			// 1. jsp 경로값 (팝업창을 꾸며주는 jsp 별도로 필요)
			// 2. 팝업창의 이름값 (팝업창 url값)
			// 3. 띄워주려는 팝업창의 크기, 위치
			let url = "/idCheckPopup.mem";
			let name = "아이디 중복검사";
			let option = "width=600, height=300, left=500, top=300";

			window.open(url, name, option);
		}

		$("#submitBtn").on("click",function() {
							let regexPw = /[a-zA-Z0-9~!@#$%^&*]{6,20}/;
							let regexNickname = /[a-zA-Z0-9ㄱ-힣]{4,8}/;
							let regexPhone = /[0-9]{11}/;
							// phone번호 합쳐주는 작업
							// select 박스에서 선택된 값을 가져오는 방법
							let phone = $("#phone1 option:selected").val()
									+ $("#phone2").val() + $("#phone3").val();
							console.log(phone);
							$("#phoneAll").val(phone);
			
							// 유효성 검사
							if ($("#inputId").val() === "") {
								alert("아이디를 입력해 주세요.");
								return;
							} else if (!regexPw.test($('#inputPw').val())) {
								alert("형식에 맞지 않는 비밀번호입니다.");
								return;
							} else if ($("#inputPwCheck").val() !== $(
									"#inputPw").val()) {
								alert("비밀번호와 비밀번호 확인값이 일치하지 않습니다.");
								return;
							} else if (!regexNickname.test($("#inputNickname")
									.val())) {
								alert("형식에 맞지 않는 닉네임입니다.");
								return;
							} else if (!regexPhone.test(phone)) {
								alert("형식에 맞지 않는 휴대폰번호입니다.");
								return;
							} else if ($("#postNum").val() === ""
									|| $("#roadAddress").val() === "") {
								alert("주소를 입력해 주세요");
								return;
							}
				
							// form 제출
							$("#signupForm").submit();
							
							
						})
						
		
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postNum').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr;
                document.getElementById("detailAddr").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("extraAddr").value = extraRoadAddr;
                } else {
                    document.getElementById("extraAddr").value = '';
                }

                
            }
        }).open();
    }
	</script>


</body>
</html>