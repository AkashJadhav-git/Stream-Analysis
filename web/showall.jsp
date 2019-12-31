
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!-- CONTENT AREA -->

<%
            if (session.getAttribute("userStatus") != null) {
                String type=session.getAttribute("type").toString();
           if(session.getAttribute("userStatus").equals("1")&& type.equals("0")){

        %>
<div class="content-area" >
    <center>
        <%
            if (request.getParameter("coursename") != null) {
                ArrayList list = pDAO.getAllQuestions(request.getParameter("coursename"));
                for (int i = 0; i < list.size(); i++) {
                    Questions question = (Questions) list.get(i);

        %>
        <div class="question-panel">
            <div class="question" >
                <label class="question-label"><%=i + 1%></label>
                <%=question.getQuestion()%>	
                <a href="controller.jsp?page=questions&operation=delQuestion&qid=<%=question.getQuestionId()%>" 
                   onclick="return confirm('Are you sure you want to delete this ?');" >
                    <div class="delete-btn" style="position: absolute;right: 10px;top: -20px;">delete</div></a>
            </div>
            <div class="answer">
                <label class="show"><%=question.getOpt1()%></label>
                <label class="show"><%=question.getOpt2()%></label>
                <label class="show"><%=question.getOpt3()%></label>
                <label class="show"><%=question.getOpt4()%></label>
                <label class="show-correct"><%=question.getCorrect()%></label>
            </div>
        </div>

        <%
                           }
                       }%>
    </center>
</div>
    
                            
                                <%}else{
response.sendRedirect("index.jsp");
}
}else

{
response.sendRedirect("index.jsp");
}
%>
      