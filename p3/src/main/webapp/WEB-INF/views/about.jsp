<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
			<a class="navbar-brand mb-0 h1 " href="<c:url value='/best.do'/>">HOMEAL</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<c:if test="${member != null}">
						<li class="nav-item"><a class="nav-link" href="<c:url value='/cart.do'/>">${member.name}��</a>
						</li>
					</c:if>

					<li class="nav-item"><c:if test="${member != null}">
							<a class="nav-link" href="<c:url value='/userLogOut.do'/>">�α׾ƿ�</a>
						</c:if> <c:if test="${member == null}">
							<a class="nav-link" href="#open">�α���</a>
						</c:if></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container-fluid m-0 p-0">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container">
				<div class="collapse navbar-collapse" id="navbarResponsive">
					<ul class="navbar-nav ml-auto mr-auto h5">
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/about.do'/>">ȣ��</a></li>
						<li class="nav-item"><a class="nav-link" href="#">��</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/menuList.do'/>">�޴�</a></li>
						<li class="nav-item"><a class="nav-link" href="#">��</a></li>
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/photo.do'/>">����</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<!-- Page Content -->

	<div class="container">

		<img src="<c:url value='/resources/img/about/about1.jpg' />"
			class="img-fluid mt-4" alt="">

		<div class="jumbotron text-center bg-white px-0">
			<h2 class="display-6">HOMEAL'S STORY</h2>
			<div class="row">
				<div class="col-5"></div>
				<div class="col-2">
					<hr class="my-5">
				</div>
				<div class="col-5"></div>
			</div>
			<p class="lead mb-0">�ϻ󿡼� �Ծ�Դ� ���ĵ�</p>
			<p class="lead mb-3">���ڱ� �������� �԰� �ʹٸ�?</p>
			<p class="lead mb-0">������ �����ϰ� �丮�غ�����!</p>
		</div>

		<img src="<c:url value='/resources/img/about/about4.jpg' />"
			class="img-fluid" alt="">

		<div class="jumbotron text-center bg-white px-0 mb-0">
			<h2 class="display-6">HOMEAL'S RESPONSIBILITY</h2>
			<div class="row">
				<div class="col-5"></div>
				<div class="col-2">
					<hr class="my-5">
				</div>
				<div class="col-5"></div>
			</div>
			<p class="lead mb-0">���� ��Ȯ�� �ż��� ��Ḧ �����Ͽ�</p>
			<p class="lead">ȣ���� ������ �Բ� ��� ���޵帳�ϴ�</p>
		</div>

		<img src="<c:url value='/resources/img/about/about3.jpg' />"
			class="img-fluid" alt="">

		<div class="jumbotron text-center bg-white px-0 mb-0">
			<h2 class="display-6">HOMEAL'S SERVICE</h2>
			<div class="row">
				<div class="col-5"></div>
				<div class="col-2">
					<hr class="my-5">
				</div>
				<div class="col-5"></div>
			</div>
			<p class="lead mb-0">ȣ�п����� ���� �����͸� ��������</p>
			<p class="lead">�Ĵܰ��� �� ������ �����Ǹ� �����帳�ϴ�</p>
		</div>

		<img src="<c:url value='/resources/img/about/about2.jpg' />"
			class="img-fluid mb-4" alt="">

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