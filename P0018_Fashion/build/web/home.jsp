<%-- 
    Document   : home
    Created on : Dec 19, 2019, 3:12:57 PM
    Author     : dell
--%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Fashion Blog</title>
        <link rel="stylesheet" href="assets/css/main.css" />
       
                <style type="text/css">

</style>

    </head>
    <body>
        <div class="site-wrapper">
            <div class="header-wrapper">
                <div class="title-wrapper">
                    <div class="title-wrapper-inner">
                        <div class="title"> 
                            <a href="home">My Fashion Blog</a>
                        </div>
                        <div class="sub-title">Welcome to this website </div>
                    </div>

                </div>
                <div class="navbar-wrapper">
                    <u1 class="navbar">
                        <li class="active">
                            <a href="home"> My Fashion Blog </a>
                        </li>
                        <li class>
                            <a href="aboutme">About me</a>
                        </li>
                        <li class>
                            <a href="contact">Contact </a>
                        </li>
                    </u1>
                </div>
            </div>
            <div class="content-wrapper">
                <div class="left">
                    <div class="page-title">
                        Blog
                    </div>
                    <c:forEach items="${requestScope.posts}" var="post">
                        <fmt:formatDate 
                            value="${post.publicDate}" 
                            var="formattedDate" 
                            type="date" 
                            pattern="dd-MM-yyyy" />
                        <div class="post-wrapper">
                            <div class="avatar">
                                <img src="assets/img/${post.avatar}" />
                            </div>
                            <div class="post-inner">
                                <div class="post-date">${formattedDate}</div>
                                <div class="post-title">
                                    <a href="detail?id=${post.id}">
                                        <h2>${post.title}</h2> 
                                    </a>
                                </div>
                                <div class="post-content">

                                    ${post.shortdes}
                                </div>

                            </div>

                        </div>

                    </c:forEach>

                    <div class="pager">
                        <a href="overview">Overview</a>

                    </div>
                    <hr>

                    <div class="footer-text">
                        This website was created with SimpleSite
                    </div>
                </div>

                <div class="right">
                    <div class="share-box">
                        <div class="share-page" >
                            <h4>Share this page</h4>
                        </div>

                        <div class="content-share">
                            <u1>
                                <li>
                                    <a id="share-fb">
                                        <img src="assets/img/facebook-black-icon.png"/>
                                    </a>

                                </li>
                                <span>Share on Facebook</span> 
                            </u1>
                            <br>
                            <u1>
                                <li>
                                    <a id="share-tiwtter">
                                        <img src="assets/img/twitter-icon.png"/>
                                    </a>

                                </li>
                                <span>Share on Twitter</span> 
                            </u1>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-counter">            

                <span class="footer-counter-item">0</span>
                <span class="footer-counter-item">1</span>
                <span class="footer-counter-item">8</span>
                <span class="footer-counter-item">3</span>
                <span class="footer-counter-item">7</span>
                <span class="footer-counter-item">9</span>
            </div>
        </div>
    </body>
</html>




