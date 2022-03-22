<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  	
  	
  	<link rel="stylesheet" href="/css/style.css">

  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>★★해외축구 팬들의 집합소 FootBall We Are★★</title>
</head>
<body>
	
	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<c:import url="/WEB-INF/jsp/include/menu.jsp" />
		
		<section class="container">
	
		<div class="d-flex col mt-3 mb-3">
		<%--좌 섹션--%>
			<div class="col-9 sectionBox">
				
				<div class="container">
					
					<div class="mt-3 mb-3">
						<div>
							<hr>
							<b>※Football We are 자유게시판에는 불법광고, 사익의목적 혹은 공연음란에 해당하는 게시물을 게시할 수 없습니다.
							이를 어길경우 글쓰기 7일간의 제재, 그리고 심한경우 로그인금지 까지 이어질 수 있습니다.</b>
							<hr>
						</div>
						
						<div class="d-flex container align-items-center">
							<h5>제목 : </h5>
							<input type="text" class="form-control ml-3 postUpTitle" id="titleInput" placeholder="제목을 입력해 주세요.">
						</div>
						
						<div class="container mt-3">
							<textarea class="container form-control" rows="10" cols="94" placeholder="내용을 입력하세요." id="contentInput"></textarea>
							
						
						</div>
						
						<div class="d-flex justify-content-between mt-3 container" >
						
							<div class="img-icon">
								<i class="bi bi-image" id="imgBtn"></i>
								<input type="file" class="form-control d-none" id="fileInput">
							</div>
							
							<button type="button" class="form-control btn signBtn text-white" id="postUpBtn">게시하기</button>
						
						</div>
						
						
						
					</div>
				
				
				
				</div>	
			

			</div>
			<%--우 섹션 --%>
			<div class="col-3">
				<%--로그인 박스 --%>
				<c:choose>
					<c:when test="${not empty userId }">
						<div class="bg-white mt-3">
							<label class="d-flex justify-content-center">"${userName }"님 환영합니다. </label>
							<%--로그인/회원가입 버튼 2가지 --%>
							<div class="d-flex justify-content-around">
								<button type="button" class="form-control btn text-white signBtn" >개인정보</button>
								<button type="button" class="form-control bg-danger text-white signBtn" id="logoutBtn">로그아웃</button>
							</div>
						</div>
					
					</c:when>
					<c:otherwise>
						<div class="bg-white mt-3">
							<label class="d-flex justify-content-center">로그인을 해주세요.</label>
							<%--로그인/회원가입 버튼 2가지 --%>
							<div class="d-flex justify-content-around">
								<button type="button" class="form-control btn text-white signBtn" id="loginBtn">로그인</button>
								<button type="button" class="form-control btn text-white signBtn" id="registBtn">회원가입</button>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
				<%--리그 순위 박스 --%>
				<c:import url="/WEB-INF/jsp/include/rankTable.jsp" />
			</div>
		</div>	
		</section>
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	
	
	
	
	</div>
	<script>
		$(document).ready(function(){
			
			$("#imgBtn").on("click",function(){
				
				//다른 버튼 클릭기능
				$("#fileInput").click();
			});
			
			$("#logoutBtn").on("click",function(){
				location.href = "/user/signout";
			});
			
			$("#postUpBtn").on("click",function(){
				
				let title = $("#titleInput").val();
				let content = $("#contentInput").val().trim();
				
				if(title == "") {
					alert("제목을 입력하세요");
					return ;
				}
				
				if(content == "") {
					alert("내용을 입력하세요");
					return ;
				}
				
				if($("#fileInput")[0].files.length == 0) {

					$.ajax({
						//tudse
						type:"post",
						url:"/post/postUpload",
						data:{"title":title,"content":content},
						success:function(data){
							
							if(data.result == "success"){
								location.href = "/post/freeboard";
							} else {
								alert("글게시 실패");
							}
						},
						error:function(){
							alert("글게시 에러");
						}
					});
					
				}
				<%--
				var formData = new FormData();
				formData.append("content",content);
				formData.append("file",$("#fileInput")[0].files[0]);
				
				$.ajax({
					type:"post",
					url:"/post/uploadPost",
					data:formData,
					enctype:"multipart/form-data",
					processData:false,
					contentType:false,
					success:function(data){
						
						if(data.result == "success"){
							alert("글쓰기 성공");
							location.reload();
						} else {
							alert("글쓰기 실패");
						}
					},
					error:function(){
						alert("글쓰기 에러");
					}
				});				
				--%>
				
			});
		});
	
	
	</script>
	
</body>
</html>