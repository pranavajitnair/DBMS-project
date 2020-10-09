<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update service
        </title>
    </head>
    <body>
        <h1>
            Update details
        </h1>
        <form:form method="post" modelAttribute="service" action="/admin/updateservice" role="form">
            <input type="text" value="${service.serviceid}" name="serviceid" class="form-control" id="serviceid"
            placeholder="serviceid" required ="true" readonly>
            <input type="text" value="${service.vendorid}" name="vendorid" class="form-control" id="vendorid"
            placeholder="vendorid" required ="true" >
            <input type="text" value="${service.description}" name="description" class="form-control" id="description"
            placeholder="description" required ="true">
            <input type="text" value="${service.startTime}" name="startTime" class="form-control" id="startTime"
            placeholder="startTime" required ="true" >
            <input type="text" value="${service.endTime}" name="endTime" class="form-control" id="endTime"
            placeholder="endTime" required ="true" >
            <input type="text" value="${service.monthlyAmount}" name="monthlyAmount" class="form-control" id="monthlyAmount"
            placeholder="monthlyAmount" required ="true" >
            <input type="text" value="${service.name}" name="name" class="form-control" id="name"
            placeholder="name" required ="true" >
            <input type="text" value="${service.fund}" name="fund" class="form-control" id="fund"
            placeholder="fund" required ="true" >
            <input type="text" value="${service.numOfPeople}" name="numOfPeople" class="form-control" id="numOfPeople"
            placeholder="numOfPeople" required ="true" >
            <button type="submit">Update</button>
        </form:form>
    </body>
</html>