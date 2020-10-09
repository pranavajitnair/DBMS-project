<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update project
        </title>
    </head>
    <body>
        <h1>
            Update details
        </h1>
        <form:form method="post" modelAttribute="project" action="/admin/updateproject" role="form">
            <input type="text" value="${project.projectid}" name="projectid" class="form-control" id="projectid"
            placeholder="projectid" required ="true" readonly>
            <input type="text" value="${project.vendorid}" name="vendorid" class="form-control" id="vendorid"
            placeholder="vendorid" required ="true" >
            <input type="text" value="${project.description}" name="description" class="form-control" id="description"
            placeholder="description" required ="true">
            <input type="text" value="${project.startTime}" name="startTime" class="form-control" id="startTime"
            placeholder="startTime" required ="true" >
            <input type="text" value="${project.endTime}" name="endTime" class="form-control" id="endTime"
            placeholder="endTime" required ="true" >
            <input type="text" value="${project.fund}" name="fund" class="form-control" id="fund"
            placeholder="fund" required ="true" >
            <button type="submit">Update</button>
        </form:form>
    </body>
</html>