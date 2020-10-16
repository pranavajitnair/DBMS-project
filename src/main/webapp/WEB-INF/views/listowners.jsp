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
        <h1>List of Owners</h1>
      </div>
    
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table200">
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                    <th class="cell100 column4">Owner ID</th>
                                    <th class="cell100 column4">Owner name</th>
                                    <th class="cell100 column4">Contact Number</th> 
                                    <th class="cell100 column4">current Residence</th> 
                                    <th class="cell100 column4">Street</th> 
                                    <th class="cell100 column4">City</th> 
                                    <th class="cell100 column4">State</th> 
                                    <th class="cell100 column4">Country</th> 
                                    <th class="cell100 column4">Zipcode</th> 
                                    <th class="cell100 column4">Date Of Purchase</th> 
                                    <th class="cell100 column4">Bank IFSC Code</th> 
                                    <th class="cell100 column4">User ID</th> 
                                    <th class="cell100 column4">Apartment ID</th>  
                                    <th class="cell100 column4">Currently is Resident</th> 
                                    <th class="cell1000 column4">Delete</th>
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
                                <tr>
                                    <td>   </td>
                                </tr>
                                <c:forEach items="${owners}" var="owner">
                                    <tr class="row100 body" >
                                        <td class="cell1000 column4">${owner.ownerid}</td>
                                        <td class="cell1000 column4">${owner.ownerName}</td>
                                        <td class="cell1000 column4">${owner.phone}</td> 
                                        <td class="cell1000 column4">${owner.houseDetails}</td> 
                                        <td class="cell1000 column4">${owner.street}</td> 
                                        <td class="cell1000 column4">${owner.city}</td> 
                                        <td class="cell1000 column4">${owner.state}</td> 
                                        <td class="cell1000 column4">${owner.country}</td> 
                                        <td class="cell1000 column4">${owner.pincode}</td> 
                                        <td class="cell1000 column4">${owner.dateOfPurchase}</td> 
                                        <td class="cell1000 column4">${owner.code}</td> 
                                        <td class="cell1000 column4">${owner.userid}</td> 
                                        <td class="cell1000 column4">${owner.apartmentid}</td>  
                                        <td class="cell1000 column4">${owner.isResident}</td> 
                                        <td class="cell1000 column4">
                                            <button class="button" onclick="window.location.href='/admin/deletesecownstaf/${owner.userid}'">
                                            Delete
                                            </button>
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