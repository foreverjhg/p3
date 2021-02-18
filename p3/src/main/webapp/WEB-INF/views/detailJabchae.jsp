<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


      <!-- 추가 시작 -->
      <div class="row">
         <div class="col-12">
            <img src="<c:url value='/resources/img/jabchae/jabchae01.jpg' />" alt="" class="img-fluid" >
         </div>
      </div>
      
      
      <div class="jumbotron text-center bg-white px-0 my-3">
            <h2 class="display-6">고기를 듬뿍넣어 더 맛있는! HOMEAL의 잡채</h2>
            <div class="row">
               <div class="col-5"></div>
               <div class="col-2">
                  <hr class="my-5">
               </div>
               <div class="col-5"></div>
            </div>
            <p class="lead mb-2">아삭아삭 씹히는 야채와 부드러운 고기가 가득</p>
            <p class="lead">손이 많이 가는 잡채를 간편히! 집에서 쉽고 간편하게 HOMEAL하세요</p>
         </div>
         
         <div class="row">
         <div class="col-12 ">
            <img src="<c:url value='/resources/img/jabchae/jabchae02.jpg' />" alt="" class="img-fluid">
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
              <img src="<c:url value='/resources/img/jabchae/jabchae.PNG' />" alt="" class="img-fluid">
           </div>
           <div class="col-4">
              <h2 class = "my-5 text-center">HOMEAL 구성</h2>
              <div>
                 <hr class="my-5">
              </div>
              

              <p class = "meterial text-center">
              당면<br><br>잡채소스<br><br>버섯<br><br>양파<br><br>볶은 참깨<br><br>청경채
              </p>
           </div>
      </div>
      
        
        <div class="jumbotron text-left bg-white px-0 pb-2 mb-0">
            <h3 class="display-6">HOMEAL과 함께하는 잡채 레시피</h3>
            <div class="row">
               <div class="col-12">
                  <hr class="my-3">
               </div>
            </div>
        </div>
        
        <div class="row">
           <div class = "col-6">
              <img src=<c:url value='/resources/img/doenjang/doenjang4-copy.jpg' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>채소, 두부 손질하기</h5>
                    <p>채소를 깨끗이 씻어 먹기 좋은 크기로 손질해주세요. 당면은 미온수에 30분 정도 불려주세요. (뜨거운 물에 5분, 찬물에 장시간 불리셔도 됩니다.)</p>
                 </div>
              </div>
           </div>
           
           <div class = "col-6">
              <img src=<c:url value='/resources/img/doenjang/doenjang5-copy.jpg' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>채소, 양념 끓여주기</h5>
                    <p>팬에 기름을 넉넉히 두르고 채소를 볶은 후 면과 소스를 넣고 면에 소스가 골고루 배이도록 볶아주세요.</p>
                 </div>
              </div>
           </div>
        </div>       
        
        <div class="row">
           <div class = "col-6">
              <img src=<c:url value='/resources/img/doenjang/doenjang6-copy.jpg' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>대파, 두부 넣기</h5>
                    <p>불을 끄고 참기름을 두른 후 볶음참깨와 버무려주세요.</p>
                 </div>
              </div>
           </div>
           
           <div class = "col-6">
              <img src=<c:url value='/resources/img/doenjang/doenjang2-copy.jpg' /> alt="" class="img-fluid">
              <div class = "col-12 py-3 px-0 d-flex">
                 <div class="col-1"><a href="#"><img class="rounded-circle"
                     src="http://placehold.it/30x30" alt=""></a></div>
                 <div class="col-11">
                    <h5>Tip. 꿀팁정보!</h5>
                    <p>집에 있는 차돌박이를 볶아 넣어주면 더욱 맛있습니다.</p>
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
      