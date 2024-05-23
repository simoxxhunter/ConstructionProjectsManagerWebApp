package Dao;

import model.projects;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ImpEditProject {

    public void editProject(projects project) throws SQLException {
        String editQuery = "UPDATE projects SET project_name = ?, description = ?, start_date = ?, end_date = ?, budget = ? WHERE project_id = ?";
        Connection conn = connection.getConnection();
        try (
             PreparedStatement stmt = conn.prepareStatement(editQuery)) {
            stmt.setString(1, project.getProject_name());
            stmt.setString(2, project.getDescription());
            stmt.setString(3, project.getStart_date());
            stmt.setString(4, project.getEnd_date());
            stmt.setDouble(5, project.getBudget());
            stmt.setInt(6, project.getProject_id());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Error updating project", e);
        }
    }
}
