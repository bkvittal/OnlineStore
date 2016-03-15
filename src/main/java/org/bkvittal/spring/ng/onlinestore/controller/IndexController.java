package org.bkvittal.spring.ng.onlinestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
@RequestMapping("/")
public class IndexController {
 
      @RequestMapping(method = RequestMethod.GET)
        public String getIndexPage() {
            return "Category";
        }
      
      @RequestMapping(value = "cart", method = RequestMethod.GET)
      public String getCartPage() {
          return "Cart";
      }
    
    @RequestMapping(value = "cattype", method = RequestMethod.GET)
    public String getCatType() {
        return "CatType";
    }
    
    @RequestMapping(value = "signup", method = RequestMethod.GET)
    public String getSignUpPage() {
        return "CustomerSignUp";
    }
    
    @RequestMapping(value = "signin", method = RequestMethod.GET)
    public String getSignInPage() {
        return "CustomerSignIn";
    }
 
}