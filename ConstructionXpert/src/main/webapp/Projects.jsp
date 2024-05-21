<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21/05/2024
  Time: 9:26 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">

<head>
    <title>Projects</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="logo-nobackground.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="projects.css">
</head>

<body>
<div class="wrapper d-flex align-items-stretch">
    <nav id="sidebar">
        <div class="custom-menu">
            <button type="button" id="sidebarCollapse" class="btn btn-primary">
                <i class="fa fa-bars"></i>
                <span class="sr-only">Toggle Menu</span>
            </button>
        </div>
        <div class="p-4">
            <a href="index.html" class="logo"> <img src="logo-nobackground.png" alt="logo" width="150" height="140"></a>
            <ul class="list-unstyled components mb-5">
                <li class="active">
                    <a href="Dashboard.html"><span class="fa fa-home mr-3"></span> Dashboard</a>
                </li>
                <li>
                    <a href="Projects.html"><span class="fa fa-briefcase mr-3"></span> Projects</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-sticky-note mr-3"></span> Tasks</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-cogs mr-3"></span>Resources</a>
                </li>
                <li>
                    <a href="#"><span class="fa fa-sign-out mr-3"></span>Sign-out</a>
                </li>
            </ul>
            <div class="footer">
                <p>
                    Copyright &copy;
                    <script>document.write(new Date().getFullYear());</script> <br> ConstructionXpert Services <i
                        class="icon-heart" aria-hidden="true"></i>
            </div>
        </div>
    </nav>

    <div id="content" class="p-4 p-md-5 pt-5">
        <div class="container my-5">
            <div class="text-center mb-5">
                <h1 class="text-capitalize font-weight-bold">Ongoing <span class="headline">Projects</span></h1>
            </div>

            <div class="my-5 py-4 px-5 bg-light d-sm-flex align-items-center justify-content-between">
                <div class="text-center text-uppercase ">
                    <!-- <span class="text-uppercase my-2 font-weight-bold">Project Name</span><br><br> -->
                    <h1 class="my-2 font-weight-bold">Lorem </h1>
                </div>
                <div class="text-center text-uppercase ">
                    <span class="my-2 font-weight-bold">start date</span><br><br>
                    <small class="d-block my-3 text-secondary">25th January 2025</small>

                </div>
                <div class="text-center text-uppercase ">
                    <span class="my-2 font-weight-bold ">end date</span><br><br>
                    <small class="d-block my-3 text-secondary">25th January 2026</small>
                </div>
                <div class="text-center text-uppercase ">
                    <span class="my-2 font-weight-bold">description</span><br><br>
                    <small class="d-block my-3 text-secondary"
                           style=" display:inline-block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 23ch;">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                        Vel adipisci aperiam at doloremque minus consectetur nemo
                        sint quasi accusamus quisquam. Distinctio animi commod
                        i beatae quae tempora nam a mollitia repudiandae.
                    </small>
                </div>
                <div class="text-center text-uppercase ">
                    <span class="my-2 font-weight-bold">Budget</span><br><br>
                    <small class="d-block my-3 text-secondary font-weight-bold">2.5 MMAD</small>
                </div>

                <div class="text-center">
                    <a href="#" class="btn text-white px-5 py-3 main-btn"
                       style="display: flex; align-items: center; justify-content: center; height: 35px;  width: 130px;"
                       data-toggle="modal" data-target="#myModal">
                        view
                    </a>

                    <br>
                    <a href="#" class="btn text-white px-5 py-3 main-btn"
                       style="display: flex; align-items: center; justify-content: center; height: 35px;  width: 130px;">Edit</a><br>
                    <a href="#" class="btn text-white px-5 py-3 main-btn"
                       style="display: flex; align-items: center; justify-content: center; height: 35px;  width: 130px;">Delete</a>
                </div>

            </div>




            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        </div>
    </div>
</div>
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>