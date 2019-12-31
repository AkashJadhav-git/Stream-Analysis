<%-- 
    Document   : Nav_bar
    Created on : 12 Feb, 2019, 12:03:40 AM
    Author     : SUPRIYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="CACHE-CONTROL" CONTENT="NO-CACHE" />
<meta http-equiv="PRAGMA" CONTENT="NO-CACHE" />
<meta http-equiv="EXPIRES" CONTENT="0" />

<script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script>

        <link rel="stylesheet" type="text/css" href="social-media.css">
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
                font-size: 25px;
                padding-top: 16px;
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
            <li><a href="index.jsp">HOME</a></li>
            <li><a href="login.jsp">LOGIN</a></li>
            <li><a href="register.jsp">REGISTER</a></li>
            <li><a href="contactus.jsp">CONTACT US</a></li>
            <li><img src="IMG/whatsapp.gif" height="20px" width="20px"><a href="https://api.whatsapp.com/send?phone=+919082335466&amp;text=Hi, I contacted you Through your website."><font color="#25d366">WHATSAPP SUPPORT</font></a></li>
            <li><img src="IMG/call.png" height="20px" width="20px"><a href="tel:9082335466">Call Support</a></li>
        </ul>
         <div align="right" class="clock" id="txt"></div> 
    </body>
</html>



   
