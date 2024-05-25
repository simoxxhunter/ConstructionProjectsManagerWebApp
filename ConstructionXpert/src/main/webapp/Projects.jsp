<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 21/05/2024
  Time: 9:26 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.projects" %>
<%@ page import="Dao.ImpProjects" %>
<%@ page import="java.util.List" %>

<!doctype html>
<html lang="en">

<head>
    <title>Projects</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="images/logo-nobackground.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/projects.css">
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
                    <script>document.write(new Date().getFullYear());</script> ConstructionXpert Services. <i
                            class="fa fa-heart" aria-hidden="true"></i>
                </p>
            </footer>
        </div>
    </nav>

    <div id="content" class="p-4 p-md-5 pt-5">
        <div class="container my-5">
            <div class="text-center mb-5">
                <h1 class="text-capitalize font-weight-bold">Ongoing <span class="headline">Projects</span></h1>
            </div>
            <button class="btn btn-success" style="border-radius: 30px;color: #fff !important; " data-toggle="modal" data-target="#addProjectModal"> Add A New Project
            </button>

            <!-- Add Project Modal Start -->
            <div class="modal fade" id="addProjectModal" tabindex="-1" role="dialog" aria-labelledby="addProjectModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="addProjectModalLabel">Add New Project</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="addProjectForm" method="post" action="AddProjectServlet">
                                <div class="form-group">
                                    <label for="projectName">Project Name</label>
                                    <input type="text" class="form-control" id="projectName" name="project_name" required>
                                </div>
                                <div class="form-group">
                                    <label for="startDate">Start Date</label>
                                    <input type="date" class="form-control" id="startDate" name="start_date" required>
                                </div>
                                <div class="form-group">
                                    <label for="endDate">End Date</label>
                                    <input type="date" class="form-control" id="endDate" name="end_date" required>
                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="budget">Budget</label>
                                    <input type="number" class="form-control" id="budget" name="budget" required>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="submit" class="btn btn-success">Add Project</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Add Project Modal End -->


            <%
                List<projects> projectList = (List<projects>) request.getAttribute("showProjects");
                projectList.sort((I1, I2) -> Integer.compare(I1.getProject_id(), I2.getProject_id()));
                if (projectList != null && !projectList.isEmpty()) {
                    for (projects projet : projectList) {

            %>


            <!-- Editing Modal -->
            <div class="modal fade" id="EditingModal<%= projet.getProject_id() %>">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Edit Project: <%= projet.getProject_name() %></h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form id="editForm<%= projet.getProject_id() %>" action="EditProject" method="post">
                                <input type="hidden" name="project_id" value="<%= projet.getProject_id() %>" >
                                <div class="form-group">
                                    <label>Project Name</label>
                                    <input type="text" class="form-control" name="project_name" value="<%= projet.getProject_name() %>" required>
                                </div>
                                <div class="form-group">
                                    <label>Start Date</label>
                                    <input type="date" class="form-control" name="start_date" value="<%= projet.getStart_date() %>" required>
                                </div>
                                <div class="form-group">
                                    <label>End Date</label>
                                    <input type="date" class="form-control" name="end_date" value="<%= projet.getEnd_date() %>" required>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea class="form-control" name="description"><%= projet.getDescription() %></textarea>
                                </div>
                                <div class="form-group">
                                    <label>Budget</label>
                                    <input type="number" class="form-control" name="budget" value="<%= projet.getBudget() %>">
                                </div>
                                <!-- Modal footer -->
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-primary" onclick="confirmEdit(<%= projet.getProject_id() %>)">Save Edit</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- EDITING Modal end -->

            <!-- Affichage Modal -->
            <div class="modal fade" id="myModal<%= projet.getProject_id() %>">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Project Details: <%= projet.getProject_name() %>
                            </h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label>Project ID</label>
                                    <input type="text" class="form-control" value="<%= projet.getProject_id() %>"
                                           readonly>
                                </div>
                                <div class="form-group">
                                    <label>Project Name</label>
                                    <input type="text" class="form-control" value="<%= projet.getProject_name() %>"
                                           readonly>
                                </div>
                                <div class="form-group">
                                    <label>Start Date</label>
                                    <input type="date" class="form-control" value="<%= projet.getStart_date() %>"
                                           readonly>
                                </div>
                                <div class="form-group">
                                    <label>End Date</label>
                                    <input type="date" class="form-control" value="<%= projet.getEnd_date() %>"
                                           readonly>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <div class=""
                                         style="color: #495057 ; background-color: #e9ecef; border: 1px solid #ced4da; border-radius: .25rem;background-clip: padding-box;"><%= projet.getDescription() %>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Budget</label>
                                    <input type="text" class="form-control" value="<%= projet.getBudget() %>" readonly>
                                </div>
                            </form>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                </div>
            </div>
            <!-- Affichage Modal end -->

            <div class="my-5 py-4 px-5 bg-light d-sm-flex align-items-center justify-content-between">
                <div class="text-center text-uppercase">
                    <h1 class="my-2 font-weight-bold"><%= projet.getProject_name() %>
                    </h1>
                </div>
                <div class="text-center text-uppercase">
                    <span class="my-2 font-weight-bold">Start date</span><br><br>
                    <small class="d-block my-3 text-secondary"><%= projet.getStart_date() %>
                    </small>
                </div>
                <div class="text-center text-uppercase">
                    <span class="my-2 font-weight-bold">End date</span><br><br>
                    <small class="d-block my-3 text-secondary"><%= projet.getEnd_date() %>
                    </small>
                </div>
                <div class="text-center text-uppercase">
                    <span class="my-2 font-weight-bold">Description</span><br><br>
                    <small class="d-block my-3 text-secondary"
                           style="display:inline-block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 23ch;">
                        <%= projet.getDescription() %>
                    </small>
                </div>
                <div class="text-center text-uppercase">
                    <span class="my-2 font-weight-bold">Budget</span><br><br>
                    <small class="d-block my-3 text-secondary font-weight-bold"><%= projet.getBudget() %>
                    </small>
                </div>
                <div class="text-center">
                    <a href="#" class="btn text-white px-5 py-3 main-btn"
                       style="display: flex; align-items: center; justify-content: center; height: 35px; width: 130px;"
                       data-toggle="modal" data-target="#myModal<%= projet.getProject_id() %>">
                        View
                    </a><br>
                    <a  class="btn text-white px-5 py-3 main-btn" ;  style="display: flex; align-items: center; justify-content: center; height: 35px; width: 130px; background-color: #17a2b8"
                       data-toggle="modal" data-target="#EditingModal<%= projet.getProject_id() %>">
                        Edit
                    </a><br>
                    <a href="DeleteProject?project_id=<%= projet.getProject_id() %>"
                       class="btn text-white px-5 py-3 main-btn"
                       style="display: flex; align-items: center; justify-content: center; height: 35px; width: 130px; background-color: red;"
                       onclick="return deleteConfirmation();">
                        Delete
                    </a>
                </div>
            </div>
            <%
                }
            } else {
            %>
            <div class="text-center">
                <h2>No projects available</h2>
            </div>
            <%
                }
            %>

        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>

<script type="text/javascript">
    function alertmsg() {
        alert("Deleted Sccesfully");

    }
    function deleteConfirmation() {
        if (confirm("Do You Really Want To Delete This Project?")) {
            alertMsg();
            return true;
        } else {
            return false;
        }
    }
    function confirmEdit(projectId) {
        if (confirm("Do you really want to save these changes?")) {
            document.getElementById('editForm' + projectId).submit();
        }
    }
</script>

</html>
