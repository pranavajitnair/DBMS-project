<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@taglib prefix="spring"
uri="http://www.springframework.org/tags" %>
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
        <h1>List of Maintenance</h1>
      </div>
      
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100 ver3 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                    <th class="cell100 column12">Maintenance ID</th>
                                    <th class="cell100 column12">Owner ID</th>
                                    <th class="cell100 column12">Amount</th>
                                    <th class="cell100 column12">Month</th>
                                    <th class="cell100 column12">Year</th>
                                    <th class="cell100 column12">Apartment ID</th>
                                    <th class="cell100 column12">Payment status</th>
                                    <th class="cell100 column12">Payment Status</th>
                                   
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
                                <c:forEach items="${mains}" var="main">
                                    <tr class="row100 body" >
                                        <td class="cell100 column12">${main.maintenanceid}</td>
                                        <td class="cell100 column12">${main.ownerid}</td>
                                        <td class="cell100 column12">${main.amount}</td>
                                        <td class="cell100 column12">${main.month}</td>
                                        <td class="cell100 column12">${main.year}</td>
                                        <td class="cell100 column12">${main.apartmentid}</td>
                                        <td class="cell100 column12">${main.paid}</td>
                                        <td class="cell100 column12">
                                            <c:choose>
                                                <c:when test="${main.paid==false}">
                                                    <button class="button" onclick="window.location.href='/staff/updatemaintenance/${main.month}/${main.year}/${main.maintenanceid}'">
                                                        Update
                                                    </button>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
							</tbody>
                        </table>
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