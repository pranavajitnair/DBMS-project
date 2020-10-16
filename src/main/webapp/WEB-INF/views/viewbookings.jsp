<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="residentnavbar.jsp" />
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
<body onload="popup('${kz}')">
    <div class="header">
        <h1>Your Bookings</h1>
      </div>
    
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table200">
				<div class="table100 ver3 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                    <th class="cell100 column16">Booking ID</th>
                                    <th class="cell100 column16">Amount</th> 
                                    <th class="cell100 column16">Start time</th> 
                                    <th class="cell100 column16">End time</th>
                                    <th class="cell100 column16">Resident ID</th>
                                    <th class="cell100 column16">Purpose of Booking</th>
                                    <th class="cell100 column16">Facility ID</th>
                                    <th class="cell100 column16">Date of Event</th> 
                                    <th class="cell100 column16">Contact Number</th>
                                    <th class="cell100 column16">Delete</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
                                <c:forEach items="${bookings}" var="booking" varStatus="loop">
                                    <tr class="row100 body" >
                                        <td class="cell100 column16">${booking.bookingid}</td>
                                        <td class="cell100 column16">${booking.amount}</td>
                                        <td class="cell100 column16">${booking.startTime}</td> 
                                        <td class="cell100 column16">${booking.endTime}</td> 
                                        <td class="cell100 column16">${booking.residentid}</td> 
                                        <td class="cell100 column16">${booking.purposeOfBooking}</td>
                                        <td class="cell100 column16">${booking.facilityid}</td> 
                                        <td class="cell100 column16">${booking.date}</td> 
                                        <td class="cell100 column16">${booking.phone}</td> 
                                        <td class="cell100 column16">
                                            <c:choose>
                                                <c:when test="${test[loop.count-1]}">
                                                    <button class="button" onclick="window.location.href='/resident/deletebooking/${booking.bookingid}'">
                                                        Delete
                                                    </button>
                                                </c:when>
                                            </c:choose>
                                        </td>
                                    </tr>
                                </c:forEach>
							</tbody>
                        </table>
                        <script>
                            function popup(kz){
                                if(kz!='0'){
                                    alert("too late to delete");
                                }
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