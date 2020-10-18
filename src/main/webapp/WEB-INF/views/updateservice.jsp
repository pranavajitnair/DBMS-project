<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update service
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>
        <form:form method="post" modelAttribute="service" action="/admin/updateservice" role="form">
            <input type="text" value="${service.serviceid}" name="serviceid" class="form-control" id="serviceid"
            placeholder="serviceid" required ="true" readonly>
            <input type="text" value="${service.vendorid}" name="vendorid" class="form-control" id="vendorid"
            placeholder="vendorid" required ="true" >
            <input type="text" value="${service.description}" name="description" class="form-control" id="description"
            placeholder="description" required ="true">
            <input type="text" value="${service.startTime}" name="startTime" class="form-control" id="startTime"
            placeholder="start time" required ="true" >
            <input type="text" value="${service.endTime}" name="endTime" class="form-control" id="endTime"
            placeholder="end time" required ="true" >
            <input type="text" value="${service.monthlyAmount}" name="monthlyAmount" class="form-control" id="monthlyAmount"
            placeholder="monthly Amount" required ="true" >
            <input type="text" value="${service.name}" name="name" class="form-control" id="name"
            placeholder="name" required ="true" >
            <input type="text" value="${service.fund}" name="fund" class="form-control" id="fund"
            placeholder="funds allocated" required ="true" >
            <input type="text" value="${service.numOfPeople}" name="numOfPeople" class="form-control" id="numOfPeople"
            placeholder="num of People Involved" required ="true" >
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>