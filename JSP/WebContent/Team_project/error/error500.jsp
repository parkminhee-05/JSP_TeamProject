<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!--isErrorPage를true로 지정하면 exception 객체를 이용할 수 있게 된다. 위에 한꺼번에 해도 되지만 이렇게 하고 싶었다.-->
<%@page isErrorPage="true" %>     

<!-- 에러 페이지로 리다이렉트와 동시에 헤더 정보내 노출되는 에러코드 노출을 방지할 수 있다.-->
<%response.setStatus(200); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500에러</title>
<style type="text/css">
	* {
		padding:0;
		margin:0;
		width:100%;
		height:100%;
	}
</style>

</head>
<body>
	<!-- 500에러 이미지 주소 -->
	<img src="https://freefrontend.com/assets/img/500-error-page-html-templates/Error-500-alert.gif"><br>

</body>
</html>	