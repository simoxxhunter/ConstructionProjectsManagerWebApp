package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.tasks;
import model.projects;


public class ImpShowTasks {

    public List<tasks> getAvailableTasks() throws SQLException {
        List<tasks> TasksList = new ArrayList<>();
        String showTasksQuery = "SELECT * FROM tasks where project_id=?";

        Connection conn = connection.getConnection();
        PreparedStatement statement = conn.prepareStatement(showTasksQuery);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            int task_id = resultSet.getInt("task_id");
            String description = resultSet.getString("description");
            String start_date = resultSet.getString("start_date");
            String end_date = resultSet.getString("end_date");
            String status = resultSet.getString("status");
            int resource_id = resultSet.getInt("resource_id");
            int project_id = resultSet.getInt("project_id");


            tasks tasks = new tasks(task_id, description, start_date, end_date, status, resource_id,project_id);
            TasksList.add(tasks);
        }
        conn.close();

        return TasksList;
    }
}
