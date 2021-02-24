<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

a.nav-link {
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
         <a class="navbar-brand mb-0 h1 " href="<c:url value='/best.do'/>">HOMEAL</a>
         <button class="navbar-toggler" type="button" data-toggle="collapse"
            data-target="#navbarResponsive" aria-controls="navbarResponsive"
            aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
         </button>
         <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
            	
             <c:if test="${member != null}">
         		 <li class="nav-item">
           		<a class="nav-link" href="<c:url value='/cart.do'/>">${member.name}님</a>
          		</li>
          	 </c:if>
            	
               <li class="nav-item">
               <c:if test="${member != null}">
               <a class = "nav-link" href="<c:url value='/userLogOut.do'/>">로그아웃</a>
               </c:if>
               
               <c:if test="${member == null}">
               <a class="nav-link" href="#open">로그인</a>
               </c:if>
               </li>
               
             
               
               
            </ul>
         </div>
      </div>
   </nav>

<div id = "open" class="modal">
    <div class="all"> 
    <div class="form">  
      <ul class="tab-group">
        <li class="tab"><a href="#login" class = "join">Log In</a></li>
        <li class="tab"><a href="#signup" class = "join">Sign Up</a></li>
      </ul>
      
      <div class="tab-content">
      <div id="login">   
          <h1 class = "loginh2">Welcome Back!</h1>
          
          <form action="<c:url value='/userLog.do'/>" method="post">
          
            <div class="field-wrap">
            <label>
              ID<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="id"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name = "pw"/>
          </div>
        	
        	
          <button class="button button-block">Log In</button>
          
          </form>

        </div>
        <div id="signup">   
          <h1 class = "loginh1">Sign Up for Free</h1>
          
          <form action="<c:url value='/userReg.do'/>" method="post">
          
          <div class="top-row">
                   
            
          </div>

          <div class="field-wrap">
            <label>
              ID<span class="req">*</span>
            </label>
            <input type="text"required autocomplete="off" name="id"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password"required autocomplete="off" name="pw"/>
          </div>
          
          <div class="field-wrap">
              <label>
                Name<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name="name"/>
            </div>
            
            <div class="field-wrap">
              <label>
                Address<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name="address"/>
            </div>
            
            <div class="field-wrap">
              <label>
                Phone<span class="req">*</span>
              </label>
              <input type="text" required autocomplete="off" name="phone"/>
            </div>
          
          <button type="submit" class="button button-block">Get Started</button>
          
          </form>

        </div>
        
        
        
      </div><!-- tab-content -->
      
</div> <!-- /form -->
</div>
  </div>

   <div class="container-fluid m-0 p-0">
      <nav class="navbar navbar-expand-lg navbar-light">
         <div class="container">
            <div class="collapse navbar-collapse" id="navbarResponsive">
               <ul class="navbar-nav ml-auto mr-auto h5">
                 <li class="nav-item"><a class="nav-link" href="<c:url value='/about.do'/>">호밀</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">ㅣ</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value='/menuList.do'/>">메뉴</a></li>
                  <li class="nav-item"><a class="nav-link" href="#">ㅣ</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value='/photo.do'/>">사진</a></li>
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
                  <img class="d-block img-fluid" src="<c:url value='/resources/img/main/main-1.jpg' />"
                     alt="First slide">
               </div>
               <div class="carousel-item">
                  <img class="d-block img-fluid" src="<c:url value='/resources/img/main/main-2.jpg' />"
                     alt="Second slide">
               </div>
               <div class="carousel-item">
                  <img class="d-block img-fluid" src="<c:url value='/resources/img/main/main-3.jpg' />"
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

         <div class="jumbotron text-center bg-white px-0 mb-0">
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
         
         <div class="row">
         	<div class="col-12">
         		<img class="d-block img-fluid" src="<c:url value='/resources/img/main/main-m2.jpg' />"
                     alt="">
         	</div>
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
            
			 <c:forEach var="item" items="${list }" varStatus="status">  
             <div class="col-lg-4 col-md-6 mb-4">
               <div class="card h-100">
                  <a href="<c:url value='/detail.do'/>?dishnum=${item.dishnum}&flag=${item.dishnum}"><img class="img-fluid" src="<c:url value='/imgShow.do'/>?dishnum=<c:out value='${item.dishnum }'/>"  alt=""></a>
                  <div class="card-body pt-3 pb-2 px-2">
                     <h4 class="card-title mt-2 mb-0">
                        <a href="<c:url value='/detail.do'/>?dishnum=${item.dishnum}&flag=${item.dishnum}"><c:out value='${item.dishname }'/></a>
                     </h4>
                     <div class="row">
                        <div class="col-10">
                           <h5 class="mt-2 mb-0"><fmt:formatNumber value="${item.price }" pattern="#,###" /></h5>
                        </div>
                        <div class="col-2 pr-2">
                           <a href="#"><img class="img-fluid rounded-circle pr-1"
                     src="<c:url value='/resources/img/main/cart-icon.png' />" alt=""></a>
                        </div>
                     </div>
                     
                  </div>
                 </div>
               </div>
          </c:forEach>
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
	<script>

    $(".form")
  .find("input, textarea")
  .on("keyup blur focus", function (e) {
    var $this = $(this),
      label = $this.prev("label");
    if (e.type === "keyup") {
      if ($this.val() === "") {
        label.removeClass("active highlight");
      } else {
        label.addClass("active highlight");
      }
    } else if (e.type === "blur") {
      if ($this.val() === "") {
        label.removeClass("active highlight");
      } else {
        label.removeClass("highlight");
      }
    } else if (e.type === "focus") {
      if ($this.val() === "") {
        label.removeClass("highlight");
      } else if ($this.val() !== "") {
        label.addClass("highlight");
      }
    }
  });

$(".tab a").on("click", function (e) {
  e.preventDefault();
  $(this).parent().addClass("active");
  $(this).parent().siblings().removeClass("active");

  target = $(this).attr("href");

   $(".tab-content > div").not(target).hide();

  $(target).fadeIn(600); 
  
});


$(document).mouseup(function (e){
	  var all = $(".all");
	  if(all.has(e.target).length === 0){
		  all.removeClass("modal");
		  location.href="#";
	  }
	}); 
		 </script>
</body>
</html>