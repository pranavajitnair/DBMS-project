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
        <h2>Add Vendor</h2> 
        <form:form method="POST" modelAttribute="vendor" id="form1">
            
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
            <spring:bind path="officeDetails">
               <div class="user-box">
                <form:input
                type="text"
                path="officeDetails"
                required="true"
                placeholder="Office address"
              />
               </div>
            </spring:bind>
            <spring:bind path="email">
                <div class="user-box">
                  <form:input
                type="text"
                path="email"
                required="true"
                placeholder="email"
              />
                </div>
            </spring:bind>
            <spring:bind path="street">
                <div class="user-box">
                  <form:input
                type="text"
                path="street"
                required="true"
                placeholder="street"
              />
                </div>
            </spring:bind>
            <spring:bind path="city">
               <div class="user-box">
                <form:input
                type="text"
                path="city"
                required="true"
                placeholder="city"
              />
               </div>
            </spring:bind>
            <spring:bind path="pincode">
                <div class="user-box">
                  <form:input
                type="text"
                path="pincode"
                required="true"
                placeholder="pincode"
              />
                </div>
            </spring:bind>
            <spring:bind path="state">
                <div class="user-box">
                  <form:input
                type="text"
                path="state"
                required="true"
                placeholder="state"
              />
                </div>
            </spring:bind>
            <spring:bind path="code">
                <div class="user-box">
                  <form:input
                type="text"
                path="code"
                required="true"
                placeholder="code"
              />
                </div>
            </spring:bind>
            <spring:bind path="monthlyAmount">
               <div class="user-box">
                <form:input
                type="text"
                path="monthlyAmount"
                required="true"
                placeholder="monthlyAmount"
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