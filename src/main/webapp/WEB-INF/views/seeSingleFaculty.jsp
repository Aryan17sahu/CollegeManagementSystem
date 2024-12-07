<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Faculty Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        form {
            margin-top: 20px;
        }
        input[type="text"], input[type="email"], input[type="tel"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Faculty Details</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Courses Taught</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>
        <tr>
            <td>${faculty.id}</td>
            <td>${faculty.name}</td>
            <td>${faculty.department}</td>
            <td>${faculty.courses_taught}</td>
            <td>${faculty.email}</td>
            <td>${faculty.phone_number}</td>
        </tr>
    </table>
    <h2>Update Faculty Details</h2>
    <form action="updateFaculty" method="post">
        <input type="hidden" name="id" value="${faculty.id}">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" value="${faculty.name}" required>
        <label for="department">Department:</label>
        <input type="text" id="department" name="department" value="${faculty.department}" required>
        <label for="coursesTaught">Courses Taught:</label>
        <input type="text" id="coursesTaught" name="coursesTaught" value="${faculty.courses_taught}" required>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" value="${faculty.email}" required>
        <label for="phone">Phone:</label>
        <input type="tel" id="phone" name="phone" value="${faculty.phone_number}" required>
        <input type="submit" value="Update">
    </form>
</div>
</body>
</html>
