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
        <form:form method="POST" modelAttribute="user">
            <form:label path="username">Username</form:label>
            <spring:bind path="username">
                <form:input
                type="text"
                path="username"
                required="true"
                placeholder="Username"
              />
            </spring:bind>
            <spring:bind path="userid">
                <form:input
                type="text"
                path="userid"
                required="true"
                placeholder="Userid"
              />
            </spring:bind>
            <spring:bind path="password">
                <form:input
                type="text"
                path="password"
                required="true"
                placeholder="password"
              />
            </spring:bind>
            <spring:bind path="userType">
                <form:input
                type="text"
                path="userType"
                required="true"
                placeholder="userType"
              />
            </spring:bind>
            <button type="submit"
            >Submit</button>
        </form:form>

        
    </body> 
</html> 