<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 
 <html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html;  
        charset=ISO-8859-1"> 
        <title>Start Spring MVC</title> 
    </head> 
    <body onload="popup('${kz}')"> 
        <h1>BookingList</h1> 
        <table>
            <thead>
                <tr> 
                    <th>bookingid</th>
                    <th>amount</th> 
                    <th>startTime</th> 
                    <th>endTime</th>
                    <th>residentid</th>
                    <th>purposeOfBooking</th>
                    <th>facilityid</th>
                    <th>date</th> 
                    <th>phone</th>
                </tr> 
            </thead>
            <c:forEach items="${bookings}" var="booking" varStatus="loop">
                <tbody>
                    <tr> 
                        <td>${booking.bookingid}</td>
                        <td>${booking.amount}</td>
                        <td>${booking.startTime}</td> 
                        <td>${booking.endTime}</td> 
                        <td>${booking.residentid}</td> 
                        <td>${booking.purposeOfBooking}</td>
                        <td>${booking.facilityid}</td> 
                        <td>${booking.date}</td> 
                        <td>${booking.phone}</td> 
                        <td>
                            <c:choose>
                                <c:when test="${test[loop.count-1]}">
                                    
                                    <button  onclick="window.location.href='/resident/deletebooking/${booking.bookingid}'">
                                        Delete
                                    </button>
                                </c:when>
                            </c:choose>
                        </td>
                    </tr> 
                </tbody>
            </c:forEach>
           
        </table>
        <script>
            function popup(kz){
                if(kz!='0'){
                    alert("too late to delete");
                }
            }
        </script>
    </body>
</html> 