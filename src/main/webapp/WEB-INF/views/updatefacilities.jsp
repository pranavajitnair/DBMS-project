<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
        <title>
            Update Facilities
        </title>
    </head>
    <body>
        <form:form method="post" modelAttribute="facility" action="/admin/updatefacilities" role="form">
            <input type="hidden" value="${facility.facilityid}" name="facilityid" class="form-control" id="facilityid"
            placeholder="facilityid" required ="true" readonly>
            <input type="text" value="${facility.facilityName}" name="facilityName" class="form-control" id="facilityName"
            placeholder="facilityName" required ="true" >
            <input type="text" value="${facility.amountPerHour}" name="amountPerHour" class="form-control" id="amountPerHour"
            placeholder="amountPerHour" required ="true">
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>