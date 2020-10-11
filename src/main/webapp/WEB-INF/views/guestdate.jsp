<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
    <head>
        <title>
            Update Guest
        </title>
    </head>
    <body>
        <input type="text" value="date" name="date" id="date"
            placeholder="date" required ="true">
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