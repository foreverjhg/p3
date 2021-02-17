<%@ page language="java" contentType="text/html; charSet=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav aria-label="Page navigation example">
	<div class="d-flex justify-content-center">
		<ul class="pagination">
		
			<li class="page-item"><a class="page-link"
				href="javascript:goPage(${param.prevPageNo})" aria-label="Previous"><span
					aria-hidden="true">&laquo;</span></a></li>
			     <c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
			       <c:choose>
			         <c:when test="${i eq param.pageNo}">
			         <li class="page-item active">
					   <a class="page-link" href="javascript:goPage(${i})">${i}<span class="sr-only">(current)</span></a>
					 </li>
					 </c:when>
					 <c:otherwise>
					   <li class="page-item">
					 	<a class="page-link" href="javascript:goPage(${i})">${i}</a>
					  </li>
					 </c:otherwise>
				  </c:choose>
				</c:forEach>
			<li class="page-item"><a class="page-link"
				href="javascript:goPage(${param.nextPageNo})" aria-label="Next"><span
					aria-hidden="true">&raquo;</span></a></li>
		</ul>
	</div>
</nav>