// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.domain;

import com.clubmanagementsystem.app.domain.Lady;
import org.bson.types.ObjectId;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Persistent;

privileged aspect Lady_Roo_Mongo_Entity {
    
    declare @type: Lady: @Persistent;
    
    @Id
    private ObjectId Lady.id;
    
    public ObjectId Lady.getId() {
        return this.id;
    }
    
    public void Lady.setId(ObjectId id) {
        this.id = id;
    }
    
}