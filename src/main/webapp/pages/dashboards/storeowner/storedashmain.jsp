<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Store Dashboard - Daily Fixer</title>
    <link rel="stylesheet" href="../../../assets/css/storedash.css">
</head>
<body>
<header>
    <!-- Main Navbar -->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../Home page/index.html">Home</a></li>
            <li><a href="#">Log in</a></li>
        </ul>
    </nav>

    <!-- Subnav -->
    <nav class="subnav">
        <div class="store-name">MyStore</div>
        <ul>
            <li><a href="dashboard.html" class="active">Dashboard</a></li>
            <li><a href="product_listing.html">Product Listings</a></li>
            <li><a href="new_products.html">Add New Items</a></li>
            <li><a href="view_orders.html">View Orders</a></li>
            <li><a href="profile.html">My Profile</a></li>
        </ul>
    </nav>
</header>

<div class="container">
    <main>
        <h2>Store Dashboard</h2>

        <!-- Summary Cards -->
        <div class="summary-cards">
            <div class="card">
                <h3>120</h3>
                <p>Total Products</p>
            </div>
            <div class="card">
                <h3>45</h3>
                <p>Total Orders</p>
            </div>
            <div class="card">
                <h3>5</h3>
                <p>Pending Orders</p>
            </div>
            <div class="card">
                <h3>3</h3>
                <p>Low Stock Items</p>
            </div>
        </div>

        <!-- Two-column section -->
        <div class="dashboard-grid">
            <!-- Recent Orders -->
            <div class="dashboard-section">
                <h3>Recent Orders</h3>
                <table>
                    <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Status</th>
                        <th>Total</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>#1001</td>
                        <td>Sachini</td>
                        <td>Pending</td>
                        <td>LKR 2,500</td>
                    </tr>
                    <tr>
                        <td>#1002</td>
                        <td>Nimal</td>
                        <td>Shipped</td>
                        <td>LKR 1,100</td>
                    </tr>
                    </tbody>
                </table>
                <button class="view-all" onclick="goToViewOrders()">View All Orders</button>
            </div>

            <!-- Low Stock & Best Sellers -->
            <div class="dashboard-section">
                <h3>Low Stock Items</h3>
                <ul>
                    <li>Screwdriver (Stock: 3)</li>
                    <li>Paint Roller (Stock: 2)</li>
                </ul>

                <h3>Best Sellers</h3>
                <ul>
                    <li>Duct Tape - 120 sold</li>
                    <li>Paint Roller - 80 sold</li>
                </ul>
            </div>
        </div>
    </main>
</div>
<script>
    function goToViewOrders() {
        // Replace 'find_delivery.html' with the actual page you want
        window.location.href = "view_orders.html";
    }
</script>
</body>
</html>
