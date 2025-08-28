<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Fixer</title>
    <!-- Link to external stylesheet -->
    <link rel="stylesheet" href="../../assets/css/diagnostic.css">
</head>
<body>
<header>

    <!-- Main Navbar -->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../../index.jsp">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Log in</a></li>
        </ul>
    </nav>

    <!-- Rounded Subnav -->
    <div class="subnav">
        <a href="#" class="active">Diagnose Now</a>
        <a href="../findtechnician/findtechmain.jsp">Find a Technician</a>
        <a href="../guide_view/guidehome.jsp">View Repair Guides</a>
        <a href="../store/store.jsp">Stores</a>
    </div>
</header>

<main class="container">
    <h2 class="page-title">Diagnostics</h2>
    <div class="search-section">
        <h3 class="issue-title">What's the issue?</h3>
        <div class="search-box">
            <label for="search" class="sr-only">Search for an issue</label>
            <input type="text" id="search" placeholder="Search for an issue">
            <button>
                <img src="../../assets/images/pictures/search.png" alt="Search">
            </button>
        </div>
        <p class="instruction-text">Select the Category that best describes your problem. We'll guide you through the Steps to identify the exact issue and find a solution</p>
    </div>

    <div class="tabs">
        <button class="tab-button active" id="home-tab">Home</button>
        <button class="tab-button" id="vehicle-tab">Vehicle</button>
    </div>

    <div class="category-section" id="category-container">
        <h4 class="category-header">Select a Category</h4>

        <!-- Home Categories -->
        <div class="category-grid active-category-grid" id="home-categories">
            <a href="electrical-repairs.html" class="category-item">
                <div class="category-icon">
                    <img src="../../assets/images/pictures/electrical.jpg" alt="Electrical Repairs">
                </div>
                <p class="category-label">Electrical Repairs</p>
            </a>
            <a href="flooring.html" class="category-item">
                <div class="category-icon">
                    <img src="../../assets/images/pictures/flooring.jpg" alt="Flooring">
                </div>
                <p class="category-label">Flooring</p>
            </a>
            <a href="plumbing.html" class="category-item">
                <div class="category-icon">
                    <img src="../../assets/images/pictures/plumbing.jpg" alt="Plumbing">
                </div>
                <p class="category-label">Plumbing</p>
            </a>
            <a href="roofing-guttering.html" class="category-item">
                <div class="category-icon">
                    <img src="../../assets/images/pictures/roofing.jpg" alt="Roofing & Guttering">
                </div>
                <p class="category-label">Roofing & Guttering</p>
            </a>
            <a href="painting-wall-repairs.html" class="category-item">
                <div class="category-icon">
                    <img src="../../assets/images/pictures/wall repair.jpg" alt="Painting & Wall Repairs">
                </div>
                <p class="category-label">Painting & Wall Repairs</p>
            </a>
            <a href="furniture-repair.html" class="category-item">
                <div class="category-icon">
                    <img src="../../assets/images/pictures/furniture.jpg" alt="Furniture Repair & Assembly">
                </div>
                <p class="category-label">Furniture Repair & Assembly</p>
            </a>
        </div>

        <!-- Vehicle Categories -->
        <div class="category-grid hidden-category-grid" id="vehicle-categories">
            <a href="engine.html" class="category-item">
                <div class="category-image">
                    <img src="../../assets/images/pictures/engine.jpg" alt="Engine">
                </div>
                <p class="category-label">Engine</p>
            </a>
            <a href="brakes.html" class="category-item">
                <div class="category-image">
                    <img src="../../assets/images/pictures/brakes.jpg" alt="Brakes">
                </div>
                <p class="category-label">Brakes</p>
            </a>
            <a href="electrical-vehicle.html" class="category-item">
                <div class="category-image">
                    <img src="../../assets/images/pictures/electric.jpg" alt="Electrical">
                </div>
                <p class="category-label">Electrical</p>
            </a>
            <a href="tires.html" class="category-item">
                <div class="category-image">
                    <img src="../../assets/images/pictures/tire.jpg" alt="Tires">
                </div>
                <p class="category-label">Tires</p>
            </a>
            <a href="suspension.html" class="category-item">
                <div class="category-image">
                    <img src="../../assets/images/pictures/suspension.jpg" alt="Suspension">
                </div>
                <p class="category-label">Suspension</p>
            </a>
        </div>
    </div>

</main>
<script>
    document.addEventListener('DOMContentLoaded', function() {
        const homeTab = document.getElementById('home-tab');
        const vehicleTab = document.getElementById('vehicle-tab');
        const homeCategories = document.getElementById('home-categories');
        const vehicleCategories = document.getElementById('vehicle-categories');

        // Function to handle tab switching
        function switchTab(activeTab, inactiveTab, activeGrid, inactiveGrid) {
            // Update tab button styles
            activeTab.classList.add('active');
            inactiveTab.classList.remove('active');

            // Toggle category grid visibility
            activeGrid.classList.remove('hidden-category-grid');
            inactiveGrid.classList.add('hidden-category-grid');
        }

        // Event listener for the Home tab
        homeTab.addEventListener('click', function() {
            switchTab(homeTab, vehicleTab, homeCategories, vehicleCategories);
        });

        // Event listener for the Vehicle tab
        vehicleTab.addEventListener('click', function() {
            switchTab(vehicleTab, homeTab, vehicleCategories, homeCategories);
        });
    });
</script>
</body>
</html>