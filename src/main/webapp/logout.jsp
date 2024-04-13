<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Logout Page</title>
</head>
<body>
	<%
		//Retrive the session object
		HttpSession  currentSession = request.getSession(false);
		if(currentSession != null){
		   currentSession.invalidate();
		}
	    //Redirect to the login page
	    response.sendRedirect("index.html");
	 %>
</body>
</html>