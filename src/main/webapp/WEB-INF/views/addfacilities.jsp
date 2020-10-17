<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/css" />

<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html;  
        charset=ISO-8859-1"> 
        <title>Start Spring MVC</title> 
        <link rel="stylesheet" type="text/css" href="../../css/main.css">
    </head> 
    <body> 
        <div class="login-box">
        <h2>Add a Facility</h2> 
        <form:form method="POST" modelAttribute="facility" id="form1">
            <spring:bind path="facilityName">
                <div class="user-box">
                    <form:input
                type="text"
                path="facilityName"
                required="true"
                placeholder="facilityName"
              />
                </div>
            </spring:bind>
            <spring:bind path="amountPerHour">
               <div class="user-box">
                <form:input
                type="text"
                path="amountPerHour"
                required="true"
                placeholder="Amount per Hour"
              />
               </div>
            </spring:bind>
            <a style="cursor: pointer;" type="button" onclick="document.getElementById('form1').submit();">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                Sumbit
            </a>
        </form:form>
    </div>
        
    </body> 
</html> 