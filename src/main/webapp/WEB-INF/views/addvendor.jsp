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
        <form:form method="POST" modelAttribute="vendor">
            
            <spring:bind path="name">
                <form:input
                type="text"
                path="name"
                required="true"
                placeholder="name"
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
            <spring:bind path="officeDetails">
                <form:input
                type="text"
                path="officeDetails"
                required="true"
                placeholder="officeDetails"
              />
            </spring:bind>
            <spring:bind path="email">
                <form:input
                type="text"
                path="email"
                required="true"
                placeholder="email"
              />
            </spring:bind>
            <spring:bind path="street">
                <form:input
                type="text"
                path="street"
                required="true"
                placeholder="street"
              />
            </spring:bind>
            <spring:bind path="city">
                <form:input
                type="text"
                path="city"
                required="true"
                placeholder="city"
              />
            </spring:bind>
            <spring:bind path="pincode">
                <form:input
                type="text"
                path="pincode"
                required="true"
                placeholder="pincode"
              />
            </spring:bind>
            <spring:bind path="state">
                <form:input
                type="text"
                path="state"
                required="true"
                placeholder="state"
              />
            </spring:bind>
            <spring:bind path="code">
                <form:input
                type="text"
                path="code"
                required="true"
                placeholder="code"
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
            <button type="submit"
            >Submit</button>
        </form:form>

        
    </body> 
</html> 