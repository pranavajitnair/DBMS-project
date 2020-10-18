<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Guest
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>
        <form:form method="post" modelAttribute="guest" action="/security/updateguest" role="form">
            <input type="text" value="${guest.guestid}" name="guestid" class="form-control" id="guestid"
            placeholder="Guest ID" required ="true" readonly>
            <input type="text" value="${guest.name}" name="name" class="form-control" id="name"
            placeholder="Name" required ="true" readonly>
            <input type="text" value="${guest.purposeOfVisit}" name="purposeOfVisit" class="form-control" id="purposeOfVisit"
            placeholder="Purpose of Visit" required ="true" readonly>
            <input type="text" value="${guest.entryTime}" name="entryTime" class="form-control" id="entryTime"
            placeholder="entry time (hh:mm)" required ="true" readonly>
            <input type="text" value="${guest.exitTime}" name="exitTime" class="form-control" id="exitTime"
            placeholder="exit time (hh:mm)" required ="true" >
            <input type="text" value="${guest.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true" readonly>
            <input type="text" value="${guest.category}" name="category" class="form-control" id="category"
            placeholder="category" required ="true" readonly>
            <input type="text" value="${guest.date}" name="date" class="form-control" id="date"
            placeholder="date" required ="true" readonly>
            <input type="text" value="${guest.visited}" name="visited" class="form-control" id="visited"
            placeholder="visited" required ="true" readonly>
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>