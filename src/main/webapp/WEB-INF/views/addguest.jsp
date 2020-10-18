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
        <h2>Add Guest</h2> 
        <form:form method="POST" modelAttribute="guest" id="form1">
            
            <spring:bind path="name">
                <div class="user-box">
                  <form:input
                type="text"
                path="name"
                required="true"
                placeholder="name"
              />
                </div>
            </spring:bind>
            <spring:bind path="entryTime">
               <div class="user-box">
                <form:input
                type="text"
                path="entryTime"
                required="true"
                placeholder="entry time (hh:mm)"
              />
               </div>
            </spring:bind>
            <spring:bind path="purposeOfVisit">
                <div class="user-box">
                  <form:input
                type="text"
                path="purposeOfVisit"
                required="true"
                placeholder="Purpose of Visit"
              />
                </div>
            </spring:bind>
            <spring:bind path="category">
               <div class="user-box">
                <form:input
                type="text"
                path="category"
                required="true"
                placeholder="category"
              />
               </div>
            </spring:bind>
            <spring:bind path="visited">
                <div class="user-box">
                  <form:input
                type="text"
                path="visited"
                required="true"
                placeholder="visited"
              />
                </div>
            </spring:bind>
            <spring:bind path="phone">
                <div class="user-box">
                  <form:input
                type="text"
                path="phone"
                required="true"
                placeholder="phone"
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