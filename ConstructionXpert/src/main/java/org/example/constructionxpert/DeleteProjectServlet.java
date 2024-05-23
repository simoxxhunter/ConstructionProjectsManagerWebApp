package org.example.constructionxpert;

import Dao.ImpDeleteProject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.projects;
import Dao.ImpProjects;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import static javax.swing.JOptionPane.showMessageDialog;


@WebServlet(name = "DeleteProject", value = "/DeleteProject")
public class DeleteProjectServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImpDeleteProject projDel = new ImpDeleteProject();
        ImpProjects proj = new ImpProjects();

        int project_id = Integer.parseInt(request.getParameter("project_id"));
        projDel.DeleteProject(project_id);

        PrintWriter out = response.getWriter();
        response.setContentType("text/html");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('deleted succesfully');");
        out.println("</script>");

        try {
            request.setAttribute("showProjects",proj.getAvailableProjects());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        request.getRequestDispatcher("/ProjectsServlet").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/ProjectsServlet").forward(request, response);
    }

}