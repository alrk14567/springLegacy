<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>게시글 목록을 보여주는 중.....</h1>
<sec:authentication property="principal" var="principal"/>
${principal}
<sec:authorize access="hasRole('ROLE_ADMIN')">
    정기돈님이 좋아하는 음식은 치킨,피자,파스타, 국밥, 초밥, 스테이크 등등입니다.
</sec:authorize>
<sec:authorize access="hasRole('ROLE_USER')">
    꽁꽁 얼어붙은 한강위로 고양이가 걸어갑니다.
</sec:authorize>
<form action="/logOut" method="post">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <input type="submit" value="로그아웃">
</form>
</body>
</html>
