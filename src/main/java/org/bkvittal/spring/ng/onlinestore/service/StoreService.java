package org.bkvittal.spring.ng.onlinestore.service;

import java.util.List;

import org.bkvittal.spring.ng.onlinestore.model.Product;

public interface StoreService {
	List<Product> getProductsByCat(String cat); 
}
 