<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<jsp:include page="guestnavbar.jsp" />
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
        <h1>Guests</h1>
      </div>
    
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<button class="button" onclick="window.location.href='/security/addguest'">
                    Add +
                </button> <br><br>
				<div class="table100 ver2 m-
				<div class="table100 ver1 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                    <th class="cell100 column17">Guest ID</th>
                                    <th class="cell100 column17">Guest name</th>
                                    <th class="cell100 column17">Date of entry</th>
                                    <th class="cell100 column17">Contact Number</th>
                                    <th class="cell100 column17">Purpose of Visit</th>
                                    <th class="cell100 column17">Entry time</th>
                                    <th class="cell100 column17">Exit time</th>
                                    <th class="cell100 column17">Apartments visited</th>
                                    <th class="cell100 column17">Category</th>
                                    <th class="cell100 column17">Update entry time</th> 
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
						<table>
							<tbody>
                                <tr>
                                    <td> </td>
                                </tr>
                                <c:forEach items="${guests}" var="guest">
                                    <tr class="row100 body" >
                                        <td class="cell100 column17">${guest.guestid}</td>
                                        <td class="cell100 column17">${guest.name}</td>
                                        <td class="cell100 column17">${guest.date}</td>
                                        <td class="cell100 column17">${guest.phone}</td>
                                        <td class="cell100 column17">${guest.purposeOfVisit}</td>
                                        <td class="cell100 column17">${guest.entryTime}</td>
                                        <td class="cell100 column17">${guest.exitTime}</td>
                                        <td class="cell100 column17">${guest.visited}</td>
                                        <td class="cell100 column17">${guest.category}</td> 
                                        <td class="cell100 column17">
                                            <c:choose>
                                                <c:when test="${guest.exitTime==null}">
                                                    <button class="button" onclick="window.location.href='/security/updateguest/${guest.guestid}'">
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