<%@ page language="java" contentType="text/html; charset=euc-kr"
	pageEncoding="euc-kr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<title>게시판</title>
<link href="<c:url value='/resources/css/table.css' />" rel="stylesheet">
<link href="<c:url value='/resources/css/board.css' />" rel="stylesheet">
</head>
<body>
	<div class="container">
		<h1 style="text-align: center;">자유게시판</h1>
		<table class="type08" style="text-align: center; margin-left: auto; margin-right: auto; margin-top: auto;">
			<thead>
				<tr>
					<th scope="cols">번호</th>
					<th scope="cols">제목</th>
					<th scope="cols">작성일</th>
					<th scope="cols">조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.num}</td>
						<td><a href="">${item.title}</a></td>
						<td>${item.writeDate}</td>
						<td>${item.readCount}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<div style="text-align: right;">
			<a class="btn green small" href="<c:url value='/writeView.do' />">글쓰기</a>
		</div>
	</div>
</body>
</html>