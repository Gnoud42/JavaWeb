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
                        Overview - Blog 
                    </div>
                    <c:forEach items="${requestScope.postMap}" var="entry">

                        <table>

                            <tr>
                                <th class="align-left">${entry.key}</th>
                                <th>Likes</th>
                                <th>Comments</th>
                                <th class="align-right">Date</th>
                            </tr>
                            <c:forEach items="${entry.value}" var="post">
                                <fmt:formatDate 
                                    value="${post.publicDate}" 
                                    var="formattedDate" 
                                    type="date" 
                                    pattern="dd-MM-yyyy" />
                                <tr>
                                    <td>
                                        <a href="detail?id=${post.id}">
                                            ${post.title}
                                        </a>
                                    </td>
                                    <td>${post.like}</td>
                                    <td>${post.comment}</td>

                                    <td class="align-right">${formattedDate}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </c:forEach>
                    <div class="center">
                        <div class="pagination">
                            <a href="?page=1">First page &laquo;</a>                           
                            <c:forEach var = "i" begin = "${requestScope.previous}" end = "${requestScope.current - 1}">
                                <a href="?page=${i}">${i}</a>
                            </c:forEach>
                            <a href="?page=${requestScope.current}" class="active">${requestScope.current}</a>
                            <c:forEach var = "i" begin = "${requestScope.current + 1 }" end = "${requestScope.next}">
                                <a href="?page=${i}">${i}</a>
                            </c:forEach>
                            <a href="?page=${requestScope.last}">&raquo; Last page</a>
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




