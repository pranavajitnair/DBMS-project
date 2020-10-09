<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Booking
        </title>
    </head>
    <body onload="popup('${kz}')">
        <h1>
            Update details
        </h1>
        <form:form method="post" modelAttribute="book" action="/resident/updatebooking" role="form">
            <input type="text" value="${book.bookingid}" name="bookingid" class="form-control" id="bookingid"
            placeholder="bookingid" required ="true" readonly>
            <input type="text" value="${book.purposeOfBooking}" name="purposeOfBooking" class="form-control" id="purposeOfBooking"
            placeholder="purposeOfBooking" required ="true" >
            <input type="text" value="${book.startTime}" name="startTime" class="form-control" id="startTime"
            placeholder="startTime" required ="true">
            <input type="text" value="${book.endTime}" name="endTime" class="form-control" id="endTime"
            placeholder="endTime" required ="true">
            <input type="text" value="${book.facilityid}" name="facilityid" class="form-control" id="facilityid"
            placeholder="facilityid" required ="true" readonly>
            <input type="text" value="${book.residentid}" name="residentid" class="form-control" id="residentid"
            placeholder="residentid" required ="true" readonly>
            <input type="text" value="${book.date}" name="date" class="form-control" id="date"
            placeholder="date" required ="true" readonly>
            <input type="text" value="${book.phone}" name="phone" class="form-control" id="phone"
            placeholder="phone" required ="true">
            <button type="submit">Update</button>
        </form:form>
        <script>
            function popup(kz){
                if(kz!='0'){
                    console.log(typeof kz);
                    alert("enter valid timings");
                    console.log("test")
                }
            }
        </script>
    </body>
</html>