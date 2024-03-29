<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Booking
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body onload="popup('${kz}')">
        <form:form method="post" modelAttribute="book" action="/resident/updatebooking" role="form">
            <input type="hidden" value="${book.bookingid}" name="bookingid" class="form-control" id="bookingid"
            placeholder="bookingid" required ="true" readonly>
            <input type="text" value="${book.purposeOfBooking}" name="purposeOfBooking" class="form-control" id="purposeOfBooking"
            placeholder="Purpose of Booking" required ="true" >
            <input type="time" value="${book.startTime}" name="startTime" class="form-control" id="startTime"
            placeholder="start time" required ="true">
            <input type="time" value="${book.endTime}" name="endTime" class="form-control" id="endTime"
            placeholder="end time" required ="true">
            <input type="hidden" value="${book.facilityid}" name="facilityid" class="form-control" id="facilityid"
            placeholder="facilityid" required ="true" readonly>
            <input type="hidden" value="${book.residentid}" name="residentid" class="form-control" id="residentid"
            placeholder="residentid" required ="true" readonly>
            <input type="hidden" value="${book.date}" name="date" class="form-control" id="date"
            placeholder="date" required ="true" readonly>
            <input type="text" value="${book.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true">
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
        <script>
            function popup(kz){
                if(kz!='0'){
                    alert("enter valid timings");
                }
            }
        </script>
    </body>
</html>