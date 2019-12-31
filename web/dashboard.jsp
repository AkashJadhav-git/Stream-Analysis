<!--DASHBOARD IS USED TO CHECK WHETHER THE TO LOAD STUDENT DASHBOARD OR THE ADMIN DASH BOARD-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <jsp:useBean id="pDAO" class="myPackage.DatabaseClass" scope="page"/>
 <jsp:include page="Nav_bar.jsp"></jsp:include>

        <% 
           if(session.getAttribute("userStatus")!=null){
            String loginConfirm=session.getAttribute("userStatus").toString();
            if(loginConfirm.equals("1")){
                
            if(pDAO.getUserType(session.getAttribute("userId").toString()).equals("admin")){
                session.setAttribute("type", 0);
                response.sendRedirect("adm-page.jsp?pgprt=0"); 
            
            }else if(pDAO.getUserType(session.getAttribute("userId").toString()).equals("student")){
                session.setAttribute("type", 1);
                session.setAttribute("startExam",1);
                response.sendRedirect("std-page.jsp?pgprt=0");
            }
            
        
            }else if(!loginConfirm.equals("1")){
               response.sendRedirect("login.jsp");
            }
        }else response.sendRedirect("login.jsp");
        %>