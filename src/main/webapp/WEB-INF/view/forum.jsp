<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <jsp:include page="fragments/header.jsp" />

    <title>The Forum</title>
</head>
<body>
    <jsp:include page="fragments/navbar.jsp" />

    <main id="main" class="container">
        <h1>Yodo.io Company Homepage</h1>
        <p>Here be Coinz and Unicorns!</p>
        <p>
            Role(s): <security:authentication property="principal.authorities"/>
        </p>
        <ul>
            <security:authorize access="hasRole('ACADEMIC')">
            <li><a href="${pageContext.request.contextPath}/academy">To the Academy</a></li>
            </security:authorize>
            <security:authorize access="hasRole('STOIC')">
            <li><a href="${pageContext.request.contextPath}/stoa">To the Stoa</a></li>
            </security:authorize>
        </ul>
    </main>

</body>
</html>
