/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Emilio
 */
public class DBConnection {
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
            String url = "jdbc:mysql://localhost/projectwad";
            String user = "root";
            String password = "root";
            String driver="com.mysql.jdbc.Driver";  
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, password);
            connection.setAutoCommit(false);
        }  catch (ClassNotFoundException e) {
            System.err.println("Could not load db driver");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("Could not open db connection");
            e.printStackTrace();
        }
        }
        return connection;
    }
}
