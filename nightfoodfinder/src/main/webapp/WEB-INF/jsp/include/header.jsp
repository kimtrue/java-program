<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<header class="clearboth">
    <div class="logo" onclick="location.href='${pageContext.request.contextPath}/front/main/main.do'">
        <img src="${pageContext.request.contextPath}/resources/images/mangoplate-logo-horizontal.svg" alt="anff 로고" />
    </div>
    <div class="search">
    <form id="sto_search" action="${pageContext.request.contextPath}/front/store/storelist.do" method="post">
    	<!-- 검색어 입력 부분 -->
		<input type="text" name="keyword"/>
		 <!-- 검색 버튼 부분 -->
        <div class="icon_w" id="search_btn"><button type="submit"><i class="fa fa-search" aria-hidden="true"></i></button></div>
        <div class="optionBox hidden">
        	<ul class="optionTab clearboth">
            	<li class="on">분류</li>
            	<li>위치</li>
            	<li>가격대</li>
        	</ul>
        	
        	<div class="select clearboth tab_1">
          		<!-- 카테고리 별 검색-->
         		<c:forEach items="${cateList}" var="t" >
	        		<div>
	            		<label for="foodtype_${t.categoryNo}" class="types">${t.categoryName}</label>
	            		<input id="foodtype_${t.categoryNo}" name="categoryCode" value="${t.categoryNo}" type="checkbox" class="hidden" />
	            	</div>
         		</c:forEach>
            </div>
          	<!-- tab_1 -->
          
          	<div class="select clearboth tab_2 hidden">
          		<!-- 지역구 별 검색 -->
          		<c:forEach items="${cityList}" var="ct" varStatus="status">
	            	<div>
	              		<label for="city_${status.count}" class="types">${ct}</label>
	              		<input id="city_${status.count}" name="cities" value="${ct}" type="checkbox" class="hidden" />
	            	</div>
          		</c:forEach>
          	</div>
          	<!-- tab_2 -->
          
          
          	<div class="select clearboth tab_3 hidden">
          		<!-- 가격별 검색 -->
            	<div>
              		<label for="price_1" class="types">1만원 미만</label>
              		<input id="price_1" type="checkbox" name="priceType" value="1" class="hidden" />
            	</div>

            	<div>
              		<label for="price_2" class="types">1만원대</label>
              		<input id="price_2" type="checkbox" name="priceType" value="2" class="hidden" />
              		
            	</div>

	            <div>
	              <label for="price_3" class="types">2만원대</label>
	              <input id="price_3" type="checkbox" name="priceType" value="3" class="hidden" />
	            </div>
	
	            <div>
	              <label for="price_4" class="types">3만원 이상</label>
	              <input id="price_4" type="checkbox" name="priceType" value="4" class="hidden"  />
	            </div>
          	</div>
          <!-- tab_3 -->

          	<div class="closedstore"> 
	      		<label for="closed" class="types">영업 종료한 가게도 포함하기</label>
	      		<input id="closed" type="checkbox" name="includeClosed" value="1" class="price hidden"  />
          	</div> 
          <!-- userselect-->
		</div>
	</form>
    </div>
    <div class="float_r">
      <ul>
        <li><a href="#">내주변맛집</a></li>
        <li><a href="#">NFF Awards</a></li>
        <li id="notice_btn"><i class="fa fa-bell-o" aria-hidden="true"></i>
        	<!-- 새 알림 갯수 뿌려줄 span -->
        	<span class="newnotice"></span>
        	<!-- 알림 리스트 나올 div -->
        	<div class="notice_list_box hidden">
	        	<div class="topshape"></div>
			    <!-- 알림 리스트 나올 div -->
	        	<div class="notice_content">

	        	</div>
        	</div>
        </li>
        
        <li id="person_btn"><i class="fa fa-user-o" aria-hidden="true"></i>
		<!-- 팝업 (로그인 X) -->
		<div class="pop_person nMember hidden">
	        <div class="topshape"></div>
	        <c:choose>
	        <c:when test="${loginUser != null}">
	        <div>
				MY PAGE
	        </div>
	        </c:when>
	        <c:when test="${loginStore != null}">
	        <div>
				MY PAGE
	        </div>
	        </c:when>
	        <c:otherwise>
	        <div>
	        	로그인 후<br />
				이용 가능합니다
	        </div>
	        </c:otherwise>
	        </c:choose>
	        <div>
	           <c:choose>
				<c:when test="${loginUser != null}">
				<ul>
					<li><a href="${pageContext.request.contextPath}/front/login/logout.do">로그아웃</a></li>
				</ul>
				</c:when>
				<c:when test="${loginStore != null}">
				<ul>
					<li><a href="${pageContext.request.contextPath}/front/login/logout.do">로그아웃</a></li>
				</ul>
				</c:when>
				<c:otherwise>
	            <ul>
	                <li><a href="${pageContext.request.contextPath}/front/login/userLoginForm.do">로그인하기</a></li>
	            </ul>
				</c:otherwise>
	           </c:choose>
	        </div>
	    </div>
		</li>
      </ul>
    </div>
  </header>
  <script type="text/javascript">
  /* if (window.sessionStorage) {
      console.dir(sessionStorage);
  } */
  </script>
  <script src='${pageContext.request.contextPath}/resources/js/header.js' ></script>