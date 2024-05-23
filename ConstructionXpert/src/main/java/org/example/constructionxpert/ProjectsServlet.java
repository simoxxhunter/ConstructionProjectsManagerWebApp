package org.example.constructionxpert;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.projects;
import Dao.ImpProjects;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "projects", value = "/projects")
public class ProjectsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImpProjects proj = new ImpProjects();

        try {
            request.setAttribute("showProjects", proj.getAvailableProjects());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher("/Projects.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}
