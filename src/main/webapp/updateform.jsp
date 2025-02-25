<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Com.Model.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }

        h2 {
            color: #4B0082; /* Indigo color */
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #333;
            margin: 10px 0 5px;
            text-align: left;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 8px 0 20px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 16px;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #007BFF;
            outline: none;
        }

        button {
            width: 100%;
            padding: 14px;
            background-color: #4B0082;
            border: none;
            color: #fff;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #6a0dad; /* Darker purple on hover */
        }

        .login-link {
            margin-top: 20px;
            font-size: 14px;
        }

        .login-link a {
            color: #007BFF;
            text-decoration: none;
        }

        .login-link a:hover {
            text-decoration: underline;
        }

        .footer {
            text-align: center;
            font-size: 12px;
            color: #888;
            margin-top: 30px;
        }

    </style>
</head>
<body>

<% Employee emp = (Employee) request.getAttribute("emp"); %>
<div class="container">
    <h2>Update Employee Information</h2>

    <form name="Registration" method="post" action="update">
        <label for="id"><b>Employee ID</b></label>
        <input type="text" placeholder="Enter ID" name="id" id="id" value="<%= emp.getEid() %>" required>

        <label for="Name"><b>Name</b></label>
        <input type="text" placeholder="Enter Name" name="Name" id="Name" value="<%= emp.getEName() %>" required>

        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" id="email" value="<%= emp.getEmpEmail() %>" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" id="psw" value="<%= emp.getEPassWord() %>" required>

        <button type="submit">Update</button>
    </form>

    

</div>

</body>
</html>
