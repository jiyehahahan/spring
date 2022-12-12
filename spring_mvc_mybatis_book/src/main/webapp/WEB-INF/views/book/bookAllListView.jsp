<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>전체 도서 정보 조회</title>
		<style>
			#wrap{
				margin:0 auto;
				width: 100%;
				text-align: center;
			}
			
			table{
				margin:0 auto;
				width: 800px;
			}
			
			table th{ 
				background-color: skyblue;
			}
		</style>
		
	</head>
	<body>
		<div id="wrap">
		<h3>전체 도서 정보 조회</h3>
		<table border="1">
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>저자명</th>
				<th>도서가격</th>
				<th>제조일</th>
				<th>재고</th>
				<th>사진</th>
			</tr>
			<c:forEach var="book" items="${bookList }">
			 <tr>
			  <td>${book.bookNo }</td>
			  <td>${book.bookName }</td>
			  <td>${book.bookAuthor }</td>
			  <td>${book.bookPrice }</td>
			  <td><fmt:formatDate value="${book.bookDate }" pattern="yyyy-MM-dd"/></td>
			  <td>${book.bookStock }</td>
			  <td><img src="<c:url value='/images/${book.bookNo}.PNG' />" width="30" height="20"></td>
			 </tr>
			 </c:forEach>
		</table><br><br>
		
		
		<a href="<c:url value='/' />">메인 화면으로 이동</a>
		</div>
	</body>
</html>
