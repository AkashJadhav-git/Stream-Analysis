
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script>
            
            <!-- Start of ChatBot (www.chatbot.com) code -->
<script type="text/javascript">
    window.__be = window.__be || {};
    window.__be.id = "5cb8ebc8dd2e6e31406e4182";
    (function() {
        var be = document.createElement('script'); be.type = 'text/javascript'; be.async = true;
        be.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.chatbot.com/widget/plugin.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(be, s);
    })();
</script>
<!-- End of ChatBot code -->
        
        <title>JSP Page</title>
<!--        <script>
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
        </style>-->
  	<link rel="stylesheet" type="text/css" href="style-backend.css">
</head>
<!--<body onload="Time()">-->
        
<!--	<div class="top-area">
		<center><h1>Student Panel</h1></center> -->
                <jsp:include page="newstdnav.jsp"></jsp:include> 
<!--                <ul>
            <li><a href="std-page.jsp?pgprt=0">Profile</a></li>
            <li><a href="std-page.jsp?pgprt=1">Exams</a></li>
            <li><a href="std-page.jsp?pgprt=2">Results</a></li>
            <li><a href="adm-page.jsp?pgprt=1">Accounts</a></li>
            <li><a href="controller.jsp?page=logout">Logout</a></li>
        </ul>
         <div align="right" class="clock" id="txt"></div> 
        </div>-->
    
    <%
            if(session.getAttribute("userStatus")!=null){
                String type=session.getAttribute("type").toString();
           if(session.getAttribute("userStatus").equals("1")&& type.equals("1")){
            %>
            	

            <% 
            //pgpart = pagepart, exams=1,results=2 and profile is default
            if(request.getParameter("pgprt").equals("1")){
                
            %>
            
            <jsp:include page="exam.jsp"/>
            
            <%
                
            }else if(request.getParameter("pgprt").equals("2")){
            
                %>
            
                <jsp:include page="results.jsp"/>
                
                <%
                
            }else{
                %>
            
                <jsp:include page="profile.jsp"/>
            
            <%
            }
            %>
            
            <%
           }else response.sendRedirect("login.jsp");
            }else response.sendRedirect("login.jsp");
            
          
           %>
            
<!--           </body>
</html>-->
            
