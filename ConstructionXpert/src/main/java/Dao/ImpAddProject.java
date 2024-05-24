package Dao;

import model.projects;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ImpAddProject {

    public void AddProjet(projects project) throws SQLException, ClassNotFoundException {
        Connection conn = connection.getConnection();
        String AddQuery = "INSERT INTO projects (Project_name, description, Start_date, End_date, budget) VALUES (?, ?, ?, ?, ?)";

        try (PreparedStatement stmt = conn.prepareStatement(AddQuery)) {
            stmt.setString(1, project.getProject_name());
            stmt.setString(2, project.getDescription());
            stmt.setString(3, project.getStart_date());
            stmt.setString(4, project.getEnd_date());
            stmt.setDouble(5, project.getBudget());
            stmt.executeUpdate();
        }
    }
}
