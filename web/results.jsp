
<%@page import="myPackage.classes.Answers"%>
<%@page import="myPackage.classes.Exams"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
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
        
            
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!-- CONTENT AREA -->
<%
            if (session.getAttribute("userStatus") != null) {
                String type=session.getAttribute("type").toString();
           if(session.getAttribute("userStatus").equals("1")&& type.equals("1")){

        %>
<div class="content-area">
    <div class="panel" >

        <%
            if (request.getParameter("eid") == null) {
        %>
        <div class="title">All Results</div>
        <table id="rounded-corner">
            <thead>
                <tr>
                    <th scope="col" class="rounded-company">Date</th>
                    <th scope="col" class="rounded-q1">Course</th>
                    <th scope="col" class="rounded-q2">Time</th>
                    <th scope="col" class="rounded-q3">Status</th>
                    <th scope="col" class="rounded-q4">Action</th>
                </tr>
            </thead>

            <tbody>

                <%
                    ArrayList list = pDAO.getAllResultsFromExams(Integer.parseInt(session.getAttribute("userId").toString()));
                    for (int i = 0; i < list.size(); i++) {
                        Exams e = (Exams) list.get(i);
                %>
                <tr>
                    <td><%=e.getDate()%></td>
                    <td><%=e.getcName()%></td>
                    <td><%=e.getStartTime() + " - " + e.getEndTime()%></td>
                    <% if (e.getStatus() != null) {
                    if (e.getStatus().equals("Pass")) {%>
                    <td style="background: yellowgreen;color:white"><%=e.getStatus()%></td>
                    <% } else if(e.getStatus().equals("Satisfactory")) {%>
                    <td style="background: orange;color:white"><%=e.getStatus()%></td>
                    <% }else if(e.getStatus().equals("Excellent")) {%>
                    <td style="background: green;color:white"><%=e.getStatus()%></td>
                    <% }else if(e.getStatus().equals("Fail")) {%>
                    <td style="background: red;color:white"><%=e.getStatus()%></td>
                    <% }
            } else {%>
                    <td style="background: bisque ;">Terminated</td>
                    <% }%>
                    <td><a href="std-page.jsp?pgprt=2&eid=<%=e.getExamId()%>">Details</a></td>
                </tr>

                <% }
                %>
            </tbody>
        </table>
        <%
        } else {
        %>
        <div class="title">Result Details</div>
        <table id="gradient-style" >

            <%
                ArrayList list = pDAO.getAllAnswersByExamId(Integer.parseInt(request.getParameter("eid")));
                for (int i = 0; i < list.size(); i++) {
                    Answers a = (Answers) list.get(i);

            %>


            <tr>
                <td rowspan="2"><%=i + 1%>)</td>
                <td colspan="2"><%=a.getQuestion()%></td>
                <td rowspan="2"><%=a.getStatus()%></td>
            </tr>
            <tr>
                <%
                    if(a.getAnswer().equals(a.getCorrectAns())){
                %>
                <td style="background: green ;color: white"><%="Your Ans: " + a.getAnswer()%></td>
                <%}
else{%>
    <td style="background: red ; color: white"><%="Your Ans: " + a.getAnswer()%></td>
<%}
                
                %>
                <td><%="Correct Ans: " + a.getCorrectAns()%></td>
            </tr>
            <tr>
                <td colspan="3" style="background: white"></td>
                <%
                    }
                %>
        </table>


        <%
            }
        %>
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
