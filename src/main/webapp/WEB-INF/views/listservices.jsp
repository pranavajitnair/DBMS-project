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
                        <td>
                            <button onclick="window.location.href='/admin/updateservice/${service.serviceid}'">
                            Update</button>
                        </td>
                        <td>
                            <button onclick="func()">Pay Salary</button>
                        </td>
                        <td>
                            <input style="display: none;" placeholder="Enter the amount" id="input" type="text" required/>
                        </td>
                        <td>
                            <input style="display: none;" placeholder="enter the mm/yyyy" id="my" type="text" required/>
                        </td>
                        <td>
                            <button  id="button" style="display: none;" onclick="pay('${service.serviceid}','${service.vendorid}')">Pay</button>
                        </td>
                        <td>
                            <input style="display: none;" placeholder="enter the mm/yyyy" id="my1" type="text" required/>
                        </td>
                        <td>
                            <button onclick="func1()">View Salary</button>
                        </td>
                        <td>
                            <button onclick="func2('${service.serviceid}')" style="display: none;" id="button1">View</button>
                        </td>
                        <td><button  onclick="window.location.href='/admin/deleteservice/${service.serviceid}'">
                            Delete
                        </button></td>
                    </tr> 
                </tbody>
            </c:forEach>
        </table>
        <script>
            function pay(serviceid,vendorid){
                salary=document.getElementById("input");
                monthyear=document.getElementById("my");
                window.location.href='/admin/paysalary?serviceid='+serviceid+"&vendorid="+vendorid+"&salary="+salary.value+"&monthyear="+monthyear.value;
            }
            function func(){
                document.getElementById("button").style.display="block";
                document.getElementById("input").style.display="block";
                document.getElementById("my").style.display="block";
            }
            function func1(){
                document.getElementById("my1").style.display="block";
                document.getElementById("button1").style.display="block";
            }
            function func2(serviceid){
                monthyear=document.getElementById("my1");
                window.location.href='/admin/viewsalary?serviceid='+serviceid+"&monthyear="+monthyear.value;
            }
        </script>
    </body>
</html> 