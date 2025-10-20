<%@ page contentType="text/html;charset=UTF-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <title>DailyFixer — Order History</title>
    <link rel="stylesheet" href="../../assets/css/history.css">
</head>
<body>

<!-- Header -->
<header>
    <!-- Main Navbar -->
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../../index.jsp">Home</a></li>
            <li><a href="../../index.jsp#about">About</a></li>
            <li><a href="../../index.jsp#services">Services</a></li>
            <li><a href="../shared/login.jsp">Log in</a></li>
        </ul>
    </nav>

    <!-- Sub-nav -->
    <div class="sub-nav">
        <a href="../DiagnosticTool/diagnostic.jsp">Diagnose Now</a>
        <a href="../findtechnician/findtechmain.jsp">Find a Technician</a>
        <a href="../guides/guidehome.jsp">View Repair Guides</a>
        <a href="../store/store.jsp" class="active">Stores</a>
    </div>
</header>

<div class="container">
    <div class="page-head">
        <h2>Order History</h2>
        <div class="controls">
            <div class="search">
                <input id="orderSearch" class="input" type="text" placeholder="Search orders, packages, customer..." oninput="filterOrders()">
            </div>
            <select id="statusFilter" class="input" onchange="filterOrders()">
                <option value="">All statuses</option>
                <option value="PENDING">Pending</option>
                <option value="IN_PROGRESS">In Progress</option>
                <option value="COMPLETED">Completed</option>
                <option value="CANCELLED">Cancelled</option>
            </select>
            <button class="btn" onclick="toggleView()">Toggle View</button>
        </div>
    </div>

    <!-- Card Grid -->
    <div id="cardView" class="card-grid">
        <!-- SAMPLE CARD 1 -->
        <div class="history-card" data-status="COMPLETED" data-search="ORD-3001 Amara Plumbing visit drain cleaning">
            <div class="card-row">
                <div>
                    <div style="font-weight:800;">Order #ORD-3001</div>
                    <div class="small">By Amara • <span class="small">Service</span></div>
                </div>
                <div style="text-align:right;">
                    <div class="small">Rs 2,400</div>
                    <div class="small">2025-09-28</div>
                </div>
            </div>
            <div class="card-row" style="margin-top:12px;">
                <div>
                    <span class="status completed">COMPLETED</span>
                    <div class="small" style="margin-top:6px;">Service: Drain cleaning (1-hour visit)</div>
                </div>
                <div style="display:flex; gap:8px; align-items:center;">
                    <a class="btn" href="#">View</a>
                    <a class="btn ghost" href="#">Invoice</a>
                </div>
            </div>
        </div>

        <!-- SAMPLE CARD 2 -->
        <div class="history-card" data-status="PENDING" data-search="ORD-3002 Roshan AC servicing subscription quarterly">
            <div class="card-row">
                <div>
                    <div style="font-weight:800;">Order #ORD-3002</div>
                    <div class="small">By Roshan • <span class="small">Subscription</span></div>
                </div>
                <div style="text-align:right;">
                    <div class="small">Rs 6,000</div>
                    <div class="small">2025-10-19</div>
                </div>
            </div>
            <div class="card-row" style="margin-top:12px;">
                <div>
                    <span class="status pending">PENDING</span>
                    <div class="small" style="margin-top:6px;">Package: Quarterly AC maintenance</div>
                </div>
                <div style="display:flex; gap:8px; align-items:center;">
                    <a class="btn" href="#">View</a>
                    <a class="btn ghost" href="#">Invoice</a>
                </div>
            </div>
        </div>

        <!-- SAMPLE CARD 3 -->
        <div class="history-card" data-status="IN_PROGRESS" data-search="ORD-3003 Nadeesha Home deep cleaning package">
            <div class="card-row">
                <div>
                    <div style="font-weight:800;">Order #ORD-3003</div>
                    <div class="small">By Nadeesha • <span class="small">Service</span></div>
                </div>
                <div style="text-align:right;">
                    <div class="small">Rs 4,100</div>
                    <div class="small">2025-10-18</div>
                </div>
            </div>
            <div class="card-row" style="margin-top:12px;">
                <div>
                    <span class="status inprogress">IN_PROGRESS</span>
                    <div class="small" style="margin-top:6px;">Package: Deep home cleaning (3 rooms)</div>
                </div>
                <div style="display:flex; gap:8px; align-items:center;">
                    <a class="btn" href="#">View</a>
                    <a class="btn ghost" href="#">Invoice</a>
                </div>
            </div>
        </div>

        <!-- SAMPLE CARD 4 -->
        <div class="history-card" data-status="COMPLETED" data-search="ORD-3004 Saman Sealant tube household repair">
            <div class="card-row">
                <div>
                    <div style="font-weight:800;">Order #ORD-3004</div>
                    <div class="small">By Saman • <span class="small">Consumable</span></div>
                </div>
                <div style="text-align:right;">
                    <div class="small">Rs 950</div>
                    <div class="small">2025-10-02</div>
                </div>
            </div>
            <div class="card-row" style="margin-top:12px;">
                <div>
                    <span class="status completed">COMPLETED</span>
                    <div class="small" style="margin-top:6px;">Item: Silicone sealant (tube)</div>
                </div>
                <div style="display:flex; gap:8px; align-items:center;">
                    <a class="btn" href="#">View</a>
                    <a class="btn ghost" href="#">Invoice</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Table View -->
    <div id="tableView" class="table-wrap" style="display:none; margin-top:20px;">
        <table class="table">
            <thead>
            <tr>
                <th>Order #</th><th>Customer</th><th>Type</th><th>Total</th><th>Date</th><th>Status</th><th>Action</th>
            </tr>
            </thead>
            <tbody>
            <tr data-status="COMPLETED">
                <td>ORD-3001</td><td>Amara</td><td>Plumbing (service)</td><td>2,400</td><td>2025-09-28</td>
                <td><span class="status completed">COMPLETED</span></td>
                <td><a class="btn" href="#">View</a></td>
            </tr>
            <tr data-status="PENDING">
                <td>ORD-3002</td><td>Roshan</td><td>AC subscription</td><td>6,000</td><td>2025-10-19</td>
                <td><span class="status pending">PENDING</span></td>
                <td><a class="btn" href="#">View</a></td>
            </tr>
            <tr data-status="IN_PROGRESS">
                <td>ORD-3003</td><td>Nadeesha</td><td>Cleaning package</td><td>4,100</td><td>2025-10-18</td>
                <td><span class="status inprogress">IN_PROGRESS</span></td>
                <td><a class="btn" href="#">View</a></td>
            </tr>
            <tr data-status="COMPLETED">
                <td>ORD-3004</td><td>Saman</td><td>Sealant (consumable)</td><td>950</td><td>2025-10-02</td>
                <td><span class="status completed">COMPLETED</span></td>
                <td><a class="btn" href="#">View</a></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>

<script>
    let showingTable = false;
    function toggleView(){
        showingTable = !showingTable;
        document.getElementById('cardView').style.display = showingTable ? 'none' : 'grid';
        document.getElementById('tableView').style.display = showingTable ? 'block' : 'none';
    }

    function filterOrders(){
        const q = document.getElementById('orderSearch').value.toLowerCase().trim();
        const status = document.getElementById('statusFilter').value;
        document.querySelectorAll('#cardView .history-card').forEach(c=>{
            const s = c.getAttribute('data-status') || '';
            const text = (c.getAttribute('data-search') || c.innerText).toLowerCase();
            const matchQ = q === '' || text.indexOf(q) !== -1;
            const matchS = status === '' || status === s;
            c.style.display = (matchQ && matchS) ? '' : 'none';
        });
        document.querySelectorAll('#tableView tbody tr').forEach(r=>{
            const s = r.getAttribute('data-status') || '';
            const cellsText = r.innerText.toLowerCase();
            const matchQ = q === '' || cellsText.indexOf(q) !== -1;
            const matchS = status === '' || status === s;
            r.style.display = (matchQ && matchS) ? '' : 'none';
        });
    }
</script>

</body>
</html>
