package org.bkvittal.spring.ng.onlinestore.service;

import java.util.List;

import org.bkvittal.spring.ng.onlinestore.model.Customer;
import org.bkvittal.spring.ng.onlinestore.model.Product;

public interface StoreService {
	List<Product> getProductsByCat(String cat);

	boolean isUserExist(Customer customer);

	void saveUser(Customer customer); 
}
 