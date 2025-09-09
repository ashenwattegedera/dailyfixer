<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page session="true" %>
<html>
<head>
    <title>Volunteer Dashboard - DailyFixer</title>
    <link rel="stylesheet" href="../../../assets/css/volunteer_dash.css">
</head>
<body>
<h1>Welcome, <%= session.getAttribute("volunteerName") %>!</h1>

<div class="dashboard-container">
    <div class="dashboard-card">
        <h2>Manage My Repair Guides</h2>
        <p>View, edit, or delete the guides you uploaded.</p>
        <a href="guide_dashboard.jsp">Go</a>
    </div>

    <div class="dashboard-card">
        <h2>My Profile</h2>
        <p>View and update your personal information.</p>
        <a href="profile.jsp">Go</a>
    </div>

    <div class="dashboard-card">
        <h2>Logout</h2>
        <p>Sign out of your account safely.</p>
        <a href="logout.jsp">Go</a>
    </div>
</div>
</body>
</html>
