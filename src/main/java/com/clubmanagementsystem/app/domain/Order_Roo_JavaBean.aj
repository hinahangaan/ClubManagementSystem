// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.clubmanagementsystem.app.domain;

import com.clubmanagementsystem.app.domain.ItemOrder;
import com.clubmanagementsystem.app.domain.Order;
import com.clubmanagementsystem.app.domain.Waiter;
import java.util.Set;

privileged aspect Order_Roo_JavaBean {
    
    public String Order.getOrderNumber() {
        return this.orderNumber;
    }
    
    public void Order.setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }
    
    public Set<ItemOrder> Order.getItemOrders() {
        return this.itemOrders;
    }
    
    public void Order.setItemOrders(Set<ItemOrder> itemOrders) {
        this.itemOrders = itemOrders;
    }
    
    public Waiter Order.getWaiter() {
        return this.waiter;
    }
    
    public void Order.setWaiter(Waiter waiter) {
        this.waiter = waiter;
    }
    
}