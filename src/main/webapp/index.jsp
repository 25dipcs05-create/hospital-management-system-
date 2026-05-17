<!DOCTYPE html>
<html>
<head>
<title>Hospital Dashboard</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(to right, #4facfe, #00f2fe);
    margin: 0;
}

.container {
    text-align: center;
    padding: 50px;
}

h1 {
    color: white;
}

.menu {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
}

.card {
    background: white;
    width: 220px;
    margin: 15px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
}

.card h3 {
    margin-bottom: 15px;
}

.card a {
    text-decoration: none;
    background: #4facfe;
    color: white;
    padding: 10px 15px;
    border-radius: 5px;
}
</style>

</head>
<body>

<div class="container">
    <h1>🏥 Hospital Management System</h1>

    <div class="menu">
        <div class="card">
            <h3>Add Patient</h3>
            <a href="patientadd.jsp">Open</a>
        </div>

        <div class="card">
            <h3>Update Patient</h3>
            <a href="patientupdate.jsp">Open</a>
        </div>

        <div class="card">
            <h3>Delete Patient</h3>
            <a href="patientdelete.jsp">Open</a>
        </div>

        <div class="card">
            <h3>View Patients</h3>
            <a href="patientdisplay">Open</a>
        </div>

        <div class="card">
            <h3>Reports</h3>
            <a href="reports.jsp">Open</a>
        </div>
    </div>
</div>

</body>
</html>