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
        <h2>Add Service</h2> 
        <form:form method="POST" modelAttribute="service" id="form1">
            
            <spring:bind path="fund">
              <div class="user-box">
                <form:input
                type="text"
                path="fund"
                required="true"
                placeholder="Funds"
              /></div>
            </spring:bind>
            <spring:bind path="monthlyAmount">
               <div class="user-box">
                <form:input
                type="text"
                path="monthlyAmount"
                required="true"
                placeholder="monthly Amount"
              />
               </div>
            </spring:bind>
            <spring:bind path="vendorid">
              <div class="user-box">
                <form:input
                type="text"
                path="vendorid"
                required="true"
                placeholder="vendorid"
              />
              </div>
            </spring:bind>
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
            <spring:bind path="description">
                <div class="user-box">
                  <form:input
                type="text"
                path="description"
                required="true"
                placeholder="description"
              />
                </div>
            </spring:bind>
            <spring:bind path="startTime">
                <div class="user-box">
                  <form:input
                type="time"
                path="startTime"
                required="true"
                placeholder="start time"
              />
                </div>
            </spring:bind>
            <spring:bind path="endTime">
                <div class="user-box">
                  <form:input
                type="time"
                path="endTime"
                required="true"
                placeholder="end time"
              />
                </div>
            </spring:bind>
            <spring:bind path="numOfPeople">
                <div class="user-box">
                  <form:input
                type="text"
                path="numOfPeople"
                required="true"
                placeholder="Number of People"
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