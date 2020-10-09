<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %> <%@
taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<spring:url var="css" value="/css" />
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 

 <html>
     <head>
         <title>
             Show dates
         </title>
     </head>
     <body>
            <c:forEach items="${dates}" var="date" >
                <button onclick="window.location.href='/resident/select/${facilityid}/${date}'">${date}</button>
            </c:forEach>
     </body>
 </html>