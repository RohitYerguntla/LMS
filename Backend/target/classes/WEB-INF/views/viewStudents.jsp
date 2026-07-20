<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>
<title>Students</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>
<body>

<div class="container mt-5">

<h2>All Students</h2>

<a href="/addStudent"
   class="btn btn-primary mb-3">
   Add Student
</a>

<table class="table table-bordered">

<thead class="table-dark">
<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>Action</th>
</tr>
</thead>

<tbody>

<c:forEach items="${students}" var="student">

<tr>
    <td>${student.id}</td>
    <td>${student.name}</td>
    <td>${student.email}</td>
    <td>${student.mobile}</td>

    <td>

        <a href="/editStudent/${student.id}"
           class="btn btn-warning btn-sm">
            Edit
        </a>

        <a href="/deleteStudent/${student.id}"
           class="btn btn-danger btn-sm"
           onclick="return confirm('Delete Student?')">
            Delete
        </a>

    </td>
</tr>

</c:forEach>

</tbody>

</table>

</div>

</body>
</html>