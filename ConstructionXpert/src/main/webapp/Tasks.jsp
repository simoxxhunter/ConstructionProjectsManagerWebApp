<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 24/05/2024
  Time: 5:02 pm
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    </style>
</head>


<body>


 <!-- edit a task modal start-->
<div class="modal fade " id="editTaskModal" tabindex="-1" role="dialog" aria-labelledby="editTaskModalLabel" aria-hidden="true">
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
                        <textarea class="form-control form-control-outline" id="editTaskDescription" rows="3"></textarea>
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
                        <textarea class="form-control form-control-outline" id="editRequiredResources" rows="3"></textarea>
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




 <!-- add a task modal start-->
 <div class="modal fade " id="AddTaskModal" tabindex="-1" role="dialog" aria-labelledby="editTaskModalLabel" aria-hidden="true">
     <div class="modal-dialog modal-lg" role="document">
         <div class="modal-content">
             <div class="modal-header">
                 <h5 class="modal-title" id="AddTaskModalLabel">Edit Task</h5>
                 <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                     <span aria-hidden="true">&times;</span>
                 </button>
             </div>
             <div class="modal-body">
                 <form id="AddTaskForm">
                     <div class="form-group">
                         <label for="AddTaskName">Task Name</label>
                         <input type="text" class="form-control form-control-outline" id="AddTaskName">
                     </div>
                     <div class="form-group">
                         <label for="editTaskDescription">Task Description</label>
                         <textarea class="form-control form-control-outline" id="AddTaskDescription" rows="3"></textarea>
                     </div>
                     <div class="form-group">
                         <label for="editStartDate">Start Date</label>
                         <input type="date" class="form-control form-control-outline" id="AddStartDate">
                     </div>
                     <div class="form-group">
                         <label for="editEndDate">End Date</label>
                         <input type="date" class="form-control form-control-outline" id="AddEndDate">
                     </div>
                     <div class="form-group">
                         <label for="editStatus">Status</label>
                         <select class="form-control form-control-outline" id="AddStatus">
                             <option value="To Do">To Do</option>
                             <option value="Doing">Doing</option>
                             <option value="Done">Done</option>
                         </select>
                     </div>
                     <div class="form-group">
                         <label for="editRequiredResources">Required Resources</label>
                         <textarea class="form-control form-control-outline" id="AddRequiredResources" rows="3"></textarea>
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
            <h1><a href="index.html" class="logo">
                <img src="images/logo-nobackground.png" alt="Company Logo" width="150" height="140"></a></h1>
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

    <main id="content" class="p-4 p-md-5 pt-5">
        <div class="container">
            <div class="mb-4">
                <button class="btn btn-outline-primary mr-2">Project 1</button>
                <button class="btn btn-outline-primary mr-2">Project 2</button>
            </div>

            <h2 class="mb-4" id="project-title">Project Name</h2>
            <div id="project-description" class="card mb-4">
                <div class="card-body">
                    <h5 class="card-title">Project Description</h5>
                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse
                        lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor.</p>
                </div>
            </div>

            <h3 class="mt-5 mb-4">Tasks</h3>

            <button class="btn btn-success" style="border-radius: 30px;color: #fff !important; " data-toggle="modal" data-target="#AddTaskModal">Add Task</button>

            <div id="kanban-board" class="kanban-board">
                <div class="kanban-column" id="to-do-column">
                    <div class="kanban-column-header">To Do</div>

                    <div class="kanban-column-body " id="to-do-tasks">

                        <div class="kanban-card card to-do">
                            <div class="kanban-card-body card-body">
                                <h5 class="kanban-card-title card-title">gfhghgf</h5>
                                <p class="kanban-card-text card-text">gfhfgh</p>
                                <p class="kanban-card-meta card-text"><small class="text-muted">Due: </small></p>
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#editTaskModal">
                                    Edit
                                </button>
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



