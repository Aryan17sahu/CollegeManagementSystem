<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>College Management System</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://images.unsplash.com/photo-1535982330050-f1c2fb79ff78?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
            background-size: cover;
            background-position: center;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
        }

        nav ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-around;
        }

        nav li {
            margin-right: 20px;
        }

        .nav-link {
            color: #fff;
            text-decoration: none;
            font-size: 18px;
            font-weight: bold;
        }

        .profile {
            float: right;
            margin-top: 5px;
            position: relative;
            margin-right: 20px;
            top: -54px;
            left: 170px;
        }

        .content {
            padding: 20px;
            color: #333;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .college-photo {
            width: 30%;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        footer {
            background-color: #333;
            padding: 20px;
            text-align: center;
            color: #fff;
            position: absolute;
            bottom: 0;
            width: 100%;
        }

        .contact-info {
            margin-top: 10px;
        }

        .contact-info ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: space-between;
        }

        .contact-info li {
            margin-right: 20px;
        }

        .contact-info a {
            color: #fff;
            text-decoration: none;
        }
        #current-time {
            margin-top: 10px;
        }
    </style>
</head>
<body>
<header>
    <div class="container">
        <h1>College Management System</h1>
        <nav>
            <ul>
                <li><a href="#home" class="nav-link">Home</a></li>
                <li><a href="#students" class="nav-link">Students</a></li>
<%--                <li><a href="signIn" class="nav-link">Login/Sign up</a></li>--%>
            </ul>
        </nav>
        <div class="profile" style="color: white">
            Welcome | <a href="signIn" class="nav-link">Login/Sign up</a>
        </div>
    </div>
</header>

<main style="display: inline-block">
    <section id="home" class="content">
        <h2>Home</h2>
        <p>Welcome to the College Management System. Manage student attendance efficiently.</p>
<%--        <img src="https://source.unsplash.com/800x600/?college,university" alt="College Photo 1" class="college-photo">--%>
<%--        <img src="https://source.unsplash.com/800x600/?college,university" alt="College Photo 2" class="college-photo">--%>
    </section>

    <section id="students" class="content">
        <h2>Students</h2>
        <p>View and manage student records here.</p>
    </section>
    <section id="faculty" class="content">
        <h2>Faculty</h2>
        <p>View and manage faculty records here.</p>
    </section>

</main>

<footer>
    <div class="container">
        <p>&copy; 2024 College Management System</p>
        <div class="contact-info">
            <p id="current-time"></p>
            <ul>
                <li><a href="mailto:info@example.com">info@example.com</a></li>
                <li><a href="https://www.facebook.com/example">Facebook</a></li>
                <li><a href="https://www.twitter.com/example">Twitter</a></li>
            </ul>
        </div>
    </div>
</footer>
<script>
        function updateTime() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var seconds = now.getSeconds();
        var timeString = hours + ":" + (minutes < 10? "0" : "") + minutes + ":" + (seconds < 10? "0" : "") + seconds;
        document.getElementById('current-time').innerHTML = timeString;
    }

        setInterval(updateTime, 1000);
</script>
</body>
</html>