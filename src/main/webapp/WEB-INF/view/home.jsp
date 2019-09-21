<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:layout pageTitle="Home Page">
    <main id="main" class="container">

        <h1>The Pragmatic Philosopher</h1>

        <c:if test="${param.logout != null}">
            <p class="alert alert-success">You have been logged out.</p>
        </c:if>

        <p>Please login to enjoy our awesome features!</p>

        <p><a href="${pageContext.request.contextPath}/forum">Internal stuff</a></p>

    </main>
</t:layout>
