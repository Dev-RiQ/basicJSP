<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./part/header.jsp" %>

<h1>게시판</h1>
<a href="${ ctx }/boardList.do">전체 게시글 확인하기</a><br><br>
<a href="${ ctx }/boardAddDummy.do">더미 게시글 추가하기</a><br><br>
<a href="${ ctx }/boardDeleteAll.do">전체 게시글 삭제하기</a><br><br>
<a href="${ ctx }/boardAddInfo.do">게시글 추가하기</a><br>
<hr><br>
<a href="${ ctx }/boardListPage.do?page=1">페이징 게시판</a>

<%@ include file="./part/footer.jsp" %>