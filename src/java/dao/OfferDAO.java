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
import java.util.ArrayList;
import java.util.List;
import model.Offer;
import model.User;
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
    
    public Offer getOffer(int id) {
        connection=DBConnection.getConnection();
        Offer offer = null;
        try {
            PreparedStatement prepStmt = connection.prepareStatement("SELECT * FROM OFFERS WHERE id = ?");
            prepStmt.setInt(1, id);
            ResultSet rs = prepStmt.executeQuery();
            while (rs.next()) {
                offer = new Offer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), rs.getString(6));
            }
            prepStmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return offer;
    }
    
    public User getCreator(int userId) {
        connection=DBConnection.getConnection();
        User user = null;
        try {
            PreparedStatement prepStmt = connection.prepareStatement("SELECT * FROM USERS WHERE id = ?");
            prepStmt.setInt(1, userId);
            ResultSet rs = prepStmt.executeQuery();
            while (rs.next()) {
                user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6));
            }
            prepStmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return user;
    }
    
    public List<Offer> getOffers() {
        connection=DBConnection.getConnection();
        List<Offer> offers = new ArrayList<>();
        
        try {
            PreparedStatement prepStmt = connection.prepareStatement("select * from offers");
            ResultSet rs = prepStmt.executeQuery();
            
            while (rs.next()) {
                offers.add(new Offer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), rs.getString(6)));
            }
            
            prepStmt.close();
        } 
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return offers;
    }
    
    public List<Offer> getOffersCategory(String category) {
        connection=DBConnection.getConnection();
        List<Offer> offers = new ArrayList<>();
        
        try {
            PreparedStatement prepStmt = connection.prepareStatement("select * from offers where category = ?");
            prepStmt.setString(1, category);
            ResultSet rs = prepStmt.executeQuery();
            
            while (rs.next()) {
                offers.add(new Offer(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), rs.getString(6)));
            }
            
            prepStmt.close();
        } 
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return offers;
    }
}
