<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Resident
        </title>
    </head>
    <body>
        <h1>
            Update details
        </h1>
        <form:form method="post" modelAttribute="resident" action="/resident/update" role="form">
            <input type="text" value="${resident.residentid}" name="residentid" class="form-control" id="residentid"
            placeholder="residentid" required ="true" readonly>
            <input type="text" value="${resident.residentName}" name="residentName" class="form-control" id="residentName"
            placeholder="residentName" required ="true" >
            <input type="text" value="${resident.userid}" name="userid" class="form-control" id="userid"
            placeholder="userid" required ="true" readonly>
            <input type="text" value="${resident.apartmentid}" name="apartmentid" class="form-control" id="apartmentid"
            placeholder="apartmentid" required ="true" >
            <input type="text" value="${resident.code}" name="code" class="form-control" id="code"
            placeholder="code" required ="true" >
            <input type="text" value="${resident.numOfMembers}" name="numOfMembers" class="form-control" id="numOfMembers"
            placeholder="numOfMembers" required ="true" >
            <input type="text" value="${resident.isOwner}" name="isOwner" class="form-control" id="isOwner"
            placeholder="isOwner" required ="true" readonly>
            <input type="text" value="${resident.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true" >
            <button type="submit">Update</button>
        </form:form>
    </body>
</html>