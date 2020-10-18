<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update project
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>
        <form:form method="post" modelAttribute="project" action="/admin/updateproject" role="form">
            <input type="text" value="${project.projectid}" name="projectid" class="form-control" id="projectid"
            placeholder="projectid" required ="true" readonly>
            <input type="text" value="${project.vendorid}" name="vendorid" class="form-control" id="vendorid"
            placeholder="Vendor ID" required ="true" >
            <input type="text" value="${project.description}" name="description" class="form-control" id="description"
            placeholder="description" required ="true">
            <input type="text" value="${project.startTime}" name="startTime" class="form-control" id="startTime"
            placeholder="start time" required ="true" >
            <input type="text" value="${project.endTime}" name="endTime" class="form-control" id="endTime"
            placeholder="end time" required ="true" >
            <input type="text" value="${project.fund}" name="fund" class="form-control" id="fund"
            placeholder="funds allocated" required ="true" >
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
    </body>
</html>