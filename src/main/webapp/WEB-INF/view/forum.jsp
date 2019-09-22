<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:internal pageTitle="The Forum">

    <main id="main" class="container">

        <h1>The PragPhil Members Area</h1>

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

</t:internal>
