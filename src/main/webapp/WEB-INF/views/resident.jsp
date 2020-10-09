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
        <h1>ResidentList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>residentid</th>
                    <th>residentName</th>
                    <th>phone</th> 
                    <th>numOfMembers</th> 
                    <th>code</th> 
                    <th>userid</th> 
                    <th>apartmentid</th>  
                    <th>isOwner</th> 
                </tr> 
            </thead>
                <tbody>
                    <tr> 
                        <td>${resident.residentid}</td>
                        <td>${resident.residentName}</td>
                        <td>${resident.phone}</td> 
                        <td>${resident.numOfMembers}</td> 
                        <td>${resident.code}</td> 
                        <td>${resident.userid}</td> 
                        <td>${resident.apartmentid}</td>  
                        <td>${resident.isOwner}</td> 
                    </tr> 
                </tbody>
                <button  onclick="window.location.href='/resident/update/${resident.userid}'">
                    Update
                </button>
                <c:choose>
                    <c:when test="${resident.isOwner}">
                        <button  onclick="window.location.href='/owner/home'">
                            Switch
                        </button>
                    </c:when>
                </c:choose>
        </table>
    </body>
</html> 