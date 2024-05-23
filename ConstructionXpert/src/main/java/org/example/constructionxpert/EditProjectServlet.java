package org.example.constructionxpert;

import Dao.ImpEditProject;
import Dao.ImpProjects;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.projects;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "EditProject", value = "/EditProject")
public class EditProjectServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/Projects.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImpEditProject projEdit = new ImpEditProject();
        ImpProjects showProj = new ImpProjects();

        int projectId = Integer.parseInt(request.getParameter("project_id"));
        String projectName = request.getParameter("project_name");
        String description = request.getParameter("description");
        String startDate = request.getParameter("start_date");
        String endDate = request.getParameter("end_date");
        float budget = Float.parseFloat(request.getParameter("budget"));

        projects project = new projects(projectId, projectName, description, startDate, endDate, budget);

        try {
            projEdit.editProject(project);
            request.setAttribute("showP", showProj.getAvailableProjects());
        } catch (SQLException e) {
            throw new RuntimeException("Error editing project", e);
        }
        response.sendRedirect("ProjectsServlet");    }


}
