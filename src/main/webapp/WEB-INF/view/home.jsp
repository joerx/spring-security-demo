<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Yodo.io Public Landing Page</title>
</head>
<body>
    <c:if test="${param.logout != null}">
        <p class="alert alert-success">You have been logged out.</p>
    </c:if>
    <h1>Yodo.io Public Landing Page</h1>
    <p>Please login to enjoy our awesome features!</p>
    <p>
        <a href="${pageContext.request.contextPath}/internal">Internal stuff</a>
    </p>
</body>
</html>
