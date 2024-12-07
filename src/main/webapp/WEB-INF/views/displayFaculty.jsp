<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employees List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
        }
        th, td {
            padding: 10px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        a {
            display: block;
            text-align: center;
            margin-top: 20px;
            text-decoration: none;
            color: #333;
        }
        a:hover {
            color: #555;
        }
    </style>
</head>
<body>

<h1>Faculty List</h1>

<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Department</th>
        <th>Courses Taught</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Delete</th>

    </tr>
    </thead>
    <tbody>

    <c:forEach var="user" items="${facultyData}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.department}</td>
            <td>${user.courses_taught}</td>
            <td>${user.email}</td>
            <td>${user.phone_number}</td>
            <td><a href="delete/${user.id}">Delete</a> </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<a href="index.jsp">Homepage</a>
</body>
</html>