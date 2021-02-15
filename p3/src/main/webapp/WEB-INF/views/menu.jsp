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
					<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
					<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid m-0 p-0">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto mr-auto h5">
						<li class="nav-item"><a class="nav-link" href="#">호밀</a></li>
						<li class="nav-item"><a class="nav-link" href="#">ㅣ</a></li>
						<li class="nav-item"><a class="nav-link" href="#">메뉴</a></li>
						<li class="nav-item"><a class="nav-link" href="#">ㅣ</a></li>
						<li class="nav-item"><a class="nav-link" href="#">사진</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<!-- Page Content -->

	<div class="container">
		<div class="row my-4">
			<div class="col">
				<ul class="nav justify-content-center">
					<li class="nav-item"><a class="nav-link active" href="#">전체</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">한식</a></li>
					<li class="nav-item"><a class="nav-link" href="#">양식</a></li>
					</li>
				</ul>
			</div>
		</div>

		<div class="row">

			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<a href="#"><img class="card-img-top p-3"
						src="http://placehold.it/700x700" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item One</a>
						</h4>
						<div class="row">
							<div class="col-6">
								<h5>$24.99</h5>
							</div>
							<div class="col-6 d-flex justify-content-end">
								<a href="#"><img class="rounded-circle"
									src="http://placehold.it/30x30" alt=""></a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<a href="#"><img class="card-img-top p-3"
						src="http://placehold.it/700x700" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item One</a>
						</h4>
						<div class="row">
							<div class="col-6">
								<h5>$24.99</h5>
							</div>
							<div class="col-6 d-flex justify-content-end">
								<a href="#"><img class="rounded-circle"
									src="http://placehold.it/30x30" alt=""></a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<a href="#"><img class="card-img-top p-3"
						src="http://placehold.it/700x700" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item One</a>
						</h4>
						<div class="row">
							<div class="col-6">
								<h5>$24.99</h5>
							</div>
							<div class="col-6 d-flex justify-content-end">
								<a href="#"><img class="rounded-circle"
									src="http://placehold.it/30x30" alt=""></a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<a href="#"><img class="card-img-top p-3"
						src="http://placehold.it/700x700" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item One</a>
						</h4>
						<div class="row">
							<div class="col-6">
								<h5>$24.99</h5>
							</div>
							<div class="col-6 d-flex justify-content-end">
								<a href="#"><img class="rounded-circle"
									src="http://placehold.it/30x30" alt=""></a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<a href="#"><img class="card-img-top p-3"
						src="http://placehold.it/700x700" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item One</a>
						</h4>
						<div class="row">
							<div class="col-6">
								<h5>$24.99</h5>
							</div>
							<div class="col-6 d-flex justify-content-end">
								<a href="#"><img class="rounded-circle"
									src="http://placehold.it/30x30" alt=""></a>
							</div>
						</div>

					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<a href="#"><img class="card-img-top p-3"
						src="http://placehold.it/700x700" alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="#">Item One</a>
						</h4>
						<div class="row">
							<div class="col-6">
								<h5>$24.99</h5>
							</div>
							<div class="col-6 d-flex justify-content-end">
								<a href="#"><img class="rounded-circle"
									src="http://placehold.it/30x30" alt=""></a>
							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->

		<nav aria-label="Page navigation example">
			<div class="d-flex justify-content-center">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</div>
		</nav>

	</div>
	<!-- /.col-lg-12 -->

	<!-- /.row -->

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