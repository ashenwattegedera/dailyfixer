<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choose Delivery Vehicle</title>
    <link rel="stylesheet" href="../../../assets/css/store_pick_vehicle.css">

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
            <li><a href="#">Dashboard</a></li>
            <li><a href="">Product Listings</a></li>
            <li><a href="">Add New Items</a></li>
            <li><a href="#" class="active">View Orders</a></li>
            <li><a href="#">My Profile</a></li>
        </ul>
    </nav>
</header>

<main class="container">
    <h2>Select a Delivery Vehicle</h2>
    <div class="filter-section">
        <label><input type="checkbox" value="Bike" class="vehicle-filter" checked> Bike</label>
        <label><input type="checkbox" value="Van" class="vehicle-filter" checked> Van</label>
        <label><input type="checkbox" value="Truck" class="vehicle-filter" checked> Truck</label>
    </div>

    <div class="delivery-options" id="deliveryOptions"></div>
</main>

<!-- Modal -->
<div class="modal" id="detailsModal">
    <div class="modal-content">
        <span class="close-btn" id="closeModal">&times;</span>
        <div class="modal-header">
            <img id="driverPhoto" src="" alt="Driver Photo">
            <div>
                <h3 id="driverName"></h3>
                <p id="driverContact"></p>
            </div>
        </div>
        <h4>Vehicle Details</h4>
        <div class="modal-details"><strong>Vehicle Type:</strong> <span id="vehicleType"></span></div>
        <div class="modal-details"><strong>Make:</strong> <span id="vehicleMake"></span></div>
        <div class="modal-details"><strong>Model:</strong> <span id="vehicleModel"></span></div>
        <div class="modal-details"><strong>License Plate:</strong> <span id="vehiclePlate"></span></div>
        <div class="modal-details"><strong>Max Capacity:</strong> <span id="vehicleCapacity"></span> kg</div>
        <div class="modal-details"><strong>Reviews:</strong> ★★★★☆</div>
        <button class="book-btn" id="bookModalBtn">Book This Vehicle</button>
    </div>
</div>

<script>
    // Mock data
    const allDeliveryPersons = [
        { name: 'Kamal', contact: '0771234567', vehicle: 'Bike', capacity: 5, driverPhoto: '../Home page/images/profile_plumber.jpg', vehiclePhoto: 'bike1.png', make: 'Honda', model: 'CBR150R', plate: 'ABC-123' },
        { name: 'Nimal', contact: '0779876543', vehicle: 'Van', capacity: 50, driverPhoto: 'driver2.png', vehiclePhoto: 'van1.png', make: 'Toyota', model: 'HiAce', plate: 'DEF-456' },
        { name: 'Saman', contact: '0771112222', vehicle: 'Truck', capacity: 200, driverPhoto: 'driver3.png', vehiclePhoto: 'truck1.png', make: 'Isuzu', model: 'F-Series', plate: 'GHI-789' },
        { name: 'Sunil', contact: '0773334444', vehicle: 'Bike', capacity: 5, driverPhoto: 'driver4.png', vehiclePhoto: 'bike2.png', make: 'Yamaha', model: 'R15', plate: 'JKL-012' },
        { name: 'Amal', contact: '0771234567', vehicle: 'Bike', capacity: 12, driverPhoto: '../Home page/images/profile_plumber.jpg', vehiclePhoto: 'bike1.png', make: 'Honda', model: 'CBR150R', plate: 'ABC-123' },
        { name: 'Dimal', contact: '0779876543', vehicle: 'Van', capacity: 30, driverPhoto: 'driver2.png', vehiclePhoto: 'van1.png', make: 'Toyota', model: 'HiAce', plate: 'DEF-456' },
        { name: 'Perera', contact: '0771112222', vehicle: 'Truck', capacity: 100, driverPhoto: 'driver3.png', vehiclePhoto: 'truck1.png', make: 'Isuzu', model: 'F-Series', plate: 'GHI-789' },
        { name: 'Nadun', contact: '0773334444', vehicle: 'Bike', capacity: 10, driverPhoto: 'driver4.png', vehiclePhoto: 'bike2.png', make: 'Yamaha', model: 'R15', plate: 'JKL-012' },
    ];

    // Render cards
    const deliveryOptions = document.getElementById('deliveryOptions');
    function renderDeliveryPersons(persons) {
        deliveryOptions.innerHTML = '';
        persons.forEach((p, index) => {
            const card = document.createElement('div');
            card.className = 'vehicle-card';
            card.innerHTML = `
            <div class="vehicle-info">
                <h4>${p.name}</h4>
                <p><strong>Vehicle:</strong> ${p.vehicle}</p>
                <p><strong>Max Capacity:</strong> ${p.capacity} kg</p>
            </div>
            <div>
                <button class="view-btn" data-index="${index}">View Details</button>
                <button class="book-btn">Book</button>
            </div>
        `;
            // Book button on card
            card.querySelector('.book-btn').addEventListener('click', () => {
                alert(`Delivery booked with ${p.name} (${p.vehicle})!`);
            });
            deliveryOptions.appendChild(card);
        });
    }
    renderDeliveryPersons(allDeliveryPersons);

    // Filter
    document.querySelectorAll('.vehicle-filter').forEach(cb => {
        cb.addEventListener('change', function() {
            const selectedTypes = Array.from(document.querySelectorAll('.vehicle-filter:checked')).map(c => c.value);
            renderDeliveryPersons(allDeliveryPersons.filter(p => selectedTypes.includes(p.vehicle)));
        });
    });

    // Modal logic
    const modal = document.getElementById('detailsModal');
    const closeModal = document.getElementById('closeModal');
    const driverPhoto = document.getElementById('driverPhoto');
    const driverName = document.getElementById('driverName');
    const driverContact = document.getElementById('driverContact');
    const vehicleType = document.getElementById('vehicleType');
    const vehicleMake = document.getElementById('vehicleMake');
    const vehicleModel = document.getElementById('vehicleModel');
    const vehiclePlate = document.getElementById('vehiclePlate');
    const vehicleCapacity = document.getElementById('vehicleCapacity');
    const bookModalBtn = document.getElementById('bookModalBtn');

    deliveryOptions.addEventListener('click', (e) => {
        if(e.target.classList.contains('view-btn')) {
            const index = e.target.dataset.index;
            const p = allDeliveryPersons[index];
            driverPhoto.src = p.driverPhoto;
            driverName.textContent = p.name;
            driverContact.textContent = p.contact;
            vehicleType.textContent = p.vehicle;
            vehicleMake.textContent = p.make;
            vehicleModel.textContent = p.model;
            vehiclePlate.textContent = p.plate;
            vehicleCapacity.textContent = p.capacity;
            bookModalBtn.onclick = () => alert(`Delivery booked with ${p.name} (${p.vehicle})!`);
            modal.style.display = 'block';
        }
    });

    closeModal.onclick = () => modal.style.display = 'none';
    window.onclick = (e) => { if(e.target==modal) modal.style.display = 'none'; }
</script>
</body>
</html>
