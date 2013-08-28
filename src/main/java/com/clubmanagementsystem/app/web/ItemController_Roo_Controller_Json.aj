// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.web;

import com.clubmanagementsystem.app.domain.Item;
import com.clubmanagementsystem.app.repository.ItemRepository;
import com.clubmanagementsystem.app.web.ItemController;
import java.util.List;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect ItemController_Roo_Controller_Json {
    
    @Autowired
    ItemRepository ItemController.itemRepository;
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> ItemController.showJson(@PathVariable("id") ObjectId id) {
        Item item = itemRepository.findOne(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (item == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(item.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> ItemController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Item> result = itemRepository.findAll();
        return new ResponseEntity<String>(Item.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> ItemController.createFromJson(@RequestBody String json) {
        Item item = Item.fromJsonToItem(json);
        itemRepository.save(item);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> ItemController.createFromJsonArray(@RequestBody String json) {
        for (Item item: Item.fromJsonArrayToItems(json)) {
            itemRepository.save(item);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> ItemController.updateFromJson(@RequestBody String json, @PathVariable("id") ObjectId id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Item item = Item.fromJsonToItem(json);
        if (itemRepository.save(item) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> ItemController.deleteFromJson(@PathVariable("id") ObjectId id) {
        Item item = itemRepository.findOne(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (item == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        itemRepository.delete(item);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}