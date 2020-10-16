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
        <h1>List of Projects</h1>
      </div>
    
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                    <th class="cell100 column1">ID</th>
                                    <th class="cell100 column1">Funds Allocated</th>
                                    <th class="cell100 column1">Start Date</th> 
                                    <th class="cell100 column1">End Date</th> 
                                    <th class="cell100 column1">Vendor ID</th> 
                                    <th class="cell100 column1">Short Description</th> 
                                    <th class="cell100 column1">Update Details</th>
                                    <th class="cell100 column1">Add a Payment</th>
                                    <th class="cell100 column1">View Payments</th>
                                    <th class="cell100 column1">Delete</th>
                                   
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
                                <c:forEach items="${projects}" var="project">
                                    <tr class="row100 body" >
                                    <td class="cell100 column1">${project.projectid}</td>
                                    <td class="cell100 column1">${project.fund}</td>
                                    <td class="cell100 column1">${project.startTime}</td> 
                                    <td class="cell100 column1">${project.endTime}</td> 
                                    <td class="cell100 column1">${project.vendorid}</td> 
                                    <td class="cell100 column1">${project.description}</td> 
                                    <td  class="cell100 column1">
                                        <button class="button" onclick="window.location.href='/admin/updateproject/${project.projectid}'">
                                        Update</button>
                                    </td >
                                    <td class="cell100 column1">
                                        <button class="button" onclick="func()">Add a payment</button>
                                    </td>
                                    <td>
                                        <input style="display: none;" placeholder="Enter the amount" id="input" type="text" required/>
                                    </td>
                                    <td>
                                        <button class="button" id="button" style="display: none;" onclick="pay('${project.projectid}','${project.vendorid}')">Pay</button>
                                    </td>
                                    <td  class="cell100 column1">
                                        <button class="button" onclick="window.location.href='/admin/viewpayments/${project.projectid}'">Payments</button>
                                    </td >
                                    <td class="cell100 column1"><button class="button" onclick="window.location.href='/admin/deleteproject/${project.projectid}'">
                                        Delete
                                    </button></td>
                                    </tr>
                                </c:forEach>
							</tbody>
                        </table>
                        <script>
                            function func(){
                                document.getElementById("button").style.display="block";
                                document.getElementById("input").style.display="block";
                            }
                            function pay(projectid,vendorid){
                                amount=document.getElementById("input");
                                window.location='/admin/makepayment?projectid='+projectid+'&vendorid='+vendorid+'&amount='+amount.value;
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