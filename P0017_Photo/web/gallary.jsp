<%-- 
    Document   : home.jsp
    Created on : Mar 4, 2020, 10:45:40 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Photographer</title>
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body>
            <div class="container" >
                <div class="header">
                    <div class="link">
                        <a href="home">Home</a>
                        <c:forEach items="${requestScope.gallaries}" var="gl">
                            <a class="${requestScope.id == gl.id ? "active": ""}" href="gallary?id=${gl.id}">${gl.name}</a>
                        </c:forEach>
                        <a href="contact">Contact</a>
                    </div>

                    <div class="title">
                        <div class="webTitle">
                            <img src="assets/img/logo.jpg">
                            <a href="home"> PHOTOGRAPHER</a>
                        </div>
                        </a>
                        <h2>Welcome to Gallery website</h2>
                    </div>
                </div>
                <div class="content-wrapper">
                    <div class="left">
                        <div class="title-gallery">
                            ${requestScope.gallary.name}
                        </div>
                        <div class="slide">
                            <c:forEach items="${requestScope.photos}" var="pt">
                                <div class="myslides">
                                    <img src="assets/img/${pt.path}" width="700px" height="500px" />
                                </div>
                            </c:forEach>
                            <a class="prev" onclick="plusSlides(-1)">&#10094; Previous</a>
                            <a class="next" onclick="plusSlides(1)">Next &#10095;</a>
                        </div>
                        <div class="row">
                            <div class="image-list">
                                <c:forEach items="${requestScope.photos}" var="pt">
                                <div class="image">
                                    <img height="150px" width="200px" src="assets/img/${pt.path}">
                                </div>
                                </c:forEach>
                            </div>
                            <div class="shortdes">
                                ${requestScope.gallary.description}
                            </div>
                        </div>
                    </div>
                           <div class="right">
                    <div class="share-box">
                        <div class="share-page" >
                            <span><h4>Share this page</h4></span>
                        </div>

                        <div class="content-share">

                            <span>Share on Facebook</span> 

                            <span>Share on Twitter</span> 

                        </div>
                    </div>
                </div>
                </div>
                         <footer>
                <div class="footer-counter">            

                    <span class="footer-counter-item">0</span>
                    <span class="footer-counter-item">1</span>
                    <span class="footer-counter-item">8</span>
                    <span class="footer-counter-item">3</span>
                    <span class="footer-counter-item">7</span>
                    <span class="footer-counter-item">9</span>
                </div>
            </footer>
            </div>
    </body>




    <script>
        var slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        // Thumbnail image controls
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("myslides");
            var dots = document.getElementsByClassName("image");
            if (n > slides.length) {
                slideIndex = 1;
            }
            if (n < 1) {
                slideIndex = slides.length;
            }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>
</html>
