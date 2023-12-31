
package com.learn.mycart.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import com.learn.mycart.entities.*;

public class Productdao {
    private SessionFactory factory;
    
    public Productdao(SessionFactory factory)
    {
        this.factory=factory;
    }
    
    public boolean saveProduct(Product product)
    {
        boolean f= false;
        try {
            Session session = this.factory.openSession();
            Transaction tx = session.beginTransaction();
            session.save(product); 
            tx.commit();
            session.close();
           
            f= true;
        } catch (Exception e) {
            e.printStackTrace();
            f=false;
        }
        return f;
    }
}
