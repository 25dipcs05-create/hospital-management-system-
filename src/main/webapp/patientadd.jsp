<!DOCTYPE html>
<html>
<head>
<title>Add Patient</title>

<style>
body { font-family: Arial; background: #f4f6f9; }
.container {
    width: 400px;
    margin: auto;
    margin-top: 50px;
    background: white;
    padding: 30px;
    border-radius: 10px;
}
input, select {
    width: 100%;
    padding: 10px;
    margin: 8px 0;
}
button {
    width: 100%;
    padding: 10px;
    background: #28a745;
    color: white;
}
</style>

</head>
<body>

<div class="container">
<h2>Add Patient</h2>

<form action="addPatient" method="post">
<input type="number" name="patientID" placeholder="ID" required>
<input type="text" name="patientName" placeholder="Name" required>
<input type="number" name="age" placeholder="Age" required>

<select name="gender">
<option>Male</option>
<option>Female</option>
</select>

<input type="date" name="admissionDate" required>
<input type="text" name="ailment" placeholder="Ailment">
<input type="text" name="assignedDoctor" placeholder="Doctor">

<button type="submit">Add Patient</button>
</form>

</div>

</body>
</html>