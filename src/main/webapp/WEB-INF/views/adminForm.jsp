<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manufacture Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Employee Form</h2>
    <form:form modelAttribute="admin" action="/StudentAttendanceManagementSystem_war_exploded/saveAdmin" method="post">
        <div class="form-group">
            <label for="id">ID:</label>
            <form:input path="id" id="id"/>
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <form:input path="name" id="name"/>
            <form:errors path="name" cssClass="error"/>
        </div>
        <div class="form-group">
            <label for="password">password:</label>
            <form:input path="password" id="password"/>
        </div>
        <div class="form-group">
            <label for="role">Role:</label>
            <form:input path="role" id="role"/>
        </div>

        <input type="submit" value="Save">
        <a href="index.jsp">Homepage</a>
    </form:form>
</div>

</body>
</html>


