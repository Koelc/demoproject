package dao;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import models.product;
 

 
@Service
public class productServices {
     
    private productDAOImpl productDAO;
 
    public void setPersonDAO(productDAOImpl productDAO) {
        this.productDAO = productDAO;
    }
 
   
    @Transactional
    public void addProduct(product p) {
        this.productDAO.addProduct(p);
    }
 
  
    @Transactional
    public void updateProduct(product p) {
        this.productDAO.updateProduct(p);
    }
 
  
    @Transactional
    public List<product> listProduct() {
        return this.productDAO.listproduct();
    }
 
  
    @Transactional
    public product getProductById(int id) {
        return this.productDAO.getProductById(id);
    }
 
 
    @Transactional
    public void removeProduct(int id) 
    {
        this.productDAO.removeProduct(id);
    }
 
}



