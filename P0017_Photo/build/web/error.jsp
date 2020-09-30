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
        <div>
            <div class="container" >
                <div class="header">
                    <div class="link">
                        <a href="home">Home</a>
                        <!--foreach-->
                        <c:forEach items="${requestScope.gallaries}" var="gl">
                            <a href="gallary?id=${gl.id}">${gl.name}</a>
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
                        <div class="error">
                            <h1>Oops!!! This gallery has not exist!</h1>
                        </div>
                    </div>
                </div>
            </div>
    </body>




  
</html>
