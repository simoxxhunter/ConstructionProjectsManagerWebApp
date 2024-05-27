package org.example.constructionxpert;

import java.io.IOException;
import java.sql.SQLException;

import Dao.ImpAddTasks;
import Dao.ImpProjects;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.tasks;

@WebServlet(name = "AddTaskServlet", value = "/AddTaskServlet")
public class AddTaskServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImpProjects proj = new ImpProjects();

        try {
            request.setAttribute("showProjects", proj.getAvailableProjects());
            this.getServletContext().getRequestDispatcher("/Tasks.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while retrieving projects.");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        String start_date = request.getParameter("start_date");
        String end_date = request.getParameter("end_date");
        String status = request.getParameter("status");
        int resource_id = Integer.parseInt(request.getParameter("resource_id"));
        int project_id = Integer.parseInt(request.getParameter("project_id"));

        ImpAddTasks taskDao = new ImpAddTasks();
        tasks task = new tasks(description, start_date, end_date, status, resource_id, project_id);

        try {
            taskDao.AddTask(task);
            response.sendRedirect("AddTaskServlet");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "An error occurred while adding the task.");
        }
    }
}
