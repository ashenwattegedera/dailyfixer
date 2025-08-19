<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>DailyFixer - Login</title>
    <link rel="stylesheet" href="../../assets/css/style.css">
</head>
<body>
<div class="login-wrapper">
    <div class="login-card">
        <h2>Login to DailyFixer</h2>
        <form action="../../LoginServlet" method="post" onsubmit="return validateLogin()">
            <div class="input-field">
                <label for="username">Username</label>
                <input type="text" id="username" name="username">
            </div>
            <div class="input-field">
                <label for="password">Password</label>
                <input type="password" id="password" name="password">
            </div>
            <button type="submit" class="login-btn">Log In</button>
        </form>
        <div class="note">Use your DailyFixer account credentials.</div>
        <a href="../../index.jsp" class="back-link">← Back to Home</a>
    </div>
</div>

<script>
    function validateLogin() {
        let user = document.getElementById("username").value.trim();
        let pass = document.getElementById("password").value.trim();
        if(user === "" || pass === "") {
            alert("Please fill in both fields.");
            return false;
        }
        return true;
    }
</script>
</body>
</html>
