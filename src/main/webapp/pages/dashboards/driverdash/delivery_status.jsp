<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store Dashboard - Daily Fixer</title>
    <link rel="stylesheet" href="../../../assets/css/delivery_status.css">
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
            <li><a href="#"  class="active">Update Status</a></li>
            <li><a href="#">Rates</a></li>
            <li><a href="#">My Profile</a></li>
        </ul>
    </nav>
</header>

<main class="container">
    <h2>Active Deliveries - Update Status</h2>

    <!-- Order Card 1 -->
    <div class="order-card" id="card1">
        <div class="order-header">
            <h3>Order 001</h3>
            <div class="status-badge picked-up" id="badge1">Picked Up</div>
        </div>
        <div class="order-details">
            <div>
                <p><strong>Customer :</strong> Kamal Silva</p>
                <p><strong>Phone :</strong> +94 70 234 5678</p>
            </div>
            <div>
                <p><strong>Pickup :</strong> MyStore, Pettah</p>
                <p><strong>Store Contact :</strong> 011 234 7567</p>
                <p><strong>Dropoff :</strong> 123 Main Street, Colombo</p>
            </div>
        </div>
        <form class="status-form" id="form1">
            <label for="status1">Update Status :</label>
            <select id="status1">
                <option value="Picked Up" selected>Picked Up</option>
                <option value="In Transit">In Transit</option>
                <option value="Delivered">Delivered</option>
            </select>
            <button type="submit">Update</button>
        </form>
    </div>

    <!-- Order Card 2 -->
    <div class="order-card" id="card2">
        <div class="order-header">
            <h3>Order 002</h3>
            <div class="status-badge in-transit" id="badge2">In Transit</div>
        </div>
        <div class="order-details">
            <div>
                <p><strong>Customer :</strong> Amal Bandara</p>
                <p><strong>Phone :</strong> +94 77 987 3218</p>
            </div>
            <div>
                <p><strong>Pickup :</strong> Handy, Dehiwala</p>
                <p><strong>Store Contact :</strong> 011 786 5467</p>
                <p><strong>Dropoff :</strong> 45, Lili Road, Colombo</p>
            </div>
        </div>
        <form class="status-form" id="form2">
            <label for="status2">Update Status :</label>
            <select id="status2">
                <option value="Picked Up">Picked Up</option>
                <option value="In Transit" selected>In Transit</option>
                <option value="Delivered">Delivered</option>
            </select>
            <button type="submit">Update</button>
        </form>
    </div>

</main>

<script>
    document.getElementById("form1").addEventListener("submit", function(event) {
        event.preventDefault();
        updateStatus("status1", "badge1");
    });

    document.getElementById("form2").addEventListener("submit", function(event) {
        event.preventDefault();
        updateStatus("status2", "badge2");
    });


    function updateStatus(selectId, badgeId) {
        const status = document.getElementById(selectId).value;
        const badge = document.getElementById(badgeId);

        badge.textContent = status;

        badge.classList.remove("picked-up", "in-transit", "delivered");

        switch (status) {
            case "Picked Up":
                badge.classList.add("picked-up");
                break;
            case "In Transit":
                badge.classList.add("in-transit");
                break;
            case "Delivered":
                badge.classList.add("delivered");
                break;
        }
    }

</script>
</body>
</html>