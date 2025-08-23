<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daily Fixer</title>
    <!-- Link to external stylesheet -->
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<header>

    <!-- Main Navbar -->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="#" class="active">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#services">Services</a></li>
            <li><a href="pages/shared/login.jsp">Log in</a></li>
        </ul>
    </nav>

    <!-- Rounded Subnav -->
    <div class="subnav">
        <a href="diagnostic.html">Diagnose Now</a>
        <a href="#">Find a Technician</a>
        <a href="pages/guides/guidehome.jsp">View Repair Guides</a>
        <a href="pages/store/store.jsp">Stores</a>
    </div>
</header>
<section class="hero">
    <div class="hero-content">
        <h1>For all the little jobs that matter big</h1>
        <p>Search for common issues or browse our repair guides</p>
        <div class="search-box">
            <input type="text" placeholder="search for a repair">
            <button>
                <img src="assets/images/pictures/search.png" alt="Search">
            </button>
        </div>
    </div>
</section>

<div class="container">
    <section class="guides">
        <h2>Featured Guides</h2>
        <div class="guide-cards">
            <a href="faucet.html" class="card">
                <img src="assets/images/pictures/faucet.jpg" alt="">
                <p><strong>How to Fix a Leaky Faucet</strong><br>Step-by-step guide to fixing a leaky faucet.</p>
            </a>

            <a href="engine.html" class="card">
                <img src="assets/images/pictures/engine.jpg" alt="">
                <p><strong>Engine Maintenance Basics</strong><br>Learn simple engine maintenance tasks.</p>
            </a>

            <a href="electrical.html" class="card">
                <img src="assets/images/pictures/electrical.jpg" alt="">
                <p><strong>Safe home electrical repairs</strong><br>Keep your family safe performing electrical repairs.</p>
            </a>

            <a href="bicycle.html" class="card">
                <img src="assets/images/pictures/bicycle.jpg" alt="">
                <p><strong>Bike Tire Replacement Guide</strong><br>Easy step-by-step instructions for replacing bike tires.</p>
            </a>
        </div>
    </section>

    <!-- About Us -->
    <section class="about" id="about">
        <h2>About Us</h2>
        <div class="about-content">
            <div class="about-text">
                <p>At Daily Fixer, we believe that every problem—no matter how big or small—has a solution. Our mission is to make life easier for people across Sri Lanka by providing a trusted, all-in-one platform for diagnosing, understanding, and fixing issues related to your home, vehicles, and everyday tools.</p>
                <p>Whether you’re a DIY enthusiast who enjoys tackling repairs on your own or someone who prefers the help of a skilled technician, Daily Fixer is designed to support you at every step. Our platform offers easy-to-follow step-by-step guides, a curated list of reliable service providers, and insights into common issues and their solutions, so you can make informed decisions with confidence.</p>
                <p>We’re more than just a platform for quick fixes, we’re here to empower users. We want you to understand the repair process, learn practical skills, and take control of maintaining your home and vehicles. From troubleshooting appliances and electronics to vehicle maintenance and minor repairs, we provide resources that make the process smarter, faster, and more reliable.</p>
                <p>At Daily Fixer, our goal is to connect communities, knowledge, and expertise. By combining technology with a local network of trusted professionals, we ensure that help is always within reach whether it’s a simple repair, a maintenance tip, or connecting with an expert nearby.</p>
                <p>We’re committed to being more than just a service. We’re your partner in making everyday life smoother. By bringing together knowledge, tools, and trusted experts, Daily Fixer ensures that whether it’s a minor hiccup or a major repair, you’re never alone. With us, every problem has a solution, and support is always just a click away.</p>
                <p>Join us in making repairs stress-free, accessible, and empowering. With Daily Fixer, solving everyday problems is not just possible—it’s easier than ever before.</p>
            </div>
            <div class="about-images">
                <img src="assets/images/pictures/car.jpg" alt="">
                <img src="assets/images/pictures/painter.jpg" alt="">
            </div>
        </div>
    </section>

    <section class="services" id="services">
        <div class="services-img">
            <img src="assets/images/pictures/Handyman.png" alt="Technician Smiling" />
        </div>
        <div class="services-list">
            <h2>Our Services</h2>
            <button>Diagnose problems through a guided flow</button>
            <button>Learn safe first steps to take</button>
            <button>Contribute your own repair tips to help others</button>
            <button>Connect with a trusted technician</button>
            <button>Find nearby stores for spare parts</button>
            <button>Access clear repair solutions (in English & Sinhala)</button>
        </div>
    </section>

    <section class="cta">
        <h2>Not sure where to start?</h2>
        <p>Try our smart diagnostics tool to pinpoint the issue and find the right solution.</p>
        <a href="sign-Up.html" class="cta-btn">Get Started</a>
    </section>
</body>
</html>