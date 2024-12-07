<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Information Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }

        .container {
            top: -33px;
            position: relative;
            width: 50%;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .container2 {
            position: relative;
            width: 50%;
            top: 37px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            z-index: 99;
            /* box-shadow: 0 0 10px rgba(0, 0, 0, 0.1); */
            text-align: center;
        }

        h1 {
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        input[type="text"], input[type="number"], input[type="tel"], select {
            width: calc(100% - 6px);
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            border: none;
            background-color: #4CAF50;
            color: white;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container2">
    <h2>Faculty Details Form</h2>
</div>
<div class="container">
    <%--    <h2>Faculty Details Form</h2>--%>
    <form:form modelAttribute="faculty" action="/StudentAttendanceManagementSystem_war_exploded/saveFaculty" method="post">
        <div class="form-group">
            <label for="id">ID:</label>
            <form:input path="id" id="id"/>
        </div>
        <div class="form-group">
            <label for="name">Name:</label>
            <form:input path="name" id="name"/>
        </div>
        <div class="form-group">
            <label for="password">password:</label>
            <form:input path="password" id="password"/>
        </div>
        <div class="form-group">
            <label for="department">Department:</label>
            <form:input path="department" id="department"/>
        </div>

        <div class="form-group">
            <label for="courses_taught">Courses Taught:</label>
            <form:input path="courses_taught" id="courses_taught"/>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <form:input path="email" id="email"/>
        </div>
        <div class="form-group">
            <label for="phone_number">Phone Number:</label>
            <form:input path="phone_number" id="phone_number"/>
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