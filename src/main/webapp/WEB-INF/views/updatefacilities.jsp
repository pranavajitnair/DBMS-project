<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Facilities
        </title>
    </head>
    <body>
        <h1>
            Update details
        </h1>
        <form:form method="post" modelAttribute="facility" action="/admin/updatefacilities" role="form">
            <input type="text" value="${facility.facilityid}" name="facilityid" class="form-control" id="facilityid"
            placeholder="facilityid" required ="true" readonly>
            <input type="text" value="${facility.facilityName}" name="facilityName" class="form-control" id="facilityName"
            placeholder="facilityName" required ="true" >
            <input type="text" value="${facility.amountPerHour}" name="amountPerHour" class="form-control" id="amountPerHour"
            placeholder="amountPerHour" required ="true">
            <button type="submit">Update</button>
        </form:form>
    </body>
</html>