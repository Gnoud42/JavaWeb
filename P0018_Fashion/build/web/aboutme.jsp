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
    </head>
    <body>
        <div class="site-wrapper">
            <div class="header-wrapper">
                <div class="title-wrapper">
                    <div class="title-wrapper-inner">
                        <div class="title"> My Fashion Blog</div>
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
                        About me
                    </div>
                    <div class="post-wrapper">
                        <div class="post-img-ab">
                            <img src="assets/img/aboutme.jpg">
                        </div>
                        <div class="post-content-ab">
                            <p><b>Name: </b>Susan Stratton</p>
                            <p><b>Age: </b>25</p>
                            <p><span>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
                                    Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. 
                                    Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et 
                                    iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.</span></p>
                        </div>
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




