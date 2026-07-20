<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Edit Book</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>
<body>

<div class="container mt-5">

<h2>Edit Book</h2>

<form action="/updateBook" method="post">

    <input type="hidden"
           name="id"
           value="${book.id}">

    <input type="text"
           name="title"
           value="${book.title}"
           class="form-control mb-3">

    <input type="text"
           name="author"
           value="${book.author}"
           class="form-control mb-3">

    <input type="text"
           name="category"
           value="${book.category}"
           class="form-control mb-3">

    <input type="number"
           name="totalQuantity"
           value="${book.totalQuantity}"
           class="form-control mb-3">

    <button class="btn btn-success">
        Update Book
    </button>

</form>

</div>

</body>
</html>