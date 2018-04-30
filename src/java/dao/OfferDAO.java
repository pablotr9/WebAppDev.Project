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
public class OfferDAO {
    private Connection connection;
    private static OfferDAO instance;

    public static OfferDAO getInstance() {
        if (instance == null) {
            instance = new OfferDAO();
        }
        return instance;
    }

    private OfferDAO() {}
    
    public boolean createOffer(String title, String description, double price, int userId, String category) {
        connection=DBConnection.getConnection();
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into offers values (default, ?, ?, ?, ?, ?)");
            stmt.setString(1, title);
            stmt.setString(2, description);
            stmt.setDouble(3, price);
            stmt.setInt(4, userId);
            stmt.setString(5, category);
            stmt.executeUpdate();
            connection.commit();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
