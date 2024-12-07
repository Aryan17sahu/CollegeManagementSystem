<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
</head>
<body>
<h1>Student Details</h1>

<h2>Personal Information</h2>
<form action="updateStudent" method="post">
    <label>ID: </label>
    <input type="text" name="id" value="${student.id}" readonly><br>
    <label>Name: </label>
    <input type="text" name="name" value="${student.name}"><br>
    <label>First Name: </label>
    <input type="text" name="firstName" value="${student.firstName}"><br>
    <label>Last Name: </label>
    <input type="text" name="lastName" value="${student.lastName}"><br>
    <label>Father's Name: </label>
    <input type="text" name="fathersName" value="${student.fathersName}"><br>
    <label>Mother's Name: </label>
    <input type="text" name="mothersName" value="${student.mothersName}"><br>
    <label>Date of Birth: </label>
    <input type="text" name="dob" value="${student.dob}"><br>
    <label>Email: </label>
    <input type="text" name="email" value="${student.email}"><br>
    <label>Phone: </label>
    <input type="text" name="phone" value="${student.phone}"><br>
    <input type="submit" value="Update Personal Info">
</form>

<h2>Academic Information</h2>
<form action="updateStudent" method="post">
    <label>Course: </label>
    <input type="text" name="course" value="${student.course}"><br>
    <label>Department: </label>
    <input type="text" name="department" value="${student.department}"><br>
    <input type="submit" value="Update Academic Info">
</form>
</body>
</html>
