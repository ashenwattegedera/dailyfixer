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
            <li><a href="#" class="active">Delivery Requests</a></li>
            <li><a href="delivery_status.jsp">Update Status</a></li>
            <li><a href="delivery_rates.jsp">Rates</a></li>
            <li><a href="delivery_profile.jsp">My Profile</a></li>
        </ul>
    </nav>
</header>

<main class="container">
    <h2>Delivery Requests</h2>
    <div class="card">
        <h3>Order 001</h3>
        <div class="details-grid">
            <p><strong>Customer :</strong> Kamal Silva</p>
            <p><strong>Phone :</strong> +94 70 234 5678</p>
            <p><strong>Pickup :</strong> MyStore, Pettah</p>
            <p><strong>Store Contact :</strong> 011 234 7567</p>
            <p><strong>Dropoff :</strong> 123 Main Street, Colombo</p>
        </div>
        <button class="accept-btn" onclick="acceptDelivery('Order 001')">Accept Delivery</button>
    </div>

    <div class="card">
        <h3>Order 002</h3>
        <div class="details-grid">
            <p><strong>Customer :</strong> Amal Bandara</p>
            <p><strong>Phone :</strong> +94 77 987 3218</p>
            <p><strong>Pickup :</strong> Handy, Dehiwala</p>
            <p><strong>Store Contact :</strong> 011 786 5467</p>
            <p><strong>Dropoff :</strong> 45, Lili Road, Colombo</p>
        </div>
        <button class="accept-btn" onclick="acceptDelivery('Order 002')">Accept Delivery</button>
    </div>
</main>

<script>
    function acceptDelivery(orderId) {
        alert(orderId + " has been accepted!");
    }
</script>
</body>
</html>