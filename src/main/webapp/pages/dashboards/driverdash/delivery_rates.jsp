<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store Dashboard - Daily Fixer</title>
    <link rel="stylesheet" href="../../../assets/css/delivery_requests.css">
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
            <li><a href="driverdashmain.jsp">Dashboard</a></li>
            <li><a href="delivery_requests.jsp">Delivery Requests</a></li>
            <li><a href="delivery_status.jsp">Update Status</a></li>
            <li><a href="#" class="active">Rates</a></li>
            <li><a href="delivery_profile">My Profile</a></li>
        </ul>
    </nav>
</header>

<main>
    <div class="form-container">
        <div class="current-rates-card">
            <h2>Current Delivery Rates</h2>
            <p><strong>Rate per Kilometer:</strong> Rs. 50</p>
            <p><strong>Minimum Delivery Fee:</strong> Rs. 200</p>
            <p><strong>Maximum Distance:</strong> 25 km</p>
            <p><strong>Maximum Weight:</strong> 10 kg</p>
        </div>
        <form class="form-card">
            <h2>Set Delivery Rates</h2>

            <label>Rate per Kilometer</label>
            <label>
            <input type="text" placeholder="Enter rate per km" />
            </label>
            <label>Minimum Delivery Fee</label>
            <label><input type="text" placeholder="Enter minimum fee" /></label>

            <label>Maximum Distance</label>
            <label><input type="text" placeholder="Enter maximum distance" /></label>

            <label>Maximum Weight</label>
            <label><input type="text" placeholder="Enter maximum weight" /></label>

            <div class="form-buttons">
                <button type="button" class="cancel-btn">Cancel</button>
                <button type="submit" class="save-btn">Set</button>
            </div>
        </form>
    </div>
</main>

</body>
</html>