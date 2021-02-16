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

<link href="<c:url value='/resources/css/product.css' />" rel="stylesheet" >

<!-- Bootstrap core CSS -->
<link href="<c:url value='/resources/vendor/bootstrap/css/bootstrap.min.css' />" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value='/resources/css/shop-homepage.css' />" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

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

.quantity input{
    border: none !important; 
    width: 50px !important;
    color: #ff5912 !important;
    font-weight: 600 !important;
    text-align: center !important;
    font-size: 18px !important;
    display: inline-block !important;
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
						<img class="img-fluid" src="<c:url value='/imgShow.do'/>?dishnum=<c:out value='${result.dishnum }'/>"  alt="">
					</div>

				</div>

			</div>
			<div class="col-6">
				<h2 class="mb-2">${result.dishname }</h2>
				<div class="total_price">
					<span class="price"><fmt:formatNumber value="${result.price }" pattern="#,###" /> won</span>
				</div>
				<hr class="my-3">
				<p>${result.recipe }</p>
				<hr class="my-3">
				<div class="quantity" data-unitprice="<c:out value='${result.price }' />">
                   <h4> 구매수량 </h4>
                   <span class="plus"><img src="<c:url value='/resources/img/plus.png'/>"/></span>
                   <input type="text" readonly value="1"  style="height: 35px; width:55px; color: black;">
                   <span class="minus"><img src="<c:url value='/resources/img/minus.png'/>"/></span>
               </div>
				<hr class="my-3">
				<div class="row d-flex justify-content-end">
					<div class="col-6">
						<button class="btn btn-block btn-outline-dark" type="submit">장바구니</button>
					</div>
					<div class="col-6">
						<button class="btn btn-block btn-outline-dark" type="submit">바로구매</button>
					</div>
				</div>
			</div>
		</div>


		<div class="row my-4">
			<div class="col-12">
				<ul class="nav nav-pills nav-justified">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">상세정보</a></li>
					<li class="nav-item"><a class="nav-link" href="#ReviewTable">리뷰(<c:out value='${size }'/>)</a></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-12">
				<img src="http://placehold.it/1200x500" alt="" class="img-fluid">
			</div>
		</div>
		<form action="<c:url value='/reviewReg.do'/>" method="post" name="frm">
		<input type="hidden" name="dishnum" value="${result.dishnum }">
		<input type="hidden" name="id" value="${name.id }"> 
		<table class="table table-hover my-4" id="ReviewTable">
			<thead>
			    <tr>
			    <td colspan="3">
			      <select name="starpoint" id="starpoint">
			        <option>===별점===</option>
			        <option value="1">&#9733;</option>
			        <option value="2">&#9733; &#9733;</option>
			        <option value="3">&#9733; &#9733; &#9733;</option>
			        <option value="4">&#9733; &#9733; &#9733; &#9733;</option>
			        <option value="5">&#9733; &#9733; &#9733; &#9733; &#9733;</option>
			      </select>
			    </td>
			    <td colspan="1" style="text-align: right;"><a href="javascript:void(0);" onclick="check_msg()">리뷰작성</a></td>
			    </tr>
			    <tr>
			     <td colspan="4" style="text-align: right;"><input type="text" name="message" style="height: 35px; color: black;" placeholder="한줄평을 입력하세요."/></td>
			    </tr>
				<tr>
					<th scope="col">별점</th>
					<th scope="col">한줄평</th>
					<th scope="col">이름</th>
					<th scope="col">날짜</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${size != 0}">
			    <c:forEach var="item" items="${review }"> 
				<tr>
					<td>
					   <c:if test="${item.starpoint == 1}">
					  	 <img src="<c:url value='/resources/img/star1.png'/>" width="170px;"/>
					   </c:if>
					    <c:if test="${item.starpoint == 2}">
					  	 <img src="<c:url value='/resources/img/star2.png'/>" width="170px;"/>
					   </c:if>
					    <c:if test="${item.starpoint == 3}">
					  	 <img src="<c:url value='/resources/img/star3.png'/>" width="170px;"/>
					   </c:if>
					    <c:if test="${item.starpoint == 4}">
					  	 <img src="<c:url value='/resources/img/star4.png'/>" width="170px;"/>
					   </c:if>
					    <c:if test="${item.starpoint == 5}">
					  	 <img src="<c:url value='/resources/img/star5.png'/>" width="170px;"/>
					   </c:if>
					</td>
					<td>${item.message }</td>
					<td>${item.id }</td>
					<td>${item.writedate }</td>
				</tr>
				</c:forEach>
				</c:if>
				
				<c:if test="${size == 0 }">
				<tr>
				  <td colspan="4" style="text-align: center;">한줄평이 없습니다.</td>
				</tr>
				</c:if>
				
			</tbody>
		</table>
		</form>
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
	<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>
	<script src="<c:url value='/resources/js/main.js' />"></script>
    <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
    
<script type="text/javascript">

$('input[type="text"]').keydown(function() {
	  if (event.keyCode === 13) {
	    event.preventDefault();
	  };
});

function check_msg() {
	var frm = $('form[name=frm]');
	var msg = $('input[name="message"]').val();
	var index = $("#starpoint option").index($("#starpoint option:selected"));
		
	if(index === 0){
		alert("별점을 선택하세요.");
	}else if(msg.length === 0){
		alert("한줄평을 입력하세요.");
		$('input[name="message"]').focus();	
	}else{
		frm.submit();
	}
	
}
</script>

</body>
</html>