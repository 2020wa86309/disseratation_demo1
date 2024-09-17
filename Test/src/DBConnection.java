import java.sql.*;

public class DBConnection {

  public static void main(String[] args) throws Exception {
    // Replace with your specific database credentials
    String url = "jdbc:mysql://localhost:3306/BITS_Diagnostics";
    String username = "root";
    String password = "Password@24";
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
      // Load the MySQL JDBC driver
      Class.forName("com.mysql.cj.jdbc.Driver");

      // Establish a connection
      Connection connection = DriverManager.getConnection(url, username, password);
     
      // Check if the connection is successful
      if (connection != null) {
        System.out.println("Connection established successfully!");
        String sql = "SELECT * FROM patients";
        System.out.println(" "+sql);
        stmt = connection.prepareStatement(sql);
        rs = stmt.executeQuery();
        
      } else {
        System.out.println("Failed to connect to database.");
      }

      // Close the connection
      connection.close();
    } catch (Exception e) {
      System.out.println("Error connecting to database: " + e.getMessage());
    }
  }
}