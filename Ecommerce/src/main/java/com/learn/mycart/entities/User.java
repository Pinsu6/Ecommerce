
package com.learn.mycart.entities;

import javax.persistence.*;



@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(length = 10,name="user_id")
    private int UserId;
    @Column(length = 100,name="user_name")
    private String UserName;
    @Column (length = 100,name="user_email")
    private String UserEmail;
    @Column (length = 100,name="user_password")
    private String userPassword;
    @Column (length = 12,name="user_phone")
    private String userPhone;
    @Column (length = 1500, name="user_pic")
    private String userPic;
    @Column (length = 1500, name="user_adress")
    private String userAdress;
    @Column(name="user_type")
    private String userType;

    public User(int UserId, String UserName, String UserEmail, String userPassword, String userPhone, String userPic, String userAdress, String userType) {
        this.UserId = UserId;
        this.UserName = UserName;
        this.UserEmail = UserEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAdress = userAdress;
        this.userType = userType;
    }
   
    public User( String UserName, String UserEmail, String userPassword, String userPhone, String userPic, String userAdress, String userType) {
        this.UserId = UserId;
        this.UserName = UserName;
        this.UserEmail = UserEmail;
        this.userPassword = userPassword;
        this.userPhone = userPhone;
        this.userPic = userPic;
        this.userAdress = userAdress;
        this.userType = userType;
    }
    public User() {
    }

    public int getUserId() {
        return UserId;
    }

    public void setUserId(int UserId) {
        this.UserId = UserId;
    }

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String UserName) {
        this.UserName = UserName;
    }

    public String getUserEmail() {
        return UserEmail;
    }

    public void setUserEmail(String UserEmail) {
        this.UserEmail = UserEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserPhone() {
        return userPhone;
    }

    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    public String getUserPic() {
        return userPic;
    }

    public void setUserPic(String userPic) {
        this.userPic = userPic;
    }

    public String getUserAdress() {
        return userAdress;
    }

    public void setUserAdress(String userAdress) {
        this.userAdress = userAdress;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    @Override
    public String toString() {
        return "User{" + "UserId=" + UserId + ", UserName=" + UserName + ", UserEmail=" + UserEmail + ", userPassword=" + userPassword + ", userPhone=" + userPhone + ", userPic=" + userPic + ", userAdress=" + userAdress + '}';
    }
    
}
