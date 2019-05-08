<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

<head>

    <title>Login</title>

    <style>
        .error {
            color: red;
        }
    </style>
</head>

<body>

    <h3>Custom Login Page</h3>

    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="post" >

        <!-- Check for error -->

        <c:if test="${param.error != null}" >
            <i class="error">Invalid username or password</i>
        </c:if>

        <p>
            User name: <input type="text" name="username" />
        </p>

        <p>
            Password: <input type="password" name="password" />
        </p>

        <input type="submit" value="Login" />

    </form:form>

</body>

</html>
