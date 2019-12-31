
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
<!--<head><script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script></head>-->

<%
            if (session.getAttribute("userStatus") != null) {
                String type=session.getAttribute("type").toString();
           if(session.getAttribute("userStatus").equals("1")&& type.equals("0")){

        %>
<!-- CONTENT AREA -->
<div class="content-area" >
    <div class="panel form-style-6" style="height: 250px; min-width: 100px; max-width: 500px;">
        <form method="post" action="adm-page.jsp">
            <div class="title">Show All Questions for</div>
            <br><br>
            <label>Select Course</label>
            <input type="hidden" name="pgprt" value="4">
            <select style="margin-top: 20px;height: 40px;" name="coursename" class="text">
                <%
                    ArrayList list1 = pDAO.getAllCourses();

                    for (int i = 0; i < list1.size(); i = i + 2) {
                %>
                <option value="<%=list1.get(i)%>"><%=list1.get(i)%></option>
                <%
                    }
                %>
            </select>
            <input type="submit" value="Show" class="reg-btn" style="padding-top: 23px;margin-top: 25px;">
        </form>
    </div>
            <br>
            <hr>
            <br>

    <div class="panel form-style-6" style="width: 99%;">   
        <form method="post" action="controller.jsp" >
            <div class="title">Add New Question</div>
            <table style="width: 95%;margin-top: 25px;">
                <tr>
                    <th style="font-size: 18px;padding: 15px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 15%;"><label>Course Name</label></th>
                <center><td style="text-align: left;width: 82%;font-size: 18px;font-weight: normal;padding: 15px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;" colspan="3"></center>
                <select name="coursename" class="text" style="font-size: 18px;font-weight: normal;">
                            <%
                                ArrayList list = pDAO.getAllCourses();

                                for (int i = 0; i < list.size(); i = i + 2) {
                            %>
                            <option value="<%=list.get(i)%>"><%=list.get(i)%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th style="font-size: 18px;padding: 15px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 15%;"><label>Your Question:</label></th>
                    <td style="text-align: left;width: 82%;font-size: 18px;font-weight: normal;padding: 15px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;" colspan="4"><input type="text" name="question" class="text" placeholder="Type your question here" style="width: 100%;" ></td><br>
                </tr>
                <tr>
                    <th style="font-size: 18px;padding: 15px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 15%;"><label>Options</label></th>
                    <td style="text-align: left;width: 20%;font-size: 18px;font-weight: normal;padding: 15px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;"><input type="text" name="opt1" class="text" placeholder="First Option" style="width: 100%;" ></td>
                    <td style="text-align: left;width: 20%;font-size: 18px;font-weight: normal;padding: 15px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;"><input type="text" name="opt2" class="text" placeholder="Second Option" style="width: 100%;" ></td>
                    <td style="text-align: left;width: 20%;font-size: 18px;font-weight: normal;padding: 15px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;"><input type="text" name="opt3" class="text" placeholder="Third Option" style="width: 100%;" ></td>
                    <td style="text-align: left;width: 21%;font-size: 18px;font-weight: normal;padding: 15px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;"><input type="text" name="opt4" class="text" placeholder="Fourth Option" style="width: 100%;" ></td>
                </tr>
                <tr>
                    <th style="font-size: 18px;padding: 15px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 15%;"><label>Correct Answer</label></th>
                    <td style="text-align: left;width: 82%;font-size: 18px;font-weight: normal;padding: 15px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;" colspan="4"><input type="text" name="correct" class="text" placeholder="Correct Answer" style="width:100%;" >
                    </td>
                    </tr>
                <tr>
                    
                    
                    <td colspan="5"><input type="hidden" name="page" value="questions">
                        <input type="hidden" name="operation" value="addnew">
                <center><input type="submit" style="margin-top: 25px;font-size: 24px;" class="reg-btn" value="Add" name="submit"></center></td>

                </tr>
            </table>

        </form>


    </div>
</div>
                        
                                <%}else{
response.sendRedirect("index.jsp");
}
}else

{
response.sendRedirect("index.jsp");
}
%>
      