import java.sql.*;

public class DBConnection {
    private static final String URL = "jdbc:postgresql://localhost:5433/User";
    private static final String USER = "amoako";
    private static final String PASSWORD = "amoako";

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}