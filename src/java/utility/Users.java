/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utility;

import database.DatabaseUtil;
import example.Welcome;
import java.io.UnsupportedEncodingException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author 王萌宇
 */
public class Users {

    /**
     * @return the username
     */
    private String username;
    private String password;
    DatabaseUtil dbUtil=new DatabaseUtil();
    
    public void insert(){
        String sql="insert into users (username,password) values ('"+username+"','"+password+"')";
        dbUtil.executeUpdate(sql);
    }
    public List<Users> query(){
        return query("1=1");
    }
    
    public List<Users> query(String condition){
        List<Users> list=new ArrayList<Users>();
        
        try {
            String sql="select * from users where "+condition;
            ResultSet rs=dbUtil.executeQuery(sql);
            while(rs.next()){
                Users u=new Users();
                u.setUsername(rs.getString("username"));
                u.setPassword(rs.getString("password"));
                list.add(u);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Users.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public void delete(String condition){
        String sql="delete from users where "+condition;
        dbUtil.executeUpdate(sql);
    }
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }
    
    
    /**
     * @return the age
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param age the age to set
     */
        public void setPassword(String password) {
        this.password = password;
    }
}
