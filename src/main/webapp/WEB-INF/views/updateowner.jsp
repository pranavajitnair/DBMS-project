<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Owner
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>
        <form:form method="post" modelAttribute="owner" action="/owner/update" role="form">
            <input type="text" value="${owner.ownerid}" name="ownerid" class="form-control" id="ownerid"
            placeholder="ownerid" required ="true" readonly>
            <input type="text" value="${owner.ownerName}" name="ownerName" class="form-control" id="ownerName"
            placeholder="Owner name" required ="true" >
            <input type="text" value="${owner.userid}" name="userid" class="form-control" id="userid"
            placeholder="userid" required ="true" readonly>
            <input type="text" value="${owner.apartmentid}" name="apartmentid" class="form-control" id="apartmentid"
            placeholder="Apartment ID" required ="true" >
            <input type="text" value="${owner.houseDetails}" name="houseDetails" class="form-control" id="houseDetails"
            placeholder="House Address" required ="true" >
            <input type="text" value="${owner.street}" name="street" class="form-control" id="street"
            placeholder="street" required ="true" >
            <input type="text" value="${owner.state}" name="state" class="form-control" id="state"
            placeholder="state" required ="true" >
            <input type="text" value="${owner.city}" name="city" class="form-control" id="city"
            placeholder="city" required ="true" >
            <input type="text" value="${owner.country}" name="country" class="form-control" id="country"
            placeholder="country" required ="true" >
            <input type="text" value="${owner.pincode}" name="pincode" class="form-control" id="pincode"
            placeholder="pincode" required ="true" >
            <input type="text" value="${owner.code}" name="code" class="form-control" id="code"
            placeholder="IFSC Code" required ="true" >
            <input type="text" value="${owner.dateOfPurchase}" name="dateOfPurchase" class="form-control" id="dateOfPurchase"
            placeholder="Date of Purchase" required ="true" >
            <input type="text" value="${owner.isResident}" name="isResident" class="form-control" id="isResident"
            placeholder="is Resident" required ="true" readonly>
            <input type="text" value="${owner.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true" >
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>