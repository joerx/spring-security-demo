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
        <h1>Welcome to the Academy!</h1>
        <p>
            <img src="${pageContext.request.contextPath}/resources/media/plato.png" alt="some old dude"/>
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/forum">Back to the forum</a>
        </p>
    </main>
</body>
</html>
