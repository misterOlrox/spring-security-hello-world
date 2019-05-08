<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>

    <title>Hello world!</title>

</head>

<body>

    <h2>Home page</h2>

    <hr>

    <p>
    Welcome to the home page.
    </p>

    <form:form action="${pageContext.request.contextPath}/logout"
               method="post" >

        <input type="submit" value="Logout" />

    </form:form>
</body>

</html>
