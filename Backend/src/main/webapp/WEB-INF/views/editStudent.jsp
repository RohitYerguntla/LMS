<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>
<body>

<div class="container mt-5">

<h2>Edit Student</h2>

<form action="/updateStudent" method="post">

    <input type="hidden"
           name="id"
           value="${student.id}">

    <input type="text"
           name="name"
           value="${student.name}"
           class="form-control mb-3">

    <input type="email"
           name="email"
           value="${student.email}"
           class="form-control mb-3">

    <input type="text"
           name="mobile"
           value="${student.mobile}"
           class="form-control mb-3">

    <input type="text"
           name="password"
           value="${student.password}"
           class="form-control mb-3">

    <button class="btn btn-success">
        Update Student
    </button>

</form>

</div>

</body>
</html>