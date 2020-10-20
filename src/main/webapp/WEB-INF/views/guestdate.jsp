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
            <input type="date" name="date" id="date"
                placeholder="dd/mm/yyyy" required ="true">
                <input type="submit" value="Find" style="cursor: pointer;"/>
        </form>
            <script>
                function func(){
                    date=document.getElementById("form").elements[0];
                    d=new Date(date.value);
                    dt=d.getDate();
                    mn=d.getMonth();
                    mn++;
                    yy=d.getFullYear();
			        finaldate=dt+"/"+mn+"/"+yy;
                    window.location='/security/listguestsdate?date='+finaldate;
                }
            </script>
    </body>
</html>