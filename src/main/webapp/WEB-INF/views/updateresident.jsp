<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Resident
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>
        
        <form:form method="post" modelAttribute="resident" action="/resident/update" role="form">
            <input type="hidden" value="${resident.residentid}" name="residentid" class="form-control" id="residentid"
            placeholder="residentid" required ="true" readonly>
            <input type="text" value="${resident.residentName}" name="residentName" class="form-control" id="residentName"
            placeholder="residentName" required ="true" >
            <input type="hidden" value="${resident.userid}" name="userid" class="form-control" id="userid"
            placeholder="userid" required ="true" readonly>
            <input type="text" value="${resident.apartmentid}" name="apartmentid" class="form-control" id="apartmentid"
            placeholder="apartmentid" required ="true" >
            <input type="text" value="${resident.code}" name="code" class="form-control" id="code"
            placeholder="code" required ="true" >
            <input type="text" value="${resident.numOfMembers}" name="numOfMembers" class="form-control" id="numOfMembers"
            placeholder="numOfMembers" required ="true" >
            <input type="hidden" value="${resident.isOwner}" name="isOwner" class="form-control" id="isOwner"
            placeholder="isOwner" required ="true" readonly>
            <input type="text" value="${resident.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true" >
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>