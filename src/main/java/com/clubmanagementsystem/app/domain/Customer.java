package com.clubmanagementsystem.app.domain;
import org.bson.types.ObjectId;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;

@RooJavaBean
@RooToString
@RooMongoEntity(identifierType = ObjectId.class)
public class Customer {

    /**
     */
    private Integer customerNumber;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Order> orders = new HashSet<Order>();

    /**
     */

    private Waiter waiter;

    /**
     */
    private Double bill;

    /**
     */
    private Double discount;

    public void addOrder(Order order) {
        this.orders.add(order);
    }

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<Customer> customers = new HashSet<Customer>();
    
    public void addCustomer(Customer customer) {
    	this.customers.add(customer);
    	
    }
}
