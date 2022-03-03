<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 3/3/2022
  Time: 12:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        div {
            width: 30%;
            margin: auto;
            padding-top: 50px;
        }

        h1 {
            font-size: 3em;
            text-align: center;
        }

        input {
            margin-bottom: 15px;
            padding: 10px;
        }
    </style>
</head>
<body>
<%
    String error = "";
    if (request.getAttribute("error") != null) {
        error = (String) request.getAttribute("error");
    }
%>
<div style="text-align: center">
    <form class="form-group" action="/login" method="post">
        <h2>Login</h2>
        <br>
        <input class="form-control" type="text" name="username" placeholder="username">
        <input class="form-control" type="password" name="password" placeholder="password">
        <h6 style="color: red"><%=error%>
        </h6>
        <input type="submit" class="btn btn-primary" value="Login">
    </form>
</div>
</body>
</html>
