package org.bkvittal.spring.ng.onlinestore.controller;

import org.bkvittal.spring.ng.onlinestore.model.Customer;
import org.bkvittal.spring.ng.onlinestore.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;
 
@RestController
@RequestMapping("/customer")
public class CustomerController {
	
	@Autowired(required=true)
    StoreService storeService;
 
   @RequestMapping(value = "/signup", method = RequestMethod.POST)
      public ResponseEntity<Void> createUser(@RequestBody Customer customer, UriComponentsBuilder ucBuilder) {
          System.out.println("Creating User " + customer.getFirstName()+ " " + customer.getLastName());
    
          if (storeService.isUserExist(customer)) {
              System.out.println("A User with name " + customer.getFirstName()+ " " + customer.getLastName() + " already exist");
              return new ResponseEntity<Void>(HttpStatus.CONFLICT);
          }
    
          storeService.saveUser(customer);
    
          HttpHeaders headers = new HttpHeaders();
          headers.setLocation(ucBuilder.path("/user/{id}").buildAndExpand(customer.getId()).toUri());
          return new ResponseEntity<Void>(headers, HttpStatus.CREATED);
      }
}