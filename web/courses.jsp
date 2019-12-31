
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>

<head>
    <script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script>
    </head>
    <%
            if (session.getAttribute("userStatus") != null) {
                String type=session.getAttribute("type").toString();
           if(session.getAttribute("userStatus").equals("1")&& type.equals("0")){

        %>
<!-- CONTENT AREA -->
<div class="content-area">
<!--<div  style="min-width: 100px;max-width: 390px;float: left">-->

<div class="panel form-style-6">
        <center>
            <div class="title">
            Add New Course
        </div>
        
            <form method="post" action="controller.jsp" >
                <br>
                <table style="width: 90%;padding-top: 20px;" >
                    <tr>
                        <th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;"><label>Course Name</label></th>
                        <td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;"> <input type="text" name="coursename" class="text" placeholder="Course Name"></td>
                    </tr>
                    <tr>
                        <th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;"><label>Total Marks</label></th>
                        <td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;"><input type="text" name="totalmarks" class="text" placeholder="Total Marks"></td>
                    </tr>
                    <tr>
                        <th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;"><label>Exam Time</label></th>
                        <td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                            <input type="text" name="time"  placeholder="MM">
                        </td>

                    </tr>
                    <tr>
                        <td colspan="2"><input type="hidden" name="page" value="courses">
                            <input type="hidden" name="operation" value="addnew">
                    <center><input type="submit" class="sub-btn" value="Add" name="submit"></center></td>
                    </tr>
                </table>

            </form>
        </center>

    </div>
</div>
<br>
<hr>
<br>
        
    <div class="panel form-style-6">
        <center>
        <div class="title">
            All Courses
        </div>
        <table style="width: 90%;padding-top: 20px;">
            <thead>
                <tr>
                    <th style="font-size: 24px;padding: 10px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 30%;text-align: center" scope="col">Courses</th>
                    <th style="font-size: 24px;padding: 10px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 30%;text-align: center" scope="col">Total Marks</th>
                    <th style="font-size: 24px;padding: 10px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 30%;text-align: center" scope="col">Action</th>
                </tr>
            </thead>


            <%
                ArrayList list = pDAO.getAllCourses();
                for (int i = 0; i < list.size(); i = i + 2) {
            %>
            <tr>
                <td style="text-align: left;width: 30%;font-size: 24px;font-weight: normal;padding: 10px;padding-bottom: 17px; display: inline-block;background: white;border-bottom: 1px solid cadetblue;text-align: center"><%=list.get(i)%></td>
                <td style="text-align: left;width: 30%;font-size: 24px;font-weight: normal;padding: 10px;padding-bottom: 17px; display: inline-block;background: white;border-bottom: 1px solid cadetblue;text-align: center"><%=list.get(i + 1)%></td>
                <td style="text-align: left;width: 30%;font-size: 24px;font-weight: normal;padding: 10px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;text-align: center"><a  href="controller.jsp?page=courses&operation=del&cname=<%=list.get(i)%>" onclick="return confirm('Are you sure you want to delete this ?');" class="del">
                        <center><div class="delete-btn" >X</div></center>
                    </a></td>
            </tr>
            <%
                }
            %>
        </table>
        </center>
    </div>

        <br>
        <br>
        
        <%}else{
response.sendRedirect("index.jsp");
}
}else

{
response.sendRedirect("index.jsp");
}
%>
        
    
