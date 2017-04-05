<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
 <!-- 상세 정보 -->
            <table class="info
              ">
              <caption>레스토랑 상세 정보</caption>
              <tfoot>
                <tr class="menu_flex">
                  <th class="show_none">메뉴:</th>
                  <td class="flex_detail">
                    <div class="list-thumb-photos size-small">
                        <button ng-click="app_popup_data_change($event)"
                                data-message_a="망고플레이트 앱에서 사용하실 수 있는 기능입니다."
                                data-message_b="망고플레이트 앱에서 편리하게 맛집들의 모든 메뉴를 확인해보세요!"
                                data-button_message="앱에서 전체 메뉴보기"
                                onclick="common_ga('PG_RESTAURANT', 'CLICK_MORE_MENU', this)"
                                data-ga_event_name="DWN_POPUPMAP_W1"
                                data-event_name_a="CLICK_DWN_MENU_W1"
                                data-event_name_b="CLICK_DWN_MENU_W2"
                                data-page_name="PU_DWN_MENU"
                                data-background_url="https://d1jrqqyoo3n46w.cloudfront.net/web/resources/igzawa8ecsdpftei.png"
                                class="btn-more">메뉴더보기
                        </button>

                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(0)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/y55vko6o1n9szv.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                        </button>
                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(1)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/sf-zurfnalmder.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                        </button>
                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(2)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/l3kdctjmtqxjcz.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                        </button>
                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(3)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/rgmtsf_hontq_u.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                            <div class="black_screen">
                              <p class="txt">
                                + 7
                              </p>
                            </div>
                        </button>
                    </div>
                    <!-- 상세 정보 -->
            <table class="info
              ">
              <caption>레스토랑 상세 정보</caption>
              <tfoot>
                <tr class="menu_flex">
                  <th class="show_none">메뉴:</th>
                  <td class="flex_detail">
                    <div class="list-thumb-photos size-small">
                        <button ng-click="app_popup_data_change($event)"
                                data-message_a="망고플레이트 앱에서 사용하실 수 있는 기능입니다."
                                data-message_b="망고플레이트 앱에서 편리하게 맛집들의 모든 메뉴를 확인해보세요!"
                                data-button_message="앱에서 전체 메뉴보기"
                                onclick="common_ga('PG_RESTAURANT', 'CLICK_MORE_MENU', this)"
                                data-ga_event_name="DWN_POPUPMAP_W1"
                                data-event_name_a="CLICK_DWN_MENU_W1"
                                data-event_name_b="CLICK_DWN_MENU_W2"
                                data-page_name="PU_DWN_MENU"
                                data-background_url="https://d1jrqqyoo3n46w.cloudfront.net/web/resources/igzawa8ecsdpftei.png"
                                class="btn-more">메뉴더보기
                        </button>

                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(0)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/y55vko6o1n9szv.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                        </button>
                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(1)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/sf-zurfnalmder.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                        </button>
                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(2)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/l3kdctjmtqxjcz.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                        </button>
                        <button class="btn-thumb" onclick="common_ga('PG_RESTAURANT', 'CLICK_MENU')" ng-click="open_menu_picture(3)">
                          <img class="center-croping"
                               src="https://mp-seoul-image-production-s3.mangoplate.com/244826/rgmtsf_hontq_u.jpg?fit=around|63:63&amp;crop=63:63;*,*&amp;output-format=jpg&amp;output-quality=80"
                               alt="서촌김씨 메뉴 사진 - 서울시 종로구 창성동 158-2"
                               onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

                            <div class="black_screen">
                              <p class="txt">
                                + 7
                              </p>
                            </div>
                        </button>
                    </div>
                    <div class="inner">

          <!-- 레스토랑 상세 -->
          <section class="restaurant-detail">
            <header>
              <div>
                <div class="wannago_wrap">
                  <button class="btn-type-icon favorite wannago_btn " data-restaurant_uuid="244826" data-action_id=""></button>
                  <p class="wannago_txt">가고싶다</p>
                </div>

                <span class="title">
                  <h1 class="restaurant_name" itemprop="name">서촌김씨</h1>

                  <strong class="rate-point" itemprop="aggregateRating" itemscope itemtype="http://schema.org/AggregateRating">
                    <span class="rate-point" itemprop="ratingValue">
                      4.7
                    </span>

                    <span itemprop="reviewCount" style="display:none;">25</span>
                  </strong>

                  <p class="branch"></p>
                </span>
              </div>

              <div class="status branch_none">
                <span class="category"><span class="hidden">카테고리: </span></span>
                <span class="cnt hit"><span class="hidden">조회수: </span>80,708</span>
                <span class="cnt review"><span class="hidden">리뷰수: </span><span>25</span></span>
                <span class="cnt favorite"><span class="hidden">가고싶다 수: </span>2,499</span>
              </div>

              <div class="reservation">
                <a class="reservation_button"
                   href="https://booking.naver.com/4/booking/svc/31944?area=man"
                   target="_blank"
                   onclick="common_ga('PG_RESTAURANT', 'CLICK_RESERVATION', null, 244826)">
                  <img class="reservation_buttonImg"
                       src="https://mp-seoul-image-production-s3.mangoplate.com/web/resources/-3bvsqc-52xxzv0k.png"
                       alt="Reservation Button Image">
                  예약하기
                </a>

                <p class="reservation_description">
                  예약하기를 누르면 네이버 예약으로 넘어갑니다
                </p>
              </div>
              <article class="contents" itemscope itemtype="http://schema.org/Restaurant">
    <meta itemprop="image" content="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/65460_1460625630585509.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80" />
    <!-- 레스토랑 상세 이미지 슬라이드 -->
    <aside class="restaurant-photos">
      <div class="no_image_wrap" ng-class="{show: no_insta && no_restaurant_picture}">
        <p class="no_image_msg">
          앱에서 사진을 올려주세요
        </p>
      </div>

      <div class="list-photo_wrap">
          <figure class="list-photo">
            <meta content="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/65460_1460625630585509.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"/>
            <figure class="restaurant-photos-item" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE');" ng-click="mp20_gallery_open(0)" role="img" aria-label="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트" title="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트">
              <img class="center-croping"
                   src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/65460_1460625630585509.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"
                   alt="서촌김씨 사진 - 서울시 종로구 창성동 158-2"
                   onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

              <div class="last_image" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE_MORE');" ng-click="mp20_gallery_open(5, true)">
                <p class="txt">
                  사진 더보기 <span class="arrow-white"></span>
                </p>
              </div>
            </figure>
          </figure>
          <figure class="list-photo">
            <meta content="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/73412_1487852661814123.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"/>
            <figure class="restaurant-photos-item" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE');" ng-click="mp20_gallery_open(1)" role="img" aria-label="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트" title="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트">
              <img class="center-croping"
                   src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/73412_1487852661814123.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"
                   alt="서촌김씨 사진 - 서울시 종로구 창성동 158-2"
                   onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

              <div class="last_image" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE_MORE');" ng-click="mp20_gallery_open(5, true)">
                <p class="txt">
                  사진 더보기 <span class="arrow-white"></span>
                </p>
              </div>
            </figure>
          </figure>
          <figure class="list-photo">
            <meta content="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1484709366989576.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"/>
            <figure class="restaurant-photos-item" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE');" ng-click="mp20_gallery_open(2)" role="img" aria-label="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트" title="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트">
              <img class="center-croping"
                   src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1484709366989576.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"
                   alt="서촌김씨 사진 - 서울시 종로구 창성동 158-2"
                   onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

              <div class="last_image" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE_MORE');" ng-click="mp20_gallery_open(5, true)">
                <p class="txt">
                  사진 더보기 <span class="arrow-white"></span>
                </p>
              </div>
            </figure>
          </figure>
          <figure class="list-photo">
            <meta content="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1484709367248107.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"/>
            <figure class="restaurant-photos-item" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE');" ng-click="mp20_gallery_open(3)" role="img" aria-label="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트" title="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트">
              <img class="center-croping"
                   src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1484709367248107.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"
                   alt="서촌김씨 사진 - 서울시 종로구 창성동 158-2"
                   onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

              <div class="last_image" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE_MORE');" ng-click="mp20_gallery_open(5, true)">
                <p class="txt">
                  사진 더보기 <span class="arrow-white"></span>
                </p>
              </div>
            </figure>
          </figure>
          <figure class="list-photo">
            <meta content="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1484709367455060.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"/>
            <figure class="restaurant-photos-item" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE');" ng-click="mp20_gallery_open(4)" role="img" aria-label="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트" title="서촌김씨 - 서촌 이탈리안 | 맛집검색 망고플레이트">
              <img class="center-croping"
                   src="https://mp-seoul-image-production-s3.mangoplate.com/added_restaurants/9388_1484709367455060.jpg?fit=around|512:512&amp;crop=512:512;*,*&amp;output-format=jpg&amp;output-quality=80"
                   alt="서촌김씨 사진 - 서울시 종로구 창성동 158-2"
                   onerror="this.src='https://mp-seoul-image-production-s3.mangoplate.com/web/resources/kssf5eveeva_xlmy.jpg?fit=around|*:*&amp;crop=*:*;*,*&amp;output-format=jpg&amp;output-quality=80'" />

              <div class="last_image" onclick="common_ga('PG_RESTAURANT', 'CLICK_PICTURE_MORE');" ng-click="mp20_gallery_open(5, true)">
                <p class="txt">
                  사진 더보기 <span class="arrow-white"></span>
                </p>
              </div>
            </figure>
          </figure>
      </div>
      <!--</slick>-->
    </aside>
</body>
</html>