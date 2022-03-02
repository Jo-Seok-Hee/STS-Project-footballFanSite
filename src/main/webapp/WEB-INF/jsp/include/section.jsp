<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="container">
	
	<div class="d-flex col mt-3 mb-3">
		<%--좌 섹션--%>
		<div class="bg-secondary col-9">
		dd
		</div>
		<%--우 섹션 --%>
		<div class="col-3">
			<%--로그인 박스 --%>
			<div class="bg-white mt-3">
				<label class="d-flex justify-content-center">로그인을 해주세요.</label>
				<%--로그인/회원가입 버튼 2가지 --%>
				<div class="d-flex justify-content-around">
					<button type="button" class="form-control btn text-white signBtn" id="loginBtn">로그인</button>
					<button type="button" class="form-control btn text-white signBtn" id="registBtn">회원가입</button>
				</div>
			</div>
			
			<%--리그 순위 박스 --%>
			<div class="bg-warning mt-3">
				<label>순위 순위</label>
			</div>
		</div>
	</div>	
</section>