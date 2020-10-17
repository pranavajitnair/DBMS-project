<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags" %>

<jsp:include page="adminnavbar.jsp" />
<html>
    <body style="background-color: red;">
        <h1 class="hn">Welcome</h1>
    </body>
    <style>
        .hn{
            position: absolute;
            font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; 
            font-weight: bold; 
            top: 50%; 
            bottom: 50%; 
            left: 43%; 
            right: 50%;
            color: whitesmoke;
            font-size: 90px;
            font-style: oblique;
        }
    </style>
</html>