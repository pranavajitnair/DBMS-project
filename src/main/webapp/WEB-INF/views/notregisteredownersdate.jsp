<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 

 <html>
     <body>
         <input placeholder="month" type="text" required id="month">
         <input placeholder="year" type="text"  required id="year">
         <button onclick="func()">Search</button>
         <script>
             function func(){
                month=document.getElementById("month");
                year=document.getElementById("year");
                window.location = '/staff/notregisteredowners?month='+month.value+'&year='+year.value;
             }
         </script>
     </body>
 </html>