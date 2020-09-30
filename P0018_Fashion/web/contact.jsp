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
                        Contact Me
                    </div>
                    <div class="send-mess">
                        <h4>Send your message<h4>
                    </div>

                    <div class="post-wrapper">

                        <c:if test="${not empty requestScope.status}">
                            <c:if test="${requestScope.status == 'success'}">
                                <div class="alert alert-success">Thank you for your message.</div>
                            </c:if>
                            <c:if test="${requestScope.status == 'fails'}">
                                <c:forEach items="${requestScope.error_list}" var="error">
                                    <div class="alert alert-danger">${error}</div>
                                </c:forEach>
                            </c:if>
                        </c:if>

                        <p>Write your message here. Fill out the form:</p>

                        <div class="post-content">
                            <form method="post" action="contact">
                                <fieldset>
                                    <div class="row-fullfill">
                                        <div class="span6">
                                            <input
                                                type="text" 
                                                name="name" 
                                                placeholder="Write your name here" />
                                        </div>
                                        <div class="span6">
                                            <input
                                                type="text" 
                                                name="email" 
                                                placeholder="Write your email here" />
                                        </div>
                                    </div>
                                    <div class="row-fullfill">
                                        <div class="span12">
                                            <textarea 
                                                name="text" placeholder="Write your message here" rows="10"></textarea>
                                        </div>
                                    </div>
                                    <div class="row-fullfill">
                                        <div class="span12">
                                            <button 
                                                class="btn btn-primary pull-right disabled" 
                                                type="submit">
                                                <i class="icon-ok"></i> Send - Click here
                                            </button>
                                        </div>
                                </fieldset>
                            </form>

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




