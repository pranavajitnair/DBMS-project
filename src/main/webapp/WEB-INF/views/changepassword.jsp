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
    <body onload="func()">  
        <div class="login-box">
          <h2>Change Password</h2>
        <form:form method="POST" modelAttribute="password" id="form1">
            <spring:bind path="op">
              <div class="user-box">
                <form:input
                type="password"
                path="op"
                required="true"
                placeholder="password"
              /> </div>
            </spring:bind>
            <spring:bind path="np1">
              <div class="user-box">
                <form:input
                type="password"
                path="np1"
                required="true"
                placeholder="new password minimum 8 characters"
              /></div>
            </spring:bind>
            <spring:bind path="np2">
              <div class="user-box">
                <form:input
                type="password"
                path="np2"
                required="true"
                placeholder="re enter new password"
              /></div>
            </spring:bind>
            <a style="cursor: pointer;" type="button" onclick="func1()">
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              Sumbit
          </a>
        </form:form>

      </div>
    </body> 
    <script>
        function func(){
            const params=new URLSearchParams(window.location.search);
            kz=params.get('kz');
            if(kz==1){
                alert("Oops! Something went wrong while updating");
                alert('Wrong password or the new passwords do not match');
            }
        }
        function func1(){
            pass=document.getElementById("form1").elements[1].value;
            if(pass.length<8){
              alert("password too short");
            }
            else{
              document.getElementById('form1').submit();
              alert('updated');
            }
        }
    </script>
</html> 