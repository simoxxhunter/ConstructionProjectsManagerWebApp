<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
  <title>Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="images/logo-nobackground.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
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
      <h1><a href="Dashboard.html" class="logo"> <img src="images/logo-nobackground.png" alt="logo" width="150"
                                                  height="140"></a></h1>
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

  </div>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>