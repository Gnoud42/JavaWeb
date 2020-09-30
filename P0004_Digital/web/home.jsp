<%-- 
    Document   : Home.jsp
    Created on : Feb 28, 2020, 9:33:58 AM
    Author     : dell
--%>
<%@page import="java.sql.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Digital</title>
        <link rel="stylesheet" href="assets/css/main.css" />
    </head>
    <body>
        <div class="site-wrapper">
            <div class="header-wrapper">
                <div class="title-wrapper">
                    <h3>My Digital News</h3>
                </div>
                <div class="navbar-wrapper">
                    <a href="home">News</a>
                </div>
            </div>
            <div class="content-wrapper">
                <div class="left">
                    <div class="tittle">${top1.title}</div>
                    <div class="image">
                        <img src="${imgLink}${top1.image}"/>
                    </div>
                    <div class="post-wrapper">${top1.description}</div>
                    <div class="signature">
                        <div class="icon1"></div>
                        <div class="icon2"></div>
                        <div class="meta-data">By ${top1.author} | ${top1.getDateConvert()}</div>
                    </div>
                </div>
                <div class="right">
                    <div class="newest">
                        <div class="titleNews">
                            <span>${top1.title}</span>
                        </div>
                        <div class="contentNews">${top1.shortDes}</div>
                    </div>
                    <div class="newst">
                        <div class="titleNews">
                            Search
                        </div>
                        <form action="search" method="post">
                            <input class="searchBox" type="text" name="searchByTxt" size="15"  required>
                            <input class="searchButton" type="submit" name="btnGo" value="Go">
                        </form>                        
                    </div>
                    <div class="newst">
                        <div class="titleNews">
                            <span>Last Articles</span><br>
                        </div>
                        <c:forEach items="${list5}" var="d">
                            <div class="lastArticles">
                                <a href="detail?id=${d.id}">${d.title}</a>
                            </div>
                        </c:forEach>
                    </div>
                </div>

            </div>
            <div class="footer">

            </div>
        </div>
    </body>
</html>
