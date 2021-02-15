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

		<div class="jumbotron text-center bg-white px-0">
			<h2 class="display-6">HOMEAL'S STORY</h2>
			<div class="row">
				<div class="col-5"></div>
				<div class="col-2">
					<hr class="my-5">
				</div>
				<div class="col-5"></div>
			</div>
			<p class="lead mb-0">먹고 싶은 음식이 있어도 걱정 NO!</p>
			<p class="lead">이젠 집에서 간편하게 요리하세요!</p>
		</div>

		<img src="http://placehold.it/1200x600" class="img-fluid" alt="">

		<div class="jumbotron text-center bg-primary px-0 mb-0">
			<h2 class="display-6">BEST ITEMS</h2>
			<div class="row">
				<div class="col-5"></div>
				<div class="col-2">
					<hr class="my-5">
				</div>
				<div class="col-5"></div>
			</div>
			<p class="lead">호밀의 베스트 상품을 집에서 만나보세요!</p>
		</div>

		<img src="http://placehold.it/1200x600" class="img-fluid" alt="">

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