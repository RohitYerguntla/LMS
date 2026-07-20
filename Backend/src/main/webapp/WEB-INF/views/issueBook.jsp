<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<!DOCTYPE html>
<html>
<head>

<title>Issue Book</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<div class="container mt-5">

<h2>Issue Book</h2>

<c:if test="${not empty error}">
    <div class="alert alert-danger">
        ${error}
    </div>
</c:if>

<form action="/saveIssue" method="post">

<label>Student ID</label>

<select name="studentId"
        class="form-select mb-3">

<c:forEach items="${students}" var="student">

<option value="${student.id}">
    ${student.id}
    <%-- ${student.name} --%>
</option>

</c:forEach>

</select>

<label>Book Name</label>

<select name="bookId"
        class="form-select mb-3">

<%-- <c:forEach items="${books}" var="book">

<option value="${book.id}">
    ${book.title}
</option>

</c:forEach> --%>
<c:forEach items="${books}" var="book">

<c:if test="${book.quantity > 0}">

    <option value="${book.id}">
        ${book.title} (${book.quantity})
    </option>

</c:if>

</c:forEach>

</select>

<button class="btn btn-primary">
    Issue Book
</button>

</form>

</div>

</body>
</html>