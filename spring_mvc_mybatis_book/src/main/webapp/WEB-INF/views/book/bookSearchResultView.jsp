<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>도서 검색 결과</title>
	</head>
	<body>
		<div id="wrap">
		<h3>상품 검색 결과</h3>
		<table border="1">
			<tr>
				<th>도서번호</th>
				<th>도서명</th>
				<th>저자명</th>
				<th>가격</th>
				<th>발간일</th>
				<th>재고</th>
				<th>사진</th>
			</tr>
			
			<c:choose>
			  <c:when test="${empty bookList}">
			    <tr align="center">
			      <td colspan="7">찾는 상품이 없습니다</td>
			      </tr>
			  </c:when>
			
			</c:choose>
			
			<c:forEach var="book" items="${bookList }">
			 <tr>
			  <td><a href="<c:url value='/book/detailViewBook/${book.bookNo}'/>">${book.bookNo }</a></td>
			  <td>${book.bookName }</td>
			  <td>${book.bookPrice }</td>
			  <td>${book.bookCompany }</td>
			  <td>${book.bookStock }</td>
			  <td><fmt:formatDate value="${book.bookDate }" pattern="yyyy-MM-dd"/></td>
			  <td><img src="<c:url value='/images/${book.bookNo }.PNG' />" width="30" height="20"></td>
			 </tr>
			 </c:forEach>
		</table><br><br>
		
		
		<a href="<c:url value='/' />">메인 화면으로 이동</a> 
		</div>
	</body>
</html>
