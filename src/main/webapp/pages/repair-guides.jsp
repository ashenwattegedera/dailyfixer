<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>DailyFixer - Repair Guides</title>
    <link rel="stylesheet" href="../assets/css/style.css">
</head>
<body>
<header>
    <!-- Main Navbar -->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../index.jsp">Home</a></li>
            <li><a href="../index.jsp#about">About</a></li>
            <li><a href="../index.jsp#services">Services</a></li>
            <li><a href="shared/login.jsp">Log in</a></li>
        </ul>
    </nav>

    <!-- Sub-nav -->
    <div class="sub-nav">
        <a href="diagnose.jsp">Diagnose Now</a>
        <a href="technicians.jsp">Find a Technician</a>
        <a href="repair-guides.jsp" class="active">View Repair Guides</a>
        <a href="stores.jsp">Stores</a>
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
                <button type="button">Search</button>
            </div>
        </div>
    </section>

    <!-- Category Dropdowns + Upload Button -->
    <div class="category-upload-wrapper">
        <div class="category-select">
            <!-- Home Appliances -->
            <select onchange="if(this.value) window.location.href=this.value">
                <option value="">Home Appliances</option>
                <option value="appliances/washing-machine.jsp">Washing Machine</option>
                <option value="appliances/refrigerator.jsp">Refrigerator</option>
                <option value="appliances/microwave.jsp">Microwave</option>
            </select>

            <!-- Vehicles -->
            <select onchange="if(this.value) window.location.href=this.value">
                <option value="">Vehicles</option>
                <option value="vehicles/car.jsp">Car</option>
                <option value="vehicles/bike.jsp">Bike</option>
            </select>
        </div>

        <!-- Upload Guide Button -->
        <a href="volunteer-registration.jsp" class="upload-guide-btn">+ Upload Guide</a>
    </div>

    <!-- Home Appliances Guides -->
    <section class="guides">
        <h2>Home Appliances</h2>
        <div class="guide-cards">
            <a href="#" class="card">
                <img src="../assets/images/washing_machine.jpg" alt="Washing Machine">
                <p><strong>Fixing a Washing Machine Leak</strong><br>Step-by-step to stop water leakage.</p>
            </a>
            <a href="#" class="card">
                <img src="../assets/images/fridge.jpg" alt="Fridge">
                <p><strong>Refrigerator Not Cooling</strong><br>Simple checks to restore cooling.</p>
            </a>
            <a href="#" class="card">
                <img src="../assets/images/microwave.jpg" alt="Microwave">
                <p><strong>Microwave Not Heating</strong><br>Easy troubleshooting guide.</p>
            </a>
        </div>
    </section>

    <!-- Vehicle Guides -->
    <section class="guides">
        <h2>Vehicles</h2>
        <div class="guide-cards">
            <a href="#" class="card">
                <img src="../assets/images/car_engine.jpg" alt="Car Engine">
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
</div>

<script src="../assets/js/script.js"></script>
</body>
</html>
