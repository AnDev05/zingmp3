<%-- 
    Document   : upload
    Created on : Oct 10, 2018, 7:53:18 PM
    Author     : lenovo
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Single Profile</title>
        <jsp:include page="tag.jsp"/>
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="header.jsp"/>
            <div class="content">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="card card-user">
                                <div class="image">
                                    <img src="./public/assets/img/background.jpg" alt="..."/>
                                </div>
                                <div class="content">
                                    <div class="author">
                                        <img class="avatar border-white" src="./public/assets/img/faces/face-2.jpg" alt="..."/>
                                        <h4 class="title">Chet Faker<br />
                                            <a href="#"><small>@chetfaker</small></a>
                                        </h4>
                                    </div>
                                    <p class="description text-center">
                                        "I like the way you work it <br>
                                        No diggity <br>
                                        I wanna bag it up"
                                    </p>
                                </div>
                                <hr>
                                <div class="text-center">
                                    <div class="row">
                                        <div class="col-md-3 col-md-offset-1">
                                            <h5>12<br /><small>Files</small></h5>
                                        </div>
                                        <div class="col-md-4">
                                            <h5>2GB<br /><small>Used</small></h5>
                                        </div>
                                        <div class="col-md-3">
                                            <h5>24,6$<br /><small>Spent</small></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Team Members</h4>
                                </div>
                                <div class="content">
                                    <ul class="list-unstyled team-members">
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <div class="avatar">
                                                        <img src="./public/assets/img/faces/face-0.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    DJ Khaled
                                                    <br />
                                                    <span class="text-muted"><small>Offline</small></span>
                                                </div>

                                                <div class="col-xs-3 text-right">
                                                    <btn class="btn btn-sm btn-success btn-icon"><i class="far fa-envelope"></i></btn>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <div class="avatar">
                                                        <img src="./public/assets/img/faces/face-1.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    Creative Tim
                                                    <br />
                                                    <span class="text-success"><small>Available</small></span>
                                                </div>

                                                <div class="col-xs-3 text-right">
                                                    <btn class="btn btn-sm btn-success btn-icon"><i class="far fa-envelope"></i></btn>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="row">
                                                <div class="col-xs-3">
                                                    <div class="avatar">
                                                        <img src="./public/assets/img/faces/face-3.jpg" alt="Circle Image" class="img-circle img-no-padding img-responsive">
                                                    </div>
                                                </div>
                                                <div class="col-xs-6">
                                                    Flume
                                                    <br />
                                                    <span class="text-danger"><small>Busy</small></span>
                                                </div>

                                                <div class="col-xs-3 text-right">
                                                    <btn class="btn btn-sm btn-success btn-icon"><i class="far fa-envelope"></i></btn>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-7">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Edit Profile</h4>
                                </div>
                                <div class="content">
                                    <form action="profile" method="POST">
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Username</label>
                                                    <input type="text" class="form-control border-input" disabled placeholder="Username" value="Auto generate">
                                                </div>
                                            </div>

                                            <div class="col-md-5">

                                                <div class="form-group">
                                                    <label>Company</label>
                                                    <input type="text" class="form-control border-input" placeholder="Company" name="company" required>
                                                </div>
                                            </div>

                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Gender</label>
                                                    <select name="gender" class="form-control border-input">
                                                        <option value="1">
                                                            Male
                                                        </option>
                                                        <option value="0">
                                                            Female
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>First Name</label>
                                                    <input type="text" class="form-control border-input" name="firstName" placeholder="First name" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Last Name</label>
                                                    <input type="text" class="form-control border-input" name="lastName" placeholder="Last Name" required>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Email</label>
                                                    <input type="email" class="form-control border-input" name="email" placeholder="a@gmail.com" required>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Phone</label>
                                                    <input type="number" class="form-control border-input" name="phone" placeholder="0962049752" required>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>City</label>
                                                    <select name="city" class="form-control border-input">
                                                        <c:forEach items="${allCity}" var="item">
                                                            <option value="${item.id}">
                                                                ${item.name}
                                                            </option>
                                                        </c:forEach> 

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Country</label>
                                                    <select name="country" class="form-control border-input">
                                                        <c:forEach items="${allCountry}" var="item">
                                                            <option value="${item.id}">
                                                                ${item.name}
                                                            </option>
                                                        </c:forEach> 

                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>About Singer</label>
                                                    <textarea rows="5" class="form-control border-input" placeholder="Hello world!" name="desc"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-info btn-fill btn-wd">Update Profile</button>
                                        </div>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"/>
            <script>
                var isShow = '${success}';
                var message = 'Created successful!';
                if (isShow===false) {
                   message = 'Created failed!Try again!';
                }
                $.notify({
                        icon: 'ti-gift',
                        message: message

                    }, {
                        type: 'success',
                        timer: 4000
                });
            </script>

        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">
                   <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">Modal Header</h4>
                        </div>
                        <div class="modal-body">
                            <p>Some text in the modal.</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                        </div>
                </div>
            </div>
        </div>
   </body>
</html>
