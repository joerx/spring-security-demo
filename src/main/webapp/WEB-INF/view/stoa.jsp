<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<t:internal pageTitle="The Daily Stoic">

    <main id="main" class="container">

        <h1>The Daily Stoic</h1>

        <p>
            <img src="${pageContext.request.contextPath}/resources/media/zeno.png" alt="some old dude"/>
        </p>
        <p>
            <a href="${pageContext.request.contextPath}/forum">Back to the forum</a>
        </p>
    </main>

</t:internal>
