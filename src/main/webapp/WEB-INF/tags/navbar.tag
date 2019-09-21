<%@ tag description="Navigation bar tag" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<section class="container" id="navbar">
    <div class="row">
        <div class="col">
            <%--            Welcome <security:authentication property="principal.username"/>--%>
        </div>
        <div class="col" style="text-align: right">
            <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                <button type="submit" class="btn btn-outline-secondary btn-sm">Logout</button>
            </form:form>
        </div>
    </div>
</section>
