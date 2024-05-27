<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
  <title>ConstructionXpert Services</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
  <link rel="icon" type="image/x-icon" href="images/logo-nobackground.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
 <head>
  <!-- Required meta tags-->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="au theme template">
  <meta name="author" content="Hau Nguyen">
  <meta name="keywords" content="au theme template">

  <!-- Title Page-->
  <title>Dashboard 3</title>

  <!-- Fontfaces CSS-->
  <link href="css/font-face.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
  <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

  <!-- Bootstrap CSS-->
  <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

  <!-- Vendor CSS-->
  <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
  <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
  <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
  <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
  <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
  <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
  <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

  <!-- Main CSS-->
  <link href="css/theme.css" rel="stylesheet" media="all">
</head>

<body>

<div class="wrapper d-flex align-items-stretch">
  <nav id="sidebar" aria-label="Main Navigation">
    <div class="custom-menu">
      <button type="button" id="sidebarCollapse" class="btn btn-primary">
        <i class="fa fa-bars"></i>
        <span class="sr-only">Toggle Menu</span>
      </button>
    </div>
    <div class="p-4">
      <h1><a href="Dashboard.jsp" class="logo">
        <img src="images/logo-nobackground.png" alt="Company Logo" width="150" height="140"></a></h1>
      <ul class="list-unstyled components mb-5">
        <li class="active">
          <a href="Dashboard.jsp"><span class="fa fa-home mr-3"></span> Dashboard</a>
        </li>
        <li>
          <a href="ProjectsServlet"><span class="fa fa-briefcase mr-3"></span> Projects</a>
        </li>
        <li>
          <a href="AddTaskServlet"><span class="fa fa-sticky-note mr-3"></span> Tasks</a>
        </li>
        <li>
          <a href="#"><span class="fa fa-cogs mr-3"></span> Resources</a>
        </li>
        <li>
          <a href="#"><span class="fa fa-sign-out mr-3"></span> Sign-out</a>
        </li>
      </ul>
      <footer class="footer mt-5">
        <p>&copy;
          <script>document.write(new Date().getFullYear());</script>
          ConstructionXpert Services. <i
                  class="fa fa-heart" aria-hidden="true"></i>
        </p>
      </footer>
    </div>
  </nav>

  <div class="page-content--bgf7">
    <!-- BREADCRUMB-->
    <section class="au-breadcrumb2">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="au-breadcrumb-content">
              <div class="au-breadcrumb-left">
                <span class="au-breadcrumb-span">You are here:</span>
                <ul class="list-unstyled list-inline au-breadcrumb__list">
                  <li class="list-inline-item active">
                    <a href="#">Home</a>
                  </li>
                  <li class="list-inline-item seprate">
                    <span>/</span>
                  </li>
                  <li class="list-inline-item">Dashboard</li>
                </ul>
              </div>

            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END BREADCRUMB-->

    <!-- WELCOME-->
    <section class="welcome p-t-10">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="title-4">Welcome back
              <span>Admin!</span>
            </h1>
            <hr class="line-seprate">
          </div>
        </div>
      </div>
    </section>
    <!-- END WELCOME-->

    <!-- STATISTIC-->
    <section class="statistic statistic2">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3">
            <div class="statistic__item statistic__item--green">
              <h2 class="number">10,368</h2>
              <span class="desc">Active Projects</span>
              <div class="icon">
                <i class="zmdi zmdi-account-o"></i>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="statistic__item statistic__item--orange">
              <h2 class="number">388,688</h2>
              <span class="desc">Undone Tasks</span>
              <div class="icon">
                <i class="zmdi zmdi-shopping-cart"></i>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="statistic__item statistic__item--blue">
              <h2 class="number">1,086</h2>
              <span class="desc">Total resources</span>
              <div class="icon">
                <i class="zmdi zmdi-calendar-note"></i>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-3">
            <div class="statistic__item statistic__item--red">
              <h2 class="number">$1,060,386</h2>
              <span class="desc">total earnings</span>
              <div class="icon">
                <i class="zmdi zmdi-money"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END STATISTIC-->

    <!-- STATISTIC CHART-->
    <section class="statistic-chart">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h3 class="title-5 m-b-35">statistics</h3>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <!-- CHART-->
            <div class="statistic-chart-1">
              <h3 class="title-3 m-b-30">chart</h3>
              <div class="chart-wrap">
                <canvas id="widgetChart5"></canvas>
              </div>
              <div class="statistic-chart-1-note">
                <span class="big">10,368</span>
                <span>/ 16220 items sold</span>
              </div>
            </div>
            <!-- END CHART-->
          </div>
          <div class="col-md-6 col-lg-4">
            <!-- TOP CAMPAIGN-->
            <div class="top-campaign">
              <h3 class="title-3 m-b-30">top campaigns</h3>
              <div class="table-responsive">
                <table class="table table-top-campaign">
                  <tbody>
                  <tr>
                    <td>1. Australia</td>
                    <td>$70,261.65</td>
                  </tr>
                  <tr>
                    <td>2. United Kingdom</td>
                    <td>$46,399.22</td>
                  </tr>
                  <tr>
                    <td>3. Turkey</td>
                    <td>$35,364.90</td>
                  </tr>
                  <tr>
                    <td>4. Germany</td>
                    <td>$20,366.96</td>
                  </tr>
                  <tr>
                    <td>5. France</td>
                    <td>$10,366.96</td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- END TOP CAMPAIGN-->
          </div>
          <div class="col-md-6 col-lg-4">
            <!-- CHART PERCENT-->
            <div class="chart-percent-2">
              <h3 class="title-3 m-b-30">chart by %</h3>
              <div class="chart-wrap">
                <canvas id="percent-chart2"></canvas>
                <div id="chartjs-tooltip">
                  <table></table>
                </div>
              </div>
              <div class="chart-info">
                <div class="chart-note">
                  <span class="dot dot--blue"></span>
                  <span>products</span>
                </div>
                <div class="chart-note">
                  <span class="dot dot--red"></span>
                  <span>Services</span>
                </div>
              </div>
            </div>
            <!-- END CHART PERCENT-->
          </div>
        </div>
      </div>
    </section>
    <!-- END STATISTIC CHART-->

    <!-- DATA TABLE-->
    <section class="p-t-20">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h3 class="title-5 m-b-35">data table</h3>
            <div class="table-data__tool">
              <div class="table-data__tool-left">
                <div class="rs-select2--light rs-select2--md">
                  <select class="js-select2" name="property">
                    <option selected="selected">All Properties</option>
                    <option value="">Option 1</option>
                    <option value="">Option 2</option>
                  </select>
                  <div class="dropDownSelect2"></div>
                </div>
                <div class="rs-select2--light rs-select2--sm">
                  <select class="js-select2" name="time">
                    <option selected="selected">Today</option>
                    <option value="">3 Days</option>
                    <option value="">1 Week</option>
                  </select>
                  <div class="dropDownSelect2"></div>
                </div>
                <button class="au-btn-filter">
                  <i class="zmdi zmdi-filter-list"></i>filters</button>
              </div>
              <div class="table-data__tool-right">
                <button class="au-btn au-btn-icon au-btn--green au-btn--small">
                  <i class="zmdi zmdi-plus"></i>add item</button>
                <div class="rs-select2--dark rs-select2--sm rs-select2--dark2">
                  <select class="js-select2" name="type">
                    <option selected="selected">Export</option>
                    <option value="">Option 1</option>
                    <option value="">Option 2</option>
                  </select>
                  <div class="dropDownSelect2"></div>
                </div>
              </div>
            </div>
            <div class="table-responsive table-responsive-data2">
              <table class="table table-data2">
                <thead>
                <tr>
                  <th>
                    <label class="au-checkbox">
                      <input type="checkbox">
                      <span class="au-checkmark"></span>
                    </label>
                  </th>
                  <th>name</th>
                  <th>email</th>
                  <th>description</th>
                  <th>date</th>
                  <th>status</th>
                  <th>price</th>
                  <th></th>
                </tr>
                </thead>
                <tbody>
                <tr class="tr-shadow">
                  <td>
                    <label class="au-checkbox">
                      <input type="checkbox">
                      <span class="au-checkmark"></span>
                    </label>
                  </td>
                  <td>Lori Lynch</td>
                  <td>
                    <span class="block-email">lori@example.com</span>
                  </td>
                  <td class="desc">Samsung S8 Black</td>
                  <td>2018-09-27 02:12</td>
                  <td>
                    <span class="status--process">Processed</span>
                  </td>
                  <td>$679.00</td>
                  <td>
                    <div class="table-data-feature">
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                        <i class="zmdi zmdi-mail-send"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                        <i class="zmdi zmdi-delete"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                        <i class="zmdi zmdi-more"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr class="spacer"></tr>
                <tr class="tr-shadow">
                  <td>
                    <label class="au-checkbox">
                      <input type="checkbox">
                      <span class="au-checkmark"></span>
                    </label>
                  </td>
                  <td>Lori Lynch</td>
                  <td>
                    <span class="block-email">john@example.com</span>
                  </td>
                  <td class="desc">iPhone X 64Gb Grey</td>
                  <td>2018-09-29 05:57</td>
                  <td>
                    <span class="status--process">Processed</span>
                  </td>
                  <td>$999.00</td>
                  <td>
                    <div class="table-data-feature">
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                        <i class="zmdi zmdi-mail-send"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                        <i class="zmdi zmdi-delete"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                        <i class="zmdi zmdi-more"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr class="spacer"></tr>
                <tr class="tr-shadow">
                  <td>
                    <label class="au-checkbox">
                      <input type="checkbox">
                      <span class="au-checkmark"></span>
                    </label>
                  </td>
                  <td>Lori Lynch</td>
                  <td>
                    <span class="block-email">lyn@example.com</span>
                  </td>
                  <td class="desc">iPhone X 256Gb Black</td>
                  <td>2018-09-25 19:03</td>
                  <td>
                    <span class="status--denied">Denied</span>
                  </td>
                  <td>$1199.00</td>
                  <td>
                    <div class="table-data-feature">
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                        <i class="zmdi zmdi-mail-send"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                        <i class="zmdi zmdi-delete"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                        <i class="zmdi zmdi-more"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                <tr class="spacer"></tr>
                <tr class="tr-shadow">
                  <td>
                    <label class="au-checkbox">
                      <input type="checkbox">
                      <span class="au-checkmark"></span>
                    </label>
                  </td>
                  <td>Lori Lynch</td>
                  <td>
                    <span class="block-email">doe@example.com</span>
                  </td>
                  <td class="desc">Camera C430W 4k</td>
                  <td>2018-09-24 19:10</td>
                  <td>
                    <span class="status--process">Processed</span>
                  </td>
                  <td>$699.00</td>
                  <td>
                    <div class="table-data-feature">
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Send">
                        <i class="zmdi zmdi-mail-send"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Edit">
                        <i class="zmdi zmdi-edit"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="Delete">
                        <i class="zmdi zmdi-delete"></i>
                      </button>
                      <button class="item" data-toggle="tooltip" data-placement="top" title="More">
                        <i class="zmdi zmdi-more"></i>
                      </button>
                    </div>
                  </td>
                </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END DATA TABLE-->

    <!-- COPYRIGHT-->
    <section class="p-t-60 p-b-20">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="copyright">
              <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- END COPYRIGHT-->
  </div>

</div>

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>


<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>

</html>