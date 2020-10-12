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
        <h1>PaymentList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>transactionid</th>
                    <th>projectid</th>
                    <th>vendorid</th>
                    <th>amount</th>
                </tr> 
            </thead>
            <c:forEach items="${payments}" var="payment">
                <tbody>
                    <tr> 
                        <td>${payment.transactionid}</td>
                        <td>${payment.projectid}</td>
                        <td>${payment.vendorid}</td>
                        <td>${payment.amount}</td>
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
    </body>
</html> 