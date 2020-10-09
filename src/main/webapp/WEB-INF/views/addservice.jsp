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
        <form:form method="POST" modelAttribute="service">
            
            <spring:bind path="fund">
                <form:input
                type="text"
                path="fund"
                required="true"
                placeholder="Fund"
              />
            </spring:bind>
            <spring:bind path="monthlyAmount">
                <form:input
                type="text"
                path="monthlyAmount"
                required="true"
                placeholder="monthlyAmount"
              />
            </spring:bind>
            <spring:bind path="vendorid">
                <form:input
                type="text"
                path="vendorid"
                required="true"
                placeholder="vendorid"
              />
            </spring:bind>
            <spring:bind path="name">
                <form:input
                type="text"
                path="name"
                required="true"
                placeholder="name"
              />
            </spring:bind>
            <spring:bind path="description">
                <form:input
                type="text"
                path="description"
                required="true"
                placeholder="description"
              />
            </spring:bind>
            <spring:bind path="startTime">
                <form:input
                type="text"
                path="startTime"
                required="true"
                placeholder="startTime"
              />
            </spring:bind>
            <spring:bind path="endTime">
                <form:input
                type="text"
                path="endTime"
                required="true"
                placeholder="endTime"
              />
            </spring:bind>
            <spring:bind path="numOfPeople">
                <form:input
                type="text"
                path="numOfPeople"
                required="true"
                placeholder="numOfPeople"
              />
            </spring:bind>
            <button type="submit"
            >Submit</button>
        </form:form>

        
    </body> 
</html> 