<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Apartment
        </title>
        <link rel="stylesheet" type="text/css" href="../../css/form.css">
    </head>
    <body>
        <form action="javascript:func()" id="form" >
            <input type="text" name="tower" id="tower"
                placeholder="tower name" required ="true">
            <input type="text" name="flat" id="flat"
            placeholder="flat Number" required ="true">
                <input type="submit" value="Find" style="cursor: pointer;"/>
        </form>
            <script>
                function func(){
                    tower=document.getElementById("form").elements[0].value;
                    flat=document.getElementById("form").elements[1].value;
                    window.location='/apartment/view?tower='+tower+'&flat='+flat;
                }
            </script>
    </body>
</html>