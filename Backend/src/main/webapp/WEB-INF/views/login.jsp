<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="/login" method="post">

    <input type="text"
           name="username"
           placeholder="Username"
           class="form-control mb-3">

    <input type="password"
           name="password"
           placeholder="Password"
           class="form-control mb-3">

    <button class="btn btn-primary">
        Login
    </button>

</form>
</body>
</html>