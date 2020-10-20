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
        <form:form method="post" modelAttribute="project" action="javascript:func()" role="form" id="form1">
            <input type="hidden" value="${project.projectid}" name="projectid" class="form-control" id="projectid"
            placeholder="projectid" required ="true" readonly>
            <input type="text" value="${project.vendorid}" name="vendorid" class="form-control" id="vendorid"
            placeholder="Vendor ID" required ="true" >
            <input type="text" value="${project.description}" name="description" class="form-control" id="description"
            placeholder="description" required ="true">
            <input type="date" value="${project.startTime}" name="startTime" class="form-control" id="startTime"
            placeholder="start date" required ="true" >
            <input type="date" value="${project.endTime}" name="endTime" class="form-control" id="endTime"
            placeholder="end date" required ="true" >
            <input type="text" value="${project.fund}" name="fund" class="form-control" id="fund"
            placeholder="funds allocated" required ="true" >
            <input type="submit" value="Update" style="cursor: pointer;" />
        </form:form>
        <script>
            function func(){
                date0=document.getElementById("form1").elements[3];
                    date1=document.getElementById("form1").elements[4];
                    d=new Date(date0.value);
                    dt=d.getDate();
                    mn=d.getMonth();
                    mn++;
                    yy=d.getFullYear();
			              finaldate0=dt+"/"+mn+"/"+yy;
                    d=new Date(date1.value);
                    dt=d.getDate();
                    mn=d.getMonth();
                    mn++;
                    yy=d.getFullYear();
			              finaldate1=dt+"/"+mn+"/"+yy;
                    document.getElementById("form1").elements[3].type="text";
                    document.getElementById("form1").elements[4].type="text";
                    document.getElementById("form1").elements[3].value=finaldate0;
                    document.getElementById("form1").elements[4].value=finaldate1;
                    document.getElementById("form1").action='/admin/updateproject';
                    document.getElementById("form1").submit();
            }
        </script>
    </body>
</html>