package org.bkvittal.spring.ng.onlinestore.dao;

import java.util.List;

import javax.sql.DataSource;

import org.bkvittal.spring.ng.onlinestore.model.Customer;
import org.bkvittal.spring.ng.onlinestore.model.Product;

public interface StoreServiceDAO {
	List<Product> getProductsByCat(String cat);
	
	public void create(Customer customer);

	void setDataSource(DataSource dataSource); 
}
