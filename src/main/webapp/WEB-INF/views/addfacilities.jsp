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
    </head> 
    <body> 
        <h1>Start here</h1> 
        <form:form method="POST" modelAttribute="facility">
            <spring:bind path="facilityName">
                <form:input
                type="text"
                path="facilityName"
                required="true"
                placeholder="facilityName"
              />
            </spring:bind>
            <spring:bind path="amountPerHour">
                <form:input
                type="text"
                path="amountPerHour"
                required="true"
                placeholder="amountPerHour"
              />
            </spring:bind>
            <button type="submit"
            >Submit</button>
        </form:form>

        
    </body> 
</html> 