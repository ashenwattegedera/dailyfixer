<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Fixer</title>
    <!-- Link to external stylesheet -->
    <link rel="stylesheet" href="../../../assets/css/store_view_orders.css">
</head>
<body>
<header>

    <!-- Main Navbar -->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../../../index.jsp" class="active">Home</a></li>
            <li><a href="#">Log in</a></li>
        </ul>
    </nav>

    <!-- Rounded Subnav -->
    <nav class="subnav">
        <div class="store-name">MyStore</div>
        <ul>
            <li><a href="dashboard.html">Dashboard</a></li>
            <li><a href="product_listing.html">Product Listings</a></li>
            <li><a href="new_products.html">Add New Items</a></li>
            <li><a href="#" class="active">View Orders</a></li>
            <li><a href="#">My Profile</a></li>
        </ul>
    </nav>
</header>

<main class="container">
    <h2>Pick a Delivery Type</h2>

    <div class="form-container">
        <div class="form-section pickup-section">
            <h3>Pick Up</h3>
            <p>Your location:<br>55, Colombo<br>0771529834</p>
        </div>

        <div class="form-section drop-section">
            <h3>Drop</h3>
            <div class="input-group">
                <label for="name">Name</label>
                <input type="text" id="name">
            </div>
            <div class="input-group">
                <label for="contact">Contact Number</label>
                <input type="text" id="contact">
            </div>
            <div class="set-location-box">
                <button class="set-location-btn">Set Location</button>
            </div>
        </div>

        <div class="form-section item-section">
            <h3>Item Type</h3>
            <div class="input-group item-type-group" id="itemTypeSelect">
                <label id="selected-item-type">Electronics</label>
                <span class="dropdown-arrow">&gt;</span>
            </div>
            <div class="dropdown-menu hidden" id="itemTypeDropdown">
                <ul>
                    <li>Electronics</li>
                    <li>Vehicle Parts</li>
                    <li>Groceries</li>
                    <li>Documents</li>
                    <li>Apparel</li>
                    <li>Household Items</li>
                    <li>Other</li>
                </ul>
            </div>

            <div class="input-group weight-group">
                <label for="weight-value">Weight</label>
                <input type="number" id="weight-value" placeholder="Enter weight">
                <select id="weight-unit" name="weight-unit">
                    <option value="g">g</option>
                    <option value="kg">kg</option>
                    <option value="l">l</option>
                    <option value="ml">ml</option>
                </select>
            </div>
        </div>

        <div class="form-actions">
            <button class="btn go-back-btn" onclick="goToViewOrders()">Go Back</button>
            <button class="btn next-btn" onclick="pickDelivery()" >Next</button>
        </div>
    </div>
</main>
<script>

    document.addEventListener('DOMContentLoaded', function() {
        const itemTypeSelect = document.getElementById('itemTypeSelect');
        const itemTypeDropdown = document.getElementById('itemTypeDropdown');
        const selectedItemType = document.getElementById('selected-item-type');
        const listItems = itemTypeDropdown.querySelectorAll('li');

        // Toggle the dropdown menu on click
        itemTypeSelect.addEventListener('click', function() {
            itemTypeDropdown.classList.toggle('hidden');
        });

        // Handle selection of an item from the list
        listItems.forEach(item => {
            item.addEventListener('click', function(e) {
                e.stopPropagation(); // Prevents the click from closing the menu immediately

                // Update the displayed text
                selectedItemType.textContent = this.textContent;

                // Hide the dropdown menu
                itemTypeDropdown.classList.add('hidden');
            });
        });

        // Hide the dropdown when clicking outside of it
        document.addEventListener('click', function(e) {
            if (!itemTypeSelect.contains(e.target) && !itemTypeDropdown.contains(e.target)) {
                itemTypeDropdown.classList.add('hidden');
            }
        });
    });

    function goToViewOrders() {
        // Replace 'find_delivery.html' with the actual page you want
        window.location.href = "store_view_order.jsp";
    }

    function pickDelivery() {
        // Replace 'find_delivery.html' with the actual page you want
        window.location.href = "store_pick_vehicle.jsp" +
            "";
    }
</script>
</body>
</html>