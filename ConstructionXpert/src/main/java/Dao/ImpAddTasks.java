package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import model.tasks;

public class ImpAddTasks {

    public void AddTask(tasks task) throws SQLException, ClassNotFoundException {
        String insertTaskQuery = "INSERT INTO tasks (description, start_date, end_date, status, resource_id, project_id) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection conn = connection.getConnection();
             PreparedStatement statement = conn.prepareStatement(insertTaskQuery)) {
            statement.setString(1, task.getDescription());
            statement.setString(2, task.getStart_date());
            statement.setString(3, task.getEnd_date());
            statement.setString(4, task.getStatus());
            statement.setInt(5, task.getResource_id());
            statement.setInt(6, task.getProject_id());
            statement.executeUpdate();
        }
    }
}
