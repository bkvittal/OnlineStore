package org.bkvittal.spring.ng.onlinestore.rowmapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.bkvittal.spring.ng.onlinestore.model.Product;
import org.springframework.jdbc.core.RowMapper;

public class ProductRowMapper implements RowMapper<Product> {
   public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
      Product product = new Product();
      product.setId(rs.getInt("id"));
      product.setName(rs.getString("name"));
      product.setPrice(rs.getInt("price"));
      product.setProdDesc(rs.getString("proddesc"));
      product.setProdCat(rs.getString("prodcat"));
      product.setImagef(rs.getString("imagef"));
      product.setImageb(rs.getString("imageb"));
      return product;
   }
}