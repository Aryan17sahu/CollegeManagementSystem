<!-- index.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <style>
        /* Custom CSS */
        .navbar-brand {
            font-weight: bold;
        }

        .navbar-nav .nav-link {
            color: white;
        }

        .profile {
            color: white;
        }

        .main-content {
            padding: 20px;
        }

        .module {
            margin-bottom: 20px;
            background-color: #f7f7f7;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .footer {
            padding: 20px 0;
            margin-top: 50px;
            background-color: #222;
            color: #fff;
        }

        .footer-bottom {
            padding: 10px 0;
            background-color: #333;
            color: #fff;
        }

        .hero-image {
            background-image: url('https://source.unsplash.com/1600x900/?college-campus');
            height: 54vh;
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="#">College Management System</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Punch</a>
                </li>
                <li class="nav-item">
                    <div class="profile">
                        <span>Welcome, admin</span>
                    </div>
                </li>
                <li class="nav-item">
                    <div class="profile1">
                        <a href="http://localhost:8078/StudentAttendanceManagementSystem_war_exploded/logOut" class="nav-link">Logout</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>
<div class="hero-image">
    <h1 class="display-4">College Management System</h1>
    <p class="lead">Manage your college efficiently with our system</p>
</div>
<div class="container main-content">
    <div class="row">
        <div class="col-md-4">
            <div class="module">
                <h2>Click here to register users</h2>
                <a href="registerAdmin">Register Users</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="module">
                <h2>Click here to register faculty</h2>
                <a href="registerFaculty">Register Faculty</a>
            </div>
        </div>
        <div class="col-md-4">
            <div class="module">
                <h2>Click here to register student</h2>
                <a href="registerStudent">Register Student</a>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="module">
                <h2>Click here to manage faculty</h2>
                <a href="getAllFaculty">Manage Faculty</a>
            </div>
        </div>
        <div class="col-md-6">
            <div class="module">
                <h2>Click here to manage students</h2>
                <a href="getAllStudent">Manage Students</a>
            </div>
        </div>
    </div>
    <%--    <div class="row">--%>
    <%--        <div class="col-md-12">--%>
    <%--            <div class="module">--%>
    <%--                <h2>Click here to manage courses</h2>--%>
    <%--                <a href="manageCourse">Manage Courses</a>--%>
    <%--            </div>--%>
    <%--        </div>--%>
    <%--    </div>--%>
</div>
<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h3>About Us</h3>
                <p>College Management System is a comprehensive solution for managing your college efficiently.</p>
            </div>
            <div class="col-md-3">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="aboutUs.jsp">About</a></li>
                    <li><a href="https://sstc.ac.in/All_Courses">Courses</a></li>
                    <li><a href="https://sstc.ac.in/admission_process">Admissions</a></li>
                    <li><a href="https://sstc.ac.in/contact">Contact</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h3>Address</h3>
                <address>
                    1234 Yella Guda Reddy,Hyderabad , India<br>
                    Tel: 123-456-7890<br>
                    Email: admin@college.edu
                </address>
            </div>
            <div class="col-md-3">
                <h3>Social</h3>
                <ul class="footer-social">
                    <li><a href="#" class="fa fa-facebook"></a></li>
                    <li><a href="#" class="fa fa-twitter"></a></li>
                    <li><a href="#" class="fa fa-google-plus"></a></li>
                    <li><a href="#" class="fa fa-linkedin"></a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="footer-bottom">
    <div class="container">
        <p>&copy; College Management System. All rights reserved.</p>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>


