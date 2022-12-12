<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
	</head>
	<body>
		<h3>Mybatis 사용</h3>
		<br>
		<a href="<c:url value='/book/bookListAll'/> ">전체 도서 정보 조회</a><br>
		<a href="<c:url value='/book/bookSearchForm'/> ">도서 검색</a><br>
		<a href="<c:url value='/book/bookSearchForm2'/> ">도서 검색2</a>
	</body>
</html>
