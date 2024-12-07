<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 400px;
            margin: 100px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        }

        .container h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: inline-block;
            width: 100px;
            margin-bottom: 5px;
            color: #666;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: calc(100% - 110px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-group input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #008cba;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .form-group input[type="submit"]:hover {
            background-color: #005f6b;
        }

        .error-message {
            color: #ff0000;
            margin-top: 10px;
        }

        @media (max-width: 600px) {
            .container {
                width: 100%;
            }

            .form-group label {
                display: block;
                width: auto;
            }

            .form-group input[type="text"],
            .form-group input[type="password"] {
                width: 100%;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Login Page</h1>

    <c:if test="${error eq 'true'}">
        <div class="error-message">
            <c:out value="${msg}" />
        </div>
    </c:if>

    <c:if test="${error eq 'true'}">
        <div class="error-message">
            <c:out value="${message}" />
        </div>
    </c:if>

    <c:if test="${not empty logOutMsg}">
        <div class="success-message">
            <c:out value="${logOutMsg}" />
        </div>
    </c:if>

    <form name="loginForm" action="${pageContext.request.contextPath}/login" method="POST">
        <div class="form-group">
            <label for="id">User Name:</label>
            <input type="text" name="id" id="id" value="" placeholder="Enter Your Id" /></div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" name="password" id="password" placeholder="Enter Password" />
        </div>

        <div class="form-group">
            <input name="submit" type="submit" value="submit" />
            <input name="reset" type="reset" />
        </div>
    </form>

    <a href="index.jsp">Homepage</a>
</div>
</body>
</html>