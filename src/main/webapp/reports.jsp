<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Reports Dashboard</title>

<style>
body {
    font-family: Arial;
    background: linear-gradient(to right, #4facfe, #00f2fe);
    margin: 0;
}

.container {
    width: 80%;
    margin: auto;
    text-align: center;
    padding-top: 50px;
}

h1 {
    color: white;
}

.card {
    background: white;
    padding: 20px;
    margin: 20px;
    border-radius: 10px;
    display: inline-block;
    width: 250px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
}

.card h3 {
    margin-bottom: 15px;
}

.btn {
    padding: 10px 20px;
    background: #4facfe;
    color: white;
    border: none;
    border-radius: 5px;
    text-decoration: none;
}

.btn:hover {
    background: #007bff;
}
</style>

</head>
<body>

<div class="container">
    <h1>📊 Hospital Reports</h1>

    <div class="card">
        <h3>Patients by Date</h3>
        <a href="report_form.jsp?type=date" class="btn">View</a>
    </div>

    <div class="card">
        <h3>Patients by Ailment</h3>
        <a href="report_form.jsp?type=ailment" class="btn">View</a>
    </div>

    <div class="card">
        <h3>Patients by Doctor</h3>
        <a href="report_form.jsp?type=doctor" class="btn">View</a>
    </div>

</div>

</body>
</html>