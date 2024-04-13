<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #1e5799, #2989d8);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #555;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #0074D9;
            color: #ffffff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .form-group button:hover {
            background-color: #0056b3;
        }
        .forgot-password {
            text-align: center;
            margin-top: 10px;
            color: #777;
        }
        .disabled {
		    pointer-events: none;
		    /* Additional styling for disabled appearance */
		    color: gray;
		    text-decoration: none;
		    cursor: not-allowed;
		}
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <!-- Display error message if login fails -->
        <% String error = request.getParameter("error");
        	if(error != null && error.equals("1")){ %>
        	<p style="color:red;">Invalid username or password</p> 		
        <% } %>
        <!-- Display success message-->
        <% String rs = request.getParameter("registeration");
        	if(rs != null && rs.equals("success")){ %>
        	<p style="color:green;">Registeration Successful. Please login</p> 		
        <% } %>
        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="disabled">
           		<label>Remember me</label>
                 <input type="checkbox" name="remember" value="1">
            </div><br>
            <div class="form-group disabled"">
                <button type="submit">Login</button>
            </div>
        </form>
        <p class="forgot-password"><a href="/forgot-password" class="disabled">forgot your password?</a></p>
    </div>
</body>
</html>
    