/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import util.DBConnection;
import util.Hash;

/**
 *
 * @author Andrei
 */
public class UserDAO {
    private Connection connection;
    private static UserDAO instance;

    public static UserDAO getInstance() {
        if (instance == null) {
            instance = new UserDAO();
        }
        return instance;
    }

    private UserDAO() {}
    
    public boolean userExists(String username){
        connection=DBConnection.getConnection();
         try {
            PreparedStatement prepStmt = 
                    connection.prepareStatement("SELECT * from users u where u.username = ?");
            prepStmt.setString(1, username);
            ResultSet rs = prepStmt.executeQuery();
            //result set is empty if there are no users with the same username
            if (rs.next()) {
                rs.close();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean createUser(String user, String pw, String mail, String gender, String tel, String country, boolean subscribe) {
        connection=DBConnection.getConnection();
        try {
            PreparedStatement stmt = 
                    connection.prepareStatement("insert into users values (default, ?, ?, ?, ? ,?, ? ,?)");
            stmt.setString(1, user);
            stmt.setString(2, Hash.getHash(pw));
            stmt.setString(3, mail);
            stmt.setString(4, "" + gender);
            stmt.setString(5, tel);
            stmt.setString(6, country);
            stmt.setInt(7, subscribe ? 1 : 0);
            stmt.executeUpdate();
            connection.commit();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public boolean isPasswordCorrect(String username, String password) {
        connection=DBConnection.getConnection();
        try {
            PreparedStatement prepStmt = connection.prepareStatement("select * from users u where u.username = ? and u.password = ?");
            prepStmt.setString(1, username);
            prepStmt.setString(2, Hash.getHash(password));
            ResultSet rs = prepStmt.executeQuery();
            if (rs.next()) {
                rs.close();
                return true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    
    
}
