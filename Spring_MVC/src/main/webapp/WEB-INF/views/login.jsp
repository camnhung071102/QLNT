<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    <%@taglib
    uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login Page</title>
    <style>
    
  @import url('https://fonts.googleapis.com/css2?family=Rubik+Doodle+Shadow&display=swap');

        @import url(https://fonts.googleapis.com/css?family=Roboto:300);
        @import url('https://fonts.googleapis.com/css2?family=Dancing+Script:wght@700&family=Rubik+Doodle+Shadow&display=swap');
  h1 {
    font-family: 'Dancing Script', cursive;
           
     color : #5bc0de; 
  }

        .login-page {
            width: 360px;
            padding: 8% 0 0;
            margin: auto;
        }

        .form {
            position: relative;
            z-index: 1;
            background: #FFFFFF;
            max-width: 360px;
            margin: 0 auto 100px;
            padding: 45px;
            text-align: center;
            box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
        }

        .form input {
            font-family: "Roboto", sans-serif;
            outline: 0;
            background: #f2f2f2;
            width: 100%;
            border: 0;
            margin: 0 0 15px;
            padding: 15px;
            box-sizing: border-box;
            font-size: 14px;
        }

        .form button {
             font-family: 'Dancing Script', cursive;
            text-transform: uppercase;
            outline: 0;
            background: #5bc0de;
            width: 100%;
            border: 0;
            padding: 15px;
            color: #FFFFFF;
            font-size: 14px;
            -webkit-transition: all 0.3 ease;
            transition: all 0.3 ease;
            cursor: pointer;
        }

        .form button:hover,
        .form button:active,
        .form button:focus {
         font-family: 'Dancing Script', cursive;
            background: # 63B8FF
            
        }

        .form .message {
            margin: 15px 0 0;
            color: #b3b3b3;
            font-size: 12px;
        }

        .form .message a {
            color: #4CAF50;
            text-decoration: none;
        }

        .form .register-form {
            display: none;
        }

        body {
            background:#5bc0de;
            /* fallback for old browsers */
            background: rgb(141, 194, 111);
            background: #5bc0de;
            font-family: "Roboto", sans-serif;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }
    </style>
</head>
<body>
    <div class="login-page">
    
        <div class="form">
        <h1>Login</h1><br>
            <form class="login-form" name="submitForm" method="POST">
                <input type="text" placeholder="username" name="userName"/>
                <input type="password" placeholder="password" name="password"/>
                <button type="submit" class="button" value="Submit"> login</button>
                
            </form>
             <div style="color: red">${error}</div>
        </div>
    </div>
    <script>
        $('.message a').click(function () {
            $('form').animate({ height: "toggle", opacity: "toggle" }, "slow");
        });
    </script>
</body>
</html>