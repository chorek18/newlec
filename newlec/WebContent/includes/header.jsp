<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>notice</title>
<link href="${pageContext.request.contextPath}/customer/notice.css" type="text/css" rel="stylesheet" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
</head>
<body>
	<div id="header">
		<div class="top-wrapper">
			<h1 id="logo">
				<a href="index.yjc"><img src="${pageContext.request.contextPath}/images/logo.png" alt="뉴렉처" /></a>
			</h1>
			<h2 class="hidden">메인메뉴</h2>
			<ul id="mainmenu" class="block_hlist">
				<li><a href="">학습가이드</a></li>
				<li><a href="">과정선택</a></li>
				<li><a href="">인기과정</a></li>
			</ul>
			<form id="searchform" action="" method="get">
				<fieldset>
					<legend class="hidden"> 과정검색폼 </legend>
					<label for="query">과정검색</label> <input type="text" name="query" />
					<input type="submit" class="button" value="검색" />
				</fieldset>
			</form>
			<h3 class="hidden">로그인메뉴</h3>
			<ul id="loginmenu" class="block_hlist">
				<li><a href="index.yjc">HOME</a></li>
				<c:choose>
					<c:when test="${sessionScope.loginDTO.userName != null}">
						<li>${sessionScope.loginDTO.userName}님 환영합니다!</li>
						<li><a href="logout.yjc">로그아웃</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="login.yjc">로그인</a></li>
						<li><a href="join.yjc">회원가입</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
			<h3 class="hidden">회원메뉴</h3>
			<ul id="membermenu" class="clear">
				<%-- <li><a href=""><img src="${pageContext.request.contextPath}/images/menuMyPage.png" alt="마이페이지" /></a></li> --%>
				<li><img src="${pageContext.request.contextPath}/images/menuMyPage.png" alt="마이페이지" /></li>
				<li><a href="notice.yjc"><img src="${pageContext.request.contextPath}/images/menuCustomer.png" alt="고객센터" /></a></li>
			</ul>
		</div>
	</div>
	<div id="visual" class="customer">
		<div class="top-wrapper"></div>
	</div>
	<div id="main">
		<div class="top-wrapper clear">