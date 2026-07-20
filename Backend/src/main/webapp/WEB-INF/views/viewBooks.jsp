<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>

<title>View Books</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>

<body>

<div class="container mt-5">

    <h2 class="mb-4">All Books</h2>

    <a href="/addBook" class="btn btn-primary mb-3">
        Add New Book
    </a>

    <table class="table table-bordered table-striped">

        <thead class="table-dark">

            <tr>
    			<th>ID</th>
    			<th>Title</th>
    			<th>Author</th>
    			<th>Category</th>

    			<th>Total Books</th>
    			<th>Issued Books</th>
    			<th>Available Books</th>

    			<th>Action</th>
			</tr>

        </thead>

        <tbody>

            <c:forEach items="${books}" var="book">

                <tr>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <td>${book.author}</td>
                    <td>${book.category}</td>
                    <td>${book.totalQuantity}</td>

					<td>${book.totalQuantity - book.quantity}</td>

					<td>${book.quantity}</td>
                    <td>
    					<a href="/editBook/${book.id}"
       						class="btn btn-warning btn-sm">
       					Edit
    					</a>

    					<a href="/deleteBook/${book.id}"
       					class="btn btn-danger btn-sm"
       					onclick="return confirm('Delete this book?')">
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