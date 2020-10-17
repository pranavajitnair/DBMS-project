<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-// W3C// DTD HTML 4.01  
 Transitional// EN" "http:// www.w3.org/TR/html4/loose.dtd"> 
<html> 
    <head> 
        <meta http-equiv="Content-Type" content="text/html;  
        charset=ISO-8859-1"> 
        <link rel="stylesheet" type="text/css" href="../../css/main.css">
        <title>Start Spring MVC</title> 
    </head> 
    <body>
        <div class="container">
            <img src="../../images/image/download.jpeg" style="filter: brightness(50%);">
            <button class="btn" onclick="window.location.href='/login'">  Login   </button>
            <h1 >L&T Serene County Welcomes You</h1>
          </div>
    </body>
    <style>
        .container {
            position: relative;
            width: 1853px;
            height: 973px;
        }

        .container img {
            width: 100%;
            height: 100%;
        }

        h1, h1 *{
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            font-family: Arial, Helvetica, sans-serif;
            font-size: 45px;
            color: white;
        }

        .container .btn {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            width: 160px;
            height: 60px;
            font-family: 'Serif', sans-serif;
            font-size: 12px;
            font-weight: bold;
            text-transform: uppercase;
            color: #000;
            background-color: #fff;
            border: none;
            border-radius: 45px;
            box-shadow: 0px 8px 15px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease 0s;
            cursor: pointer;
            outline: none;
        }

        .container .btn:hover {
            background-color: #2EE59D;
            box-shadow: 0px 15px 20px rgba(46, 229, 157, 0.4);
            color: #fff;
        }
    </style> 
</html> 