package com.company.project.domains.admin.home.entity;

import java.io.Serializable;

/**
 * Created by Viki.Feng on 01/02/2016.
 */
public class User implements Serializable {
    private int userId;
    private String username;
    private String password;

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
