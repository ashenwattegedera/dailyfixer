<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 8/23/2025
  Time: 1:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DailyFixer - Repair Guides</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
<header>
    <!--Main Navbar-->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../index.jsp">Home</a></li>
            <li><a href="../index.jsp#about">About</a></li>
            <li><a href="../index.jsp#services">Services</a></li>
            <li><a href="shared/login.jsp">Log in</a></li>
        </ul>
    </nav>

    <!--Sub Nav-->
    <div clas="sub-nav">
        <a href="diagnose.jsp">Diagnose Now</a>
        <a href="technicians.jsp">Find a technician</a>
        <a href="repair-guides.jsp" class="active">View Repair Guides</a>
        <a href="stores.jsp">Stores</a>
    </div>
</header>


<div class="container">
    <!--Page Title-->
    <section class="hero">
        <div class="hero-content">
            <h1>Repair Guides</h1>
            <p>Select a category to explore step-by-step guides</p>
        </div>
    </section>


    <!--Home Appliance Guides-->
    <section class="guides">
        <h2>Home Appliances</h2>
        <div class="guide-cards">
            <a href="#" class="card">
                <img src="../assets/images/washing_machine.jpg" alt="Washing Machine">
                <p><strong>Fixing a Washing Machine Leak</strong><br>Step-by-step to stop water leakage.</p>
            </a>

            <a href="#" class="card">
                <img src="../assets/images/fridge.jpg" alt="Fridge">
                <p><strong>Refrigerator not cooling</strong><br>Simple checks to restore cooling.</p>
            </a>

            <a href="#" class="card">
                <img src="../assets/image/microwave.jpg" alt="Microwave">
                <p><strong>Microwave Not Heating</strong><br>Easy troubleshooting guide.</p>
            </a>
        </div>
    </section>

    <!--Vehicle Guides-->
    <section class="guides">
        <h2>Vehicles</h2>
        <div class="guide-cards">
            <a href="#" class="card">
                <img src="../assets/images/car_engine.jsp" alt="Car Engine">
                <p><strong>Basic Engine Maintenance</strong><br>Learn essential engine checks.</p>
            </a>

            <a href="#" class="card">
                <img src="../assets/images/bike_tire.jpg" alt="Bike Tire">
                <p><strong>Replace a Bike Tire</strong><br>Step-by-step tire replacement guide.</p>
            </a>

            <a href="#" class="card">
                <img src="../assets/images/car_battery.jpg" alt="Car Battery">
                <p><strong>Jumpstart a Car Battery</strong><br>Safe method to jumpstart your car.</p>
            </a>
        </div>
    </section>
</div>>

<script src="../assets/js/script.js"></script>
</body>
</html>
