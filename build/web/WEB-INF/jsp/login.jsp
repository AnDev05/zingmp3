<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 9/20/2018
  Time: 2:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>

    <title>Login Page</title>
    <script src="./public/vendor/jquery/jquery-3.2.1.min.js"></script>
    <link type="text/css" rel="stylesheet" href="./public/js/bootstrap.min.js"/>
    <link type="text/css" rel="stylesheet" href="./public/css/bootstrap.min.css"/>
    <link type="text/css" rel="stylesheet" href="./public/css/login_style.css"/>
    
</head>
<body class="my-login-page">
<section class="h-100">
    <div class="container h-100">
        <div class="row justify-content-md-center h-100">
            <div class="card-wrapper">
                <div class="brand">
                    <img src="./public/img/logo.png">
                </div>
                <div class="card fat">
                    <div class="card-body">
                        <h4 class="card-title">Login</h4>
                        <c:if test="${alert!=null}">
                            <h5 id="alertMsg">${alert}</h5>
                        </c:if>
                        <form method="POST" action="login">

                            <div class="form-group">
                                <label for="username">User name</label>

                                <input id="username" type="text" class="form-control" name="username" value="" required autofocus>
                            </div>

                            <div class="form-group">
                                <label for="password">Password
                                    <a href="#" class="float-right">
                                        Forgot Password?
                                    </a>
                                </label>
                                <input id="password" type="password" class="form-control" name="password" required data-eye>
                            </div>

                            <div class="form-group">
                                <label>
                                    <input type="checkbox" name="remember" id="test"> Remember Me
                                </label>
                            </div>

                            <div class="form-group no-margin">
                                <button type="submit" class="btn btn-primary btn-block">
                                    Login
                                </button>
                            </div>
                            <div class="margin-top20 text-center">
                                Don't have an account? <a href="register">Create One</a>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="footer">
                    Copyright &copy; AnCT
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    if ( window.history.replaceState ) {
        window.history.replaceState( null, null, window.location.href );
    }
</script>
</body>
</html>
