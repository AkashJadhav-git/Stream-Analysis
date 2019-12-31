<!DOCTYPE html>
<html>
    <head>
        <title>Stream Analysis | Register</title>
        <link href="https://getbootstrap.com/docs/4.3/examples/sign-in/signin.css" rel="stylesheet">
        
       <!--Script to prevent going back page--> 
        
        <script type="text/javascript" >
            function preventBack() {
                window.history.forward();
            }
            setTimeout("preventBack()", 0);
            window.onunload = function () {
                null;
            };
        </script>
        
        <!--Back prevention ends-->
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
        <!-- Start of ChatBot (www.chatbot.com) code -->
        <script type="text/javascript">
            window.__be = window.__be || {};
            window.__be.id = "5cb8ebc8dd2e6e31406e4182";
            (function () {
                var be = document.createElement('script');
                be.type = 'text/javascript';
                be.async = true;
                be.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'cdn.chatbot.com/widget/plugin.js';
                var s = document.getElementsByTagName('script')[0];
                s.parentNode.insertBefore(be, s);
            })();
        </script>
        <!-- End of ChatBot code -->

        <!--Include navigation bar-->
        <jsp:include page="new_navbar.jsp"></jsp:include>

        
        <!--START OF THE REGISTRATION FORM-->
    <form class="form-signin" method="post" action="controller.jsp">
        <input type="hidden" name="page" value="register"> 
        <img class="mb" src="./image/logo.png" alt="Logo">
        <h1 class="h3 mb-3 font-weight-normal">Please Register</h1>
        <label for="inputEmail" class="sr-only">First Name</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="First Name" name="fname" required autofocus >
        <label for="inputEmail" class="sr-only">Last Name</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="Last Name" name="lname" required >
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="Username" name="uname" required>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Email address" name="email" required >
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="pass" required>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" pattern="\d*" id="inputEmail" class="form-control" minlength="10" maxlength="10" placeholder="Contact No" name="contactno" required >
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" id="inputEmail" class="form-control" placeholder="City" name="city" required>
        <label for="inputPassword" class="sr-only">Email address</label>
        <input type="text" id="inputPassword" class="form-control" placeholder="Adress" name="address" required >
        <br>
        <input class="btn btn-lg btn-primary btn-block" type="submit" value="register">
    </form>
        <!--END OF THE REGISTRATION FORM-->
</body>
</html>