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
<title>★★ 풋볼위아 자유게시판 ★★</title>
</head>
<body>
	<div id="wrap">
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		<c:import url="/WEB-INF/jsp/include/menu.jsp" />
		
		<section class="container">
	
		<div class="d-flex col mt-3 mb-3">
		<%--좌 섹션--%>
			<div class="col-9 sectionBox">
				
				<%--자유 게시판 테이블 --%>
				
				<div class="container">
					
					<table class=" postTable mt-3 form-control postTableBox">
					
						<caption>자유게시판</caption>
						<colgroup>
							<col style="width:7%">
							<col style="width:7%">
							<col style="width:35%">
							<col style="width:20%">
							<col style="width:21%">
							<col style="width:10%">
							
						</colgroup>
						<thead class="text-center">
							<tr>
								<th scope="col">번호</th>
								<th scope="col">말머리</th>
								<th scope="col">제목</th>
								<th scope="col">글쓴이</th>
								<th scope="col">작성일</th>
								<th scope="col">조회수</th>
							</tr>	
						
						</thead>
						<tbody>
							<%--반복 시작 --%>
							<c:forEach var="postTable" items="${postList }">
								<tr class="tableLine">
									<td class="text-center">${postTable.id }</td>
									<td class="text-center">일반</td>
									<td class="ml-3"><a href="/post/postView?postId=${postTable.id }" class="text-dark">${postTable.title }</a></td>
									<td class="text-center">${postTable.nickname }</td>
									<td class="text-center"><fmt:formatDate value="${postTable.createdAt }" pattern="yyyy/MM/dd"/></td>
									<td class="text-center">100</td>
								</tr>
							</c:forEach>
							<%--반복 끝 --%>
						</tbody>
					
					</table>
					<div class="d-flex justify-content-end mt-3">
						<button type="button" class="btn mb-3 text-white" id="postUpBtn">글쓰기</button>
					
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
			
			$("#postUpBtn").on("click",function(){
				location.href = "/post/postUp";
			});
			
			
			$("#logoutBtn").on("click",function(){
				location.href = "/user/signout";
			});
		});
	
	
	</script>
	
</body>
</html>