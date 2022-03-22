<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
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
			<div class=" col-9 sectionBox">
				
				<div class="container">
					
					<div class="mt-3 mb-3">
						<div>
							<hr>
							<b>※Football We are 자유게시판에는 불법광고, 사익의목적 혹은 공연음란에 해당하는 게시물을 게시할 수 없습니다.
							이를 어길경우 글쓰기 7일간의 제재, 그리고 심한경우 로그인금지 까지 이어질 수 있습니다.</b>
							<hr>
						</div>
						
						<div>
							<h4 style="color:#3c94d6;">풋볼위아 자유게시판</h4>
							<hr>
						</div>
						
					
						
							<div>
								<strong>
									[일반] <label>${post.title }</label>
								</strong>
								<br>
								<label>
									${post.nickname } | <fmt:formatDate value="${post.createdAt }" pattern="yyyy.MM.dd hh:mm:ss"/>
								</label>
								<hr>
							</div>
							
							<div class="mt-3">
								
								${post.content }
							
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
</body>
</html>