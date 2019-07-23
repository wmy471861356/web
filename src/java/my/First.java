/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package my;

import static com.opensymphony.xwork2.Action.SUCCESS;
import static example.HelloWorld.MESSAGE;
import com.opensymphony.xwork2.ActionSupport;
import database.DatabaseUtil;
import static example.HelloWorld.MESSAGE;
import java.util.ArrayList;
import java.util.List;
import utility.Users;

/**
 *
 * @author ������
 */
public class First {
    private String username;
    private String age;
    private String res;
    
    
    private List<Users> list=new ArrayList<Users>();
    public String execute() throws Exception {
        String un="";
        String password="";
        Users u=new Users();
        u.setUsername(un);
        u.setPassword(password);
        
        
        list=u.query();
        
        
        return SUCCESS;
    }

    /**
     * @return the username
     */
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
    public String getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(String age) {
        this.age = age;
    }

    /**
     * @return the res
     */
    public String getRes() {
        return res;
    }

    /**
     * @param res the res to set
     */
    public void setRes(String res) {
        this.res = res;
    }
}
