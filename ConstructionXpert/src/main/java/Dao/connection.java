package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connection {
    private static final String URL = "jdbc:postgresql://localhost:5432/DB_pharmacy";
    private static final String USER = "postgres";
    private static final String PASS = "264850";

    public static Connection getConnection() {
        Connection connection = null;
        try {

            Class.forName("org.postgresql.Driver");

            connection = DriverManager.getConnection(URL, USER, PASS);

        } catch (ClassNotFoundException | SQLException e) {
            System.err.println("Error, cant connet : " + e.getMessage());
        }
        return connection;
    }

}