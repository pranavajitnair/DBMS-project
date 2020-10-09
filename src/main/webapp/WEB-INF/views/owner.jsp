<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 
 <html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html;  
        charset=ISO-8859-1"> 
        <title>Start Spring MVC</title> 
    </head> 
    <body> 
        <h1>Owner</h1>
        <table>
            <thead>
                <tr>
                    <th>ownerid</th>
                    <th>ownerName</th>
                    <th>phone</th> 
                    <th>houseDetails</th> 
                    <th>street</th> 
                    <th>city</th> 
                    <th>state</th> 
                    <th>country</th> 
                    <th>pincode</th> 
                    <th>dateOfPurchase</th> 
                    <th>code</th> 
                    <th>userid</th> 
                    <th>apartmentid</th>  
                    <th>isResident</th> 
                </tr>
            </thead>
            <tbody>
                <tr> 
                    <td>${owner.ownerid}</td>
                    <td>${owner.ownerName}</td>
                    <td>${owner.phone}</td> 
                    <td>${owner.houseDetails}</td> 
                    <td>${owner.street}</td> 
                    <td>${owner.city}</td> 
                    <td>${owner.state}</td> 
                    <td>${owner.country}</td> 
                    <td>${owner.pincode}</td> 
                    <td>${owner.dateOfPurchase}</td> 
                    <td>${owner.code}</td> 
                    <td>${owner.userid}</td> 
                    <td>${owner.apartmentid}</td>  
                    <td>${owner.isResident}</td> 
                </tr> 
            </tbody>
            <button  onclick="window.location.href='/owner/update/${owner.userid}'">
                Update
            </button>
            <c:choose>
                    <c:when test="${owner.isResident}">
                        <button  onclick="window.location.href='/resident/home'">
                            Switch
                        </button>
                    </c:when>
                </c:choose>
        </table> 
    </body>
</html> 