<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Login</title>

<!-- Bootstrap core CSS -->
<link
	href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css' />"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/shop-homepage.css' />"
	rel="stylesheet">

<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">

<style>
@font-face {
	font-family: 'GmarketSansBold';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansBold.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GmarketSansMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GmarketSansLight';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/GmarketSansLight.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: 'Noto Sans KR', sans-serif, "GmarketSansMedium",
		"GmarketSansLight", "GmarketSansBold";
	padding-top: 56px;
}

.breadcrumb {
	text-align: right;
}

.mycontent-left {
	border-right: 1px solid rgba(0, 0, 0, .5);
}

a {
	color: #212529 !important;
}

.card {
	border: none;
}
</style>

</head>

<body>
	<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<div class="container">
			<a class="navbar-brand mb-0 h1 " href="#">HOMEAL</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link" href="#">ȸ������</a></li>
					<li class="nav-item"><a class="nav-link" href="#">�α���</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid m-0 p-0">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto mr-auto h5">
						<li class="nav-item"><a class="nav-link" href="#">ȣ��</a></li>
						<li class="nav-item"><a class="nav-link" href="#">��</a></li>
						<li class="nav-item"><a class="nav-link" href="#">�޴�</a></li>
						<li class="nav-item"><a class="nav-link" href="#">��</a></li>
						<li class="nav-item"><a class="nav-link" href="#">����</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<!-- Page Content -->

	<div class="container my-4">
		<div class="row">
			<div class="col-6">
				<div class="row">
					<div class="col-3">
						<a href="#"><img class="img mb-2"
							src="http://placehold.it/100x100" alt=""></a> <a href="#"><img
							class="img mb-2" src="http://placehold.it/100x100" alt=""></a>
						<a href="#"><img class="img mb-2"
							src="http://placehold.it/100x100" alt=""></a> <a href="#"><img
							class="img" src="http://placehold.it/100x100" alt=""></a>
					</div>
					<div class="col-9 m-0 p-0">
						<img class="img-fluid" src="http://placehold.it/500x500" alt="">
					</div>

				</div>

			</div>
			<div class="col-6">
				<h2 class="mb-2">���屹</h2>
				<h5>15,000��</h5>
				<hr class="my-3">
				<p>���־�� ���� ���־�� ���� ���־�� ���� ���־�� ���� ���־�� ���� ���־�� ����</p>
				<hr class="my-3">
				<div class="row d-flex justify-content-end">
					<div class="col-6">
						<button class="btn btn-block btn-outline-dark" type="submit">��ٱ���</button>
					</div>
					<div class="col-6">
						<button class="btn btn-block btn-primary" type="submit">�ٷα���</button>
					</div>
				</div>
			</div>
		</div>

		<div class="row my-4">
			<div class="col-12">
				<ul class="nav nav-pills nav-justified">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">������</a></li>
					<li class="nav-item"><a class="nav-link" href="#">����(300+)</a></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-12">
				<img src="http://placehold.it/1200x500" alt="" class="img-fluid">
			</div>
		</div>

		<table class="table table-hover my-4">
			<thead>
				<tr>
					<th scope="col">����</th>
					<th scope="col">������</th>
					<th scope="col">���̵�</th>
					<th scope="col">��¥</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Mark</td>
					<td>Otto</td>
					<td>@mdo</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Jacob</td>
					<td>Thornton</td>
					<td>@fat</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Larry the Bird</td>
					<td>@twitter</td>
					<td>@twitter</td>
				</tr>
			</tbody>
		</table>



	</div>



	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-light">
		<div class="container">
			<p class="m-0 text-center text-#E5E9EF">Copyright &copy; HOMEAL
				2021</p>
		</div>
		<!-- /.container -->
	</footer>

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
	<script
		src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>

</body>
</html>