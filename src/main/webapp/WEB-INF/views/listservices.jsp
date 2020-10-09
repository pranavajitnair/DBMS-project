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
        <h1>ServiceList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>serviceid</th>
                    <th>name</th>
                    <th>fund</th>
                    <th>startTIme</th> 
                    <th>endTime</th> 
                    <th>vendorid</th> 
                    <th>description</th> 
                    <th>numOfPeople</th>
                    <th>monthlyAmount</th>
                </tr> 
            </thead>
            <c:forEach items="${services}" var="service">
                <tbody>
                    <tr> 
                        <td>${service.serviceid}</td>
                        <td>${service.name}</td>
                        <td>${service.fund}</td>
                        <td>${service.startTime}</td> 
                        <td>${service.endTime}</td> 
                        <td>${service.vendorid}</td> 
                        <td>${service.description}</td> 
                        <td>${service.numOfPeople}</td>
                        <td>${service.monthlyAmount}</td>
                        <td><button  onclick="window.location.href='/admin/deleteservice/${service.serviceid}'">
                            Delete
                        </button></td>
                        <td>
                            <button onclick="window.location.href='/admin/updateservice/${service.serviceid}'">
                            Update</button>
                        </td>
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
    </body>
</html> 