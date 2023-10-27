package com.learn.mycart.dao;

import com.learn.mycart.entities.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class Categorydao {

    private SessionFactory factory;

    public Categorydao(SessionFactory factory) {
        this.factory = factory;

    }

    public int saveCategory(Category cate) {

        Session s = this.factory.openSession();
        Transaction tx = s.beginTransaction();
        int catId = (int) s.save(cate);
        tx.commit();
        s.close();
        return catId;
    }
    public List<Category> getCategory()
    {
        Session s = this.factory.openSession();
        Query q = s.createQuery("From Category");
       List<Category> list= q.list();
        System.out.println("list data "+list);
       return list;
        
    }
}
