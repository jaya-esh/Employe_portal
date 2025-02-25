<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Com.Model.Employee" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        color: #333;
        margin: 0;
        padding: 0;
    }

    table {
        width: 80%;
        margin: 40px auto;
        border-collapse: collapse;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 12px;
        text-align: left;
        border: 1px solid #ddd;
    }

    th {
        background-color: #e6e6fa; /* Lavender background */
        color: #4B0082; /* Indigo color for contrast */
    }

    tr:nth-child(even) {
        background-color: #f3f3f8; /* Slight lavender for even rows */
    }

    tr:hover {
        background-color: #ddd; /* Light gray on hover */
    }

    a {
        color: #007BFF;
        text-decoration: none;
        padding: 6px 12px;
        border-radius: 4px;
        background-color: #e6e6fa;
        transition: background-color 0.3s ease;
    }

    a:hover {
        background-color: #d3c2f1; /* Slightly darker lavender */
    }

    .header {
        text-align: center;
        margin: 20px;
        font-size: 24px;
        color: #4B0082;
    }
</style>
</head>
<body>

    <h1 class="header">Employee List</h1>

    <% 
    List<Employee> li = (List<Employee>)request.getAttribute("list"); 
    %>

    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Email</th>
                <th>password</th>
                <th>Update</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
        <% for (Employee l : li) { %>
            <tr>
                <td><%= l.getEid() %></td>
                <td><%= l.getEName() %></td>
                <td><%= l.getEmpEmail() %></td>
                <td><%=l.getEPassWord() %></td>
                <td><a href="update?id=<%= l.getEid() %>">Edit</a></td>
                <td><a href="delete?id=<%= l.getEid() %>">Delete</a></td>
            </tr>
        <% } %>
        </tbody>
    </table>

</body>
</html>
