<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="javax.mail.*"%>
<%@page import="java.util.*"%>
<%@page import="myPackage.DatabaseClass"%>
<%@page import="java.util.logging.*"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Stream Analysis | Login</title>
        <meta http-equiv="CACHE-CONTROL" CONTENT="NO-CACHE" />
        <meta http-equiv="PRAGMA" CONTENT="NO-CACHE" />
        <meta http-equiv="EXPIRES" CONTENT="0" />
        <script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script>
        <!--<link rel="stylesheet" type="text/css" href="style.css">-->
        <link href="https://getbootstrap.com/docs/4.3/examples/sign-in/signin.css" rel="stylesheet">
        <style>
            .bd-placeholder-img {
                font-size: 1.125rem;
                text-anchor: middle;
                -webkit-user-select: none;
                -moz-user-select: none;
                -ms-user-select: none;
                user-select: none;
            }

            @media (min-width: 768px) {
                .bd-placeholder-img-lg {
                    font-size: 3.5rem;
                }
            }
        </style>
        
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
        

        <jsp:include page="new_navbar.jsp"></jsp:include>  
        
        <form class="form-signin" method="post" action="forgetpassword.jsp">
            <input type="hidden" name="page" value="login">
            <img class="mb" src="./image/logo.png" alt="Logo">
            <h1 class="h3 mb-3 font-weight-normal">Password Recovery</h1>
            <label for="inputEmail" class="sr-only">Username</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="Username" name="username" required autofocus >
            <label for="inputPassword" class="sr-only">Mob No</label>
            <input type="number" id="inputPassword" class="form-control" placeholder="Registered mobile no" name="mobno" required >
        <br>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Recover</button>
    <p style ="color: whitesmoke; font-size:24px; "> The password will be mailed to the registered email address.</p> 
                                        
                                         
                                    
                                        
    </form>
    
    
</body>
</html>

<%
    String username = request.getParameter("username");
    String mobno = request.getParameter("mobno");
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam_system", "root", "root");
        PreparedStatement pstm = con.prepareStatement("Select * from users where user_name='" + username + "'and contact_no='"+mobno+"'");
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            String password = rs.getString("password");
            String receiver = rs.getString("email");
            String host ="smtp.gmail.com" ;
            String user = "gmhudgi99@gmail.com";
            String pass = "Gmh@1999";
            String to = receiver;
            String from = "SAFCCAT";
            String subject = "Password Recovery";
            String messageText = "Your Password is :"+password;
            boolean sessionDebug = false;

            Properties props = System.getProperties();

            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", host);
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.required", "true");

            java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
            Session mailSession = Session.getDefaultInstance(props, null);
            mailSession.setDebug(sessionDebug);
            Message msg = new MimeMessage(mailSession);
            msg.setFrom(new InternetAddress(from));
            InternetAddress[] address = {new InternetAddress(to)};
            msg.setRecipients(Message.RecipientType.TO, address);
            msg.setSubject(subject); 
            msg.setSentDate(new Date());
            msg.setText(messageText);

           Transport transport=mailSession.getTransport("smtp");
           transport.connect(host, user, pass);
           transport.sendMessage(msg, msg.getAllRecipients());
           transport.close();
           System.out.println("message send successfully");
           
           response.sendRedirect("login.jsp");
    } 
    }catch (SQLException ex) {
        Logger.getLogger(DatabaseClass.class.getName()).log(Level.SEVERE, null, ex);

    }

%>
