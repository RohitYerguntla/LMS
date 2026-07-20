<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<title>LMS Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

</head>

<body>

<nav class="navbar navbar-dark bg-dark">
    <div class="container">
        <span class="navbar-brand">
            Library Management System
        </span>
    </div>
     <div><a href="/" class="btn btn-danger">
    Home
</a></div>
    <div><a href="/logout" class="btn btn-danger">
    Logout
</a></div>
</nav>

<div class="container mt-5">

    <h2 class="text-center mb-4">
        Admin Dashboard
    </h2>

    <div class="row">

        <div class="col-md-4">

            <div class="card">

                <div class="card-body text-center">

                    <h4>Add Book</h4>

                    <a href="/addBook"
                       class="btn btn-primary">
                        Open
                    </a>

                </div>

            </div>

        </div>
        
        

        <div class="col-md-4">

            <div class="card">

                <div class="card-body text-center">

                    <h4>View Books</h4>

                    <a href="/books"
                       class="btn btn-success">
                        Open
                    </a>

                </div>

            </div>

        </div>
        
        
         <div class="col-md-4">

            <div class="card">

                <div class="card-body text-center">

                    <h4>Add Student</h4>

                    <a href="/addStudent"
                       class="btn btn-primary">
                        Open
                    </a>

                </div>

            </div>

        </div>
        
        
        
         <div class="col-md-4">

            <div class="card">

                <div class="card-body text-center">

                    <h4>View Student</h4>

                    <a href="/students"
                       class="btn btn-success">
                        Open
                    </a>

                </div>

            </div>

        </div>
        
        
        
        
        <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">

                    <h4>Issue Book</h4>

                    <a href="/issueBook"
   						class="btn btn-warning">
   						Open
					</a>
                </div>
            </div>
        </div>
        
        
        
         <div class="col-md-4">
            <div class="card">
                <div class="card-body text-center">
                    <h4>Issued Books</h4>

                    <a href="/issuedBooks"
   					class="btn btn-info">
   					Open
					</a>
                </div>
            </div>
        </div>
        
    </div>

</div>

</body>
</html>