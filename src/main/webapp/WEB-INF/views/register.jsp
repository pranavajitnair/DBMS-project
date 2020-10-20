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
        <link rel="stylesheet" type="text/css" href="../../css/main.css">
        <title>Start Spring MVC</title> 
    </head> 
    <body>  
        <div class="login-box">
          <h2>Register</h2>
        <form:form method="POST" modelAttribute="user" id="form1">
            <!-- <form:label path="username">Username</form:label> -->
            <spring:bind path="username">
              <div class="user-box">
                <form:input
                type="email"
                path="username"
                required="true"
                placeholder="User email"
              /> </div>
            </spring:bind>
            <spring:bind path="userid">
              <div class="user-box">
                <form:input
                type="hidden"
                path="userid"
                required="true"
                placeholder="User ID"
                readonly="true"
              /></div>
            </spring:bind>
            <spring:bind path="password">
              <div class="user-box">
                <form:input
                type="hidden"
                path="password"
                required="true"
                placeholder="password minimum 8 characters"
                readonly="true"
              /></div>
            </spring:bind>
            <spring:bind path="userType">
              <div class="user-box">
                <form:input
                type="text"
                path="userType"
                required="true"
                placeholder="userType"
              /></div>
            </spring:bind>
            <a style="cursor: pointer;" type="button" onclick="func()">
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              Sumbit
          </a>
        </form:form>
      </div>
      <script>
        function func(){
            pass=document.getElementById("form1").elements[2].value;
            email=document.getElementById("form1").elements[0].value;
            if(pass.length<8){
              alert('password too short');
            }
            else if(!email.includes('@')){
              alert('enter valid email id');
            }
            else{
              document.getElementById('form1').submit();
            }
        }
      </script>
    </body> 
</html> 