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
        <form action="javascript:func()" id="form" >
            <input type="text" name="date" id="date"
                placeholder="dd/mm/yyyy" required ="true">
                <input type="submit" value="Find" style="cursor: pointer;"/>
        </form>
            <script>
                function func(){
                    date=document.getElementById("form").elements[0];
                    window.location = '/security/listguestsdate?date='+date.value;
                }
            </script>
    </body>
</html>