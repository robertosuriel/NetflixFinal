<%--
  Created by IntelliJ IDEA.
  User: roberto.reboucas
  Date: 17/04/2024
  Time: 23:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix </title>
    <link rel="shortcut icon" href="https://www.netflix.com/in/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="netflix.css">
    <link rel="stylesheet" href="aos/aos.css">
    <script src="aos/aos.js"></script>
    <script src="./script.js" defer></script>
</head>
<body>
<div class="header">
    <nav>
        <img src="logoNetflix.png" class="logo" alt="logo">
        <div>
            <button class="lang-btn">English <img src="images/down-icon.png" alt=""></button>
            <button><a id="abc" href="signin.jsp">Sign In</a></button>
        </div>
    </nav>
    <div class="header-content">
        <h1>Unlimited movies, TV shows and more</h1>
        <h3>Watch anywhere. Cancel anytime.</h3>
        <p>Ready to watch? Enter your email to create or restart your membership.</p>
        <form class="email-signup">
            <input type="email" placeholder="Email address" required>
            <a href="/signup.jsp"><button type="submit">Get Started</button></a>
        </form>
    </div>
</div>
<div class="features">
    <div class="row" data-aos="zoom-in-up" data-aos-duration="2000">
        <div class="text-col">
            <h2>Enjoy on your TV</h2>
            <p>Watch on smart TVs, PlayStation, Xbox, Chromecast, Apple TV, Blu-ray players and more.</p>
        </div>
        <div class="img-col">
            <img src="images/feature-1.png" alt="feature-1">
        </div>
    </div>
    <div class="row" data-aos="zoom-in-up" data-aos-duration="2000">
        <div class="img-col">
            <img src="images/feature-2.png" alt="feature-1">
        </div>
        <div class="text-col">
            <h2>Download your shows to watch offline</h2>
            <p>Save your favourites easily and always have something to watch.</p>
        </div>
    </div>
    <div class="row" data-aos="zoom-in-up" data-aos-duration="2000">
        <div class="text-col">
            <h2>Watch everywhere</h2>
            <p>Stream unlimited movies and TV shows on your phone, tablet, laptop, and TV.</p>
        </div>
        <div class="img-col">
            <img src="images/feature-3.png" alt="feature-1">
        </div>
    </div>
    <div class="row" data-aos="zoom-in-up" data-aos-duration="2000">
        <div class="img-col">
            <img src="images/feature-4.png" alt="feature-1">
        </div>
        <div class="text-col">
            <h2>Create profiles for kids</h2>
            <p>Send children on adventures with their favourite characters in a space made just for them—free with your membership.</p>
        </div>
    </div>
</div>
<div class="faq">
    <h2>Frequently Asked Questions</h2>
    <ul class="accordion">
        <li>
            <input type="radio" name="accordion" id="first">
            <label for="first">What is Netflix?</label>
            <div class="content">
                <p>Netflix is a streaming service that offers a wide variety of award-winning TV shows, movies, anime, documentaries and more – on thousands of internet-connected devices.

                    You can watch as much as you want, whenever you want, without a single ad – all for one low monthly price. There's always something new to discover, and new TV shows and movies are added every week!</p>
            </div>
        </li>
        <li>
            <input type="radio" name="accordion" id="second">
            <label for="second">How much does Netflix cost?</label>
            <div class="content">
                <p>Watch Netflix on your smartphone, tablet, Smart TV, laptop, or streaming device, all for one fixed monthly fee. Plans range from ₹149 to ₹649 a month. No extra costs, no contracts.</p>
            </div>
        </li>
        <li>
            <input type="radio" name="accordion" id="third">
            <label for="third">Where I can watch?</label>
            <div class="content">
                <p>Watch anywhere, anytime. Sign in with your Netflix account to watch instantly on the web at netflix.com from your personal computer or on any internet-connected device that offers the Netflix app, including smart TVs, smartphones, tablets, streaming media players and game consoles.

                    You can also download your favourite shows with the iOS, Android, or Windows 10 app. Use downloads to watch while you're on the go and without an internet connection. Take Netflix with you anywhere.</p>
            </div>
        </li>
        <li>
            <input type="radio" name="accordion" id="fourth">
            <label for="fourth">How do I cancel?</label>
            <div class="content">
                <p>Netflix is flexible. There are no annoying contracts and no commitments. You can easily cancel your account online in two clicks. There are no cancellation fees – start or stop your account anytime.</p>
            </div>
        </li>
        <li>
            <input type="radio" name="accordion" id="fifth">
            <label for="fifth">What can I watch on Netflix?</label>
            <div class="content">
                <p>Netflix has an extensive library of feature films, documentaries, TV shows, anime, award-winning Netflix originals, and more. Watch as much as you want, anytime you want.</p>
            </div>
        </li>
        <li>
            <input type="radio" name="accordion" id="sixth">
            <label for="sixth">Is Netflix good for kids?</label>
            <div class="content">
                <p>The Netflix Kids experience is included in your membership to give parents control while kids enjoy family-friendly TV shows and films in their own space.

                    Kids profiles come with PIN-protected parental controls that let you restrict the maturity rating of content kids can watch and block specific titles you don’t want kids to see.</p>
            </div>
        </li>
    </ul>
    <small>Ready to watch? Enter your email to create or restart your membership</small>

    <form class="email-signup">
        <input type="email" placeholder="Email address" required>
        <button type="submit"><a  href="signup.html">Get Started</a></button>

    </form>
