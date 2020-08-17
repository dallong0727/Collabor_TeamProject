<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
   <link rel="stylesheet"
      href="${pageContext.request.contextPath }/resources/css/bootstrap.css">
   <script
      src="${pageContext.request.contextPath }/resources/js/jquery-3.5.1.js"></script>
   <link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/all.css">
   <link rel="stylesheet"
      href="${pageContext.request.contextPath }/resources/css/mbti.css">
   <script
      src="${pageContext.request.contextPath }/resources/js/bootstrap.js"></script>

</head>
<body>
<%@ include file="../include/header.jsp"%>
    <main class="sub-contents">
        <div class="container sub-contents-inner wide" id="container">
            <div class="row wide-inner">
                <div class="location">
                    <div class="location-first">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="ar">></span>
                    <span>여행지</span>
                    <span class="ar">></span>
                    <span>명소</span>
                    </div>
                </div>
                <section class="infor-element">
                    <div class="text-type">
                                                      미술관&박물관
                    </div>
                    <h3 class="h3 textcenter">${vo.title }</h3>
                    <d1 class="share-detial-element">
                        <input type="hidden" id="titleStatus" value="open">
                        <dt>Share</dt>
                        <dd class="fb">
                            <a href="#"><span class="hd-element">페이스북 링크</span></a>
                        </dd>
                        <dd class="blog">
                            <a href="#"><span class="hd-element">네이버 블로그</span></a>
                        </dd>
                        <dd class="ks">
                            <a href="#"><span class="hd-element">카카오톡 링크</span></a>
                        </dd>
                    </d1>
                    <div class="post-element">
                        <span>제작일 : 2015.12.23 / 수정일 : 2020.06.11</span>
                   </div>
                </section>
                <hr>
                <section>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6 col-xs-12" style="float: none; margin: 0 auto;" >
                            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                                <div class="carousel-inner">

                                  <div class="item active">
                                    <img src="${pageContext.request.contextPath }/resources/img/mbti_${vo.bno}_1.jpg" alt="1" style="width: 100%;">
                                  </div>
                            
                                  <div class="item">
                                    <img src="${pageContext.request.contextPath }/resources/img/mbti_${vo.bno}_2.jpg" alt="2" style="width: 100%;">
                                  </div>
                                
                                  <div class="item">
                                    <img src="${pageContext.request.contextPath }/resources/img/mbti_${vo.bno}_3.jpg" alt="3" style="width: 100%;">
                                  </div>
                                </div>
                            
                                <!-- 좌우 버튼 -->
                                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                                  <span class="glyphicon glyphicon-chevron-left"></span>
                                  <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                                  <span class="glyphicon glyphicon-chevron-right"></span>
                                  <span class="sr-only">Next</span>
                                </a>
                              </div>
                            </div>
                        </div>
                    </div>
                </section>


                <div class="text-area">
                    ${vo.content }
                </div>
            </div>

            <div class="detial-cont-element active"><!-- 09-26 detial-cont-element 추가 -->
                <div class="detail-map-infor first border"><!-- 09-26 border 추가 -->
                    <dl>
                        <dt>주소</dt>
                        <dd>
                            ${vo.address }
                        </dd>
                    </dl>
                    <dl>
                        <dt>전화번호</dt>
                        <dd>${vo.phonenum }</dd>
                    </dl>
                    <dl>
                        <dt>이용시간</dt>
                        <dd>${vo.time }</dd>
                    </dl>
                    <dl>
                        <dt>이용요금</dt>
                        <dd>${vo.price }</dd>
                    </dl>
                </div>
            </div>
            <hr>
            <div class="detail-map-wrap">
                <div class="detail-map">
                    <p class="see-map"><a href="#">See map</a></p>
                    <div class="map-placeholder">
                        <div class="map-area" id="map_"></div>
                        <div id="map-mask">
                            <div class="map-mask-layer"></div>
                            <img src="img/1.png" alt="로딩바" class="loading_map">
                        </div>
                    </div>
                </div>
                <div class="detail-map-infor">
                    <dl>
                        <dt>주소</dt>
                        <dd>${vo.address }</dd>
                    </dl>
                </div>
            </div><!--// detail-map-wrap -->
            <hr>
       
            <div class="row tripadvisor-wrap">
                <h4>트립어드바이저 리뷰<span class="glyphicon glyphicon-eye-open"></span></h4>
                <p class="trip-infor">여행자 랭킹<span class="glyphicon glyphicon-eye-open"></span>
                    <span class="small">(Based on 4 Traveler Reviews)</span>
                </p>
                <div class="trip-lst-wrap">
                    <p class="trip-lst-total">Latest 4 reviews of  호림 박물관 신사 분관</p>
                    <div class="trip-lst-content">
                    
                        
                            <div class="col-xs-12 col-lg-6 inner">
                                <dl>
                                    <dt>고미술에 관심있는 이라면 반드시 가봐야 할 곳</dt>
                                    <dd>도자기 등 고미술에 관심있는 분이라면 만족하실 겁니다. 분관이라 그런지 전시관 크기가 국립 박물관에 비하면 무척 작은 편이에요. 미술관 분위기는 전체적으로 마음에 들었으나 아쉬운 점은 대중교통 접근성이 좋지 않았어요. 버스나 지하철로 가기에는 위치가 애매합니다.</dd>
                                </dl>
                                <div class="count">
                                    <h3 class="sptitle4">"★★★☆☆ "</h3>
                                <span class="trip-id">jangduhyun</span><span class="trip-data">2017-03-28</span>
                                </div>
                            </div>
                     
                 
                            <div class="col-xs-12 col-lg-6 inner">
                                <dl>
                                    <dt>유니크한 외관</dt>
                                    <dd>도자기의 모습을 본따 만든 호림박물관 신사분관은 외관부터 굉장히 유니크해요.단연 독보적인 익스테리어의 위엄이랄까요. 박물관이지만 아주 현대적이면서도 전통적인 느낌이라서 인상적이었던 곳입니다.그림속 삶과 민화 라는 주제로 2017년 2월말까지 전시진행중입니다. 한국민화의 토속적인 분위기를 좋아하는 지라 매우 좋았습니다.</dd>
                                </dl>
                                <div class="count">
                                    <h3 class="sptitle4">"★★★☆☆ "</h3>
                                    <span class="trip-id">vlogg</span><span class="trip-data">2017-01-26</span>
                                </div>
                            </div>
                       
                            <div class="col-xs-12 col-lg-6 inner">
                                <dl>
                                    <dt>유니크한 외관</dt>
                                <dd>도자기의 모습을 본따 만든 호림박물관 신사분관은 외관부터 굉장히 유니크해요.단연 독보적인 익스테리어의 위엄이랄까요. 박물관이지만 아주 현대적이면서도 전통적인 느낌이라서 인상적이었던 곳입니다.그림속 삶과 민화 라는 주제로 2017년 2월말까지 전시진행중입니다. 한국민화의 토속적인 분위기를 좋아하는 지라 매우 좋았습니다.</dd>
                            </dl>
                                <div class="count">
                                    <h3 class="sptitle4">"★★★☆☆ "</h3>
                                    <span class="trip-id">vlogg</span><span class="trip-data">2017-01-26</span>
                                </div>
                            </div>               
                       <div class="col-xs-12 col-lg-6 inner loading">
                            <div class="loading-box">
                                <div class="loading-box-inner">
                                   <a href="#">
                                       <span class="text">리뷰 더 보기</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="trip-lst-write">

                        <a href="#modal-board-regist" data-toggle="modal" class="detail-button">리뷰 작성</a>
                   <!--    <a href="#modal-board-content" data-toggle="modal" class="detail-button">리뷰 확인 및 삭제</a>
                        <a href="#modal-board-update" data-toggle="modal" class="detail-button">리뷰 수정</a> -->
                
                    </div>
                </div>
            </div><!--// tripadvisor-wrap -->
        </div>
    </main>
    
    <%@ include file="../include/footer.jsp"%>
</body>
</html>