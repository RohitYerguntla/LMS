<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>

<table class="table table-bordered">

<tr>
    <th>ID</th>
    <th>Student</th>
    <th>Book</th>
    <th>Issue Date</th>
    <th>Return Date</th>
    <th>Status</th>
    <th>Action</th>
    <th>Fine</th>
</tr>

<c:forEach items="${issues}" var="issue">

<tr>

<td>${issue.id}</td>

<td>${issue.student.name}</td>

<td>${issue.book.title}</td>

<td>${issue.issueDate}</td>

<td>${issue.returnDate}</td>

<td>${issue.status}</td>

<td>

<c:if test="${issue.status == 'ISSUED'}">

<a href="/returnBook/${issue.id}"
   class="btn btn-success btn-sm">

   Return

</a>

</c:if>

</td>

<td>₹ ${issue.fine}</td>

</tr>

</c:forEach>

</table>