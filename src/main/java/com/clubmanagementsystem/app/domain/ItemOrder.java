package com.clubmanagementsystem.app.domain;
import org.bson.types.ObjectId;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooMongoEntity(identifierType = ObjectId.class)
@RooJson(deepSerialize = true)
public class ItemOrder {

    /**
     */
    @ManyToOne
    private Item item;

    /**
     */
    private Integer qty;

    /**
     */
    private Double amount;
}
