
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<%--<jsp:include page="Nav_bar.jsp"></jsp:include>--%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" type="text/css" href="style-backend.css">
        <script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script>
            
            <!-- Start of ChatBot (www.chatbot.com) code -->
<!--<script type="text/javascript">
    window.__be = window.__be || {};
    window.__be.id = "5cb8ebc8dd2e6e31406e4182";
    (function() {
        var be = document.createElement('script'); be.type = 'text/javascript'; be.async = true;
        be.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.chatbot.com/widget/plugin.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(be, s);
    })();
</script>-->
<!-- End of ChatBot code -->
        
    </head>
    <!--<body>-->
        
<!--        <div class="top-area">

            <center><h2>Admin Panel</h2></center>-->

                <jsp:include page="newadminnav.jsp"></jsp:include>
               

            <!--</div>-->


        <%
            if (session.getAttribute("userStatus") != null) {
                String type=session.getAttribute("type").toString();
                if (session.getAttribute("userStatus").equals("1") && type.equals("0") ) {

        %>





        <%                //pgpart = pagepart, accounts=1,courses=2,questions=3 and profile is default
            if (request.getParameter("pgprt").equals("1")) {

        %>

        <jsp:include page="accounts.jsp"/>

        <%            } else if (request.getParameter("pgprt").equals("2")) {

        %>

        <jsp:include page="courses.jsp"/>

        <%                } else if (request.getParameter("pgprt").equals("3")) {
        %>

        <jsp:include page="questions.jsp"/>
        <%
        } else if (request.getParameter("pgprt").equals("4")) {// if( 4 == 4 )
        %>

        <jsp:include page="showall.jsp"/>
        <%
        } else {
        %>

        <jsp:include page="profile.jsp"/>

        <%
            }
        %>

        <%
                } else
                    response.sendRedirect("login.jsp");
            } else
                response.sendRedirect("login.jsp");
        %>

    </body>
</html>