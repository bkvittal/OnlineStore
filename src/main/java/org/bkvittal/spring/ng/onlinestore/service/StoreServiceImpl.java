package org.bkvittal.spring.ng.onlinestore.service;

import java.util.List;

import org.bkvittal.spring.ng.onlinestore.dao.StoreServiceDAO;
import org.bkvittal.spring.ng.onlinestore.model.Customer;
import org.bkvittal.spring.ng.onlinestore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service("storeService")
@Transactional
public class StoreServiceImpl implements StoreService {

	@Autowired
	private StoreServiceDAO storeServiceDAOImpl;	
	
	public List<Product> getProductsByCat(String cat) {
		// TODO Auto-generated method stub
		return storeServiceDAOImpl.getProductsByCat(cat);
	}

	public boolean isUserExist(Customer customer) {
		// TODO Auto-generated method stub
		return false;
	}

	public void saveUser(Customer customer) {
		storeServiceDAOImpl.create(customer);
		
	}

}
