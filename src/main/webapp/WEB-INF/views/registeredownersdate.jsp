<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 

 <html>
    <head>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
     <body>
         <form action="javascript:func()" id="form">
         <input placeholder="month (mm)" type="text" required id="month">
         <input placeholder="year (yyyy)" type="text"  required id="year">
         <input value="Search" type="submit" style="cursor: pointer;" />
        </form>
         <script>
             function func(){
                var month=document.getElementById("form").elements[0];
                year=document.getElementById("form").elements[1];
                window.location = '/staff/registeredowners?month='+month.value+'&year='+year.value;
             }
         </script>
     </body>
 </html>