<%-- 
    Document   : Nav_bar
    Created on : 12 Feb, 2019, 12:03:40 AM
    Author     : SUPRIYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script>
        <title>JSP Page</title>
        <script>
            function Time() {
              var today = new Date();
              var h = today.getHours();
              var m = today.getMinutes();
              var s = today.getSeconds();
              var d = today.getDate();
              var mo = today.getMonth()+1;
              var y = today.getFullYear();
              m = check(m);
              s = check(s);
              document.getElementById('txt').innerHTML ="Time: "+h + ":" + m + ":" + s+ " Date: "+d+"/"+mo+"/"+y ;
              var t = setTimeout(Time, 500);
            }
            function check(i) {
              if (i < 10) {i = "0" + i};  // add zero in front of numbers < 10
              return i;
            }
        </script>
        <style>
            *{
                padding: 0;
                margin: 0 ;
            }
            .website-name{
                color: black;
                background-color: buttonhighlight;
                padding: 20px;
                text-align: center;              
            }
            ul{
                list-style-type: none;
                width: 70%;
                float: left;
                background-color: buttonhighlight;
            }
            li{
                display: inline-block;
                margin-right: 10px;
                margin-left: 10px;
                padding: 10px;
            }
            .clock{
                
                width: 30%;
                font-size: 20px;
                padding-top: 15px;
                float: right;
                background-color: buttonhighlight;
            }
            a{
                color: black;
                text-decoration: none;
            }
            li:hover{
                color: blue;
                background-color: white;
                text-decoration: none;
            }
        </style>
    </head>
    <body onload="Time()">
        <ul>
            <li><a href="adm-page.jsp?pgprt=0">Profile</a></li>
            <li><a href="adm-page.jsp?pgprt=2">Courses</a></li>
            <li><a href="adm-page.jsp?pgprt=3">Questions</a></li>
            <li><a href="adm-page.jsp?pgprt=1">Accounts</a></li>
            <li><a href="controller.jsp?page=logout">Logout</a></li>
        </ul>
         <div align="right" class="clock" id="txt"></div> 
    </body>
</html>
