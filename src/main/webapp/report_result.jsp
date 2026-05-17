<%@ page import="java.util.*, com.model.Patient"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
    width: 90%;
    margin: auto;
    border-collapse: collapse;
}

th, td {
    padding: 10px;
    border: 1px solid #ddd;
}

th {
    background: #007bff;
    color: white;
}
</style>
</head>

<body>

<h2 style="text-align:center;">Report Results</h2>

<table>
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Age</th>
    <th>Gender</th>
    <th>Date</th>
    <th>Ailment</th>
    <th>Doctor</th>
</tr>

<%
List<Patient> list = (List<Patient>) request.getAttribute("reportList");

if(list != null){
for(Patient p : list){
%>

<tr>
<td><%=p.getPatientID()%></td>
<td><%=p.getPatientName()%></td>
<td><%=p.getAge()%></td>
<td><%=p.getGender()%></td>
<td><%=p.getAdmissionDate()%></td>
<td><%=p.getAilment()%></td>
<td><%=p.getAssignedDoctor()%></td>
</tr>

<%
}}
%>

</table>

</body>
</html>