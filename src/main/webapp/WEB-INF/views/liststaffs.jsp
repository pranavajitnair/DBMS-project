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
        <h1>StaffList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>staffid</th>
                    <th>name</th>
                    <th>phone</th> 
                    <th>houseDetails</th> 
                    <th>code</th> 
                    <th>userid</th> 
                    <th>street</th>  
                    <th>joinDate</th> 
                    <th>dob</th>
                </tr> 
            </thead>
            <c:forEach items="${staffs}" var="staff">
                <tbody>
                    <tr> 
                        <td>${staff.staffid}</td>
                        <td>${staff.name}</td>
                        <td>${staff.phone}</td> 
                        <td>${staff.houseDetails}</td> 
                        <td>${staff.code}</td> 
                        <td>${staff.userid}</td> 
                        <td>${staff.street}</td>  
                        <td>${staff.joinDate}</td> 
                        <td>${staff.dob}</td>
                        <td>  <button  onclick="window.location.href='/admin/deletesecownstaf/${staff.userid}'">
                            Delete
                        </button></td>
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
    </body>
</html> 