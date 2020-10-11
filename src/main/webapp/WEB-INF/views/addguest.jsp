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
        <form:form method="POST" modelAttribute="guest">
            
            <spring:bind path="name">
                <form:input
                type="text"
                path="name"
                required="true"
                placeholder="name"
              />
            </spring:bind>
            <spring:bind path="entryTime">
                <form:input
                type="text"
                path="entryTime"
                required="true"
                placeholder="entryTime"
              />
            </spring:bind>
            <spring:bind path="purposeOfVisit">
                <form:input
                type="text"
                path="purposeOfVisit"
                required="true"
                placeholder="purposeOfVisit"
              />
            </spring:bind>
            <spring:bind path="category">
                <form:input
                type="text"
                path="category"
                required="true"
                placeholder="category"
              />
            </spring:bind>
            <spring:bind path="visited">
                <form:input
                type="text"
                path="visited"
                required="true"
                placeholder="visited"
              />
            </spring:bind>
            <spring:bind path="phone">
                <form:input
                type="text"
                path="phone"
                required="true"
                placeholder="phone"
              />
            </spring:bind>
            <button type="submit"
            >Submit</button>
        </form:form>

        
    </body> 
</html> 