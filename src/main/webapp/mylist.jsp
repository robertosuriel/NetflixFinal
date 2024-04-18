<%--
  Created by IntelliJ IDEA.
  User: roberto.reboucas
  Date: 18/04/2024
  Time: 04:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My List</title>
    <link rel="stylesheet" href="mylist.css">
</head>
<body>
<div class="nav" id="nav">
    <a href="main.jsp"><img src="images/netflix-logo.png" alt="" class="nav_logo"></a>
    <div class="search_avatar">
        <div class = "sessao"><span> <%= session.getAttribute("email") %></span></div>
        <div class="search_container" id="search_container">
            <img src="images/lupa.png" alt="Search Icon" class="search_icon" id="search_icon">
            <input type="text" placeholder="Search..." class="search_input" id="search_input">
        </div>
        <div class="nav_perfil_wrapper">
            <img src="images/netflix-avatar.png" alt="" class="nav_perfil">
            <ul class="perfil_menu" id="perfilMenu">
                <li><a href="netflix.jsp">Sign out of Netflix</a></li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>
