<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24/05/2024
  Time: 5:02 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="model.projects" %>
<%@ page import="model.tasks" %>
<%@ page import="Dao.ImpAddTasks" %>
<%@ page import="java.util.List" %>

<%@ page import="java.util.List, model.projects, Dao.ImpProjects, Dao.ImpShowTasks, model.tasks" %>
<%@ page import="java.sql.SQLException" %>
<!doctype html>
<html lang="en">
<head>
    <title>Project Tasks</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="icon" type="image/x-icon" href="images/logo-nobackground.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/projects.css">

    <style>
        .kanban-board {
            display: flex;
            flex-wrap: nowrap;
            overflow-x: auto;
            padding: 20px 0;
        }

        .kanban-column {
            flex: 1;
            min-width: 300px;
            margin-right: 15px;
            border-radius: 8px;
            background-color: #f8f9fa;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .kanban-column:last-child {
            margin-right: 0;
        }

        .kanban-column-header {
            text-align: center;
            font-weight: bold;
            padding: 10px;
            background-color: #007bff;
            color: white;
            border-radius: 8px 8px 0 0;
        }

        .kanban-column-body {
            min-height: 400px;
            padding: 10px;
            border-radius: 0 0 8px 8px;
            background-color: white;
        }

        .kanban-card {
            margin-bottom: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s;
            border-left: 5px solid;
        }

        .kanban-card.todo {
            border-color: #ffc107;
        }

        .kanban-card.doing {
            border-color: #17a2b8;
        }

        .kanban-card.done {
            border-color: #28a745;
        }

        .kanban-card:hover {
            transform: scale(1.02);
        }

        .kanban-card-body {
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
        }

        .kanban-card-title {
            font-size: 16px;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .kanban-card-text {
            font-size: 14px;
            margin-bottom: 5px;
        }

        .kanban-card-meta {
            font-size: 12px;
            color: #888;
        }

        .kanban-card-select {
            width: 100%;
            margin-top: 5px;
        }

        .add-task-btn {
            margin-bottom: 10px;
        }
        .project-buttons-container {
            overflow-x: auto;
            white-space: nowrap;
        }

        .project-buttons-wrapper {
            display: inline-block;
        }
    </style>

</head>


<body>


<!-- edit a task modal start-->
<div class="modal fade " id="editTaskModal" tabindex="-1" role="dialog" aria-labelledby="editTaskModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="editTaskModalLabel">Edit Task</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="editTaskForm">
                    <div class="form-group">
                        <label for="editTaskName">Task Name</label>
                        <input type="text" class="form-control form-control-outline" id="editTaskName">
                    </div>
                    <div class="form-group">
                        <label for="editTaskDescription">Task Description</label>
                        <textarea class="form-control form-control-outline" id="editTaskDescription"
                                  rows="3"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="editStartDate">Start Date</label>
                        <input type="date" class="form-control form-control-outline" id="editStartDate">
                    </div>
                    <div class="form-group">
                        <label for="editEndDate">End Date</label>
                        <input type="date" class="form-control form-control-outline" id="editEndDate">
                    </div>
                    <div class="form-group">
                        <label for="editStatus">Status</label>
                        <select class="form-control form-control-outline" id="editStatus">
                            <option value="To Do">To Do</option>
                            <option value="Doing">Doing</option>
                            <option value="Done">Done</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="editRequiredResources">Required Resources</label>
                        <textarea class="form-control form-control-outline" id="editRequiredResources"
                                  rows="3"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<!---edit task modal end--->


<!-- Add Task Modal -->
<div class="modal fade" id="AddTaskModal" tabindex="-1" role="dialog" aria-labelledby="AddTaskModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="AddTaskModalLabel">Add Task</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form id="AddTaskForm" action="AddTaskServlet" method="post">
                    <div class="form-group">
                        <label for="AddTaskName">Task Name</label>
                        <input type="text" class="form-control" id="AddTaskName" name="description">
                    </div>
                    <div class="form-group">
                        <label for="AddTaskDescription">Task Description</label>
                        <textarea class="form-control" id="AddTaskDescription" rows="3" name="description"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="AddStartDate">Start Date</label>
                        <input type="date" class="form-control" id="AddStartDate" name="start_date">
                    </div>
                    <div class="form-group">
                        <label for="AddEndDate">End Date</label>
                        <input type="date" class="form-control" id="AddEndDate" name="end_date">
                    </div>
                    <div class="form-group">
                        <label for="AddStatus">Status</label>
                        <select class="form-control" id="AddStatus" name="status">
                            <option value="To Do">To Do</option>
                            <option value="Doing">Doing</option>
                            <option value="Done">Done</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="AddResourceId">Resource ID</label>
                        <input type="number" class="form-control" id="AddResourceId" name="resource_id">
                    </div>
                    <div class="form-group">
                        <label for="AddProjectId">Project ID</label>
                        <input type="number" class="form-control" id="AddProjectId" name="project_id">
                    </div>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!--- add task modal end  --->






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

    <main id="content" class="p-4 p-md-5 pt-5">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12 mb-4">
                    <%
                        ImpProjects proj = new ImpProjects();
                        List<projects> projectList = null;
                        try {
                            projectList = proj.getAvailableProjects();
                        } catch (SQLException e) {
                            e.printStackTrace();
                        }

                        if (projectList != null && !projectList.isEmpty()) {
                            projectList.sort((I1, I2) -> Integer.compare(I1.getProject_id(), I2.getProject_id()));
                    %>
                    <div class="project-buttons-container">
                        <div class="project-buttons-wrapper">
                            <%
                                for (projects projet : projectList) {
                            %>
                            <button class="btn btn-outline-primary mr-2">
                                <a href="AddTaskServlet?project_id=<%= projet.getProject_id() %>">
                                    <%= projet.getProject_id() %> ; <%= projet.getProject_name() %>
                                </a>
                            </button>
                            <%
                                }
                            %>
                        </div>
                    </div>
                    <%
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
            <div class="row">
                <%
                    String selectedProjectId = request.getParameter("project_id");
                    if (selectedProjectId != null) {
                        projects selectedProject = null;
                        for (projects projet : projectList) {
                            if (projet.getProject_id() == Integer.parseInt(selectedProjectId)) {
                                selectedProject = projet;
                                break;
                            }
                        }
                        if (selectedProject != null) {
                %>
                <div class="col-12">
                    <h2 class="mb-4" id="project-title">Project Number : <%= selectedProject.getProject_id() %></h2>
                    <div id="project-description" class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Project Title : <%= selectedProject.getProject_name() %></h5>
                            <p class="card-text"><%= selectedProject.getDescription() %></p>
                        </div>
                    </div>
                </div>
                <%
                        }
                    }
                %>
            </div>

            <h3 class="mt-5 mb-4">Tasks</h3>

            <button class="btn btn-success mb-3" style="border-radius: 30px;color: #fff !important; " data-toggle="modal"
                    data-target="#AddTaskModal">Add Task
            </button>

            <div id="kanban-board" class="kanban-board">
                <div class="kanban-column" id="to-do-column">
                    <div class="kanban-column-header">To Do</div>

                    <div class="kanban-column-body " id="to-do-tasks">

                        <div class="kanban-card card to-do">
                            <div class="kanban-card-body card-body">
                                <h5 class="kanban-card-title card-title">gfhghgf</h5>
                                <p class="kanban-card-text card-text">gfhfgh</p>
                                <p class="kanban-card-meta card-text"><small class="text-muted">Due: </small></p>
                                <div class="d-flex " style="justify-content: space-evenly;">
                                    <button type="button" class="btn text-white px-5 py-3 main-btn mr-2" data-toggle="modal"
                                            data-target="#editTaskModal"
                                            style="display: flex; align-items: center; justify-content: center; height: 35px; width: 110px; background-color: #17a2b8">
                                        Edit
                                    </button>
                                    <button type="button" class="btn text-white px-5 py-3 main-btn" data-toggle="modal"
                                            data-target="#editTaskModal"
                                            style="display: flex; align-items: center; justify-content: center; height: 35px; width: 110px; background-color: red">
                                        Delete
                                    </button>
                                </div>

                            </div>
                        </div>


                        <div class="kanban-card card to-do">
                            <div class="kanban-card-body card-body">
                                <h5 class="kanban-card-title card-title">gfhghgf</h5>
                                <p class="kanban-card-text card-text">gfhfgh</p>
                                <p class="kanban-card-meta card-text"><small class="text-muted">Assigned to: </small></p>
                                <p class="kanban-card-meta card-text"><small class="text-muted">Due: </small></p>
                                <select class="kanban-card-select form-control form-control-sm mt-2">
                                    <option value="To Do">To Do</option>
                                    <option value="Doing">Doing</option>
                                    <option value="Done">Done</option>
                                </select>
                            </div>
                        </div>


                    </div>

                </div>


                <div class="kanban-column" id="doing-column">
                    <div class="kanban-column-header">Doing</div>
                    <div class="kanban-column-body" id="doing-tasks"></div>
                </div>
                <div class="kanban-column" id="done-column">
                    <div class="kanban-column-header">Done</div>
                    <div class="kanban-column-body" id="done-tasks"></div>
                </div>

            </div>
        </div>
    </main>







</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/popper.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>

</body>
</html>

