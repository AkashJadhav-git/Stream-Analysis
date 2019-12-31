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

        <jsp:include page="new_navbar.jsp"></jsp:include>  
        
        <form class="form-signin" method="post" action="controller.jsp">
            <input type="hidden" name="page" value="login">
            <img class="mb" src="./image/logo.png" alt="Logo">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <label for="inputEmail" class="sr-only">Email address</label>
            <input type="text" id="inputEmail" class="form-control" placeholder="USERNAME" name="username" required autofocus >
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="PASSWORD" name="password" required>
        <%
            if (request.getSession().getAttribute("userStatus") != null) {
                System.out.println("its called");
                if (request.getSession().getAttribute("userStatus").equals("-1")) {
                    System.out.println("now inside");
        %>
        <!--<script>alert("username or password is incorrect");</script>-->
        <p style="color: rgba(255, 255, 51, 1);font-size: 17px">username or password is incorrect</p>
        <br>
        <%
                }
            }
        %>
        <div class=" mb">
            <label style ="color: whitesmoke;">
                <a href="forgetpassword.jsp" style ="color: whitesmoke;">Forgot Password</a>
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
        
    </form>
</body>
</html>