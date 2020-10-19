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
    <body onload="func1()">  
        <div class="login-box">
          <h2>Sign In</h2>
        <form:form method="POST" modelAttribute="user" id="form1" action="/j_spring_security_check">
            <spring:bind path="userid">
              <div class="user-box">
                <form:input
                type="text"
                path="userid"
                required="true"
                placeholder="User ID"
              /></div>
            </spring:bind>
            <spring:bind path="password">
              <div class="user-box">
                <form:input
                type="password"
                path="password"
                required="true"
                placeholder="password"
              /></div>
            </spring:bind>
            <a style="cursor: pointer;" type="button" onclick="func()">
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              Login
          </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <a onclick="func2()" type="button" style="font-size: xx-small; text-transform: lowercase; letter-spacing: 2px; cursor: pointer;"><u>Forgot Password?</u></a>
        </form:form>
      </div>
      <script>
        function func(){
              document.getElementById('form1').submit();
        }
        function func1(){
            if(window.location.href.includes('error')){
                alert('Wrong Credentials');
            }
        }
        function func2(){
            userid=document.getElementById("form1").elements[0].value;
            window.location='/forgot/updatepassword?userid='+userid;
        }
      </script>
    </body> 
</html> 