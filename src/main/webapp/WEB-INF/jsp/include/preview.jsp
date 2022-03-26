<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

	<div class=" col-9 sectionBox ">
		
		<%--뉴스 미리보기 --%>
		<div class="mt-3 w-100 previewBox bg-warning">
			<div class="m-2">
				<h5>News</h5>
				<hr>
				<div class="d-flex">
					<div class="newsBox w-50 bg-danger">
						1번 뉴스 
					</div>
					<div class="newsBox w-50 bg-secondary">
						2번 뉴스
					</div>
				</div>
				<div class="d-flex justify-content-end mt-2">
					<label><a href="/news/detail" class="text-dark mr-1" style="font-size:16px;">더보기</a></label>
				</div>
			</div>
		
		</div>
		
		<%--경기일정 미리보기 --%>
		<div class="mt-3 w-100 previewBox bg-secondary">
			<div class="m-2">
				<h5>Schedule</h5>
				<hr>
			
			</div>
		</div>
		
		<%--공지사항 미리보기 --%>
		<div class="mt-3 w-100 previewBox bg-primary">
		
		
		</div>
		
		
		
		
	</div>