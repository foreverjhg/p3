<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>HOMEAL - 장바구니</title>

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

a.nav-link {
	color: #212529 !important;
}

.card {
	border: none;
}

body {
	font-family: 'Noto Sans KR', sans-serif, "GmarketSansMedium",
		"GmarketSansLight", "GmarketSansBold";
	padding-top: 56px;
}

/* .navbar {
	border-bottom: 1px solid #E5E9EF;
} */

footer {
	border-top: 1px solid #E5E9EF;
}

a {
	color: #212529;
}

span {
	font-size: 1.25rem;
}

.spinbox {
	max-width: 60px;
	position: relative;
	padding-right: 20px;
}

.spinbox .spinbox-input {
	min-width: 40px;
	padding-left: 4px;
	padding-right: 4px;
	text-align: center;
}

.form-check-input {
	max-width: 16px;
}


</style>

</head>
<body>
	<!-- Navigation -->
	
	<nav class="navbar navbar-expand-lg fixed-top bg-light">
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
						<li class="nav-item"><a class="nav-link"
							href="<c:url value='/cart.do'/>">${member.name}님</a></li>
					</c:if>

					<li class="nav-item"><c:if test="${member != null}">
							<a class="nav-link" href="<c:url value='/userLogOut.do'/>">로그아웃</a>
						</c:if> <c:if test="${member == null}">
							<a class="nav-link" href="#open">로그인</a>
						</c:if></li>
				</ul>
			</div>
		</div>
	</nav>

	<!-- Page Content -->

	<div class="container">
		<c:forEach var="item" items="${list }" varStatus="status">
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card h-100">
					<a
						href="<c:url value='/detail.do'/>?dishnum=${item.dishnum}&flag=${item.price}"><img
						class="img-fluid"
						src="<c:url value='/imgShow.do'/>?dishnum=<c:out value='${item.dishnum }'/>"
						alt=""></a>
					<div class="card-body">
						<h4 class="card-title">
							<a href="<c:url value='/detail.do'/>"><c:out
									value='${item.dishname }' /></a>
						</h4>
						<div class="row">
							<div class="col-10">
								<h5>
									<fmt:formatNumber value="${item.price }" pattern="#,###" />
								</h5>
							</div>
							<div class="col-2 pr-2">
								<a href="#"><img class="img-fluid rounded-circle"
									src="<c:url value='/resources/img/main/cart-icon.png' />"
									alt=""></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>

		<c:if test="${userCart == null}">
			<div class="jumbotron text-center bg-white px-0">
				<h2 class="display-5">장바구니</h2>
				<hr class="my-5">
				<p class="lead">장바구니에 담긴 상품이 없습니다.</p>
			</div>
		</c:if>

		<!-- 장바구니에 하나도 없으면 여기까지 -->

		<c:if test="${userCart != null}">
			<div class="jumbotron text-center bg-white px-0">
				<h1 class="display-5">장바구니</h1>
				<hr class="my-5">

				<div class="col-12 text-left px-1 my-auto">
					<h6>일반 상품 (2)</h6>
				</div>

				<div class="form-check pl-0">
					<hr class="my-2">
					<div class="row text-center">
						<div class="col-1 mt-3 mb-3 pr-4 pl-1">선택</div>
						<div class="col-1 mt-3 mb-3">이미지</div>
						<div class="col-5 mt-3 mb-3">상품명</div>
						<div class="col-2 mt-3 mb-3">수량</div>
						<div class="col-2 mt-3 mb-3">가격</div>
						<div class="col-1 mt-3 mb-3">수정</div>

					</div>
					<hr class="my-2">
					<c:set var="total" value="0" />
					
					<c:forEach var="item" items="${userCart}" varStatus="status">
					
						<div class="row text-center">
							<div class="col-1 my-4">

								<input class="form-check-input ml-3 mt-0" type="checkbox"
									value="" id="defaultCheck2">
							</div>
							<div class="col-1 my-1">
								<a href="#"><img class="img-fluid"
									src="<c:url value='/imgShow.do'/>?dishnum=<c:out value='${item.dishnum }'/>"
									alt=""></a>
							</div>
							<div class="col-5 my-auto">${item.dishname} 2인 세트</div>
							<div class="col-2 my-auto d-flex justify-content-center">
								<div>
									<div id = "cart${status.count }" class="spinbox d-flex justify-content-center pr-0"  data-unitprice="<c:out value='${item.price }'/>"
										data-min="1" data-max="10" data-step="1">
										<input class="form-control spinbox-input mx-auto" type="text"
											value="${item.usercnt }">
										<button class="spinbox-down btn btn-outline-dark btn-sm ml-1"
											type="button">-</button>
										<button class="spinbox-up btn btn-outline-dark btn-sm ml-1"
											type="button">+</button>
									</div>
								</div>
							</div>
								<div  id = "total${status.count }" class="col-2 my-auto">${item.totprice } </div>
								<c:set var="total" value="${total + item.totprice }" />
								<div class="col-1 my-auto">
									
									<button type="button" class="btn btn-outline-dark btn-sm">삭제</button>
								</div>
								<input class="num" type="hidden" value="${status.count }">
							</div>
					</c:forEach>

				</div>
				<hr class="my-2">
				<div class="row" >
					<div class="col-12 d-flex my-3 justify-content-end">

						<span id="totalAll" class="mx-2" >총: ${total } 원</span>

					</div>
				</div>

				<hr class="my-2">
				<div class="row mt-1 mb-4">
					<div class="col-6 d-flex justify-content-start">
						<button type="button" class="btn btn-outline-dark">쇼핑
							계속하기</button>
					</div>
					<div class="col-6 d-flex justify-content-end">
						<form action="<c:url value='/usercartOut.do'/>" method="post">
							<button id="basket" class="btn btn-outline-dark">장바구니
								비우기</button>
						</form>
					</div>
				</div>
				<div class="row mt-4">
					<div class="col-12 d-flex justify-content-center mt-4">
						<button type="button" class="btn btn-dark btn-lg mx-1">선택상품
							주문하기</button>
						<button type="button" class="btn btn-dark btn-lg mx-1">전체상품
							주문하기</button>
					</div>
				</div>
			</div>
		</c:if>


	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5">
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
	<script>

	
		$(document).on('click', '.spinbox-up, .spinbox-down', function() {
		var totprice = 0;
		for (var i = 1; i<=10; i++){
				
		var $spinbox = $(this).closest('#cart'+i),
			
			$totalAll = $('#totalAll'),
			$totalAll2 = $('#totalAll2'),
			$totalAll3 = $('#totalAll3'),
			$tagetTotal = $('#total'+i),
			$cart = $('#cart'+i),
			$unitprice = $cart.attr('data-unitprice'),
			$cartInput = $cart.find('input');
		
		if ($spinbox.length) {
			var $input = $spinbox.find('input.spinbox-input');
			if ($input.length) {
				var max = parseInt($spinbox.data('max')) || false;
				var min = parseInt($spinbox.data('min')) || false;
				var val = parseInt($input.val()) || min || 0;
				var sign = $(this).hasClass('spinbox-up') ? 1 : -1;
				val += sign * (parseInt($spinbox.data('step')) || 1);
				if (max && val > max) {
					val = max;
				} else if (min && val < min) {
					val = min;
				}
				$input.val(val).trigger('change');
			}
		}
		var currentCount = $cartInput.val();
		console.log(currentCount);
		console.log($unitprice);
		
		var total = (currentCount * $unitprice);
		$tagetTotal.text(total);
		
		
		
		
		
		
	}
	var total1 = 0;
	var total2 = 0;
	var total3 = 0;
	var total4 = 0;
	var total5 = 0;
	var total6 = 0;
	var total7 = 0;
	var total8 = 0;
	var total9 = 0;
	var total10 = 0;
	var totalALL = 0;
	if($('#total1').text() != ""){		
		total1 = document.getElementById("total1").innerHTML;		
		totalALL = parseInt(total1);
	}
	if($('#total2').text() != ""){
		total2 = document.getElementById("total2").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2);
	}
	if($('#total3').text() != ""){
		total3 = document.getElementById("total3").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3);
	}
	if($('#total4').text() != ""){
		total4 = document.getElementById("total4").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3)+ parseInt(total4);
	}
	if($('#total5').text() != ""){
		total5 = document.getElementById("total5").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3)+ parseInt(total4)+ parseInt(total5);
	}
	if($('#total6').text() != ""){
		total2 = document.getElementById("total6").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3)+ parseInt(total4)+ parseInt(total5)+ parseInt(total6);
	}
	if($('#total7').text() != ""){
		total2 = document.getElementById("total7").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3)+ parseInt(total4)+ parseInt(total5)+ parseInt(total6)+ parseInt(total7);
	}
	if($('#total8').text() != ""){
		total2 = document.getElementById("total2").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3)+ parseInt(total4)+ parseInt(total5)+ parseInt(total6)+ parseInt(total7)+ parseInt(total8);
	}
	if($('#total9').text() != ""){
		total2 = document.getElementById("total2").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3)+ parseInt(total4)+ parseInt(total5)+ parseInt(total6)+ parseInt(total7)+ parseInt(total8)+ parseInt(total9);
	}
	if($('#total10').text() != ""){
		total2 = document.getElementById("total2").innerHTML;
		totalALL = parseInt(total1) + parseInt(total2)+ parseInt(total3)+ parseInt(total4)+ parseInt(total5)+ parseInt(total6)+ parseInt(total7)+ parseInt(total8)+ parseInt(total9)+ parseInt(total10);
	}
	document.getElementById("totalAll").innerHTML = "총 : " +totalALL +" 원";
	
	console.log($('#total4').text())
		
	});
		
		
		
	// Now you may attach events to the spinbox:
	$('.spinbox-input').on('change', function() {
		console.log('Spinbox value has been changed!')
	});
	

	</script>
	
</body>
</html>