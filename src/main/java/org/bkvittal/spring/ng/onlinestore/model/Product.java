package org.bkvittal.spring.ng.onlinestore.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Product")
 public class Product {
 
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private long id;
     
    private String prodCat;
     
    private String name;
     
    private String prodDesc;
    
    private String imagef;
    
    private String imageb;
    
    private int price;

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (id ^ (id >>> 32));
		result = prime * result + ((imageb == null) ? 0 : imageb.hashCode());
		result = prime * result + ((imagef == null) ? 0 : imagef.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + price;
		result = prime * result + ((prodCat == null) ? 0 : prodCat.hashCode());
		result = prime * result
				+ ((prodDesc == null) ? 0 : prodDesc.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (id != other.id)
			return false;
		if (imageb == null) {
			if (other.imageb != null)
				return false;
		} else if (!imageb.equals(other.imageb))
			return false;
		if (imagef == null) {
			if (other.imagef != null)
				return false;
		} else if (!imagef.equals(other.imagef))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (price != other.price)
			return false;
		if (prodCat == null) {
			if (other.prodCat != null)
				return false;
		} else if (!prodCat.equals(other.prodCat))
			return false;
		if (prodDesc == null) {
			if (other.prodDesc != null)
				return false;
		} else if (!prodDesc.equals(other.prodDesc))
			return false;
		return true;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getProdCat() {
		return prodCat;
	}

	public void setProdCat(String prodCat) {
		this.prodCat = prodCat;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getProdDesc() {
		return prodDesc;
	}

	public void setProdDesc(String prodDesc) {
		this.prodDesc = prodDesc;
	}

	public String getImagef() {
		return imagef;
	}

	public void setImagef(String imagef) {
		this.imagef = imagef;
	}

	public String getImageb() {
		return imageb;
	}

	public void setImageb(String imageb) {
		this.imageb = imageb;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public Product() {
		super();
	}

	public Product(long id, String prodCat, String name, String prodDesc,
			String imagef, String imageb, int price) {
		super();
		this.id = id;
		this.prodCat = prodCat;
		this.name = name;
		this.prodDesc = prodDesc;
		this.imagef = imagef;
		this.imageb = imageb;
		this.price = price;
	}

	
}