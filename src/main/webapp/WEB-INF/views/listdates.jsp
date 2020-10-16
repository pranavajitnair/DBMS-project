<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form" %>

<jsp:include page="residentnavbar.jsp" />
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/css" />
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 

 <html>
    <head>
        <title>Table V04</title>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1"> 
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="../../images/icons/favicon.ico"/>
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../../vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../../vendor/animate/animate.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../../vendor/select2/select2.min.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../../vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="../../css/util.css">
        <link rel="stylesheet" type="text/css" href="../../css/main.css">
    <!--===============================================================================================-->
    </head>
     <body>
            <c:forEach items="${dates}" var="date" >
                <button style="margin-bottom: 10px; margin-top: 20px;" class="button" onclick="window.location.href='/resident/select/${facilityid}/${date}'">${date}</button>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
            </c:forEach>
     </body>
 </html>