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
    font-size: 22px !important;
    display: inline-block !important;
}

hr {
    border-top: 1px solid pink;
    }
    
.meterial{
margin-top: 20px !important;
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
               <div class="col-2">
                  <a href="#"><img class="img-fluid mb-3"
                     src="<c:url value='/imgShow2.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a> <a href="#"><img
                     class="img-fluid mb-3" src="<c:url value='/imgShow3.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a>
                  <a href="#"><img class="img-fluid mb-3"
                     src="<c:url value='/imgShow4.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a> <a href="#"><img
                     class="img-fluid" src="<c:url value='/imgShow5.do'/>?dishnum=<c:out value='${result.dishnum }'/>" alt=""></a>
               </div>
               <div class="col-10 m-0 p-0">
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
                   <h4> ���ż��� </h4>
                   <span class="minus"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-dash-square" viewBox="0 0 16 16">
  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
</svg></span>
                   <input type="text" readonly value="1"  style="height: 35px; width:55px; color: black;">
                   
                   <span class="plus"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
  <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
</svg></span>
               </div>
				<hr class="my-3">
				<div class="row d-flex justify-content-end">
					<div class="col-6">
						<button class="btn btn-block btn-outline-dark" type="submit">��ٱ���</button>
					</div>
					<div class="col-6">
						<button class="btn btn-block btn-outline-dark" type="submit">�ٷα���</button>
					</div>
				</div>
			</div>
		</div>

		
	
	
		<div class="row my-4">
			<div class="col-12">
				<ul class="nav nav-pills nav-justified">
					<li class="nav-item"><a class="nav-link active" aria-current="page" href="#">������</a></li>
					<li class="nav-item"><a class="nav-link" href="#ReviewTable">����(<c:out value='${size }'/>)</a></li>
				</ul>
			</div>
		</div>

		<div class="row">
			<div class="col-12">
				<img src="http://placehold.it/1200x500" alt="" class="img-fluid">
			</div>
		</div>
		
		
		<!-- �߰� ���� -->
		<div class="jumbotron text-center bg-white px-0 my-3">
            <h2 class="display-6">������ ���� HOMEAL�� ������ ���屹</h2>
            <div class="row">
               <div class="col-5"></div>
               <div class="col-2">
                  <hr class="my-5">
               </div>
               <div class="col-5"></div>
            </div>
            <p class="lead mb-2">������ ���� ��, �ñ�ġ�� ���!</p>
            <p class="lead">���縸�� ���屹�� �ҵ�! ������ �����ϰ� ���� HOMEAL�ϼ���</p>
         </div>
         
         <div class="row">
			<div class="col-12">
				<img src="http://placehold.it/1200x500" alt="" class="img-fluid">
			</div>
		</div>
		
		<div class="jumbotron text-left bg-white px-0 pb-2 mb-0">
            <h3 class="display-6">�̷��� ���������!</h3>
            <div class="row">
               <div class="col-12">
                  <hr class="my-3">
               </div>
            </div>
        </div>
        
        <div class = "row">
        	<div class="col-8">
        		<img src="http://placehold.it/800x500" alt="" class="img-fluid">
        	</div>
        	<div class="col-4">
	        	<h2 class = "my-5 text-center">HOMEAL ����</h2>
        		<div>
        			<hr class="my-5">
        		</div>

        		<p class = "meterial text-center">
        		�̿�<br><br>�ѿ�<br><br>����<br><br>��������<br><br>���⸧<br><br>���������
        		</p>
        	</div>
		</div>
		
        
        <div class="jumbotron text-left bg-white px-0 pb-2 mb-0">
            <h3 class="display-6">HOMEAL�� �Բ��ϴ� �̿��� ������</h3>
            <div class="row">
               <div class="col-12">
                  <hr class="my-3">
               </div>
            </div>
        </div>
        
        <div class="row">
        	<div class = "col-6">
	        	<img src="http://placehold.it/600x400" alt="" class="img-fluid">
	        	<div class = "col-12 py-3 px-0 d-flex">
	        		<div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
	        		<div class="col-11">
			        	<h5>���, �̿� �����ֱ�</h5>
			        	<p>���� �̿��� ���, �������� �ְ� �ߺҷ� �����ݴϴ�.</p>
	        		</div>
	        	</div>
        	</div>
        	
        	<div class = "col-6">
	        	<img src="http://placehold.it/600x400" alt="" class="img-fluid">
	        	<div class = "col-12 py-3 px-0 d-flex">
	        		<div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
	        		<div class="col-11">
			        	<h5>���� �����ֱ�</h5>
			        	<p>��Ⱑ ������ ��������װ� ��800ml�� �ְ� �����ݴϴ�.</p>
	        		</div>
	        	</div>
        	</div>
        </div>       
        
        <div class="row">
        	<div class = "col-6">
	        	<img src="http://placehold.it/600x400" alt="" class="img-fluid">
	        	<div class = "col-12 py-3 px-0 d-flex">
	        		<div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
	        		<div class="col-11">
			        	<h5>�� ���߱�</h5>
			        	<p>15������ ���� ��, ��ȣ���°� �ұ� ���� ���ּ���.</p>
	        		</div>
	        	</div>
        	</div>
        	
        	<div class = "col-6">
	        	<img src="http://placehold.it/600x400" alt="" class="img-fluid">
	        	<div class = "col-12 py-3 px-0 d-flex">
	        		<div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
	        		<div class="col-11">
			        	<h5>Tip. ��������!</h5>
			        	<p>��100ml�� �� �װ� ��ҿ��� 20~30�� ���� ������ �ָ� ���� ���� �̿����� ��� �� �ֽ��ϴ�.</p>
	        		</div>
	        	</div>
        	</div>
        </div>
        
        <div class="row">
        	<div class="col-12 text-center my-5">
        		<p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
</svg> ��� �̹����� ������ �ٸ� �� �ֽ��ϴ�.</p>
        		
        	</div>
        </div>   
		<!-- �߰� �� -->
		
		<!-- ���� ���� -->
		<form action="<c:url value='/reviewReg.do'/>" method="post" name="frm">
		<input type="hidden" name="dishnum" value="${result.dishnum }">
		<input type="hidden" name="id" value="${name.id }"> 
		<table class="table table-hover my-4" id="ReviewTable">
			<thead>
			    <tr>
			    <td colspan="3">
			      <select name="starpoint" id="starpoint">
			        <option>===����===</option>
			        <option value="1">&#9733;</option>
			        <option value="2">&#9733; &#9733;</option>
			        <option value="3">&#9733; &#9733; &#9733;</option>
			        <option value="4">&#9733; &#9733; &#9733; &#9733;</option>
			        <option value="5">&#9733; &#9733; &#9733; &#9733; &#9733;</option>
			      </select>
			    </td>
			    <td colspan="1" style="text-align: right;"><a href="javascript:void(0);" onclick="check_msg()">�����ۼ�</a></td>
			    </tr>
			    <tr>
			     <td colspan="4" style="text-align: right;"><input type="text" name="message" style="height: 35px; color: black; font-size: 15px;" placeholder="�������� �Է��ϼ���."/></td>
			    </tr>
				<tr class="text-center">
					<th scope="col" style="width:20%">����</th>
					<th scope="col" style="width:40%">������</th>
					<th scope="col" style="width:20%">�̸�</th>
					<th scope="col" style="width:20%">��¥</th>
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
				  <td colspan="4" style="text-align: center;">�������� �����ϴ�.</td>
				</tr>
				</c:if>
				
			</tbody>
		</table>
		</form>
	</div>
	<!-- ���� �� -->


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
		alert("������ �����ϼ���.");
	}else if(msg.length === 0){
		alert("�������� �Է��ϼ���.");
		$('input[name="message"]').focus();	
	}else{
		frm.submit();
	}
	
}
</script>

</body>
</html>