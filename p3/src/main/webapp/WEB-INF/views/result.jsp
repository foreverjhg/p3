<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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
	padding-top: 0px;
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

.kk{
	background-color: #1ab188;
    border-color: #1ab188;
}
</style>

</head>

<body>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-6 px-0">
				<img class="img-fluid" src="<c:url value='/imgShow.do'/>?dishnum=<c:out value='${result.dishnum }'/>"  alt="">
			</div>
			<div class="col-6 px-0 d-flex align-items-center justify-content-center flex-column border border-secondary">
				<h3><c:out value="${result.dishname}" /></h3>
				<hr class="my-3">
				<p class="lead" ><c:out value="${result.price}" /> 원</p>
				<hr class="my-3">
				<div class="row">
					<div class="col-6">
						<form action="<c:url value='/detail.do'/>?dishnum=${result.dishnum}&flag=${result.dishnum}" method="post" target="_parent">
						<button type="submit" class="btn btn-secondary btn-lg kk">상품 보러가기</button>
						</form>
						</div>
						<div class="col-6">
						<form action="<c:url value='/photoCart.do'/>?flag=${result.dishnum}" method="post" target="_parent">
						<input type="hidden" name="dishnum" value="${result.dishnum }">
                		<input type="hidden" name="price" value="${result.price }">
                		<input type="hidden" id="usercnt" name="usercnt" value="1"> 
						<button id = "delivery" type="submit" class="btn btn-secondary btn-lg kk">장바구니 담기</button>
						</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- /.container -->

	<!-- Bootstrap core JavaScript -->
	<script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
	<script
		src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>
		<script>

	var btn = document.getElementById("delivery");
	var count = document.getElementById("count");
	var usercnt = document.getElementById("usercnt");

	btn.addEventListener('click', function(flag) {
		alert("장바구니에 담겼습니다!");
		usercnt.value = count.value;
	});
	
	
</script>

</body>
</html>