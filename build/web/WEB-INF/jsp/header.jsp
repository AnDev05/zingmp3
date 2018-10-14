<%-- 
    Document   : header
    Created on : Oct 14, 2018, 12:56:05 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="sidebar" data-background-color="white" data-active-color="danger">

    <div class="sidebar-wrapper">
        <div class="logo">
            <a href=""class="simple-text">
                Zing Mp3 Management
            </a>
        </div>

        <ul class="nav">
            <li class="active">
                <a href="">
                    <i class="ti-panel"></i>
                    <p>Dashboard</p>
                </a>
            </li>
            <li>
                <a href="profile">
                    <i class="ti-user"></i>
                    <p>Singer</p>
                </a>
            </li>
            <li>
                <a href="list">
                    <i class="ti-view-list-alt"></i>
                    <p>Song List</p>
                </a>
            </li>
            <li>
                <a href="upload">
                    <i class="fas fa-compact-disc"></i>
                    <p>Upload Song</p>
                </a>
            </li>
            <li>
                <a href="">
                    <i class="ti-bell"></i>
                    <p>Notifications</p>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="main-panel">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar bar1"></span>
                    <span class="icon-bar bar2"></span>
                    <span class="icon-bar bar3"></span>
                </button>
                <a class="navbar-brand" href="#">Dashboard</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="ti-panel"></i>
                            <p>Stats</p>
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="ti-bell"></i>
                            <p class="notification">5</p>
                            <p>Notifications</p>
                            <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Notification 1</a></li>
                            <li><a href="#">Notification 2</a></li>
                            <li><a href="#">Notification 3</a></li>
                            <li><a href="#">Notification 4</a></li>
                            <li><a href="#">Another notification</a></li>
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

            </div>
        </div>
    </nav>
