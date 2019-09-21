<%@ tag description="Internal Page template" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ attribute name="pageTitle" required="true" %>

<t:layout pageTitle="${pageTitle}">
    <jsp:body>
        <t:navbar/>
        <jsp:doBody/>
    </jsp:body>
</t:layout>
