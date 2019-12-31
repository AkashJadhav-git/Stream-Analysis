<%-- 
    Document   : rg_pg2
    Created on : 11 Feb, 2019, 11:22:45 PM
    Author     : SUPRIYA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Stream Analysis</title>
        
        <style>
            body{
                margin: 0;
                padding:0;
                font-family: sans-serif;
                background: url("image/img3.jpg");
                background-size: cover;
            }
            .box{
                text-align: center;
                position: absolute;
                left:20%;
                transform: translate(-10%,10%);
                width: 25%;
                height: auto;
                padding: 40px;
                background: buttonhighlight;
                box-sizing: border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.8);
                border-radius: 12px;
                }
            .box h2{
                
                margin: 0 0 30px;
                padding: 0;
                color: black;
                text-align: center;
            }
            .box .inputBox{
                position: relative;
            }
             .box .inputBox input{
                width: auto;
                padding: 10px 0;
                font-size: 16px;
                color: black;
                letter-spacing: 1px;
                margin-bottom: 30px;
                border:none;
                border-bottom: 1px solid white;
                outline: none;
                background: transparent;
            }
            .box .inputBox label{
                position: absolute;
                top:0;
                left: 0;
                padding: 10px 0;
                font-size: 16px;
                color: black;
                pointer-events: none;
                transition: .5%;
            }
            .box .inputBox input:focus ~label,
            .box .inputBox input:valid ~label{
                top:-20px;
                left: 0;
                color: blue;
                font-size: 12px;
            
            }
            .box input[type="submit"]
            {
                background: transparent;
                border: none;
                outline: none;
                color: black;
                background: aqua;
                padding: 10px 20px;
                cursor: pointer;
                border-radius: 5px;
                color: black;
            }
      
    </style>
    </head>
    <body>
        <form action="register" method="post">
       <div class="box">
            <b><h2>REGISTRATION</h2></b>
            <form>
                <b><div class="inputBox">
                    <input type="text" name="name" required=""/>
                    <label>Name</label>
                    </div></b>
                
                <b><div class="inputBox">
                    <input type="number" min=0  step="1" name="age" required=""/>   
 
                    <label>Age</label>
                    </div></b>
                
                <b><div class="inputBox">
                    
                    <label>Gender</label>    
                        <input type="radio" value="male" name="gender" />Male
                        <input type="radio" value="female" name="gender"/>Female
                    </div></b><br>

                <b><div class="inputBox">
                    <input type="text" name="add" required=""/>
                    <label>Address</label>
                    </div></b>
                
                <b><div class="inputBox">
                    <input type="email" name="email" required=""/>
                    <label>Email</label>
                    </div></b>
                
                <b><div class="inputBox">
                    <input type="password" name="pass" required=""/>
                    <label>Password</label>
                    </div></b>
                
                <b><div class="inputBox">
                    <input type="number" name="mbno" required=""/>
                    <label>Mobile No</label>
                    </div></b>
                <input type="submit" name=""value="Submit"> 
            
        </div>
            </form>
    </body>
</html>
