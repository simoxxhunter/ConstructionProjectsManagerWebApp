package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ImpDeleteProject {

    public void DeleteProject(int project_id) {
        Connection conn = connection.getConnection();

        String delete = "DELETE FROM projects WHERE project_id=?";
        try (PreparedStatement statement = conn.prepareStatement(delete)) {
            statement.setInt(1, project_id);

            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
