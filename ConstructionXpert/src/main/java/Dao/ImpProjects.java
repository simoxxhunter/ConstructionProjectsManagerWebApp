package Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.projects;

public class ImpProjects {
    public List<projects> getAvailableProjects() throws SQLException {
        List<projects> projectsList = new ArrayList<>();
        String sql = "SELECT * FROM projects";

        Connection conn = connection.getConnection();
        PreparedStatement statement = conn.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();

        while (resultSet.next()) {
            int project_id = resultSet.getInt("project_id");
            String project_name = resultSet.getString("project_name");
            String description = resultSet.getString("description");
            String start_date = resultSet.getString("start_date");
            String end_date = resultSet.getString("end_date");
            float budget = resultSet.getFloat("budget");

            projects project = new projects(project_id, project_name, description, start_date, end_date, budget);
            projectsList.add(project);
        }
        conn.close();

        return projectsList;
    }
}
