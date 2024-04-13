<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            padding: 20px;
        }
        .welcome-message {
            background-color: #ffffff;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: 0 auto;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
	<%
		//Retrive the session object
		HttpSession  session1 = request.getSession(false);
	    //Check if the session is not null and the username attribute 
		if(session1 != null && session1.getAttribute("username")!= null){
	    	//Get the username from the session
	    	String username = (String) session1.getAttribute("username");
	    	
	%>
    <div class="welcome-message">
        <h2>Welcome, <%=username %></h2>
        <p>Thank you for logging in. Here's some static content for you:</p>
        <table>
        <tr>
            <th>User ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Status</th>
        </tr>
        <tr>
            <td>101</td>
            <td>John Doe</td>
            <td>john@example.com</td>
            <td>Active</td>
        </tr>
        <tr>
            <td>102</td>
            <td>Jane Smith</td>
            <td>jane@example.com</td>
            <td>Inactive</td>
        </tr>
        <tr>
            <td>103</td>
            <td>Mike Johnson</td>
            <td>mike@example.com</td>
            <td>Active</td>
        </tr>
        </table><br>
        <button><a href="logout.jsp">LOGOUT</a></button>
    </div>
    <%
    }
	else{
		
		//Redirect to the login page
		response.sendRedirect("login.jsp");
		}
	 %>
</body>
</html>
    