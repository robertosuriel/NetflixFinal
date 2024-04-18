<%--
  Created by IntelliJ IDEA.
  User: roberto.reboucas
  Date: 17/04/2024
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix</title>
    <link rel="stylesheet" href="signin.css">
    <link rel="shortcut icon" href="https://www.netflix.com/in/favicon.ico" type="image/x-icon">

    <script src="./signin.js" defer></script>
</head>

<body>
<div class="banner">
    <a href="main.html">
        <img class="netflix" src="logoNetflix.png" alt="Netflix Logo">
    </a>
</div>
<div id="video-container">
    <video id="background-video" autoplay muted>
        <source src="Netflix.mp4" type="video/mp4">
    </video>
</div>
<main>
    <div id="netflix-logo">
        <img src="./images/Netflix_Logo_PMS.png">
    </div>

    <div id="content">
        <div class="pics">
            <div class="wrapper">
                <form id="loginForm">
                    <h1>Sign In</h1>
                    <div class="input-box" id="input1">
                        <input type="text" id="email" required class="email" placeholder="Email or phone number">
                    </div>
                    <div class="input-box" id="input2">
                        <input type="password" id="password" required class="senha" placeholder="Password">
                    </div>

                    <button type="submit" class="btn">Sign In</button>

                    <div class="remember-forgot">
                        <label><input type="checkbox">Remember Me</label>
                        <a href="#">Need help?</a>
                    </div>

                    <div class="register-link">
                        <p>New to Netflix? <a href="signup.jsp">Sign up now</a></p>

                        <div class="register">
                            <p>This page is protected by Google reCAPTCHA to ensure you're not a bot.<a href="#">Learn more.</a></p>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</main>

</body>
<footer>
    <div class="footer">
        <div class="footer1"> Questions? call 000-<a href="#">800-919-1694</a></div>
        <div class="row">
            <div class="col">
                <a href="#">FAQ</a>
                <a href="#">Terms of use</a>
            </div>
            <div class="col">
                <a href="#">Help Centre</a>
                <a href="#">Corporate Information</a>
            </div>
            <div class="col">
                <a href="#">Terms of Use</a>

            </div>
            <div class="col">
                <a href="#">Privacy</a>

            </div>
        </div>
        <div class="select">
            <select>
                <option>English</option>
                <option>हिन्दी</option>

            </select>
        </div>
</footer>
<script src="./signin.js"></script>

</html>
