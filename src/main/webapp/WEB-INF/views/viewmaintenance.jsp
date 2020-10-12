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
        <h1>MaintenanceList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>ownerid</th>
                    <th>amount</th>
                    <th>month</th>
                    <th>year</th>
                    <th>apartmentid</th>
                    <th>maintenanceid</th>
                    <th>paid</th>
                </tr> 
            </thead>
            <c:forEach items="${mains}" var="main">
                <tbody>
                    <tr> 
                        <td>${main.ownerid}</td>
                        <td>${main.amount}</td>
                        <td>${main.month}</td>
                        <td>${main.year}</td>
                        <td>${main.apartmentid}</td>
                        <td>${main.maintenanceid}</td>
                        <td>${main.paid}</td>
                        <td>
                            <c:choose>
                                <c:when test="${main.paid==false}">
                                    <button  onclick="window.location.href='/staff/updatemaintenance/${main.month}/${main.year}/${main.maintenanceid}'">
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