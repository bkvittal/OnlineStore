package org.bkvittal.spring.ng.onlinestore.controller;

import java.util.List;


import org.bkvittal.spring.ng.onlinestore.model.Product;
import org.bkvittal.spring.ng.onlinestore.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
 
@RestController
@RequestMapping("/products")
public class CartController {
	
	@Autowired(required=true)
    StoreService storeService;
 
     
      
      @RequestMapping(value = "/{cat}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
      public ResponseEntity<List<Product>> getUser(@PathVariable("cat") String cat) {
          System.out.println("Fetching User with id " + cat);
          List<Product> products = storeService.getProductsByCat(cat);
          if (products == null) {
              System.out.println("User with id " + cat + " not found");
              return new ResponseEntity<List<Product>>(HttpStatus.NOT_FOUND);
          }
          return new ResponseEntity<List<Product>>(products, HttpStatus.OK);
      }
 
}