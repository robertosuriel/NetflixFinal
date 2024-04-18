<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="com.example.netflix2.ConsultasBancoDeDados" %>
<%@ page import="jakarta.servlet.http.HttpSession" %>

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
        <div class="sessao"><span> <%= session.getAttribute("email") %></span></div>
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

<div class="movie-list">
    <h2>My List</h2>
    <!-- Formulário para adicionar filme -->
    <form action="MyListServlet" method="post" class="add-movie-form">
        <input type="text" name="movieUrl" placeholder="URL of the movie">
        <input type="hidden" name="opcao" value="Add">
        <button type="submit">Add Movie</button>
    </form>

    <!-- Lista de filmes favoritos -->
    <ul>
        <% String[] favoritos = new ConsultasBancoDeDados().showFavoritos((String) session.getAttribute("email"));
            if (favoritos != null && favoritos.length > 0) {
                for (String favorito : favoritos) { %>
        <li>
            <img src="<%= favorito %>" alt="Movie Poster" class="movie-poster">
            <form action="MyListServlet" method="post">
                <input type="hidden" name="filme" value="<%= favorito %>">
                <input type="hidden" name="opcao" value="Remove">
                <button type="submit">Remove</button>
            </form>
        </li>
        <% }
        } else { %>
        <li>No movies added to your list yet.</li>
        <% } %>
    </ul>
</div>

</body>
</html>
