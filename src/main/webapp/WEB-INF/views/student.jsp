<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ecampus</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        /* General Styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
            overflow-y: auto;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        /* Navbar Styles */
        .navbar {
            background-color: #333;
            color: #fff;
            padding: 29px 20px;
            text-align: center;
        }

        .navbar h1 {
            margin: 0;
        }

        .profile {
            color: #fff;
            float: left;
        }

        .profile1 {
            color: #fff;
            float: right;
        }

        .profile a {
            color: #fff;
            text-decoration: none;
            margin-left: 10px;
        }

        /* Main Content Styles */
        .main-content {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .module {
            background-color: #fff;
            border-radius: 5px;
            width: calc(30% - 20px);
            margin: 10px;
            padding: 20px;
            box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
        }

        .module h2 {
            margin-top: 0;
        }

        /* Footer Styles */
        .footer {
            background-color: #333;
            color: #fff;
            text-align: center;
            padding: 20px 0;
            margin-top: 154px;
        }

        .footer-content {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .footer-info, .footer-links, .footer-social {
            flex: 1;
            text-align: center;
            margin-bottom: 20px;
        }

        .footer-links ul {
            list-style: none;
            padding: 0;
        }

        .footer-links ul li {
            margin-bottom: 10px;
        }

        .footer-links ul li a {
            color: #fff;
            text-decoration: none;
        }

        .footer-bottom {
            background-color: #222;
            padding: 10px 0;
        }
    </style>
</head>
<body>
<div class="navbar">
    <h1>College Management System</h1>
    <div class="profile">Welcome | <a href="#" style="color: white">student</a></div>
    <div class="profile1"><span>User</span> | <a href="http://localhost:8078/StudentAttendanceManagementSystem_war_exploded/logOut" style="color: white">Logout</a></div>
</div>
<div class="container">
    <div class="main-content">
        <div class="module">
            <h2>Click here to see your details</h2>
            <a href="seeStudent">Click here</a>
        </div>
    </div>
</div>
<footer class="footer">
    <div class="container">
        <div class="footer-content">
            <div class="footer-info">
                <h3>Contact Us</h3>
                <p>123 College Street, Cityville, State, Zip</p>
                <p>Phone: +1 (123) 456-7890</p>
                <p>Email: info@example.com</p>
            </div>
            <div class="footer-links">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Admissions</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="footer-social">
                <h3>Follow Us</h3>
                <ul>
                    <li><a href="#"><i class="fab fa-facebook"></i></a></li>
                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                    <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2024 College Management System. All rights reserved. | Designed by Ecampus</p>
    </div>
</footer>
</body>
</html>
