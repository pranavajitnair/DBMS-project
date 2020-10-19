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
    <body >  
        <div class="login-box">
          <h2>Reset Password</h2>
        <form:form method="POST" modelAttribute="user" id="form1" action="/forgot/postpassword">
            <spring:bind path="userid">
                <div class="user-box">
                <form:input
                type="hidden"
                path="userid"
                required="true"
                placeholder="userid"
                readonly="true"
                /></div>
            </spring:bind>
            <spring:bind path="password">
              <div class="user-box">
                <form:input
                type="password"
                path="password"
                required="true"
                placeholder="new password"
                value=""
              /></div>
            </spring:bind>
            <div class="user-box">
            <input type="password" required="true" placeholder="enter password again"/>
            </div>
            <a style="cursor: pointer;" type="button" onclick="func()">
              <span></span>
              <span></span>
              <span></span>
              <span></span>
              Update
          </a>
        </form:form>
      </div>
      <script>
        function func(){
            pass=document.getElementById("form1").elements[1].value;
            pass1=document.getElementById("form1").elements[2].value;
            if(pass.length<8 || pass.localeCompare(pass1)!=0){
                alert('password too short or the 2 passwords do not match');
            }
            else{
                document.getElementById("form1").elements[2].remove();
                alert("password updated");
                document.getElementById('form1').submit();
            }
        }
      </script>
    </body> 
</html> 