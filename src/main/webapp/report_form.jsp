<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Report Filter</title>

<style>
body {
    font-family: Arial;
    background: #f4f6f9;
}

.container {
    width: 400px;
    margin: auto;
    margin-top: 80px;
    background: white;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0px 5px 15px rgba(0,0,0,0.2);
}

input, select {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
}

button {
    width: 100%;
    padding: 10px;
    background: #28a745;
    color: white;
    border: none;
    border-radius: 5px;
}
</style>

</head>
<body>

<div class="container">

<h2>Generate Report</h2>

<%
String type = request.getParameter("type");
%>

<form action="ReportServlet" method="post">

<input type="hidden" name="type" value="<%=type%>">

<% if("date".equals(type)) { %>

<label>From Date:</label>
<input type="date" name="fromDate" required>

<label>To Date:</label>
<input type="date" name="toDate" required>

<% } else if("ailment".equals(type)) { %>

<label>Ailment:</label>
<input type="text" name="ailment" required>

<% } else if("doctor".equals(type)) { %>

<label>Doctor Name:</label>
<input type="text" name="doctor" required>

<% } %>

<button type="submit">Generate Report</button>

</form>

</div>

</body>
</html>