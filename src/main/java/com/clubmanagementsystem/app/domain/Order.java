package com.clubmanagementsystem.app.domain;
import org.bson.types.ObjectId;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooMongoEntity(identifierType = ObjectId.class)
@RooJson(deepSerialize = true)
public class Order {

    /**
     */
    private String orderNumber;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<ItemOrder> itemOrders = new HashSet<ItemOrder>();

    /**
     */
    @ManyToOne
    private Waiter waiter;


	public void addItemOrder(ItemOrder iOrder) {
		this.itemOrders.add(iOrder);
		
	}
}
