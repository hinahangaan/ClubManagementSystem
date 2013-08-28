// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.domain;

import com.clubmanagementsystem.app.domain.Waiter;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Waiter_Roo_Json {
    
    public String Waiter.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String Waiter.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static Waiter Waiter.fromJsonToWaiter(String json) {
        return new JSONDeserializer<Waiter>().use(null, Waiter.class).deserialize(json);
    }
    
    public static String Waiter.toJsonArray(Collection<Waiter> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String Waiter.toJsonArray(Collection<Waiter> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Waiter> Waiter.fromJsonArrayToWaiters(String json) {
        return new JSONDeserializer<List<Waiter>>().use(null, ArrayList.class).use("values", Waiter.class).deserialize(json);
    }
    
}
