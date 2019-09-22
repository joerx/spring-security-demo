<%@ tag description="Navigation bar tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<section class="container" id="navbar">
    <div class="row">
        <div class="col">
            <p id="header-user">
                Welcome <security:authentication property="principal.username"/>
            </p>
        </div>
        <div class="col" style="text-align: right">
            <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                <button type="submit" class="btn btn-outline-secondary btn-sm">Logout</button>
            </form:form>
        </div>
    </div>
</section>
