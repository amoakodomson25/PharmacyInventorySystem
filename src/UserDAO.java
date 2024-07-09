import java.sql.*;

public class UserDAO {

	
    // Method to authenticate a user
    public boolean authenticateUser(String username, String password) throws SQLException {
        String query = "SELECT COUNT(*) AS count FROM agents WHERE name = ? AND password = crypt(?, password)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                int count = resultSet.getInt("count");
                return count == 1; // Return true if user exists with the provided credentials
            }
        }
        return false;
    }
}


