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
    <script>
    
    const btnBack = document.getElementById("btnBack");
    
    	btnBack.addEventListener("click", function(e){
        	location.href="/information/information.jsp";
    	});
	</script>
	
</body>
</html>