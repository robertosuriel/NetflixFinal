<%--
  Created by IntelliJ IDEA.
  User: roberto.reboucas
  Date: 17/04/2024
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix</title>
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link rel="stylesheet" href="main.css">
</head>
<body>

<div class="nav" id="nav">
    <img src="images/netflix-logo.png" alt="" class="nav_logo">
    <div class = "header_icons">
        <div class = "sessao"><span> <%= session.getAttribute("email") %></span></div>
        <img src="images/lupa.png" alt="Search_Icon" class="search_icon" id="search_icon">
        <img src="images/netflix-avatar.png" alt="" class="nav_avatar">
    </div>
</div>



<div class="banner">
    <div class="banner__content">
        <h1 class="banner_title">Money Heist</h1>
        <div class="banner_buttons">
            <button class="banner_button">Play</button>
            <a href="mylist.jsp"><button class="banner_button">My List</button></a>
        </div>
        <div class="banner_des">
            To carry out the biggest heist in history, a mysterious man called The Professor recruits
            a band of eight robbers who have a single characteristic: n...
        </div>
    </div>
    <div class="banner--fadeBottom"></div>
</div>


<div class="row">
    <h2>NETFLIX ORIGINALS</h2>
    <div class="row__posts">
        <img src="images/large-movie1.jpg" alt="Luis Miguel" class="row__post row_postL">
        <img src="images/large-movie2.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie3.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie4.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie5.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie6.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie7.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie8.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie1.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie2.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie3.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie4.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie5.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie6.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie7.jpg" alt="" class="row__post row_postL">
        <img src="images/large-movie8.jpg" alt="" class="row__post row_postL">


    </div>
</div>

<div class="row">
    <h2>Trending Now</h2>
    <div class="row__posts">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">


    </div>
</div>

<div class="row">
    <h2>Top Rated</h2>
    <div class="row__posts">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">

    </div>
</div>

<div class="row">
    <h2>Action Movies</h2>
    <div class="row__posts">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">

    </div>
</div>

<div class="row">
    <h2>Comedy Movies</h2>
    <div class="row__posts">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">

    </div>
</div>

<div class="row">
    <h2>Horror Movies</h2>
    <div class="row__posts">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">

    </div>
</div>

<div class="row">
    <h2>Romance Movies</h2>
    <div class="row__posts">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">

    </div>
</div>

<div class="row">
    <h2>Documentaries</h2>
    <div class="row__posts">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">
        <img src="images/small-movie1.jpg" alt="" class="row__post ">
        <img src="images/small-movie2.jpg" alt="" class="row__post ">
        <img src="images/small-movie3.jpg" alt="" class="row__post ">
        <img src="images/small-movie4.jpg" alt="" class="row__post ">
        <img src="images/small-movie5.jpg" alt="" class="row__post ">
        <img src="images/small-movie6.jpg" alt="" class="row__post ">
        <img src="images/small-movie7.jpg" alt="" class="row__post ">
        <img src="images/small-movie8.jpg" alt="" class="row__post ">

    </div>
</div>
<script>
    const nav =document.getElementById('nav');

    window.addEventListener('scroll',() =>{
        if(window.scrollY >=100){
            nav.classList.add('nav_black')
        }else{
            nav.classList.remove('nav_black')
        }
    })



</script>




</body>
</html>
