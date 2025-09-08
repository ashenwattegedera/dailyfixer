<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*, com.dailyfixer.dao.*, com.dailyfixer.model.*" %>
<html>
<head>
    <title>DailyFixer - Repair Guides</title>
    <link rel="stylesheet" href="../../assets/css/guide.css">
</head>
<body>
<header>
    <!-- Main Navbar -->
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
        <a href="../DiagnosticTool/diagnostic.jsp">Diagnose Now</a>
        <a href="../findtechnician/findtechmain.jsp">Find a Technician</a>
        <a href="../guides/guidehome.jsp" class="active">View Repair Guides</a>
        <a href="../store/store.jsp">Stores</a>
    </div>
</header>

<div class="container">

    <!-- Page Title / Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Explore a World of Repair</h1>
            <p>Select a category to explore step-by-step guides</p>

            <!-- Search Box -->
            <div class="search-box">
                <input type="text" placeholder="Search for guides">
                <button>
                    <img src="../../assets/images/pictures/search.png" alt="Search" width="20" height="20">
                </button>
            </div>
        </div>
    </section>

    <!-- Category Dropdowns + Upload Button -->
    <div class="category-upload-wrapper">
        <div class="category-select">
            <!-- Home Appliances -->
            <select onchange="if(this.value) window.location.href=this.value">
                <option value="">Home Appliances</option>
                <option value="appliances/washingmachine_guide.jsp">Washing Machine</option>
                <option value="appliances/fridge_guide.jsp">Refrigerator</option>
                <option value="appliances/microwave_guide.jsp">Microwave</option>
            </select>

            <!-- Vehicles -->
            <select onchange="if(this.value) window.location.href=this.value">
                <option value="">Vehicles</option>
                <option value="vehicles/carEngine_guide.jsp">Car</option>
                <option value="vehicles/bikeTire_guide.jsp">Bike</option>
            </select>
        </div>

        <!-- Upload Guide Button -->
        <a href="uploadGuide.jsp" class="upload-guide-btn">+ Upload Guide</a>
    </div>

    <!-- Home Appliances Guides -->
    <section class="guides">
        <h2>Home Appliances</h2>
        <div class="guide-cards">
            <a href="appliances/washingmachine_guide.jsp" class="card">
                <img src="../../assets/images/pictures/washing_machine.jpg" alt="Washing Machine">
                <p><strong>Fixing a Washing Machine Leak</strong><br>Step-by-step to stop water leakage.</p>
            </a>
            <a href="appliances/fridge_guide.jsp" class="card">
                <img src="../../assets/images/pictures/fridge.jpg" alt="Fridge">
                <p><strong>Refrigerator Not Cooling</strong><br>Simple checks to restore cooling.</p>
            </a>
            <a href="appliances/microwave_guide.jsp" class="card">
                <img src="../../assets/images/pictures/microwave.jpg" alt="Microwave">
                <p><strong>Microwave Not Heating</strong><br>Easy troubleshooting guide.</p>
            </a>
        </div>
    </section>

    <!-- Vehicle Guides -->
    <section class="guides">
        <h2>Vehicles</h2>
        <div class="guide-cards">
            <a href="vehicles/carEngine_guide.jsp" class="card">
                <img src="../../assets/images/pictures/car_engine.jpeg" alt="Car Engine">
                <p><strong>Basic Engine Maintenance</strong><br>Learn essential engine checks.</p>
            </a>
            <a href="vehicles/bikeTire_guide.jsp" class="card">
                <img src="../../assets/images/pictures/bike_tire.jpg" alt="Bike Tire">
                <p><strong>Replace a Bike Tire</strong><br>Step-by-step tire replacement guide.</p>
            </a>
            <a href="vehicles/carBattery_guide.jsp" class="card">
                <img src="../../assets/images/pictures/car_battery.jpg" alt="Car Battery">
                <p><strong>Jumpstart a Car Battery</strong><br>Safe method to jumpstart your car.</p>
            </a>
        </div>
    </section>
</div>

<script src="../assets/js/script.js"></script>
</body>
</html>