</div>
<div class="footer">
    <h2>Questions? call 000-800-919-1694</h2>
    <div class="row">
        <div class="col">
            <a href="#">FAQ</a>
            <a href="#">Investor Relations</a>
            <a href="#">Privacy</a>
            <a href="#">Speed Test</a>
        </div>
        <div class="col">
            <a href="#">Help Center</a>
            <a href="#">Jobs</a>
            <a href="#">Cookies Preferences</a>
            <a href="#">Legal Notices</a>
        </div>
        <div class="col">
            <a href="#">Account</a>
            <a href="#">Ways to watch</a>
            <a href="#">Corporate Information</a>
            <a href="#">Only on Netflix</a>
        </div>
        <div class="col">
            <a href="#">Media Centre</a>
            <a href="#">Terms of Use</a>
            <a href="#">Contact Us</a>
        </div>
        <h2>Questions? call 000-800-919-1694</h2>
        <div class="row">
            <div class="col">
                <a href="https://help.netflix.com/en/node/412">FAQ</a>
                <a href="https://ir.netflix.net/ir-overview/profile/default.aspx">Investor Relations</a>
                <a href="https://help.netflix.com/legal/privacy">Privacy</a>
                <a href="https://fast.com/">Speed Test</a>
            </div>
            <div class="col">
                <a href="https://help.netflix.com/en/">Help Center</a>
                <a href="https://jobs.netflix.com/">Jobs</a>
                <a href="#">Cookies Preferences</a>
                <a href="https://help.netflix.com/legal/notices">Legal Notices</a>
            </div>
            <div class="col">
                <a href="signup.html">Account</a>
                <a href="https://devices.netflix.com/en/">Ways to watch</a>
                <a href="https://help.netflix.com/legal/corpinfo">Corporate Information</a>
                <a href="https://www.netflix.com/in/browse/genre/839338">Only on Netflix</a>
            </div>
            <div class="col">
                <a href="https://media.netflix.com/en/">Media Centre</a>
                <a href="https://help.netflix.com/legal/termsofuse">Terms of Use</a>
                <a href="https://help.netflix.com/en/contactus">Contact Us</a>
            </div>
            <button class="lang-btn">English <img src="images/down-icon.png" alt=""></button>
            <p class="copyright-txt">Netflix India</p>
        </div>

</body>
<script>
    AOS.init();
</script>
<script>
    const radioButtons = document.getElementsByName('accordion');
    radioButtons.forEach((radio) => {
        radio.onclick = function () {
            if (radio.checked) {
                if (radio.getAttribute('checked')) {
                    radio.removeAttribute('checked')
                    radio.checked = false;
                } else {
                    radio.setAttribute('checked', 'true')
                    radioButtons.forEach((el) => {if (el !== radio) el.removeAttribute('checked')});
                }
            }
        }
    })
</script>
</html>