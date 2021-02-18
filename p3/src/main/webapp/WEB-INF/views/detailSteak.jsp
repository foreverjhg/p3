<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


      <!-- 추가 시작 -->
      <div class="row">
         <div class="col-12">
            <img src="<c:url value='/resources/img/steak/steak_top.jpg' />" alt="" class="img-fluid" >
         </div>
      </div>
      
      
      <div class="jumbotron text-center bg-white px-0 my-3">
            <h2 class="display-6">육즙가득! 고급레스토랑의 맛을 집에서! HOMEAL의 스테이크</h2>
            <div class="row">
               <div class="col-5"></div>
               <div class="col-2">
                  <hr class="my-5">
               </div>
               <div class="col-5"></div>
            </div>
            <p class="lead mb-2">고급스러움을 더해줄 핑크솔트와 풍성한 가니쉬</p>
            <p class="lead">지방과 살코기의 황금비율! 집에서 쉽고 간편하게 HOMEAL하세요</p>
         </div>
         
         <div class="row">
         <div class="col-12 ">
            <img src="<c:url value='/resources/img/steak/steak_end.jpg' />" alt="" class="img-fluid">
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
              <img src="<c:url value='/resources/img/steak/steak_mealkit.jpg' />" alt="" class="img-fluid">
           </div>
           <div class="col-4">
              <h2 class = "my-5 text-center">HOMEAL 구성</h2>
              <div>
                 <hr class="my-5">
              </div>
              

              <p class = "meterial text-center">
              소고기<br><br>스테이크 소스<br><br>방울토마토<br><br>파인애플<br><br>올리브오일<br><br>핑크솔트<br><br>새송이버섯
              </p>
           </div>
      </div>
      
        
        <div class="jumbotron text-left bg-white px-0 pb-2 mb-0">
            <h3 class="display-6">HOMEAL과 함께하는 스테이크 레시피</h3>
            <div class="row">
               <div class="col-12">
                  <hr class="my-3">
               </div>
            </div>
        </div>
        
        <div class="row">
           <div class = "col-6">
              <img src=<c:url value='/resources/img/steak/steak_re01.PNG' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>소고기 마리네이드(간) 하기</h5>
                    <p>핏물을 제거한 고기에 올리브오일, 허브솔트로 마리네이드(간)해줍니다.</p>
                 </div>
              </div>
           </div>
           
           <div class = "col-6">
              <img src=<c:url value='/resources/img/steak/steak_re02.PNG' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>가니쉬(곁들임 채소, 과일) 굽기</h5>
                    <p>올리브오일을 두른 팬에 가니쉬를 핑크소트로 간하여 중불에 구워줍니다.</p>
                 </div>
              </div>
           </div>
        </div>       
        
        <div class="row">
           <div class = "col-6">
              <img src=<c:url value='/resources/img/steak/steak_re03.PNG' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>스테이크 굽기</h5>
                    <p>팬을 예열한 뒤 버터, 올리브유로 소고기를 강불에 앞뒤로 각각 1분씩 익혀줍니다.</p>
                 </div>
              </div>
           </div>
           
           <div class = "col-6">
              <img src=<c:url value='/resources/img/steak/steak_re04.PNG' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>플레이팅 하기</h5>
                    <p>스테이크와 가니쉬를 소스와 곁들여 플레이팅합니다.</p>
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
      