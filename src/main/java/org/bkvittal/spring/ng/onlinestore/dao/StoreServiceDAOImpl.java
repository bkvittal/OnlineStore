package org.bkvittal.spring.ng.onlinestore.dao;

import java.util.List;

import javax.sql.DataSource;
import org.bkvittal.spring.ng.onlinestore.model.Product;
import org.bkvittal.spring.ng.onlinestore.rowmapper.ProductRowMapper;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.jdbc.core.JdbcTemplate;

public class StoreServiceDAOImpl implements StoreServiceDAO {


	
	 private DataSource dataSource;
	 private JdbcTemplate jdbcTemplateObject;
	   
	   /* (non-Javadoc)
	 * @see org.bkvittal.spring.ng.dao.UserDAO#setDataSource(javax.sql.DataSource)
	 */
	public void setDataSource(DataSource dataSource) {
	      this.dataSource = dataSource;
	      this.jdbcTemplateObject = new JdbcTemplate(dataSource);
	   }
	
	public List<Product> getProductsByCat(String cat) {
	      String SQL = "select * from PRODUCTS where prodcat = ?";
	      List <Product> products = jdbcTemplateObject.query(SQL, 
	    		  new Object[]{cat}, new ProductRowMapper());
	      return products;
	   }

	/*private SessionFactory sessionFactory;
	 
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }
     
   @SuppressWarnings("unchecked")
    public List<Product> getProductsByCat(String cat) {
		 Session session = this.sessionFactory.openSession();
	        List<Product> productList = session.createQuery("from Person where name = :cat").list();
	        session.close();
	        return productList;
	}*/

}
