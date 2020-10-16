<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Staff
        </title>
    </head>
    <body>
        <h1>
            Update details
        </h1>
        <form:form method="post" modelAttribute="staff" action="/staff/update" role="form">
            <input type="text" value="${staff.staffid}" name="staffid" class="form-control" id="staffid"
            placeholder="staffid" required ="true" readonly>
            <input type="text" value="${staff.name}" name="name" class="form-control" id="name"
            placeholder="name" required ="true" >
            <input type="text" value="${staff.userid}" name="userid" class="form-control" id="userid"
            placeholder="userid" required ="true" readonly>
            <input type="text" value="${staff.houseDetails}" name="houseDetails" class="form-control" id="houseDetails"
            placeholder="houseDetails" required ="true" >
            <input type="text" value="${staff.code}" name="code" class="form-control" id="code"
            placeholder="code" required ="true" >
            <input type="text" value="${staff.street}" name="street" class="form-control" id="street"
            placeholder="street" required ="true" >
            <input type="text" value="${staff.dob}" name="dob" class="form-control" id="dob"
            placeholder="dob" required ="true">
            <input type="text" value="${staff.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true" >
            <input type="text" value="${staff.joinDate}" name="joinDate" class="form-control" id="joinDate"
            placeholder="joinDate" required ="true" readonly>
            <button type="submit">Update</button>
        </form:form>
    </body>
</html>