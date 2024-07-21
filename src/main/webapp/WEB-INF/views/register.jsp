<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .container {
            max-width: 600px;
            margin-top: 50px;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 class="text-center">User Registration</h2>
    <form:form method="post" action="/register" modelAttribute="user">
        <div class="form-group">
            <label for="username">Username</label>
            <form:input id="username" path="username" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <form:password id="password" path="password" class="form-control"/>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <form:input id="email" path="email" class="form-control"/>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Register</button>
        </div>
    </form:form>
</div>
<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
