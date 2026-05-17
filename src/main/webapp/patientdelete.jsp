<!DOCTYPE html>
<html>
<head>
<title>Delete Patient</title>
<style>
body { font-family: Arial; background: #f4f6f9; }
.container {
    width: 400px;
    margin: auto;
    margin-top: 50px;
    background: white;
    padding: 30px;
}
input { width:100%; padding:10px; margin:10px 0; }
button { width:100%; padding:10px; background:red; color:white; }
</style>
</head>

<body>
<div class="container">
<h2>Delete Patient</h2>

<form action="deletePatient" method="post">
<input type="number" name="patientID" placeholder="Enter ID" required>
<button type="submit">Delete</button>
</form>

</div>
</body>
</html>