package controllers;

import models.*;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import dao.productServices;

//import dao.servicesImpl;

@Controller
public class HomeController {
     
  public productServices productService;
     
    @Autowired(required=true)
    @Qualifier(value="productService")
    public void setPersonService(productServices ps){
        this.productService = ps;
    }
     
    @RequestMapping(value = "/productTable", method = RequestMethod.GET)
    public String listPersons(Model model) {
        model.addAttribute("product", new product());
        model.addAttribute("listProduct", this.productService.listProduct());
        return "productTable";
    }
     
    //For add and update person both
    @RequestMapping(value= "/product/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("product") product p){
         
        if(p.getId() == 0){
            //new person, add it
            this.productService.addProduct(p);
        }else{
            //existing person, call update
            this.productService.updateProduct(p);
        }
         
        return "redirect:/productTable";
         
    }
     
    @RequestMapping("/remove/{id}")
    public String removeProduct(@PathVariable("id") int id){
         
        this.productService.removeProduct(id);
        return "redirect:/productTable";
    }
  
   
    @RequestMapping("/edit/{id}")
    public String editPerson(@PathVariable("id") int id, Model model){
        model.addAttribute("product", this.productService.getProductById(id));
        model.addAttribute("listPersons", this.productService.listProduct());
        return "productTable";
    }
     
}