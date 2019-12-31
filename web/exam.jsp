<%@page import="myPackage.classes.Exams"%>
<%@page import="myPackage.classes.Questions"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<head><script type="text/javascript" >
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
        <script type="text/javascript">
window.onload = function() {
	window.fullScreen = true;
}
</script>

</head>
<!-- CONTENT AREA -->
<div class="content-area">

    <%
        String exam = session.getAttribute("startExam").toString();
        if (session.getAttribute("examStarted") != null) {
            String type=session.getAttribute("type").toString();
            String status = session.getAttribute("userStatus").toString();
            if (session.getAttribute("examStarted").equals("1")&& type.equals("1")&& status.equals("1")) {
    %>
    <span id="remainingTime" style="position: fixed;top: 100px;font-size: 26px;color: white;font-weight: bolder;background: rgb(255,0,0);border-radius: 5px;padding: 20px;box-shadow: 2px -2px 6px 0px;">
    </span>

    <script>
        var time = <%=pDAO.getRemainingTime(Integer.parseInt(session.getAttribute("examId").toString()))%>;
        time--;
        var sec = 60;
        document.getElementById("remainingTime").innerHTML = time + " : " + sec;
        //it calls fuction after specific time again and again                  
        var x = window.setInterval(timerFunction, 1000);

        function timerFunction() {
            sec--;
            // Display the result in the element with id="demo"


            if (time < 0) {
                clearInterval(x);
                document.getElementById("remainingTime").innerHTML = "00 : 00";
                document.getElementById("myform").submit();
//                response.sendRedirect("std-page.jsp?pgprt=1&eid=" + eId + "&showresult=1");
                response.sendRedirect("results.jsp");

            }
            document.getElementById("remainingTime").innerHTML = time + " : " + sec;
            if (sec == 0) {
                sec = 60;
                time--;

            }
        }
    </script>

    <form id="myform" method="post" action="controller.jsp">

        <%
            ArrayList list = pDAO.getQuestions(request.getParameter("coursename"), 10);
            Questions question;
        %>
        <input type="hidden" name="size" value="<%=list.size()%>">
        <input type="hidden" name="totalmarks" value="<%=pDAO.getTotalMarksByName(request.getParameter("coursename"))%>">

        <%
            for (int i = 0; i < list.size(); i++) {
                question = (Questions) list.get(i);
        %>


        <center>
            <div class="question-panel">
                <div class="question" >
                    <label class="question-label"><%=i + 1%></label>
                    <%=question.getQuestion()%>
                </div>
                <div class="answer">
                    <input type="radio" id="c1<%=i%>" name="ans<%=i%>" value="<%=question.getOpt1()%>" required="required"/>
                    <label for="c1<%=i%>"><%=question.getOpt1()%></label>
                    <input type="radio" id="c2<%=i%>" name="ans<%=i%>" value="<%=question.getOpt2()%>" />
                    <label for="c2<%=i%>"><%=question.getOpt2()%></label>
                    <input type="radio" id="c3<%=i%>" name="ans<%=i%>" value="<%=question.getOpt3()%>" />
                    <label for="c3<%=i%>"><%=question.getOpt3()%></label>
                    <input type="radio"  id="c4<%=i%>" name="ans<%=i%>" value="<%=question.getOpt4()%>"/>
                    <label for="c4<%=i%>" ><%=question.getOpt4()%></label>

                </div>
            </div>
            <input type="hidden" name="question<%=i%>" value="<%=question.getQuestion()%>">
            <input type="hidden" name="qid<%=i%>" value="<%=question.getQuestionId()%>">



            <%
                }

            %>


            <input type="hidden" name="page" value="exams">
            <input type="hidden" name="operation" value="submitted"> 
            <center><input type="submit" class="sub-btn" value="Done"></center>
            </form>



            <%                    }
            } else if (request.getParameter("showresult") != null) {
                if (request.getParameter("showresult").equals("1")) {
                    Exams result = pDAO.getResultByExamId(Integer.parseInt(request.getParameter("eid")));
            %>
            <div class="panel" style="margin-left: 0px;width: 99%;">
                <div class="title">Result of Recent Exam</div>
                <div class="profile">
                    <span class="tag">Exam Date</span><span class="val"><%=result.getDate()%></span><br/>
                    <span class="tag">Start Time</span><span class="val"><%=result.getStartTime()%></span><br/>
                    <span class="tag">End Time</span><span class="val"><%=result.getEndTime()%></span><br/>
                    <span class="tag">Course Name</span><span class="val"><%=result.getcName()%></span><br/>
                    <span class="tag">Obt Marks</span><span class="val" id="obtmarks" value="<%=result.getObtMarks()%>"><%=result.getObtMarks()%></span><br/>
                    <span class="tag">Total Marks</span><span class="val" id="totmarks" value="<%=result.gettMarks()%>"><%=result.gettMarks()%></span><br/>
                    <span class="tag">Result</span><span class="val"><%=result.getStatus()%></span></h2>
                    <%if (result.getStatus().equals("Pass")) {%>
                    <span class="tag" style="">Remark</span><span class="val">You can proceed with your desired Stream but need to work very hard.Wish you ALL THE VERY BEST for your future.</span></h2>

                    <%}else if (result.getStatus().equals("Satisfactory")) {%>
                    <span class="tag" style="">Remark</span><span class="val">Need to brush up your knowledge a little bit before proceeding.Wish you ALL THE VERY BEST for your future.</span></h2>

                    <%}else if (result.getStatus().equals("Excellent")) {%>
                    <span class="tag" style="">Remark</span><span class="val">You can proceed with your desired Stream for the further studies no issues.Wish you ALL THE VERY BEST for your future.</span></h2>

                    <%}else {%>
                    <span class="tag" style="">Remark</span><span class="val">Please rethink on your selected stream properly or else choose other stream and come again for the test.</span></h2>
                    <%}%>                </div>
                <!--<div id="docsChart" style="height: 500px; width: 500px" ></div>-->
                <p></p>
                <p></p>
                <p></p>
                <p></p>


            </div>
            <!--<div id="docsChart"></div>-->
            <%
                }
            } else if (exam.equals("1")) {
            %>
            <div class="panel form-style-6" style="max-width: 1000px; padding-top: 40px;">
                <div class="title" style="margin-top: -60px;">Select Course to Take Exam</div>
                <br/>

                <form method="post" action="controller.jsp" >
                    <br/><br>
                    <label>Select Course</label>
                    <input type="hidden" name="page" value="exams">
                    <input type="hidden" name="operation" value="startexam">
                    <select name="coursename" class="text"style="padding: 15px;">
                        <%
                            ArrayList list1 = pDAO.getAllCourses();

                            for (int i = 0; i < list1.size(); i = i + 2) {
                        %>
                        <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
                        <%
                            }
                        %>
                    </select>
                    <input type="submit" value="Take Exam" class="reg-btn">
                </form>

            </div>
            
                                    <p style ="color: whitesmoke; font-size:24px; "><br><br>
                                        
                                        General Instructions:<br><br>
                                        1)There will be 15 questions in each course.<br><br>
                                    
                                        2)All questions are compulsory and must be solved within given time limit.<br><br>
                                    
                                        3)Based on your performance in the test we predict whether the selected stream is okay for you or not<br><br>
                                        
                                        Note: We just predict whether the selected course is good for you or not. Dont consider this as an final result<br> 
                                    
                                    </p>
            </div>
            
            <%
}else{
response.sendRedirect("index.jsp");}

%>
