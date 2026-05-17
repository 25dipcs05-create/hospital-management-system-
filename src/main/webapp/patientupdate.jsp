<!DOCTYPE html>
<html>
<head>
<title>Update Patient</title>

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
    background: #007bff;
    color: white;
}
</style>

</head>
<body>

<div class="container">
<h2>Update Patient</h2>

<form action="updatePatient" method="post">

<input type="number" name="patientID" placeholder="Patient ID (required)" required>

<input type="text" name="patientName" placeholder="Name">

<input type="number" name="age" placeholder="Age">

<select name="gender">
    <option value="">Select Gender</option>
    <option>Male</option>
    <option>Female</option>
</select>

<input type="date" name="admissionDate">

<input type="text" name="ailment" placeholder="Ailment">

<input type="text" name="assignedDoctor" placeholder="Doctor">

<button type="submit">Update Patient</button>

</form>

</div>

</body>
</html>