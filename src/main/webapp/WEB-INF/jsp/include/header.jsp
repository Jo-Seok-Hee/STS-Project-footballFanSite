<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<header>
		<div class="container d-flex">
			<div id="logo" class="d-flex align-items-center mt-3">
				<img id="logoBall" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVTGcqq9BLvzJmAkwhQuFb3Y-g6_sBG35zEA&usqp=CAU">
				<label class="ml-3">FootBall</label>
				<label><h2 class="ml-2 mt-4">we are</h2></label>
			</div>
			<div >
				<img class="m-3" id="flag" src="data:image/png;base64,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">
			</div>
			<div >	
			<br><br><br>
				<div class="input-group ml-4" id="searchBar">
				    <div class="form-outline">
				        <input id="search-input" type="search" id="form1" class="form-control" placeholder="검색어를 입력하세요."/>

				    </div>
				    <button id="search-button" type="button" class="btn">
				        <i class="bi bi-search"></i>
				    </button>
				</div>
			</div>
		</div>
	</header>