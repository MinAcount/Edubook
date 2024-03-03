<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>로그인 후 화면</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
#page{
	width:900px;
	margin: 0px auto;
}

#header{
	background: #8B4513;
	text-align: center;
}
#header>h1, #header>div{
	display: inline-block;
	line-height: 40px
}
#nav li{
display: inline-block;
background: lightcyan;
height: 30px;
text-align : center;
line-height: 30px;
margin-right: 10%
}

#aside{
	border: 1px solid tan;
	width: 20%;
	min-height: 500px;
	float: left;
	line-height: 100px;
	padding: 10px;
}
#aside ul{
	list-style: none;
}
#section{
	border: 1px solid tan;
	min-height: 500px;
	margin-left: 200px
}
#footer{
	clear: both;
	height: 80px;
	background: #8B4513;
}
#footer{
	text-align: center;
	line-height: 80px
}




</style>
</head>
<body>
<div id="page">
	<header id="header">
		<h1>헤더영역</h1>
		<!-- scope는 같은 이름일 경우 page>request>session>application 순으로 우선운위를 갖는다 -->
		${sessionScope.loginVo.name}님 반갑습니다.
		<c:if test="${loginVo.auth eq 'A'}">
			<div>[관리자모드]</div>
		</c:if>
		<div>
			[게시판보기]
		</div>
		<div>
			<!-- TODO 20_1 로그아웃 <a> 실행 -->
			<a href="./logout.do">[로그아웃]</a>
		</div>
	</header>
	<nav id="nav">
		<ul>
			<li>회사소개</li>
			<li>제품소개</li>
			<li>채용정보</li>
			<li>고객센터</li>
		</ul>
	</nav>
	
	<aside id="aside">
		<div>
			<ul>
				<li>회사연혁</li>
				<li>협력사</li>
				<li>매출</li>
			</ul>
		</div>
	</aside>
	
	<section id="section">
	<div>
		<!-- 19_4 LoginController에서 전달 받은 Model과 HttpSession의 출력 확인 -->
		전달받은 Model 및 HttpSession 값 확인
		<ul>
			<li>Model loginVo 확인 : ${requestScope.loginVo.name}</li>
			<li>HttpSession loginVo 확인 :${sessionScope.loginVo.name}</li>
		</ul>
		</div>
		<br>
		<div>
			콘텐츠메뉴
			<ul>
				<li>
					<a href="./sessionInit.do">HttpSession의 값을 파악해 보자</a>
				</li>
			</ul>
		
		</div>
	</section>
	<footer id="footer">
		<div id="copy">
			<p>copyright &copy; kor</p>		
		</div>
	</footer>
	
	
</div>

</body>
</html>