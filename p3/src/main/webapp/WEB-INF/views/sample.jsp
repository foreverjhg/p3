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
   font-family: 'Noto Sans KR', sans-serif,
      "GmarketSansMedium", "GmarketSansLight", "GmarketSansBold";
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
	border : none;
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

      <div class="col-lg-12 px-0">

         <div id="carouselExampleIndicators"
            class="carousel slide my-4 w-auto" data-ride="carousel">
            <ol class="carousel-indicators">
               <li data-target="#carouselExampleIndicators" data-slide-to="0"
                  class="active"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
               <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner w-auto" role="listbox">
               <div class="carousel-item active">
                  <img class="d-block img-fluid" src="http://placehold.it/2500x1200"
                     alt="First slide">
               </div>
               <div class="carousel-item">
                  <img class="d-block img-fluid" src="http://placehold.it/2500x1200"
                     alt="Second slide">
               </div>
               <div class="carousel-item">
                  <img class="d-block img-fluid" src="http://placehold.it/2500x1200"
                     alt="Third slide">
               </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators"
               role="button" data-slide="prev"> <span
               class="carousel-control-prev-icon" aria-hidden="true"></span> <span
               class="sr-only">Previous</span>
            </a> <a class="carousel-control-next" href="#carouselExampleIndicators"
               role="button" data-slide="next"> <span
               class="carousel-control-next-icon" aria-hidden="true"></span> <span
               class="sr-only">Next</span>
            </a>
         </div>

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

         <div class="jumbotron text-center bg-white px-0 mb-0">
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

         </div>
         <!-- /.row -->

      </div>
      <!-- /.col-lg-12 -->

   </div>
   <!-- /.row -->

   <!-- /.container -->

   <!-- Footer -->
   <footer class="py-5 bg-light">
      <div class="container">
         <p class="m-0 text-center text-#E5E9EF">Copyright &copy; HOMEAL 2021</p>
      </div>
      <!-- /.container -->
   </footer>

   <!-- Bootstrap core JavaScript -->
   <script src="<c:url value='/resources/vendor/jquery/jquery.min.js' />"></script>
   <script
      src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.bundle.min.js' />"></script>

</body>
</html>