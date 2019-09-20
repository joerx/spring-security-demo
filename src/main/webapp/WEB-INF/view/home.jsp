<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Yodo.io Company Homepage</title>
</head>
<body>
    <h1>Yodo.io Company Homepage</h1>
    <p>Here be Coinz and Unicorns!</p>
    <form:form action="${pageContext.request.contextPath}/logout" method="POST">
        <p>
            <button type="submit" class="btn btn-link">Logout</button>
        </p>
    </form:form>
</body>
</html>
