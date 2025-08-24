<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Volunteer Login</title>
  <link rel="stylesheet" href="../../assets/css/style.css">
</head>
<body>

<header>
  <!--Main Navbar-->
  <nav class="navbar">
    <div class="logo">Daily Fixer / Volunteer</div>
    <ul class="nav-links">
      <li><a href="../../index.jsp">Home</a></li>
      <li><a href="../../index.jsp#about">About</a></li>
      <li><a href="../../index.jsp#services">Services</a></li>
      <li><a href="../shared/login.jsp">Log in</a></li>
    </ul>
  </nav>
</header>

<div class="container">
  <div class="flex-wrapper">
    <!-- Left Image -->
    <div class="signup-image">
      <img src="../../assets/images/volunteer_login.png" alt="Volunteer Login Image">
    </div>

    <!-- Right Form -->
    <div class="login-wrapper">
      <div class="login-card">
        <h2>Volunteer Login</h2>
        <form action="volunteer-login-submit.jsp" method="post">
          <div class="input-field">
            <label for="email">Email Address</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required>
          </div>

          <div class="input-field">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter your password" required>
          </div>

          <button type="submit" class="login-btn">Login</button>

          <p class="note">Not registered yet? <a href="volunteersignup.jsp">Sign up here</a></p>
        </form>
      </div>
    </div>
  </div>
</div>
</body>
</html>
