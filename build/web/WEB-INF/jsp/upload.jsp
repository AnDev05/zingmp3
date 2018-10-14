<%-- 
    Document   : upload
    Created on : Oct 10, 2018, 7:53:18 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Upload Song</title>
        <jsp:include page="tag.jsp"/>
    </head>
    <body>
        <div class="wrapper">
            <jsp:include page="header.jsp"/>
            <div class="content"  style="align-self: center;">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-8 col-md-7">
                            <div class="card">
                                <div class="header">
                                    <h4 class="title">Song information</h4>
                                </div>
                                <div class="content">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Song Code</label>
                                                    <input type="text" class="form-control border-input" name="code" disabled placeholder="Song Code" value="Auto generate">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Song type</label>
                                                    <select name="type" class="form-control border-input">

                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Public year</label>
                                                    <input type="date" class="form-control border-input" name="year" placeholder="2018">
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Song title</label>
                                                    <input type="text" class="form-control border-input" placeholder="Faded" name="title">
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Singer</label>
                                                    <select name="singer" class="form-control border-input">

                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>File</label>
                                                    <input type="file" name="file" class="form-control border-input">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Listen Type</label>
                                                    <select name="listenType" class="form-control border-input">
                                                        <option value="0">
                                                            Free
                                                        </option>
                                                        <option value="1">
                                                            Vip
                                                        </option>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>About Song</label>
                                                    <textarea rows="5" class="form-control border-input" placeholder="Description of the songs!"></textarea>
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
        </div>
    </body>
</html>
