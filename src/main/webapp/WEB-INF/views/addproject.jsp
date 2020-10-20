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
        <h2>Add Project</h2> 
        <form:form method="POST" modelAttribute="project" id="form1">
        
            <spring:bind path="fund">
              <div class="user-box">
                <form:input
                type="text"
                path="fund"
                required="true"
                placeholder="Fund"
              /></div>
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
                type="date"
                path="startTime"
                required="true"
                placeholder="start date"
              />
               </div>
            </spring:bind>
            <spring:bind path="endTime">
              <div class="user-box">
                <form:input
                type="date"
                path="endTime"
                required="true"
                placeholder="end date"
              />
              </div>
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
                    date0=document.getElementById("form1").elements[3];
                    date1=document.getElementById("form1").elements[4];
                    d=new Date(date0.value);
                    dt=d.getDate();
                    mn=d.getMonth();
                    mn++;
                    yy=d.getFullYear();
			              finaldate0=dt+"/"+mn+"/"+yy;
                    d=new Date(date1.value);
                    dt=d.getDate();
                    mn=d.getMonth();
                    mn++;
                    yy=d.getFullYear();
			              finaldate1=dt+"/"+mn+"/"+yy;
                    document.getElementById("form1").elements[3].type="text";
                    document.getElementById("form1").elements[4].type="text";
                    document.getElementById("form1").elements[3].value=finaldate0;
                    document.getElementById("form1").elements[4].value=finaldate1;
                    document.getElementById('form1').submit();
                }
      </script>
    </body> 
</html> 