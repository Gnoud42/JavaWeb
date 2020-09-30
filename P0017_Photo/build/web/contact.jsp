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
                            <a href="gallary?id=${gl.id}">${gl.name}</a>
                        </c:forEach>
                    <a class="active" href="contact">Contact</a>
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
                    <div class="contact">
                        <div class="title-contact">
                            <p>Contact</p><br>
                            PHOTOGRAPHER<br>
                        </div>
                    </div>
                    <div class="detail-contact">
                        <table>
                            <tr>
                                <td>Address:</td>
                                <td>${contact.address}</td>
                            </tr>
                            <tr>
                                <td>City:</td>
                                <td>${contact.city}</td>
                            </tr>
                            <tr>
                                <td>Country:</td>
                                <td>${contact.country}</td>
                            </tr>
                            <tr>
                                <td>Tel:</td>
                                <td>${contact.phone}</td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>${contact.email}</td>
                            </tr>
                        </table>
                    </div>
                    <div class="map">
                        <img src="assets/img/map.jpg" width="700px" height="500px">
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
