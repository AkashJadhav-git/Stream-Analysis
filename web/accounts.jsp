
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!-- CONTENT AREA -->
<head>
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
        
</head>
<%
            if (session.getAttribute("userStatus") != null) {
                String type=session.getAttribute("type").toString();
           if(session.getAttribute("userStatus").equals("1")&& type.equals("0")){

        %>
<div class="content-area">
    <div class="panel" style="margin-top: 100px">
        <div class="title" style="margin-top: -50px">List of All Registered Persons</div>

        <br>
        <br>
        <br/>
        <a href="register.jsp" class="button"><span class="add-btn" style="margin-left: 50px;">Add New Person</span></a>
        <br>


        <table id="rounded-corner" >
            <colgroup>
                <col class="oce-first" />
            </colgroup>
            <thead>
                <tr>
                    <th scope="col">Name</th>

                    <th scope="col">email</th>
                    <th scope="col">City</th>
                    <th scope="col">Address</th>
                    <th scope="col">Action</th>

                </tr>
            </thead>
            <tbody>
                <%
                    ArrayList list = pDAO.getAllUsers();
                    User user;
                    for (int i = 0; i < list.size(); i++) {
                        user = (User) list.get(i);
                        if (user.getUserId() != Integer.parseInt(session.getAttribute("userId").toString())) {
                %>

                <tr>
                    <td><%=user.getFirstName() + " " + user.getLastName()%></td>
                    <td><%=user.getEmail()%></td>
                    <td><%=user.getCity()%></td>
                    <td><%=user.getAddress()%></td>
                    <td><a href="controller.jsp?page=accounts&operation=del&uid=<%=user.getUserId()%>" 
                           onclick="return confirm('Are you sure you want to delete this ?');">
                            <div class="delete-btn" style="max-width: 40px;font-size: 17px; padding: 3px">X</div>
                        </a></td>

                </tr>



                <%
                        }
                    }%>

            </tbody>
        </table>


    </div>
</div>
                    
                    <%
}else{
response.sendRedirect("index.jsp");
}
}else

{
response.sendRedirect("index.jsp");
}
%>