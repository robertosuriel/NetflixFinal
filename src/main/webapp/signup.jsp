<%--
  Created by IntelliJ IDEA.
  User: roberto.reboucas
  Date: 17/04/2024
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix</title>
    <link rel="stylesheet" href="signup.css">
    <link rel="shortcut icon" href="https://www.netflix.com/in/favicon.ico" type="image/x-icon">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>

<body>
<div class="banner">
    <a href="netflix.jsp">
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
                <form action="signup" method="POST">
                    <h1>Sign Up</h1>
                    <div class="input-box" id="input1">
                        <label>
                            <input type="text" name="email" required class="email" placeholder="Email or phone number">
                        </label>
                    </div>
                    <div class="input-box" id="input2">
                        <label>
                            <input type="password" name="senha" required class="senha" placeholder="Password">
                        </label>
                    </div>
                    <button type="submit" class="btn">Sign Up</button>
                    <div class="remember-forgot">
                        <label><input type="checkbox">Remember Me</label>
                        <a href="#">Need help?</a>
                    </div>

                    <div class="register-link">
                        <p>Already has an account? <a href="signin.jsp">Sign In now</a></p>

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


</html>