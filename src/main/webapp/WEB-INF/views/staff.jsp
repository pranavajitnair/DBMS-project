<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
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
        <h1>Profile</h1>
      </div>
    
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table200">
                <button class="button" onclick="window.location.href='/staff/update/${staff.userid}'">
                    Update
                </button> <br><br>
				<div class="table100 ver2 m-b-110">
					<div class="table100-head">
						<table>
							<thead>
								<tr class="row100 head">
                                    <th class="cell100 column11">Staff ID</th>
                                    <th class="cell100 column11">Staff name</th>
                                    <th class="cell100 column11">Contact NUmber</th> 
                                    <th class="cell100 column11">Currennt Residence</th> 
                                    <th class="cell100 column11">Bank IFSC Code</th> 
                                    <th class="cell100 column11">user ID</th> 
                                    <th class="cell100 column11">Street</th>  
                                    <th class="cell100 column11">Join Date</th> 
                                    <th class="cell100 column11">date of Birth</th>
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
                                <tr class="row100 body" >
                                    <td class="cell100 column11">${staff.staffid}</td>
                                    <td class="cell100 column11">${staff.name}</td>
                                    <td class="cell100 column11">${staff.phone}</td> 
                                    <td class="cell100 column11">${staff.houseDetails}</td> 
                                    <td class="cell100 column11">${staff.code}</td> 
                                    <td class="cell100 column11">${staff.userid}</td> 
                                    <td class="cell100 column11">${staff.street}</td>  
                                    <td class="cell100 column11">${staff.joinDate}</td> 
                                    <td class="cell100 column11">${staff.dob}</td>
                                </tr>
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