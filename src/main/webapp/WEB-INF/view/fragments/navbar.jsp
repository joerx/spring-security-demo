<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<section class="container">
    <div class="row">
        <div class="col">
            Welcome <security:authentication property="principal.username"/>
        </div>
        <div class="col" style="text-align: right">
            <form:form action="${pageContext.request.contextPath}/logout" method="POST">
                <p>
                    <button type="submit" class="btn btn-default">Logout</button>
                </p>
            </form:form>
        </div>
    </div>
</section>
