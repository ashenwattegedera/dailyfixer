<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Upload Repair Guide - DailyFixer</title>
    <link rel="stylesheet" href="../../assets/css/writeguide.css">
</head>
<body>
<header>
    <nav class="navbar">
        <div class="logo">Daily Fixer</div>
        <ul class="nav-links">
            <li><a href="../../index.jsp">Home</a></li>
            <li><a href="../guide_view/guidehome.jsp">Back to Guides</a></li>
        </ul>
    </nav>
</header>

<div class="form-wrapper">
    <h2>Upload a New Repair Guide</h2>

    <form action="../../WriteGuideServlet" method="post" enctype="multipart/form-data">
        <label>Guide Title</label>
        <input type="text" name="title" required>

        <label>Category</label>
        <select name="category" id="category" required>
            <option value="">-- Select --</option>
            <option value="Home Appliances">Home Appliances</option>
            <option value="Vehicles">Vehicles</option>
        </select>

        <label>Subcategory</label>
        <select name="subcategory" id="subcategory" required>
            <option value="">-- Choose category first --</option>
        </select>

        <label>Short Description</label>
        <input type="text" name="shortDesc" maxlength="150">

        <label>Steps (Use new lines for each step)</label>
        <textarea name="steps" rows="8" required></textarea>

        <label>Cover Image</label>
        <input type="file" name="image">

        <button type="submit" class="btn">Publish Guide</button>
        <a href="guidehome.jsp" class="btn secondary">Cancel</a>
    </form>
</div>

<script>
    const subcats = {
        "Home Appliances": ["Washing Machine", "Refrigerator", "Microwave"],
        "Vehicles": ["Car", "Bike"]
    };

    document.getElementById("category").addEventListener("change", function() {
        const subs = subcats[this.value] || [];
        const subSelect = document.getElementById("subcategory");
        subSelect.innerHTML = subs.map(s => `<option value='${s}'>${s}</option>`).join('');
    });
</script>
</body>
</html>
