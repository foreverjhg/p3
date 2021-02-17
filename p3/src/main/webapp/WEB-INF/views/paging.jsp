<%@ page language="java" contentType="text/html; charSet=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav aria-label="Page navigation example">
	<div class="d-flex justify-content-center">
		<ul class="pagination">
			<li class="page-item" style="margin-right: 4px;"><a class="page-link"
				href="javascript:goPage(${param.prevPageNo})" aria-label="Previous"><span
					aria-hidden="true">&laquo;</span></a></li>
			<li class="page-item">
			     <c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">
					<a class="page-link" href="javascript:goPage(${i})" style="display: inline-block;">${i}</a>
				</c:forEach>
			</li>
			<li class="page-item" style="margin-left: 4px;"><a class="page-link"
				href="javascript:goPage(${param.nextPageNo})" aria-label="Next"><span
					aria-hidden="true">&raquo;</span></a></li>
		</ul>
	</div>
</nav>