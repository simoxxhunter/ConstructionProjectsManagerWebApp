package org.example.constructionxpert;

import Dao.ImpShowTasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.tasks;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "tasks", value = "/Tasks")
public class ShowTasksServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImpShowTasks taskDao = new ImpShowTasks();
        String projectIdParam = request.getParameter("project_id");

        if (projectIdParam != null) {
            int projectId = Integer.parseInt(projectIdParam);
            try {
                List<tasks> taskList = taskDao.getAvailableTasks(projectId);
                request.setAttribute("taskList", taskList);

                System.out.println("Project ID: " + projectId);
                System.out.println("Tasks Retrieved: " + taskList.size());
                for (tasks task : taskList) {
                    System.out.println(task);
                }

            } catch (SQLException e) {
                throw new ServletException("Cannot retrieve tasks", e);
            }
        }
        this.getServletContext().getRequestDispatcher("/Tasks.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
