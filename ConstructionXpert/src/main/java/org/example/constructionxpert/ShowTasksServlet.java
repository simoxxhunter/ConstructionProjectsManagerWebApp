package org.example.constructionxpert;

import Dao.ImpShowTasks;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.tasks;
import model.projects;
import Dao.ImpProjects;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "tasks", value = "/Tasks")
public class ShowTasksServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ImpShowTasks tasks = new ImpShowTasks();

        try {
            request.setAttribute("showTasks", tasks.getAvailableTasks());
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        this.getServletContext().getRequestDispatcher("/Tasks.jsp").forward(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
    }

}
