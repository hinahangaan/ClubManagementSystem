// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.web;

import com.clubmanagementsystem.app.domain.Waiter;
import com.clubmanagementsystem.app.repository.WaiterRepository;
import com.clubmanagementsystem.app.web.WaiterController;
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

privileged aspect WaiterController_Roo_Controller_Json {
    
    @Autowired
    WaiterRepository WaiterController.waiterRepository;
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET, headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> WaiterController.showJson(@PathVariable("id") ObjectId id) {
        Waiter waiter = waiterRepository.findOne(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        if (waiter == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(waiter.toJson(), headers, HttpStatus.OK);
    }
    
    @RequestMapping(headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<String> WaiterController.listJson() {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json; charset=utf-8");
        List<Waiter> result = waiterRepository.findAll();
        return new ResponseEntity<String>(Waiter.toJsonArray(result), headers, HttpStatus.OK);
    }
    
    @RequestMapping(method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> WaiterController.createFromJson(@RequestBody String json) {
        Waiter waiter = Waiter.fromJsonToWaiter(json);
        waiterRepository.save(waiter);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/jsonArray", method = RequestMethod.POST, headers = "Accept=application/json")
    public ResponseEntity<String> WaiterController.createFromJsonArray(@RequestBody String json) {
        for (Waiter waiter: Waiter.fromJsonArrayToWaiters(json)) {
            waiterRepository.save(waiter);
        }
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        return new ResponseEntity<String>(headers, HttpStatus.CREATED);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.PUT, headers = "Accept=application/json")
    public ResponseEntity<String> WaiterController.updateFromJson(@RequestBody String json, @PathVariable("id") ObjectId id) {
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        Waiter waiter = Waiter.fromJsonToWaiter(json);
        if (waiterRepository.save(waiter) == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, headers = "Accept=application/json")
    public ResponseEntity<String> WaiterController.deleteFromJson(@PathVariable("id") ObjectId id) {
        Waiter waiter = waiterRepository.findOne(id);
        HttpHeaders headers = new HttpHeaders();
        headers.add("Content-Type", "application/json");
        if (waiter == null) {
            return new ResponseEntity<String>(headers, HttpStatus.NOT_FOUND);
        }
        waiterRepository.delete(waiter);
        return new ResponseEntity<String>(headers, HttpStatus.OK);
    }
    
}