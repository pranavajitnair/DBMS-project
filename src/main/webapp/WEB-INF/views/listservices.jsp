<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<jsp:include page="adminnavbar.jsp" />
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V04</title>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html;  charset=ISO-8859-1"> 
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../../images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../css/util.css">
	<link rel="stylesheet" type="text/css" href="../../css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <div class="header">
        <h1>List of Services</h1>
      </div>
    
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table200">
                <button class="button" onclick="window.location.href='/admin/addservice'">
                    Add +
                </button> <br><br>
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                    <th class="cell100 column2">Service ID</th>
                                    <th class="cell100 column2">Service Name</th>
                                    <th class="cell100 column2">Funds Allocated</th>
                                    <th class="cell100 column2">Daily start time</th> 
                                    <th class="cell100 column2">Daily end time</th> 
                                    <th class="cell100 column2">Vendor ID</th> 
                                    <th class="cell100 column2">Short Description</th> 
                                    <th class="cell100 column2">People Involved</th>
                                    <th class="cell100 column2">Monthly Amount</th>
                                    <th class="cell100 column2">Update</th>
                                    <th class="cell100 column2">Add a Payment</th>
                                    <th class="cell100 column2">View Payments</th>
                                    <th class="cell100 column2">Delete</th>
                                   
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
                                <tr>
                                    <td>   </td>
                                </tr>
                                <c:forEach items="${services}" var="service">
                                    <tr class="row100 body" >
                                        <td class="cell100 column2">${service.serviceid}</td>
                                        <td class="cell100 column2">${service.name}</td>
                                        <td class="cell100 column2">${service.fund}</td>
                                        <td class="cell100 column2">${service.startTime}</td> 
                                        <td class="cell100 column2">${service.endTime}</td> 
                                        <td class="cell100 column2">${service.vendorid}</td> 
                                        <td class="cell100 column2">${service.description}</td> 
                                        <td class="cell100 column2">${service.numOfPeople}</td>
                                        <td class="cell100 column2">${service.monthlyAmount}</td>
                                        <td class="cell100 column2">
                                            <button class="button" onclick="window.location.href='/admin/updateservice/${service.serviceid}'">
                                            Update</button>
                                        </td>
                                        <td class="cell100 column2">
                                            <button class="button" onclick="func()">Pay Salary</button>
                                        </td>
                                        <td style="display: none;" id="dis1">
                                            <input style="display: none;" placeholder="Enter the amount" id="input" type="text" required/>
                                        </td>
                                        <td style="display: none;" id="dis2">
                                            <input style="display: none;" placeholder="enter the mm/yyyy" id="my" type="text" required/>
                                        </td>
                                        <td class="cell100 column2" style="display: none;" id="dis3">
                                            <button class="button" id="button" style="display: none;" onclick="pay('${service.serviceid}','${service.vendorid}')">Pay</button>
                                        </td>
                                        
                                        <td class="cell100 column2">
                                            <button class="button" onclick="func1()">View Salary</button>
                                        </td>
                                        <td style="display: none;" id="dis4">
                                            <input style="display: none;" placeholder="enter the mm/yyyy" id="my1" type="text" required/>
                                        </td>
                                        <td class="cell100 column2" style="display: none;" id="dis5">
                                            <button class="button" onclick="func2('${service.serviceid}')" style="display: none;" id="button1">View</button>
                                        </td>
                                        <td class="cell100 column2"><button class="button" onclick="window.location.href='/admin/deleteservice/${service.serviceid}'">
                                            Delete
                                        </button></td>
                                    </tr>
                                </c:forEach>
							</tbody>
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
                                document.getElementById("dis1").style.display="block";
                                document.getElementById("dis2").style.display="block";
                                document.getElementById("dis3").style.display="block";
                            }
                            function func1(){
                                document.getElementById("my1").style.display="block";
                                document.getElementById("button1").style.display="block";
                                document.getElementById("dis4").style.display="block";
                                document.getElementById("dis5").style.display="block";
                            }
                            function func2(serviceid){
                                monthyear=document.getElementById("my1");
                                window.location.href='/admin/viewsalary?serviceid='+serviceid+"&monthyear="+monthyear.value;
                            }
                        </script>
					</div>
				</div>
			</div>
		</div>
	</div>


<!--===============================================================================================-->	
	<script src="../../vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/bootstrap/js/popper.js"></script>
	<script src="../../vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../../vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})
		});
			
		
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>