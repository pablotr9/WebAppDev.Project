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
public class CommentDAO {
    private Connection connection;
    private static CommentDAO instance;

    public static CommentDAO getInstance() {
        if (instance == null) {
            instance = new CommentDAO();
        }
        return instance;
    }

    private CommentDAO() {}
    
    public boolean createComment(String title, String text, int offerId, int userId) {
        connection=DBConnection.getConnection();
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into comment values (default, ?, ?, ?, ?)");
            stmt.setString(1, title);
            stmt.setString(2, text);
            stmt.setInt(3, userId);
            stmt.setInt(4, offerId);
            stmt.executeUpdate();
            connection.commit();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
