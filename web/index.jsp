<%-- 
    Document   : index
    Created on : Oct 10, 2018, 8:52:14 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Home page</title>
        
        <script src="./public/vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="./public/vendor/bootstrap/js/bootstrap.min.js"></script>
        <link type="text/css" rel="stylesheet" href="./public/vendor/bootstrap/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="./public/fonts/awesome/css/fontawesome.css"/>
        <link rel="stylesheet" href="./public/fonts/awesome/css/all.css"/>
        <!--===============================================================================================-->	
        <link rel="icon" type="image/png" href="./public/img/icons/favicon.ico"/>
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="./public/vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="./public/css/main.css">
        <link rel="stylesheet" type="text/css" href="./public/css/nav.css">
        <link rel="stylesheet" type="text/css" href="./public/css/main_style.css">
    </head>


    <body>
        <nav class="navbar navbar-findcond navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Zing Mp3</a>
                </div>
                <div class="collapse navbar-collapse" id="navbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="#"><i class="fab fa-hotjar"></i> Hot trend<span class="sr-only">(current)</span></a></li>
                        <li class="active"><a href="#">Collections<span class="sr-only">(current)</span></a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="far fa-bell"></i> Notifications <span class="badge">3</span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#"><i class="fa fa-fw fa-tag"></i> <span class="badge">Music</span> Abc <span class="badge">Video</span> Xyz</a></li>
                                <li><a href="#"><i class="fa fa-fw fa-thumbs-o-up"></i> <span class="badge">Music</span>Faded</a></li>
                                <li><a href="#"><i class="fa fa-fw fa-thumbs-o-up"></i> <span class="badge">Video</span> Gangnam Style</a></li>
                                <li><a href="#"><i class="fa fa-fw fa-thumbs-o-up"></i> <span class="badge">Game</span>Blue</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${sessionScope.username.toUpperCase()} <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Profile</a></li>
                                <li><a href="#">Follower</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Setting</a></li>
                                <li><a href="logout">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-right search-form" role="search">
                        <input type="text" class="form-control" placeholder="Search"/>
                    </form>
                </div>
            </div>
        </nav>
        <div class="container" style="margin-top: 62px;">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">

                    <div class="item active">
                        <img src="./public/img/1.jpeg" alt="Los Angeles" style="width:100%;" >
                        <div class="carousel-caption">
                            <h3>Los Angeles</h3>
                            <p>LA is always so much fun!</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="./public/img/2.jpeg" alt="Chicago" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>Chicago</h3>
                            <p>Thank you, Chicago!</p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="./public/img/3.jpeg" alt="New York" style="width:100%;">
                        <div class="carousel-caption">
                            <h3>New York</h3>
                            <p>We love the Big Apple!</p>
                        </div>
                    </div>

                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" style="opacity:0;"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" style="opacity:0;"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="main-container">
                <div class="column">
                     <table class="table table-fixed">
                    <thead>
                        <tr>
                            <th style="color:#f14444; background-color: #ffffff; font-style: normal;">
                                <span><i class="fab fa-hotjar"></i>Song Trending</span>
                            </th>
                        </tr>
                        <tr>
                            <th class="col-xs-1">#</th>
                            <th class="col-xs-5">Song</th>
                            <th class="col-xs-3">Singer</th>
                            <th class="col-xs-3">Total</th>
                        </tr>
                    </thead>
                                       <tbody>
                        <tr>
                            <td class="col-xs-1">1</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">2</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">3</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">4</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">5</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">6</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">7</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">8</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">9</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">10</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                    </tbody>
                </table>
                </div>
                <div class="column">
                     <table class="table table-fixed">
                    <thead>
                        <tr>
                            <th style="color:#f14444; background-color: #ffffff; font-style: normal;">
                                <span><i class="fab fa-hotjar"></i>Collection Trending</span>
                            </th>
                        </tr>
                        <tr>
                            <th class="col-xs-1">#</th>
                            <th class="col-xs-5">Song</th>
                            <th class="col-xs-3">Singer</th>
                            <th class="col-xs-3">Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="col-xs-1">1</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">2</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">3</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">4</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">5</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">6</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">7</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">8</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">9</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                        <tr>
                            <td class="col-xs-1">10</td>
                            <td class="col-xs-5">Bolero</td>
                            <td class="col-xs-3">Viên Tattoo</td>
                            <td class="col-xs-3"><span><i class="fas fa-headphones"></i></span> 178971797</td>
                        </tr>  
                    </tbody>
                </table>
                </div>
               
            </div>
    </body>
</html>
