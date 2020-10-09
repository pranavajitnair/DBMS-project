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
        <h1>VendorList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>vendorid</th>
                    <th>name</th>
                    <th>phone</th> 
                    <th>officeDetails</th> 
                    <th>street</th> 
                    <th>city</th> 
                    <th>state</th> 
                    <th>pincode</th> 
                    <th>code</th> 
                    <th>monthlyAmount</th>   
                    <th>email</th> 
                </tr> 
            </thead>
            <c:forEach items="${vendors}" var="vendor">
                <tbody>
                    <tr> 
                        <td>${vendor.vendorid}</td>
                        <td>${vendor.name}</td>
                        <td>${vendor.phone}</td> 
                        <td>${vendor.officeDetails}</td> 
                        <td>${vendor.street}</td> 
                        <td>${vendor.city}</td> 
                        <td>${vendor.state}</td> 
                        <td>${vendor.pincode}</td> 
                        <td>${vendor.code}</td> 
                        <td>${vendor.monthlyAmount}</td> 
                        <td>${vendor.email}</td>  
                        <td><button  onclick="window.location.href='/admin/deletevendor/${vendor.vendorid}'">
                            Delete
                        </button></td>
                        <td>
                            <button onclick="window.location.href='/admin/updatevendor/${vendor.vendorid}'">
                            Update</button>
                        </td>
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
    </body>
</html> 