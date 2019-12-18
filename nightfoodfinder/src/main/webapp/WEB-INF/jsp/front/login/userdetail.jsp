<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="/WEB-INF/jsp/include/taglib.jsp"%>    
<!DOCTYPE html>
<html>
<head>
<c:import url="/WEB-INF/jsp/include/head.jsp">
	<c:param name="msg" value="MY PAGE" />
</c:import>
<meta charset="UTF-8">
<title>My Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />">
<style>
#mp_container {
	margin : 0px;
	padding-top : 20px;
	text-align : center;	
}
#mp_div01 , #mp_div02 {
	display : inline-block;
}
#mp_profile {
	width: auto;
	height: 36px;
    position: relative;
}
#mp_profile span {
	float: left;
    margin-left: 5px;
}
</style>
</head>
<body>
	<!-- 헤더 -->
    <c:import url="/WEB-INF/jsp/include/header.jsp" />
    <!-- // 헤더 -->
<div class="content clearboth">

	<div id="mp_container">
		<div id="mp_profile">
			<span id="nickName">${user.nickName}</span>
			<span>
			<a href="#">
			<i class="fa fa-cog" aria-hidden="true"></i>닉네임수정
			</a>
			</span>
			
		</div>
		<div id="mp_content">
			<div id="mp_div01">
				<div id="mp_tab">
					<div>단골</div>
					<div><a href="javascript:show_layer('2');">리뷰</a></div>
				</div>
				<div id="frequent_list">
					<c:forEach items="${freqList}" var="f" >
						${f.storeName} <br />
					</c:forEach>
				</div>
			</div>
			<div id="mp_div02" style="display : none">
				<div id="mp_tab">
					<div><a href="javascript:show_layer('1');">단골</a></div>
					<div>리뷰</div>
				</div>
				<div id="myreview_list">
					<c:forEach items="${reviewList}" var="r">
						${r.reviewContent}	<br />
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
function show_layer(div_name){

	 document.all.mp_div01.style.display="none";
	 document.all.mp_div02.style.display="none";

	 switch(div_name)
	 {
	  case '1':
	  document.all.mp_div01.style.display="";
	  break;
	  case '2':
	  document.all.mp_div02.style.display="";
	  break;
	  
	 }
	}

</script>	
</body>
</html>