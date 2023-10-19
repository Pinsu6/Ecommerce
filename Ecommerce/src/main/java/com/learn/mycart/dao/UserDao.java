package com.learn.mycart.dao;

import com.learn.mycart.entities.User;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class UserDao {

    private SessionFactory factory;

    public UserDao(SessionFactory factory) {
        this.factory = factory;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "from User where  UserEmail=:e and userPassword=:p";
            Session s = this.factory.openSession();
            Query q = s.createQuery(query);
            q.setParameter("e", email);
            q.setParameter("p", password);
            user = (User) q.setMaxResults(1).uniqueResult();

            s.close();
        } catch (Exception e) {
            System.out.println(e);
        }
        return user;
    }

    public List<User> checkUserEmail(String Email) {
        List<User> users = null;
        try {
            String query = "from User where  user_email=:e";
            Session s = this.factory.openSession();
            Query q = s.createQuery(query);
            q.setParameter("e", Email);
            users = q.list();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return users;
    }
}
