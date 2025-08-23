<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/23/2025
  Time: 3:45 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DailyFixer - Volunteer Sign Up</title>
    <link rel="stylesheet" href="../../assets/css/style.css">
</head>
<body>
<header>
    <!--Main Navbar-->
    <nav class="navbar">
        <div class="logo">Daily Fixer / Volunteer</div>
        <ul class="nav-links">
            <li><a href="../index.jsp">Home</a></li>
            <li><a href="../index.jsp#about">About</a></li>
            <li><a href="../index.jsp#services">Services</a></li>
            <li><a href="../shared/login.jsp">Log in</a></li>
        </ul>
    </nav>
</header>

<div class="container">
    <div class="flex-wrapper">
        <!-- Left Image -->
        <div class="signup-image">
            <img src="../../assets/images/volunteer_signup.png" alt="Volunteer Image">
        </div>

        <!-- Right Form -->
        <div class="login-wrapper">
            <div class="login-card">
                <h2>Volunteer Sign Up</h2>
                <form action="volunteer-submit.jsp" method="post">
                    <div class="input-field">
                        <label for="name">Full Name</label>
                        <input type="text" id="name" name="name" placeholder="Enter your full name" required>
                    </div>

                    <div class="input-field">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email" required>
                    </div>

                    <div class="input-field">
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter your password" required>
                    </div>

                    <div class="input-field">
                        <label for="confirm-password">Confirm Password</label>
                        <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm your password" required>
                    </div>

                    <input type="hidden" name="volunteer-type" value="repair-guide">

                    <button type="submit" class="login-btn">Register</button>

                    <p class="note">Already registered? <a href="volunteer_login.jsp">Log in here</a></p>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
