<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - College Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css">
    <style>
        /* Custom CSS */
        .hero-image {
            background-image: url('https://source.unsplash.com/1600x900/?college-campus');
            height: 100vh;
            background-size: cover;
            background-position: center;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #fff;
        }

        .about-us {
            padding: 20px;
        }

        .about-us h2 {
            font-weight: bold;
            margin-bottom: 20px;
        }

        .about-us p {
            margin-bottom: 30px;
        }

        .about-us img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
<div class="hero-image">
    <h1 class="display-4">About Us</h1>
    <p class="lead">Learn more about our college management system</p>
</div>
<div class="container about-us">
    <h2>Our Mission</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
    <img src="https://source.unsplash.com/800x600/?college-students" alt="College Students">
    <h2>Our Vision</h2>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet nulla auctor, vestibulum magna sed, convallis ex. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
    <img src="https://source.unsplash.com/800x600/?college-campus" alt="College Campus">
</div>
<footer class="footer">
    <div class="container">
        <div class="row footer-content">
            <div class="col-md-4 footer-info">
                <h3>Contact Us</h3>
                <p>123 College Street, Cityville, State, Zip</p>
                <p>Phone: +1 (123) 456-7890</p>
                <p>Email: info@example.com</p>
            </div>
            <div class="col-md-4 footer-links">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Courses</a></li>
                    <li><a href="#">Admissions</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>
            <div class="col-md-4 footer-social">
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
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"></script>
</body>
</html>