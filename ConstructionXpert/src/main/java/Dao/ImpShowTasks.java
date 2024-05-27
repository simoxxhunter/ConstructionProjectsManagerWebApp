package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.tasks;

public class ImpShowTasks {

    public List<tasks> getAvailableTasks(int ID) throws SQLException {
        List<tasks> TasksList = new ArrayList<>();

        String showTasksQuery = "SELECT * FROM tasks WHERE project_id = ?";

        Connection conn = connection.getConnection();
        PreparedStatement statement = conn.prepareStatement(showTasksQuery);
        statement.setInt(1, ID);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            int task_id = resultSet.getInt("task_id");
            String description = resultSet.getString("description");
            String start_date = resultSet.getString("start_date");
            String end_date = resultSet.getString("end_date");
            String status = resultSet.getString("status");
            int resource_id = resultSet.getInt("resource_id");
            int project_id = resultSet.getInt("project_id");

            tasks task = new tasks(task_id, description, start_date, end_date, status, resource_id, project_id);
            TasksList.add(task);
        }
        conn.close();

        return TasksList;
    }
}
