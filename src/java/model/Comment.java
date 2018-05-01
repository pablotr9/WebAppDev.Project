/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Ale
 */
public class Comment {
    private int id;
    private String title;
    private String text;
    private int userId;
    private int offerId;
    
    public Comment(){}
    
    public Comment(int id, String title, String text, int userId, int offerId){
        this.id = id;
        this.title = title;
        this.text = text;
        this.userId = userId;
        this.offerId = offerId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getOfferId() {
        return offerId;
    }

    public void setOfferId(int offerId) {
        this.offerId = offerId;
    }
    
    
}
