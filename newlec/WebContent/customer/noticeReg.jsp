<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<jsp:include page="../includes/header.jsp" />
			<!-- end header -->
			<div id="content">
				<h2>공지사항</h2>
				<h3 class="hidden">방문페이지위치</h3>
				<ul id="breadscrumb" class="block_hlist">
					<li>HOME</li>
					<li>고객센터</li>
					<li>공지사항등록</li>
				</ul>
				<form action="noticeRegProc.yjc&f=${f}&q=${q}" method="post">
					<div id="notice-article-detail" class="article-detail margin-large">
						<dl class="article-detail-row">
							<dt class="article-detail-title">제목</dt>
							<dd class="article-detail-data">
								&nbsp;<input name="title" />
							</dd>
						</dl>
						<dl class="article-detail-row">
							<dt class="article-detail-title">첨부파일</dt>
							<dd class="article-detail-data">
								&nbsp;<input type="file" id="txtFile" name="file" />
							</dd>
						</dl>
						<div class="article-content">
							<textarea id="txtContent" class="txtContent" name="content"></textarea>
						</div>
					</div>
					<p class="article-comment margin-small">
						<input class="btn-save button" type="submit"/>
						<a class="btn-cancel button" href="notice.yjc?page=${page}&f=${f}&q=${q}"></a>
					</p>
				</form>
			</div>
						<!-- start footer -->
			<jsp:include page="../includes/footer.jsp" />