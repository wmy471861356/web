/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package example;

import com.opensymphony.xwork2.ActionSupport;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import utility.Users;

/**
 *
 * @author 王萌宇
 */
public class Welcome extends ActionSupport{

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
        this.username=username;
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
    private String username;
    private String password;
    public String un;
    private List<Users> list=new ArrayList<Users>();
    public String execute(){
        HttpSession session = ServletActionContext.getRequest().getSession();
        session.setAttribute("username",username);
        Users u=new Users();
        u.setUsername(getUsername());
        u.setPassword(getPassword());
        //list=u.query("username='"+u.getUsername()+"'");
        un=u.getUsername();
        return "success";
    }
    /**
     * @return the list
     */
    public List<Users> getList() {
        return list;
    }

    /**
     * @param list the list to set
     */
    public void setList(List<Users> list) {
        this.list = list;
    }
    
}
