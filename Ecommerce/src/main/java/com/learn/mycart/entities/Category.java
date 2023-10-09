
package com.learn.mycart.entities;

import java.util.*;
import javax.persistence.*;

@Entity
public class Category {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int categoryId;
    private String categoryTittle;
    private String categoryDescription;
    @OneToMany(mappedBy="category")
    private List<Product> products = new ArrayList<>();

    public Category() {
    }

    public Category(int categoryId, String categoryTittle, String categoryDescription) {
        this.categoryId = categoryId;
        this.categoryTittle = categoryTittle;
        this.categoryDescription = categoryDescription;
    }

    public Category(String categoryTittle, String categoryDescription,List<Product> products) {
        this.categoryTittle = categoryTittle;
        this.categoryDescription = categoryDescription;
        this.products = products;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryTittle() {
        return categoryTittle;
    }

    public void setCategoryTittle(String categoryTittle) {
        this.categoryTittle = categoryTittle;
    }

    public String getCategoryDescription() {
        return categoryDescription;
    }

    public void setCategoryDescription(String categoryDescription) {
        this.categoryDescription = categoryDescription;
    }

    public List<Product> getProduct() {
        return products;
    }

    public void setProduct(List<Product> product) {
        this.products = product;
    }

    @Override
    public String toString() {
        return "Category{" + "categoryId=" + categoryId + ", categoryTittle=" + categoryTittle + ", categoryDescription=" + categoryDescription + ", product=" + products + '}';
    }
    
    
}
