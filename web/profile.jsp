
<%@page import="myPackage.classes.User"%>
<%@page import="java.util.ArrayList"%>
<jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
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
           User user=pDAO.getUserDetails(session.getAttribute("userId").toString());
           
           if(user.getType().endsWith("admin")){
        %>

            <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel">
        
                                
        
            <%
           }else{
               %>
               
               <!-- CONTENT AREA -->
			<div class="content-area">
                            <div class="panel">
               <%
           }
           if(request.getParameter("pedt")==null){
           %>
           <div class="title">Profile</div>
           <div class="profile ">
               <h2><span class="tag">Your Name</span><span class="val"><%=user.getFirstName()+" " %><%=user.getLastName() %></span><br/>
               <span class="tag">Email</span><span class="val"><%=user.getEmail() %></span><br/>
               <span class="tag">Contact No</span><span class="val"><%=user.getContact() %></span><br/>
               <span class="tag">City</span><span class="val"><%=user.getCity() %></span><br/>
               <span class="tag">Address</span><span class="val"><%=user.getAddress() %></span></h2>
           </div>
               <%
               if(user.getType().equals("admin")){
               %>
               <br/>
               <a href="adm-page.jsp?pgprt=0&pedt=1"><span class="add-btn">Edit Profile</span></a>
               <% 
               }else{
               %><br/>
               <a href="std-page.jsp?pgprt=0&pedt=1"><span class="add-btn">Edit Profile</span></a>
               <% 
               }
               %>
           
           <%
           }else{
               %>
               
               <!-- Start of Edit Form --->
               <div class="title">Edit Profile</div>
               <div class="central-div form-style-6" style="position:inherit;margin-top: 70px;" >
                    <form method="post" action="controller.jsp">
                        <input type="hidden" name="page" value="profile"> 
                        <input type="hidden" name="utype" value="<%=user.getType()%>">
                        <table style="width: 100%;">
					
					<tr>
                                            <th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel">First Name</label>
						</th>
                                                <td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="text" class="editinput" name="fname" value="<%=user.getFirstName() %>" class="text" placeholder="First Name">
						</td>
					</tr>
					<tr>
						<th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel">Last Name</label>
						</th>
						<td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="text" class="editinput" name="lname" value="<%=user.getLastName() %>" class="text" placeholder="Last Name">
						</td>
					</tr>
					
					<tr>
						<th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel">User Name</label>
						</th>
						<td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="text"class="editinput" name="uname" value="<%=user.getUserName() %>" class="text" placeholder="User Name">
						</td>
					</tr>
					<tr>
						<th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel">Email</label>
						</th>
						<td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="email"class="editinput" name="email" value="<%=user.getEmail() %>" class="text" placeholder="Email">
						</td>
					</tr>
					
					<tr>
						<th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel">Password</label>
						</th>
						<td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="password" class="editinput" value="<%=user.getPassword() %>" name="pass" class="text" placeholder="Password">
						</td>
					</tr>
                                        <tr>
						<th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel">Contact No</label>
						</th>
						<td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="text" class="editinput" name="contactno" value="<%=user.getContact() %>" class="text" placeholder="Contact No">
						</td>
					</tr>
                                        <tr>
						<th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel" >City</label>
						</th>
						<td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="text" class="editinput" name="city" value="<%=user.getCity() %>" class="text" placeholder="City">
						</td>
					</tr>
                                        <tr>
						<th style="font-size: 24px;padding: 20px;text-align: left;background: cadetblue;color: white;display: inline-block;border-bottom: 1px solid cadetblue;width: 20%;">
							<label class="editlabel">Address</label>
						</th>
						<td style="text-align: left;width: 70%;font-size: 24px;font-weight: normal;padding: 20px;display: inline-block;background: white;border-bottom: 1px solid cadetblue;">
                                                    <input type="text" class="editinput" name="address" value="<%=user.getAddress() %>" class="text" placeholder="Address">
						</td>
					</tr>
					<tr>
						
                                            <td style="width: 88%;margin-top: 25px;">
							<center>
							
                                                            <input type="submit" style="font-size: 32px;" value="Done" class="reg-btn">
							</center>
						</td>
					</tr>
				</table>
			</form>
		</div>

                
               <%
           }
           %>
    
        </div>
    </div>