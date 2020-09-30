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
                    <a class="active" href="home">My front page</a>
                    <c:forEach items="${requestScope.gallaries}" var="gallary">
                        <a href="gallary?id=${gallary.id}">${gallary.name}</a>
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
                    <div class="gallery">
                        <div class="main-img">
                            <img src="assets/img/i4.jpg" width="700px" height="500px">
                            <i><p>Lorem ipsum dolor sit amet</p></i>
                        </div>
                        <div class="gallery-list">
                            <c:forEach items="${requestScope.gallaries}" var="post">
                            <div class="gallery-element">
                                <div class="gallery-title">
                                    <a href="gallary?id=${post.id}">View ${post.name}</a>
                                </div>
                                <div class="gallery-image">
                                    <img height="150px" width="200px" src="assets/img/${post.cover}">
                                </div>
                                <div class="gallery-description">
                                    ${post.shortdes}
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="about">
                        <div class="about-me">About me</div>
                        <div class="about-text">${contact.about}</div>
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
</html>
