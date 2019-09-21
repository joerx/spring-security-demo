<%@ tag description="Main wrapper tag" pageEncoding="UTF-8" %>
<%@ attribute name="pageTitle" required="true" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css"/>

    <title>${pageTitle}</title>
</head>
<body>
    <jsp:doBody/>
</body>
</html>
