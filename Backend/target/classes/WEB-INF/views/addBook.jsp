<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>Add Book</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2>Add Book</h2>

<form action="/saveBook" method="post">

    <input type="text"
           name="title"
           class="form-control mb-3"
           placeholder="Book Title">

    <input type="text"
           name="author"
           class="form-control mb-3"
           placeholder="Author">

    <input type="text"
           name="category"
           class="form-control mb-3"
           placeholder="Category">

    <input type="number"
       name="totalQuantity"
       class="form-control mb-3"
       placeholder="Total Books">

    <button type="submit">Save Book</button>

</form>

</div>

</body>
</html>