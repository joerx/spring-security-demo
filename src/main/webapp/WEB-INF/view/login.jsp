<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: joerg.henning
  Date: 20/09/2019
  Time: 21:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/login.css"/>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Login</title>
</head>
<body>
    <main id="main" class="container">

            <form:form action="${pageContext.request.contextPath}/authenticate" method="POST" cssClass="login-form">

                <h2>Please Log In</h2>

                <c:if test="${param.error != null}">
                    <p class="alert alert-warning">Invalid credentials. Please try again!</p>
                </c:if>
                <c:if test="${param.logout != null}">
                    <p class="alert alert-success">You have been logged out.</p>
                </c:if>

                <p>
                    <label for="username" class="sr-only">Username</label>
                    <input type="text" id="username" name="username" placeholder="Username" class="form-control" required autofocus/>
                </p>
                <p>
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" id="password" name="password" placeholder="Password" class="form-control" required/>
                </p>
                <button class="btn btn-lg btn-primary btn-block">Sign In</button>
            </form:form>

    </main>
</body>
</html>
