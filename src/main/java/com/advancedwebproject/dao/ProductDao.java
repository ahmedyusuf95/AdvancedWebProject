package com.advancedwebproject.dao;

import com.advancedwebproject.model.Product;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by ahmed on 29/04/2016.
 */
public class ProductDao {

    private List<Product> productList ;

    public List<Product> getProductList() {
         Product bike = new Product();
        bike.setId("AX56");
        bike.setName("Ben's luxury RoadBike ");
        bike.setType("Road Bike");
        bike.setPrice(200);
        bike.setStock(10);


        Product bike2 = new Product();
        bike2.setId("p90z");
        bike2.setName("Ultimate bmx roadster ");
        bike2.setType("BMX");
        bike2.setPrice(150);
        bike2.setStock(15);

        Product bike3 = new Product();
        bike3.setId("reg5");
        bike3.setName("Tom hanley Race bike");
        bike3.setType("Rce Bike");
        bike3.setPrice(1500);
        bike3.setStock(8);


        productList = new ArrayList<Product>();
        productList.add(bike);
        productList.add(bike2);
        productList.add(bike3);


        return productList;

    }

    public Product getProductById(String id) throws IOException{

        for(Product product: getProductList()){
            if(product.getId().equals(id)){

                return product;

            }
        }

        throw new IOException("product not found");
    }
}
