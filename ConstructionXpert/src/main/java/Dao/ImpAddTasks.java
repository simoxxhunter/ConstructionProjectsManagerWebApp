package Dao;

import model.tasks;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ImpAddTasks {

    public void AddTask(tasks task) throws SQLException, ClassNotFoundException {
        Connection conn = connection.getConnection();

        String AddQuery = "INSERT INTO tasks(description, start_date, end_date, status, resource_id, project_id) VALUES (?, ?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = conn.prepareStatement(AddQuery)) {
            stmt.setString(1, task.getDescription());
            stmt.setString(2, task.getStart_date());
            stmt.setString(3, task.getEnd_date());
            stmt.setString(4, task.getStatus());
            stmt.setInt(5, task.getResource_id());
            stmt.setInt(6, task.getProject_id());
            stmt.executeUpdate();
        }
    }
}
