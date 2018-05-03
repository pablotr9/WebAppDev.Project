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
import java.util.Date;
import java.util.List;
import model.Application;
import model.Comment;
import model.Offer;
import util.DBConnection;
import util.Hash;

/**
 *
 * @author Andrei
 */
public class ApplicationDAO {
    private Connection connection;
    private static ApplicationDAO instance;

    public static ApplicationDAO getInstance() {
        if (instance == null) {
            instance = new ApplicationDAO();
        }
        return instance;
    }

    private ApplicationDAO() {}
    
    public boolean createApplication(String title, String description, int userId, int offerId) {
        connection=DBConnection.getConnection();
        try {
            PreparedStatement stmt = connection.prepareStatement("insert into application values (default, ?, ?, ?, ?, ?)");
            stmt.setString(1, title);
            stmt.setString(2, description);
            Date utilDate = new Date();
            java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
            stmt.setDate(3, sqlDate);
            stmt.setInt(4, offerId);
            stmt.setInt(5, userId);
            stmt.executeUpdate();
            connection.commit();
            return true;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return false;
    }
    
    public List<Application> getMyApplications(int userId) {
        connection = DBConnection.getConnection();
        List<Offer> offers = new ArrayList<>(); 
        List<Application> applications = new ArrayList<>();
        
        try {
            PreparedStatement prepStmt = connection.prepareStatement("select * from offers where userId = ?"); //my posted offers
            prepStmt.setInt(1, userId);
            ResultSet rs = prepStmt.executeQuery();
            
            while (rs.next()) {
                int offerId = rs.getInt("id");
                
                PreparedStatement prepStmt2 = connection.prepareStatement("select * from application where offerId = ?"); //my posted offers
                prepStmt2.setInt(1, offerId);
                ResultSet rs2 = prepStmt2.executeQuery();
            
                while(rs2.next()){
                    applications.add(new Application(rs2.getInt(1), rs2.getString(2), rs2.getString(3), rs2.getDate(4), rs2.getInt(5), rs2.getInt(6)));
                }
            }
            
            prepStmt.close();
        } 
        catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return applications;
    }
}
