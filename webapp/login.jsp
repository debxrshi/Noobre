<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%            	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
    <h2>Login Form</h2>
    <form action="login" method="post">
        <div class="container">
            <label for="user"><b>Username or Email</b></label>
            <input type="text" placeholder="Enter Username" name="user" required>
            <label for="pass"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="pass" required>

            <button type="submit">Login</button>
        </div>
    </form>
</body>
</html>