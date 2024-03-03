<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<!-- TODO 09 home.do 페이지 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
${loginVo}

<!-- TODO 15 기본화면 구현 : 로그인, 국제화 코드 -->
<select id="lang" onchange="langChange()">
	<option value="ko" ${param.lang =="ko"?"selected":""}>한국어</option>
	<option value="en" ${param.lang =="en"?"selected":""}>영어</option>
</select>
<script type="text/javascript">
	window.onload=function(){
		
	}
	
	function langChange(){
		var lang = document.getElementById("lang");
		var choiceValue = lang.options[lang.selectedIndex].value;
		console.log("선택된 언어:",choiceValue);
		location.href="./main.do?lang="+choiceValue;
	}
</script>
<hr>
<div class="container">
<form action="./login.do" method="post">
	<table class="table">
		<tr class="warning">
		<!-- TODO 16_4 국제화코드 적용 taglib spring -->
		<!-- TODO 19_1 login submit 실행 -->
			<td>
				<input type="text" name="id" required>
			</td>	
		</tr>
		<tr>
			<td>
				<input type="password" name="password" required>
			</td>	
		</tr>
		<tr>
			<th colspan="2">
				<input type="submit" value='login'>
				
				<!-- TODO 24_01 회원가입 Ajax, formValitaion -->
				<input type="button" value="회원가입 Ajax" onclick="location.href='./registForm.do'">
				<!-- TODO 25_01 Spring tag를 사용한 유효성 검사 -->
				<input type="button" value="회원가입 formValitaion" onclick="location.href='./formValidation.do'">
			</th>
		</tr>
	</table>

</form>

<!-- TODO 21_1 HttpSession과 @SessionAttribute -->
<fieldset>
	<legend>HttpSession과 @SessionAttribute 설명</legend>
	<a class="btn btn-success" href="./sessionInit.do">Session_1_Controller</a>
	
	<div id="description">
		<pre>
			※ @SessionAttribute 는 HttpSession 을 사용할때 @ModelAttribute 와 이름을 같게 사용하여
			  request scope 가 아닌 Session Scope에 값을 저장할 수 있도록 해줌
			※ @SessionAttribute 는 4.3버전 이상에서 추가된 Bind Annotation HttpSession에 저장값을 컨버팅을 쉽게 해주도록 함
			
			◆ 공통 init.do에 의해서 HttpSession(:httpsessionTest), @SessionAttribute(:sessionTest)
			 -> sessioncheck.jsp 출력  
			▶ 같은 Controller 의 HttpSession 과 @SessionAttribute
			  		
			▶ 다른 Controller 의 HttpSession 과 @SessionAttribute
		</pre>
	</div>
	
</fieldset>

<!-- TODO 22_1 SMTP 사용하여 Email 보내기 EmailController -->
<fieldset>
	<legend>SMTP 메일 보내기</legend>
	<a class="btn btn-success" href="./emailForm.do">메일 작성 화면</a>
</fieldset>

<!-- TODO 23_01 commons-fileupload 사용하여 업로드 -->
<fieldset>
	<legend>파일업로드</legend>
	<a class="btn btn-success" href="./uploadForm.do">파일 업로드 화면</a>
</fieldset>




</div>




</body>
</html>