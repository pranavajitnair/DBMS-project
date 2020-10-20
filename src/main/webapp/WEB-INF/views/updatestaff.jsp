<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Staff
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>

        <form:form method="post" modelAttribute="staff" action="/staff/update" role="form">
            <input type="hidden" value="${staff.staffid}" name="staffid" class="form-control" id="staffid"
            placeholder="staffid" required ="true" readonly>
            <input type="text" value="${staff.name}" name="name" class="form-control" id="name"
            placeholder="name" required ="true" >
            <input type="hidden" value="${staff.userid}" name="userid" class="form-control" id="userid"
            placeholder="userid" required ="true" readonly>
            <input type="text" value="${staff.houseDetails}" name="houseDetails" class="form-control" id="houseDetails"
            placeholder="houseDetails" required ="true" >
            <input type="text" value="${staff.code}" name="code" class="form-control" id="code"
            placeholder="IFSC Code" required ="true" >
            <input type="text" value="${staff.street}" name="street" class="form-control" id="street"
            placeholder="street" required ="true" >
            <input type="text" value="${staff.dob}" name="dob" class="form-control" id="dob"
            placeholder="Date of Birth (dd/mm/yyyy)" required ="true">
            <input type="text" value="${staff.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true" >
            <input type="hidden" value="${staff.joinDate}" name="joinDate" class="form-control" id="joinDate"
            placeholder="Join Date" required ="true" readonly>
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>