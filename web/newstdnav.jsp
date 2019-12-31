<%@page contentType="text/html" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="social-media.css">
<title>JSP Page</title>
<link rel="shortcut icon" href="./image/logo.png" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script>
    function Time() {
        var today = new Date();
        var h = today.getHours();
        var m = today.getMinutes();
        var s = today.getSeconds();
        var d = today.getDate();
        var mo = today.getMonth() + 1;
        var y = today.getFullYear();
        m = check(m);
        s = check(s);
        document.getElementById('txt').innerHTML = "Time: " + h + ":" + m + ":" + s + " Date: " + d + "/" + mo + "/" + y;
        var t = setTimeout(Time, 500);
    }
    function check(i) {
        if (i < 10) {
            i = "0" + i
        }
        ;  // add zero in front of numbers < 10
        return i;
    }
</script>
<script type="text/javascript" >
        function preventBack(){window.history.forward();}
        setTimeout("preventBack()", 0);
        window.onunload=function(){null};
            </script>
</head>
<body onload="Time()" style="background-image: url(./image/step01.gif);">


<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark"  >
<!--    <center><h1>Student Panel</h1></center> <br>-->
    <a class="navbar-brand" href="#">Student Panel</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="std-page.jsp?pgprt=0">Profile <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="std-page.jsp?pgprt=1">Exam</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="std-page.jsp?pgprt=2">Results</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link" href="controller.jsp?page=logout">LogOut</a>
            </li>
        </ul>
    </div>
    <form class="form-inline">
        <div align="right" class="clock" style="color: #e3f2fd;" id="txt"></div> 
    </form>
</nav>






