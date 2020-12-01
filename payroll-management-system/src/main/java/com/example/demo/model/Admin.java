package com.example.demo.model;


import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Email;

@Entity
@Table(name = "admin")
public class Admin  {

    @Override
    public String toString() {
        return "Admin{" + "id=" + id + ", email=" + email + ", password=" + password + '}';
    }

    @Id

    private int id;
   
    private String email;

    private String password;

    public String getEmail() {
        return email;
    }

    public Admin() {

    }

    public Admin(int id, String email, String password) {
        this.id = id;
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Admin(String email, String password) {
        super();
        this.email = email;
        this.password = password;
    }

}
