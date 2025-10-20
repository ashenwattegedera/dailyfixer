<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>DailyFixer - Technician Repair Requests</title>
    <link rel="stylesheet" href="../../assets/css/history.css">
</head>
<body>

<!-- Header -->
<header>
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../../index.jsp">Home</a></li>
            <li><a href="../../index.jsp#about">About</a></li>
            <li><a href="../../index.jsp#services">Services</a></li>
            <li><a href="../shared/login.jsp">Log in</a></li>
        </ul>
    </nav>

    <!-- Sub-nav -->
    <div class="sub-nav">
        <a href="../technician/dashboard.jsp">Dashboard</a>
        <a href="../technician/technicianRequests.jsp" class="active">Repair Requests</a>
        <a href="../technician/profile.jsp">Profile</a>
        <a href="../../logout.jsp">Logout</a>
    </div>
</header>

<main class="container">
    <h1>Repair Request History</h1>
    <p class="subtitle">View all repair requests you’ve handled or are currently working on.</p>

    <div class="request-table">
        <table>
            <thead>
            <tr>
                <th>Request ID</th>
                <th>Customer Name</th>
                <th>Category</th>
                <th>Issue Description</th>
                <th>Status</th>
                <th>Date Assigned</th>
                <th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>#R001</td>
                <td>Sandun Perera</td>
                <td>Home Appliance</td>
                <td>Washing machine not draining</td>
                <td><span class="status in-progress">In Progress</span></td>
                <td>2025-10-18</td>
                <td><button class="view-btn">View</button></td>
            </tr>
            <tr>
                <td>#R002</td>
                <td>Kasuni Jayasuriya</td>
                <td>Vehicle</td>
                <td>Car A/C malfunction</td>
                <td><span class="status completed">Completed</span></td>
                <td>2025-10-15</td>
                <td><button class="view-btn">View</button></td>
            </tr>
            <tr>
                <td>#R003</td>
                <td>Heshan Silva</td>
                <td>Home Appliance</td>
                <td>Microwave not heating</td>
                <td><span class="status pending">Pending</span></td>
                <td>2025-10-20</td>
                <td><button class="view-btn">View</button></td>
            </tr>
            </tbody>
        </table>
    </div>
</main>

<footer>
    <p>© 2025 DailyFixer. All rights reserved.</p>
</footer>

</body>
</html>
