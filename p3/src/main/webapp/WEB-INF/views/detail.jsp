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

a.nav-link {
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
    font-size: 22px !important;
    display: inline-block !important;
}

hr {
    border-top: 1px solid rgba(0,0,0,.1);
    }
    
.meterial{
margin-top: 20px !important;
}

.second{
margin-top: 139px !important;
}

.price {
    display: inline-block;
    font-weight: 600;
    font-size: 18px;
    color: #34404b;
    margin-right: 20px;
}

.img-fluid{
	width: 100%;
}

</style>

<script type="text/javascript">
 function goPage(pageNo) {
	document.listForm.pageNo.value = pageNo;
	document.listForm.submit();
 }
</script>
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
					<c:if test="${member != null}">
         		 <li class="nav-item">
           		<a class="nav-link" href="#">${member.name}님</a>
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

   <div class="container my-4">
   
      <div class="row">
         <div class="col-6">
            <div class="row">
               <div class="col-2">
                  <a href="#"><img class="img-fluid mb-3" src="<c:url value='/imgShow.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a>
                  <a href="#"><img class="img-fluid mb-3" src="<c:url value='/imgShow2.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a>
                  <a href="#"><img class="img-fluid mb-3" src="<c:url value='/imgShow3.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a>
                  <a href="#"><img class="img-fluid mb-3" src="<c:url value='/imgShow4.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a>
                  <a href="#"><img class="img-fluid mb-3" src="<c:url value='/imgShow5.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a>
               </div>
               <div class="col-10 m-0 p-0">
                  <img id="big" class="img-fluid" src="<c:url value='/imgShow.do'/>?dishnum=<c:out value='${result.dishnum }'/>"  alt="">
               </div>

            </div>

         </div>
         <div class="col-6">
         
            <h2 class="mb-4">HOMEAL No.1<br>${result.dishname }</h2>
            <div class="total_price">
               <span class="price"><fmt:formatNumber value="${result.price }" pattern="#,###" /> won</span>
            </div>
            <hr class="my-3 first">
            <p>${result.recipe }</p>
            <div>
            	<p>2인분 | 준비 10분 | 조리 30분 | 순한맛</p>
            </div>
            
            <div class="d-flex">
					<p style="width: 20%">배송방법</p>
					<p>새벽배송</p>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-geo-alt-fill ml-1"
						viewBox="0 0 16 16">
  					<path
							d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
				</svg>
				</div>
				<div class="d-flex">
					<p style="width: 20%">배송비</p>
					<p style="width: 20%">2,500원</p>
					<p style="width: 60%">(3만원 이상 구매시 무료배송)</p>
				</div>
            
            <hr class="my-3 second">
            <div class="quantity" data-unitprice="<c:out value='${result.price }' />">
                   <span class="price"> 구매수량 </span>
                   <span class="minus">
	                   <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-dash-square" viewBox="0 0 16 16">
	                   <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
	                   <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
	                   </svg>
                   </span>
                   <input type="text" readonly value="1"  style="height: 35px; width:55px; color: black;">
                   
                   <span class="plus"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
	                   <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
	                   <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
	                   </svg>
                   </span>
            </div>
               
            <hr class="my-3 third">
            <div class="row d-flex justify-content-end">
               <div class="col-6">
                  <button class="btn btn-block btn-outline-dark" type="submit" id="delivery">장바구니</button>
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

      
      
      
      <!-- detail메뉴 추가 시작 -->
     
   
      <c:if test="${flag == 1 }">
      <jsp:include page="detailJabchae.jsp"></jsp:include>
      </c:if>
      <c:if test="${flag == 2 }">
      <jsp:include page="detailBulgogi.jsp"></jsp:include>
      </c:if>  
      <c:if test="${flag == 3 }">
      <jsp:include page="detailTpasta.jsp"></jsp:include>
      </c:if> 
      <c:if test="${flag == 4 }">
      <jsp:include page="detailCpasta.jsp"></jsp:include>
      </c:if> 
      <c:if test="${flag == 5 }">
      <jsp:include page="detailApasta.jsp"></jsp:include>
      </c:if>  
      <c:if test="${flag == 6 }">
      <jsp:include page="detailSteak.jsp"></jsp:include>
      </c:if>
      <c:if test="${flag == 7 }">
      <jsp:include page="detailGalbijjim.jsp"></jsp:include>
      </c:if>
      <c:if test="${flag == 8 }">
      <jsp:include page="detailSalad.jsp"></jsp:include>
      </c:if>
      <c:if test="${flag == 9 }">
      <jsp:include page="detailDoenjang.jsp"></jsp:include>
      </c:if>
      <c:if test="${flag == 10 }">
      <jsp:include page="detailSeawood.jsp"></jsp:include>
      </c:if>
      <!-- detail메뉴 추가 끝 -->
      
      
      
      
      
      <!-- 리뷰 시작 -->
      
      <form action="<c:url value='/reviewReg.do'/>" method="post" name="frm">
      <input type="hidden" name="dishnum" value="${result.dishnum }">
      <input type="hidden" name="id" value="${name.id }"> 
      <input type="hidden" name="flag" value="${flag }">
      <table class="table table-hover my-4" id="ReviewTableWrite">
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
               <select name="tasteevltn" id="tasteevltn">
	               <option>===맛평가===</option>
	               <option value="매운맛">매운맛</option>
	               <option value="짠맛">짠맛</option>
	               <option value="단맛">단맛</option>
               </select>
               <select name="tastestrng" id="tastestrng">
	               <option>===맛강도===</option>
	               <option value="상">상</option>
	               <option value="중">중</option>
	               <option value="하">하</option>
              </select>
             </td>
             <td colspan="1" style="text-align: right;"><a href="javascript:void(0);" onclick="check_msg()">리뷰작성</a></td>
             </tr>
             <tr>
              <td colspan="4" style="text-align: right;"><input type="text" name="message" style="height: 35px; color: black; font-size: 15px;" placeholder="한줄평을 입력하세요."/></td>
             </tr>
        </table>          
      </form> 
      
      <form name="listForm" action="<c:url value='/detail.do'/>" method="post">
      <input type="hidden" name="pageNo" value="" />
      <table class="table table-hover my-4" id="ReviewTable">
          <thead> 
            <tr class="text-center">
               <th scope="col" style="width:20%">별점</th>
               <th scope="col" style="width:40%">한줄평</th>
               <th scope="col" style="width:20%">이름</th>
               <th scope="col" style="width:20%">날짜</th>
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
               <td class ="text-center">${item.message }</td>
               <td class ="text-center">${item.id }</td>
               <td class ="text-right">${item.writedate }</td>
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
			<jsp:include page="paging.jsp" flush="true">
				<jsp:param name="firstPageNo" value="${paging.firstPageNo}" />
				<jsp:param name="prevPageNo" value="${paging.prevPageNo}" />
				<jsp:param name="startPageNo" value="${paging.startPageNo}" />
				<jsp:param name="pageNo" value="${paging.pageNo}" />
				<jsp:param name="endPageNo" value="${paging.endPageNo}" />
				<jsp:param name="nextPageNo" value="${paging.nextPageNo}" />
				<jsp:param name="finalPageNo" value="${paging.finalPageNo}" />
			</jsp:include>
		</form>
   </div>
   <!-- 리뷰 끝 -->


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

var bigPic = document.querySelector("#big");
var smallPics = document.querySelectorAll(".img-fluid.mb-3");


for(var i=0; i<smallPics.length; i++ ){
   smallPics[i].onclick = changepic;
}

function changepic(){
   var smallPicAttribute = this.getAttribute("src");
   bigPic.setAttribute("src", smallPicAttribute);
}
</script>
<script>

        let btn = document.getElementById("delivery");

        btn.addEventListener('click', function(){
            let txt = "장바구니에 담겼습니다!";
            alert(txt);
        });
</script>
</body>
</html>