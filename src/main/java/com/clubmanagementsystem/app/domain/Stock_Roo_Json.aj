// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.domain;

import com.clubmanagementsystem.app.domain.Stock;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Stock_Roo_Json {
    
    public String Stock.toJson() {
        return new JSONSerializer().exclude("*.class").deepSerialize(this);
    }
    
    public String Stock.toJson(String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(this);
    }
    
    public static Stock Stock.fromJsonToStock(String json) {
        return new JSONDeserializer<Stock>().use(null, Stock.class).deserialize(json);
    }
    
    public static String Stock.toJsonArray(Collection<Stock> collection) {
        return new JSONSerializer().exclude("*.class").deepSerialize(collection);
    }
    
    public static String Stock.toJsonArray(Collection<Stock> collection, String[] fields) {
        return new JSONSerializer().include(fields).exclude("*.class").deepSerialize(collection);
    }
    
    public static Collection<Stock> Stock.fromJsonArrayToStocks(String json) {
        return new JSONDeserializer<List<Stock>>().use(null, ArrayList.class).use("values", Stock.class).deserialize(json);
    }
    
}