<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Com.Model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Profile</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h1 {
            color: #34495e;
            font-size: 2rem;
            margin-bottom: 20px;
        }

        .profile-details {
            display: flex;
            flex-direction: column;
            gap: 15px;
            font-size: 1.2rem;
        }

        .profile-details div {
            background-color: #ecf0f1;
            padding: 15px;
            border-radius: 8px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.05);
        }

        .profile-details div span {
            font-weight: bold;
        }

        .back-button {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            cursor: pointer;
            display: inline-block;
            margin-top: 20px;
        }

        .back-button:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Employee Profile</h1>
		<% Employee e=(Employee)session.getAttribute("emp"); %>
        <div class="profile-details">
            <!-- Displaying employee information from the session -->
            <div>
                <span>Employee ID:</span> <%= e.getEid() %>
            </div>
            <div>
                <span>Employee Name:</span> <%= e.getEName()%>
            </div>
            <div>
                <span>Employee Email:</span> <%=e.getEmpEmail()%>
            </div>
            <div>
                <span>Employee Password:</span> <%= e.getEPassWord()%>
            </div>
        </div>

        <a href="userHome.jsp" class="back-button">Back to Home</a>
    </div>
</body>
</html>
