<%--
  Created by IntelliJ IDEA.
  User: Ashen Wattegedera
  Date: 8/25/2025
  Time: 1:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delivery Driver Dashboard - Daily Fixer</title>
    <link rel="stylesheet" href="#">
</head>
<body>
<header>
    <!-- Main Navbar -->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../../../index.jsp">Home</a></li>
            <li><a href="#">Log in</a></li>
        </ul>
    </nav>

    <!-- Subnav -->
    <nav class="subnav">
        <div class="store-name">Delivery Driver</div>
        <ul>
            <li><a href="#" class="active">Dashboard</a></li>
            <li><a href="#">Delivery Requests</a></li>
            <li><a href="#">Update Status</a></li>
            <li><a href="#">Set Rates</a></li>
            <li><a href="#">My Profile</a></li>
        </ul>
    </nav>
</header>

<div class="container">
    <main class="dashboard">
        <h2>Dashboard</h2>
        <p class="subtitle">Here’s your performance overview</p>

        <div class="stats-container">
            <div class="stat-card">
                <p class="number">5</p>
                <p>Deliveries Assigned Today</p>
            </div>
            <div class="stat-card">
                <p class="number">3</p>
                <p>Deliveries Completed</p>
            </div>
            <div class="stat-card">
                <p class="number">2</p>
                <p>Pending Deliveries</p>
            </div>
        </div>

        <!-- Driver Stats -->
        <div class="driver-stats">
            <h3>Driver Stats</h3>
            <div class="stats-grid">
                <div class="info-box">
                    <p><strong>Total Deliveries:</strong> 342</p>
                </div>
                <div class="info-box">
                    <p><strong>Driver Rating:</strong> 4.9/5</p>
                </div>
                <div class="info-box">
                    <p><strong>This Month:</strong> 28 deliveries</p>
                </div>
            </div>
        </div>
    </main>
</div>
</body>
</html>


