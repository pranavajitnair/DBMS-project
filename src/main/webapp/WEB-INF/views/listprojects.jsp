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
        <h1>ProjectList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>projectid</th>
                    <th>fund</th>
                    <th>startTIme</th> 
                    <th>endTime</th> 
                    <th>vendorid</th> 
                    <th>description</th> 
                </tr> 
            </thead>
            <c:forEach items="${projects}" var="project">
                <tbody>
                    <tr> 
                        <td>${project.projectid}</td>
                        <td>${project.fund}</td>
                        <td>${project.startTime}</td> 
                        <td>${project.endTime}</td> 
                        <td>${project.vendorid}</td> 
                        <td>${project.description}</td> 
                        <td><button  onclick="window.location.href='/admin/deleteproject/${project.projectid}'">
                            Delete
                        </button></td>
                        <td>
                            <button onclick="window.location.href='/admin/updateproject/${project.projectid}'">
                            Update</button>
                        </td>
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
    </body>
</html> 