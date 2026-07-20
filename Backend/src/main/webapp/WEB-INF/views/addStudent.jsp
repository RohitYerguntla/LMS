<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>
<body>

<div class="container mt-5">

<h2>Add Student</h2>

<form action="/saveStudent" method="post">

    <input type="text" name="name"
           class="form-control mb-3"
           placeholder="Student Name">

    <input type="email" name="email"
           class="form-control mb-3"
           placeholder="Email">

    <input type="text" name="mobile"
           class="form-control mb-3"
           placeholder="Mobile">

    <input type="password" name="password"
           class="form-control mb-3"
           placeholder="Password">

    <button class="btn btn-primary">
        Save Student
    </button>

</form>

</div>

</body>
</html>