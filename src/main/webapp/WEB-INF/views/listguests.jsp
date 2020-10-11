<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 
 <html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html;  
        charset=ISO-8859-1"> 
        <title>Start Spring MVC</title> 
    </head> 
    <body> 
        <h1>FacilitiesList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>guestid</th>
                    <th>name</th>
                    <th>date</th>
                    <th>phone</th>
                    <th>purposeOfVisit</th>
                    <th>entryTime</th>
                    <th>exitTime</th>
                    <th>visited</th>
                    <th>category</th> 
                </tr> 
            </thead>
            <c:forEach items="${guests}" var="guest">
                <tbody>
                    <tr> 
                        <td>${guest.guestid}</td>
                        <td>${guest.name}</td>
                        <td>${guest.date}</td>
                        <td>${guest.phone}</td>
                        <td>${guest.purposeOfVisit}</td>
                        <td>${guest.entryTime}</td>
                        <td>${guest.exitTime}</td>
                        <td>${guest.visited}</td>
                        <td>${guest.category}</td> 
                        <td>
                            <c:choose>
                                <c:when test="${guest.exitTime==null}">
                                    <button  onclick="window.location.href='/security/updateguest/${guest.guestid}'">
                                        Update
                                    </button>
                                </c:when>
                            </c:choose>
                        </td>
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
    </body>
</html> 