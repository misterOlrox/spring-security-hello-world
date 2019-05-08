<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>

    <title>Hello world!</title>

</head>

<body>

    <h2>Home page</h2>

    <p>
    Welcome to the home page.
    </p>

    <hr>

    <p>
        User: <security:authentication property="principal.username" />
        <br><br>
        Roles: <security:authentication property="principal.authorities" />
    </p>

    <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
            (Only for Managers)
        </p>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems meeting</a>
            (Only for Admins)
        </p>
    </security:authorize>

    <hr>

    <form:form action="${pageContext.request.contextPath}/logout"
               method="post" >

        <input type="submit" value="Logout" />

    </form:form>
</body>

</html>
