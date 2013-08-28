// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.domain;

import com.clubmanagementsystem.app.domain.LadiesDrink;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect LadiesDrink_Roo_Json {
    
    public String LadiesDrink.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String LadiesDrink.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static LadiesDrink LadiesDrink.fromJsonToLadiesDrink(String json) {
        return new JSONDeserializer<LadiesDrink>().use(null, LadiesDrink.class).deserialize(json);
    }
    
    public static String LadiesDrink.toJsonArray(Collection<LadiesDrink> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String LadiesDrink.toJsonArray(Collection<LadiesDrink> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<LadiesDrink> LadiesDrink.fromJsonArrayToLadiesDrinks(String json) {
        return new JSONDeserializer<List<LadiesDrink>>().use(null, ArrayList.class).use("values", LadiesDrink.class).deserialize(json);
    }
    
}
