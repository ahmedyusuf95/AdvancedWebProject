package com.advancedwebproject.controller;

import com.advancedwebproject.dao.ProductDao;
import com.advancedwebproject.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;
import java.util.List;

/**
 * Created by ahmed on 27/04/2016.
 */
@Controller
public class HomeController {

    private ProductDao productDao = new ProductDao();

    @RequestMapping("/")

    public String home() {
        return "home";
    }


    @RequestMapping("/productlist")

    public String Getproductlist(Model model){

    List<Product> productList = productDao.getProductList();


    model.addAttribute("productList", productList );

    return "productlist";

    }
// curly bracket means that it is a path variable
    @RequestMapping("/productlist/Productdetails/{id}")

    public String Productdetails(@PathVariable String id, Model model) throws IOException{

        Product bike = productDao.getProductById(id);
        model.addAttribute(bike);


        return "productdetails";
    }
}
