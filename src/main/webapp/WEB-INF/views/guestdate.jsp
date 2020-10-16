<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Guest
        </title>
    </head>
    <body>
        <input type="text" name="date" id="date"
            placeholder="dd/mm/yyyy" required ="true">
            <button  onclick="func()">
                List
            </button> 
            <script>
                function func(){
                    date=document.getElementById("date");
                    window.location = '/security/listguestsdate?date='+date.value;
                }
            </script>
    </body>
</html>