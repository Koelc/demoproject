package dao;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import models.product;
 

 
@Repository
public class productDAOImpl  {
     
    private static final Logger logger = LoggerFactory.getLogger(productDAOImpl.class);
 
    private SessionFactory sessionFactory;
     
    public void setSessionFactory(SessionFactory sf){
        this.sessionFactory = sf;
    }
 
  
    public void addProduct(product p)
    {
        Session session = this.sessionFactory.getCurrentSession();
        session.persist(p);
        logger.info("Person saved successfully, Person Details="+p);
    }
 
  
    public void updateProduct(product p) {
        Session session = this.sessionFactory.getCurrentSession();
        session.update(p);
        logger.info("Person updated successfully, Person Details="+p);
    }
 
    @SuppressWarnings("unchecked")
   
    public List<product> listproduct() {
        Session session = this.sessionFactory.getCurrentSession();
        List<product> productList = session.createQuery("from Person").list();
        for(product p : productList)
        {
            logger.info("Person List::"+p);
        }
        return productList;
    }
 
    
    public product getProductById(int id) {
        Session session = this.sessionFactory.getCurrentSession();      
        product p = (product) session.load(product.class, new Integer(id));
        logger.info("Person loaded successfully, Person details="+p);
        return p;
    }
 

    public void removeProduct(int id) {
        Session session = this.sessionFactory.getCurrentSession();
        product p = (product) session.load(product.class, new Integer(id));
        if(null != p){
            session.delete(p);
        }
        logger.info("Person deleted successfully, person details="+p);
    }
 
}