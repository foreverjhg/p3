<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	
      <!-- 추가 시작 -->
      <div class="row">
      	<div class="col-12">
            <img src="<c:url value='/resources/img/salad/salad1.jpg' />" alt="" class="img-fluid" >
        </div>
      </div>     
      
      <div class="jumbotron text-center bg-white px-0 my-3">
            <h2 class="display-6">갓 따온 HOMEAL의 Fresh 샐러드</h2>
            <div class="row">
               <div class="col-5"></div>
               <div class="col-2">
                  <hr class="my-5">
               </div>
               <div class="col-5"></div>
            </div>
            <p class="lead mb-2">프레쉬한 샐러드가 듬뿍</p>
            <p class="lead">프레쉬한 샐러드가 뚝딱! 집에서 간편하고 쉽게 HOMEAL하세요</p>
         </div>
         
         <div class="row">
         <div class="col-12">
            <img src="<c:url value='/resources/img/salad/salad2.jpg' />" alt="" class="img-fluid">
         </div>
      </div>
      
      <div class="jumbotron text-left bg-white px-0 pb-2 mb-0">
            <h3 class="display-6">이렇게 보내드려요!</h3>
            <div class="row">
               <div class="col-12">
                  <hr class="my-3">
               </div>
            </div>
        </div>
        
        <div class = "row">
           <div class="col-8">
              <img src="<c:url value='/resources/img/salad/salad3.jpg' />" alt="" class="img-fluid">
           </div>
           <div class="col-4">
              <h2 class = "my-5 text-center">HOMEAL 구성</h2>
              <div>
                 <hr class="my-5">
              </div>

              <p class = "meterial text-center">
              치킨텐더(태국산)<br><br>양상추(국내산)<br><br>허니드레싱(외국산)<br><br>방울토마토(국내산)<br><br>블랙올리브(스페인산)<br><br>오이(국내산)
              </p>
           </div>
      </div>
      
        
        <div class="jumbotron text-left bg-white px-0 pb-2 mb-0">
            <h3 class="display-6">HOMEAL과 함께하는 샐러드 레시피</h3>
            <div class="row">
               <div class="col-12">
                  <hr class="my-3">
               </div>
            </div>
        </div>
        
        <div class="row">
           <div class = "col-6">
              <img src="<c:url value='/resources/img/salad/make2.PNG' />" alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src=<c:url value='/resources/img/main/Image1.png' /> alt=""></a></div>
                 <div class="col-11">
                    <h5>채소 세척하기</h5>
                    <p>채소들은 흐르는 물에 세척하여 준비해줍니다.(1차세척과정을 거친제품이지만 중간에 이물이 혼입될 수 있으므로 2차세척을 해주면 더욱 좋습니다.)</p>
                 </div>
              </div>
           </div>
           
           <div class = "col-6">
               <img src="<c:url value='/resources/img/salad/make3.PNG' />" alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src=<c:url value='/resources/img/main/Image2.png' /> alt=""></a></div>
                 <div class="col-11">
                    <h5>재료 손질하기</h5>
                    <p>방울토마토는 꼭지를 제거하고 오이는 슬라이스,올리브는 반으로 잘라줍니다</p>
                 </div>
              </div>
           </div>
        </div>       
        
        <div class="row">
           <div class = "col-6">
              <img src="<c:url value='/resources/img/salad/make1.PNG' />" alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src=<c:url value='/resources/img/main/Image3.png' /> alt=""></a></div>
                 <div class="col-11">
                    <h5>텐더 익혀주기</h5>
                    <p>치킨텐더는 180도 기름에서 10분간 익혀주세요(에어프라이어 기준 180도 10~15분)</p>
                 </div>
              </div>
           </div>
           
           <div class = "col-6">
              <img src="<c:url value='/resources/img/salad/make4.PNG' />" style="object-fix: cover" alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src=<c:url value='/resources/img/main/Image4.png' /> alt=""></a></div>
                 <div class="col-11">
                    <h5>마무리하기</h5>
                    <p>접시를 준비하여 야채를 보기 좋게 담고 텐더와 올리브,케이퍼,소스,양파후레이크를 차례대로 올려줍니다</p>
                 </div>
              </div>
           </div>
        </div>
        
        <div class="row">
           <div class="col-12 text-center my-5">
              <p><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-exclamation-circle-fill" viewBox="0 0 16 16">
  <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM8 4a.905.905 0 0 0-.9.995l.35 3.507a.552.552 0 0 0 1.1 0l.35-3.507A.905.905 0 0 0 8 4zm.002 6a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
</svg> 상기 이미지는 실제와 다를 수 있습니다.</p>
              
           </div>
        </div>   
      <!-- 추가 끝 -->
