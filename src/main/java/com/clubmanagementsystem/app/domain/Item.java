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
public class Item {

    /**
     */
    private String name;

    /**
     */
    private Double price;

    /**
     */
    @ManyToOne
    private Stock stock;

    /**
     */
    private Double stockDeduction;
}
