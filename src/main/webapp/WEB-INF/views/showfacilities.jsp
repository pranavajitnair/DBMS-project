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
                    <th>facilityid</th>
                    <th>facilityName</th>
                    <th>amountPerHour</th> 
                </tr> 
            </thead>
            <c:forEach items="${facilities}" var="facility">
                <tbody>
                    <tr> 
                        <td>${facility.facilityid}</td>
                        <td>${facility.facilityName}</td>
                        <td>${facility.amountPerHour}</td> 
                        <td><button  onclick="window.location.href='/resident/selectfacilities/${facility.facilityid}'">
                            Select
                        </button></td
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
    </body>
</html> 