package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.projects;

public class ImpDeleteProject {

    public void DeleteProject(int project_id) {
        Connection conn = connection.getConnection();

        String delete = "DELETE FROM projects WHERE project_id=?";
        try (PreparedStatement statement = conn.prepareStatement(delete)) {
            statement.setInt(1, project_id);
            int rowsAffected = statement.executeUpdate();
            

            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
