<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store Dashboard - Daily Fixer</title>
    <link rel="stylesheet" href="../../../assets/css/delivery_profile.css">
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
            <li><a href="delivery_requests.jsp" >Delivery Requests</a></li>
            <li><a href="delivery_status.jsp">Update Status</a></li>
            <li><a href="delivery_rates.jsp">Rates</a></li>
            <li><a href="#" class="active">My Profile</a></li>
        </ul>
    </nav>
</header>

<main class="profile-container">
    <div class="profile-card">
        <div class="profile-info">
            <div class="avatar">
                <img src="../../../assets/images/pictures/profile_plumber.jpg" alt="delivery driver">
            </div>
            <div class="name-role">
                <h3 id="driverName">Ajith Perera</h3>
                <p id="driverRole">Delivery Driver</p>
                <button class="edit-btn" onclick="window.location.href='edit_profile.html'">Edit Profile</button>
            </div>
        </div>

        <div class="vehicle-section">
            <h4>Vehicle Details</h4>
            <table>
                <tr><td>Vehicle Type</td><td id="vehicleType">Motorcycle</td></tr>
                <tr><td>Make</td><td id="vehicleMake">Honda</td></tr>
                <tr><td>Model</td><td id="vehicleModel">Honda CBR150R</td></tr>
                <tr><td>License plate</td><td id="licensePlate">ABC-1234</td></tr>
            </table>

            <h4 style="margin-top: 20px;">Vehicle Documents</h4>
            <table>
                <tr>
                    <td>Vehicle Registration</td>
                    <td><span class="badge approved">Approved</span></td>
                </tr>
                <tr>
                    <td>Vehicle Insurance</td>
                    <td><span class="badge approved">Approved</span></td>
                </tr>
            </table>
        </div>
    </div>
</main>

<script>
    // Load values from localStorage
    document.getElementById("driverName").textContent = localStorage.getItem("driverName") || "Ajith Perera";
    document.getElementById("driverRole").textContent = localStorage.getItem("driverRole") || "Delivery Driver";
    document.getElementById("vehicleType").textContent = localStorage.getItem("vehicleType") || "Motorcycle";
    document.getElementById("vehicleMake").textContent = localStorage.getItem("vehicleMake") || "Honda";
    document.getElementById("vehicleModel").textContent = localStorage.getItem("vehicleModel") || "Honda CBR150R";
    document.getElementById("licensePlate").textContent = localStorage.getItem("licensePlate") || "ABC-1234";
</script>

</body>
</html>