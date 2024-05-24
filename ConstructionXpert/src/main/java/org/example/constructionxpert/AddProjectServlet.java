package org.example.constructionxpert;

import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import Dao.ImpAddProject;
import model.projects;

@WebServlet(name = "AddProjectServlet", value = "/AddProjectServlet")
public class AddProjectServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher("/Projects.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String project_name = request.getParameter("project_name");
        String description = request.getParameter("description");
        String start_date = request.getParameter("start_date");
        String end_date = request.getParameter("end_date");
        float budget = Float.parseFloat(request.getParameter("budget"));

        ImpAddProject ProjectDao = new ImpAddProject();
        projects project = new projects(project_name, description, start_date, end_date, budget);

        try {
            ProjectDao.AddProjet(project);
        } catch (SQLException | ClassNotFoundException e) {
            throw new RuntimeException(e);
        }

        response.sendRedirect("ProjectsServlet");
    }
}
