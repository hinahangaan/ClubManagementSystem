// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.web;

import com.clubmanagementsystem.app.domain.Table;
import com.clubmanagementsystem.app.repository.TableRepository;
import com.clubmanagementsystem.app.web.TableController;
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

privileged aspect TableController_Roo_Controller_Json {
    
    @Autowired
    TableRepository TableController.tableRepository;
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> TableController.showJson(@PathVariable("id") ObjectId id) {
        Table table = tableRepository.findOne(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (table == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(table.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> TableController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Table> result = tableRepository.findAll();
        return new ResponseEntity<String>(Table.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> TableController.createFromJson(@RequestBody String json) {
        Table table = Table.fromJsonToTable(json);
        tableRepository.save(table);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> TableController.createFromJsonArray(@RequestBody String json) {
        for (Table table: Table.fromJsonArrayToTables(json)) {
            tableRepository.save(table);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> TableController.updateFromJson(@RequestBody String json, @PathVariable("id") ObjectId id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Table table = Table.fromJsonToTable(json);
        if (tableRepository.save(table) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> TableController.deleteFromJson(@PathVariable("id") ObjectId id) {
        Table table = tableRepository.findOne(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (table == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        tableRepository.delete(table);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}